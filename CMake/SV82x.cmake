if(BOARD STREQUAL "SV82x")
    set(BOARD_SDK_DIR ${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/${BOARD})
    set(BOARD_SRCS
        ${BOARD_SDK_DIR}/common/sample_comm_audio.c
        ${BOARD_SDK_DIR}/common/sample_comm_doss.c
        ${BOARD_SDK_DIR}/common/sample_comm_ippu.c
        ${BOARD_SDK_DIR}/common/sample_comm_isp.c
        ${BOARD_SDK_DIR}/common/sample_comm_sys.c
        ${BOARD_SDK_DIR}/common/sample_comm_vdec.c
        ${BOARD_SDK_DIR}/common/sample_comm_venc.c
        ${BOARD_SDK_DIR}/common/sample_comm_video.c
        ${BOARD_SDK_DIR}/common/sample_comm_viss.c
    )
    set(BOARD_INCS_DIR
        ${BOARD_SDK_DIR}/include/
        ${BOARD_SDK_DIR}/common/
    )
    if(USE_MUCLIBC)
        set(BOARD_LIBS_DIR
            ${BOARD_SDK_DIR}/lib/uclibc
        )
        set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -muclibc")
        set(BOARD_DESTINATION_PLATFORM arm-ez-linux-uclibcgnueabihf)
    else()
        set(BOARD_LIBS_DIR
            ${BOARD_SDK_DIR}/lib/glibc
        )
        set(BOARD_DESTINATION_PLATFORM arm-linux-gnueabihf)
    endif()
    set(BOARD_LIBS_SHARED
        i2cops 
		cam_gc4653_mipi
		ext_drv_ms41929
		extops
		audioin
		cam_sc2335_mipi
		ext_drv_a6208
		ei_AGC
		customer_af
		audiocommon
		cam_imx327_mipi
		cam_ar0230_dvp
		ax
		cam_ov9732_mipi
		ei_hpf
		panel_spcs92048_prgb
		cam_ov5640_mipi
		ae
		awb
		audioout
		cam_gc4663_mipi
		threadpool
		ei_eq
		panel_wks43178_cpu
		cam_tp9950_mipi
		mbase
		ei_drc
		cam_sc4210_mipi
		cam_cr286_dvp
		panel_ili9488_mipi
		cam_sc200ai_mipi
		ctest
		cam_tp2850_mipi
		viss
		af
		panel_eos_default
		cam_imx415_mipi
		cam_tp2815_mipi
		isp
		mfake
		cam_sc4238_mipi
		doss
		audioenc
		vgss
		audiodec
		cam_imx307_mipi
		cam_os05a20_mipi
		cam_imx335_mipi
		cam_gc2145_mipi
		cam_tp9930_dvp
		cam_ov2710_dvp
		cam_ov5640_dvp
		mlink
		cam_tp9950_dvp
		ext_drv_ap1511b
		region
		vc
		dnvqe
		vbuf
		cam_ov2735_mipi
		panel_wks70002_lvds
		sam
		ei_RES
		cam_ov8858_mipi
		ei_common
		panel_otm1289a_mipi
		upvqe
		cam_clb
		panel_lt8912b_mipi
		pthread dl
    )
    set(BOARD_LIBS_STATIC
        libmbase.a 
		libmlink.a 
		libmfake.a 
		libviss.a 
		libvbuf.a 
		libupvqe.a 
		libdnvqe.a
		libaudioin.a
		libaudioout.a
		libaudiodec.a
		libaudioenc.a
		libaudiocommon.a
		libdoss.a
		libvgss.a
		libisp.a
		libae.a
		libawb.a
		libvc.a
		libregion.a
		libaf.a
		libthreadpool.a
		libi2cops.a
		libextops.a
		libcam_clb.a
		libext_drv_ms41929.a
		libext_drv_a6208.a
		libpanel_otm1289a_mipi.a
		libpanel_wks70002_lvds.a
		libpanel_lt8912b_mipi.a
		libpanel_wks43178_cpu.a
		libpanel_spcs92048_prgb.a
		libpanel_ili9488_mipi.a
		libpanel_eos_default.a
		libcam_gc4653_mipi.a
		libcam_sc2335_mipi.a
		libcam_tp9930_dvp.a
		libcam_imx307_mipi.a
		libcam_ov5640_dvp.a
		libcam_gc4663_mipi.a
		libcam_cr286_dvp.a
		libcam_ov5640_mipi.a
		libcam_ov8858_mipi.a
		libcam_imx335_mipi.a
		libcam_imx415_mipi.a
		libcam_tp9950_mipi.a
		libcam_imx327_mipi.a
		libcam_sc200ai_mipi.a
		libcam_ov2710_dvp.a
		libcam_ar0230_dvp.a
		libcam_sc4210_mipi.a
		libcam_ov9732_mipi.a
		libcam_os05a20_mipi.a
		libcam_sc4238_mipi.a
		libcam_tp9950_dvp.a
		libcam_clb.a
		libcam_gc2145_mipi.a
		libcam_ov2735_mipi.a
		libcam_tp2850_mipi.a
		libcam_tp2815_mipi.a
		pthread dl
    )
endif()
