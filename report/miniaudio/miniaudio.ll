Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0
@.str.378 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.379 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.380 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.381 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.382 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.383 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.384 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.385 = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@.str.386 = private unnamed_addr constant [5 x i8] c"jack\00", align 1
@.str.387 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.388 = private unnamed_addr constant [81 x i8] c"[ALSA] Failed to initialize hardware parameters. snd_pcm_hw_params_any() failed.\00", align 1
@.str.389 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.390 = private unnamed_addr constant [5 x i8] c"hw:0\00", align 1
@.str.391 = private unnamed_addr constant [7 x i8] c"hw:0,0\00", align 1
@.str.392 = private unnamed_addr constant [5 x i8] c"dmix\00", align 1
@.str.393 = private unnamed_addr constant [7 x i8] c"dmix:0\00", align 1
@.str.394 = private unnamed_addr constant [9 x i8] c"dmix:0,0\00", align 1
@.str.395 = private unnamed_addr constant [7 x i8] c"dsnoop\00", align 1
@.str.396 = private unnamed_addr constant [9 x i8] c"dsnoop:0\00", align 1
@.str.397 = private unnamed_addr constant [11 x i8] c"dsnoop:0,0\00", align 1
@.str.398 = private unnamed_addr constant [80 x i8] c"[ALSA] snd_pcm_open() failed when trying to open an appropriate default device.\00", align 1
@.str.399 = private unnamed_addr constant [30 x i8] c"[ALSA] snd_pcm_open() failed.\00", align 1
@__const.ma_convert_ma_format_to_alsa_format.ALSAFormats = private unnamed_addr constant [6 x i32] [i32 -1, i32 1, i32 2, i32 32, i32 10, i32 14], align 16
@g_maStandardSampleRatePriorities = internal unnamed_addr constant [14 x i32] [i32 48000, i32 44100, i32 32000, i32 24000, i32 22050, i32 88200, i32 96000, i32 176400, i32 192000, i32 16000, i32 11025, i32 8000, i32 352800, i32 384000], align 16
@.str.400 = private unnamed_addr constant [58 x i8] c"[ALSA] Failed to allocate memory for hardware parameters.\00", align 1
@.str.401 = private unnamed_addr constant [150 x i8] c"[ALSA] Failed to set access mode to neither SND_PCM_ACCESS_MMAP_INTERLEAVED nor SND_PCM_ACCESS_RW_INTERLEAVED. snd_pcm_hw_params_set_access() failed.\00", align 1
@.str.402 = private unnamed_addr constant [80 x i8] c"[ALSA] Format not supported. The device does not support any miniaudio formats.\00", align 1
@.str.403 = private unnamed_addr constant [68 x i8] c"[ALSA] Format not supported. snd_pcm_hw_params_set_format() failed.\00", align 1
@.str.404 = private unnamed_addr constant [56 x i8] c"[ALSA] The chosen format is not supported by miniaudio.\00", align 1
@.str.405 = private unnamed_addr constant [82 x i8] c"[ALSA] Failed to set channel count. snd_pcm_hw_params_set_channels_near() failed.\00", align 1
@.str.406 = private unnamed_addr constant [76 x i8] c"[ALSA] Sample rate not supported. snd_pcm_hw_params_set_rate_near() failed.\00", align 1
@.str.407 = private unnamed_addr constant [80 x i8] c"[ALSA] Failed to set period count. snd_pcm_hw_params_set_periods_near() failed.\00", align 1
@.str.408 = private unnamed_addr constant [89 x i8] c"[ALSA] Failed to set buffer size for device. snd_pcm_hw_params_set_buffer_size() failed.\00", align 1
@.str.409 = private unnamed_addr constant [70 x i8] c"[ALSA] Failed to set hardware parameters. snd_pcm_hw_params() failed.\00", align 1
@.str.410 = private unnamed_addr constant [58 x i8] c"[ALSA] Failed to allocate memory for software parameters.\00", align 1
@.str.411 = private unnamed_addr constant [85 x i8] c"[ALSA] Failed to initialize software parameters. snd_pcm_sw_params_current() failed.\00", align 1
@.str.412 = private unnamed_addr constant [49 x i8] c"[ALSA] snd_pcm_sw_params_set_avail_min() failed.\00", align 1
@.str.413 = private unnamed_addr constant [106 x i8] c"[ALSA] Failed to set start threshold for playback device. snd_pcm_sw_params_set_start_threshold() failed.\00", align 1
@.str.414 = private unnamed_addr constant [104 x i8] c"[ALSA] Failed to set stop threshold for playback device. snd_pcm_sw_params_set_stop_threshold() failed.\00", align 1
@.str.415 = private unnamed_addr constant [70 x i8] c"[ALSA] Failed to set software parameters. snd_pcm_sw_params() failed.\00", align 1
@.str.416 = private unnamed_addr constant [50 x i8] c"[ALSA] Failed to retrieve poll descriptors count.\00", align 1
@.str.417 = private unnamed_addr constant [55 x i8] c"[ALSA] Failed to allocate memory for poll descriptors.\00", align 1
@.str.418 = private unnamed_addr constant [49 x i8] c"[ALSA] Failed to create eventfd for poll wakeup.\00", align 1
@.str.419 = private unnamed_addr constant [44 x i8] c"[ALSA] Failed to retrieve poll descriptors.\00", align 1
@.str.420 = private unnamed_addr constant [33 x i8] c"[ALSA] Failed to prepare device.\00", align 1
@.str.421 = private unnamed_addr constant [39 x i8] c"[ALSA] Failed to start capture device.\00", align 1
@.str.422 = private unnamed_addr constant [40 x i8] c"[ALSA] Failed to start playback device.\00", align 1
@.str.423 = private unnamed_addr constant [35 x i8] c"[ALSA] Dropping capture device...\0A\00", align 1
@.str.424 = private unnamed_addr constant [44 x i8] c"[ALSA] Dropping capture device successful.\0A\00", align 1
@.str.425 = private unnamed_addr constant [36 x i8] c"[ALSA] Preparing capture device...\0A\00", align 1
@.str.426 = private unnamed_addr constant [41 x i8] c"[ALSA] Preparing capture device failed.\0A\00", align 1
@.str.427 = private unnamed_addr constant [45 x i8] c"[ALSA] Preparing capture device successful.\0A\00", align 1
@.str.428 = private unnamed_addr constant [58 x i8] c"[ALSA] Failed to read from capture wakeupfd. read() = %d\0A\00", align 1
@.str.429 = private unnamed_addr constant [36 x i8] c"[ALSA] Dropping playback device...\0A\00", align 1
@.str.430 = private unnamed_addr constant [45 x i8] c"[ALSA] Dropping playback device successful.\0A\00", align 1
@.str.431 = private unnamed_addr constant [37 x i8] c"[ALSA] Preparing playback device...\0A\00", align 1
@.str.432 = private unnamed_addr constant [42 x i8] c"[ALSA] Preparing playback device failed.\0A\00", align 1
@.str.433 = private unnamed_addr constant [46 x i8] c"[ALSA] Preparing playback device successful.\0A\00", align 1
@.str.434 = private unnamed_addr constant [59 x i8] c"[ALSA] Failed to read from playback wakeupfd. read() = %d\0A\00", align 1
@.str.435 = private unnamed_addr constant [14 x i8] c"EPIPE (read)\0A\00", align 1
@.str.436 = private unnamed_addr constant [47 x i8] c"[ALSA] Failed to recover device after overrun.\00", align 1
@.str.437 = private unnamed_addr constant [46 x i8] c"[ALSA] Failed to start device after underrun.\00", align 1
@.str.438 = private unnamed_addr constant [23 x i8] c"[ALSA] poll() failed.\0A\00", align 1
@.str.439 = private unnamed_addr constant [23 x i8] c"[ALSA] read() failed.\0A\00", align 1
@.str.440 = private unnamed_addr constant [32 x i8] c"[ALSA] POLLIN set for wakeupfd\0A\00", align 1
@.str.441 = private unnamed_addr constant [51 x i8] c"[ALSA] snd_pcm_poll_descriptors_revents() failed.\0A\00", align 1
@.str.442 = private unnamed_addr constant [38 x i8] c"[ALSA] POLLERR detected. status = %d\0A\00", align 1
@.str.443 = private unnamed_addr constant [15 x i8] c"EPIPE (write)\0A\00", align 1
@.str.444 = private unnamed_addr constant [48 x i8] c"[ALSA] Failed to recover device after underrun.\00", align 1
@.str.445 = private unnamed_addr constant [21 x i8] c"[ALSA] Waking up...\0A\00", align 1
@.str.446 = private unnamed_addr constant [24 x i8] c"[ALSA] write() failed.\0A\00", align 1
@.str.447 = private unnamed_addr constant [42 x i8] c"[ALSA] Waking up completed successfully.\0A\00", align 1
@.str.448 = private unnamed_addr constant [11 x i8] c"libjack.so\00", align 1
@.str.449 = private unnamed_addr constant [13 x i8] c"libjack.so.0\00", align 1
@.str.450 = private unnamed_addr constant [17 x i8] c"jack_client_open\00", align 1
@.str.451 = private unnamed_addr constant [18 x i8] c"jack_client_close\00", align 1
@.str.452 = private unnamed_addr constant [22 x i8] c"jack_client_name_size\00", align 1
@.str.453 = private unnamed_addr constant [26 x i8] c"jack_set_process_callback\00", align 1
@.str.454 = private unnamed_addr constant [30 x i8] c"jack_set_buffer_size_callback\00", align 1
@.str.455 = private unnamed_addr constant [17 x i8] c"jack_on_shutdown\00", align 1
@.str.456 = private unnamed_addr constant [21 x i8] c"jack_get_sample_rate\00", align 1
@.str.457 = private unnamed_addr constant [21 x i8] c"jack_get_buffer_size\00", align 1
@.str.458 = private unnamed_addr constant [15 x i8] c"jack_get_ports\00", align 1
@.str.459 = private unnamed_addr constant [14 x i8] c"jack_activate\00", align 1
@.str.460 = private unnamed_addr constant [16 x i8] c"jack_deactivate\00", align 1
@.str.461 = private unnamed_addr constant [13 x i8] c"jack_connect\00", align 1
@.str.462 = private unnamed_addr constant [19 x i8] c"jack_port_register\00", align 1
@.str.463 = private unnamed_addr constant [15 x i8] c"jack_port_name\00", align 1
@.str.464 = private unnamed_addr constant [21 x i8] c"jack_port_get_buffer\00", align 1
@.str.465 = private unnamed_addr constant [10 x i8] c"jack_free\00", align 1
@.str.466 = private unnamed_addr constant [10 x i8] c"miniaudio\00", align 1
@.str.467 = private unnamed_addr constant [30 x i8] c"[JACK] Failed to open client.\00", align 1
@.str.468 = private unnamed_addr constant [24 x i8] c"32 bit float mono audio\00", align 1
@.str.469 = private unnamed_addr constant [39 x i8] c"[JACK] Failed to query physical ports.\00", align 1
@.str.470 = private unnamed_addr constant [36 x i8] c"[JACK] Loopback mode not supported.\00", align 1
@.str.471 = private unnamed_addr constant [43 x i8] c"[JACK] Only default devices are supported.\00", align 1
@.str.472 = private unnamed_addr constant [37 x i8] c"[JACK] Exclusive mode not supported.\00", align 1
@.str.473 = private unnamed_addr constant [39 x i8] c"[JACK] Failed to set process callback.\00", align 1
@.str.474 = private unnamed_addr constant [43 x i8] c"[JACK] Failed to set buffer size callback.\00", align 1
@.str.475 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.476 = private unnamed_addr constant [33 x i8] c"[JACK] Failed to register ports.\00", align 1
@.str.477 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@.str.478 = private unnamed_addr constant [43 x i8] c"[JACK] Failed to activate the JACK client.\00", align 1
@.str.479 = private unnamed_addr constant [42 x i8] c"[JACK] Failed to retrieve physical ports.\00", align 1
@.str.480 = private unnamed_addr constant [32 x i8] c"[JACK] Failed to connect ports.\00", align 1
@.str.481 = private unnamed_addr constant [60 x i8] c"[JACK] An error occurred when deactivating the JACK client.\00", align 1
@.str.482 = private unnamed_addr constant [21 x i8] c"NULL Playback Device\00", align 1
@.str.483 = private unnamed_addr constant [20 x i8] c"NULL Capture Device\00", align 1
@.str.485 = private unnamed_addr constant [52 x i8] c"Failed to commit capture PCM frames to ring buffer.\00", align 1
@g_maLCG.0 = internal unnamed_addr global i32 4321, align 4
@g_maChannelDirections = internal unnamed_addr constant [52 x %struct.ma_vec3f] [%struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float f0xBF350481, float 0.000000e+00, float f0xBF350481 }, %struct.ma_vec3f { float f0x3F350481, float 0.000000e+00, float f0xBF350481 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float f0xBF350481, float 0.000000e+00, float f0x3F350481 }, %struct.ma_vec3f { float f0x3F350481, float 0.000000e+00, float f0x3F350481 }, %struct.ma_vec3f { float -3.162000e-01, float 0.000000e+00, float -9.487000e-01 }, %struct.ma_vec3f { float 3.162000e-01, float 0.000000e+00, float -9.487000e-01 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float 1.000000e+00 }, %struct.ma_vec3f { float -1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %struct.ma_vec3f { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 1.000000e+00, float 0.000000e+00 }, %struct.ma_vec3f { float -5.774000e-01, float 5.774000e-01, float -5.774000e-01 }, %struct.ma_vec3f { float 0.000000e+00, float f0x3F350481, float f0xBF350481 }, %struct.ma_vec3f { float 5.774000e-01, float 5.774000e-01, float -5.774000e-01 }, %struct.ma_vec3f { float -5.774000e-01, float 5.774000e-01, float 5.774000e-01 }, %struct.ma_vec3f { float 0.000000e+00, float f0x3F350481, float f0x3F350481 }, %struct.ma_vec3f { float 5.774000e-01, float 5.774000e-01, float 5.774000e-01 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }, %struct.ma_vec3f { float 0.000000e+00, float 0.000000e+00, float -1.000000e+00 }], align 16
@g_ma_linear_resampler_vtable = internal global %struct.ma_resampling_backend_vtable { ptr @ma_resampling_backend_get_heap_size__linear, ptr @ma_resampling_backend_init__linear, ptr @ma_resampling_backend_uninit__linear, ptr @ma_resampling_backend_process__linear, ptr @ma_resampling_backend_set_rate__linear, ptr @ma_resampling_backend_get_input_latency__linear, ptr @ma_resampling_backend_get_output_latency__linear, ptr @ma_resampling_backend_get_required_input_frame_count__linear, ptr @ma_resampling_backend_get_expected_output_frame_count__linear, ptr @ma_resampling_backend_reset__linear }, align 8
@g_maChannelPlaneRatios = internal unnamed_addr constant <{ [20 x [6 x float]], [32 x [6 x float]] }> <{ [20 x [6 x float]] [[6 x float] zeroinitializer, [6 x float] zeroinitializer, [6 x float] [float 5.000000e-01, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [6 x float] [float 0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [6 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [6 x float] zeroinitializer, [6 x float] [float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00], [6 x float] [float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00], [6 x float] [float 2.500000e-01, float 0.000000e+00, float 7.500000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [6 x float] [float 0.000000e+00, float 2.500000e-01, float 7.500000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [6 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [6 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [6 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], [6 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [6 x float] [float 3.300000e-01, float 0.000000e+00, float 3.300000e-01, float 0.000000e+00, float 0.000000e+00, float 3.400000e-01], [6 x float] [float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01], [6 x float] [float 0.000000e+00, float 3.300000e-01, float 3.300000e-01, float 0.000000e+00, float 0.000000e+00, float 3.400000e-01], [6 x float] [float 3.300000e-01, float 0.000000e+00, float 0.000000e+00, float 3.300000e-01, float 0.000000e+00, float 3.400000e-01], [6 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 5.000000e-01], [6 x float] [float 0.000000e+00, float 3.300000e-01, float 0.000000e+00, float 3.300000e-01, float 0.000000e+00, float 3.400000e-01]], [32 x [6 x float]] zeroinitializer }>, align 16
@ma_gRBDataSourceVTable = internal global { ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @ma_pcm_rb_data_source__on_read, ptr null, ptr @ma_pcm_rb_data_source__on_get_data_format, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@g_ma_audio_buffer_ref_data_source_vtable = internal global { ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @ma_audio_buffer_ref__data_source_on_read, ptr @ma_audio_buffer_ref__data_source_on_seek, ptr @ma_audio_buffer_ref__data_source_on_get_data_format, ptr @ma_audio_buffer_ref__data_source_on_get_cursor, ptr @ma_audio_buffer_ref__data_source_on_get_length, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@g_ma_paged_audio_buffer_data_source_vtable = internal global { ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @ma_paged_audio_buffer__data_source_on_read, ptr @ma_paged_audio_buffer__data_source_on_seek, ptr @ma_paged_audio_buffer__data_source_on_get_data_format, ptr @ma_paged_audio_buffer__data_source_on_get_cursor, ptr @ma_paged_audio_buffer__data_source_on_get_length, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.490 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.491 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.492 = private unnamed_addr constant [3 x i32] [i32 114, i32 43, i32 0], align 4
@.str.493 = private unnamed_addr constant [3 x i32] [i32 119, i32 98, i32 0], align 4
@g_ma_wav_ds_vtable = internal global { ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @ma_wav_ds_read, ptr @ma_wav_ds_seek, ptr @ma_wav_ds_get_data_format, ptr @ma_wav_ds_get_cursor, ptr @ma_wav_ds_get_length, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@g_ma_flac_ds_vtable = internal global { ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @ma_flac_ds_read, ptr @ma_flac_ds_seek, ptr @ma_flac_ds_get_data_format, ptr @ma_flac_ds_get_cursor, ptr @ma_flac_ds_get_length, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@g_ma_mp3_ds_vtable = internal global { ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @ma_mp3_ds_read, ptr @ma_mp3_ds_seek, ptr @ma_mp3_ds_get_data_format, ptr @ma_mp3_ds_get_cursor, ptr @ma_mp3_ds_get_length, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@g_ma_decoder_data_source_vtable = internal global { ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @ma_decoder__data_source_on_read, ptr @ma_decoder__data_source_on_seek, ptr @ma_decoder__data_source_on_get_data_format, ptr @ma_decoder__data_source_on_get_cursor, ptr @ma_decoder__data_source_on_get_length, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@g_ma_decoding_backend_vtable_wav = internal global %struct.ma_decoding_backend_vtable { ptr @ma_decoding_backend_init__wav, ptr @ma_decoding_backend_init_file__wav, ptr @ma_decoding_backend_init_file_w__wav, ptr @ma_decoding_backend_init_memory__wav, ptr @ma_decoding_backend_uninit__wav }, align 8
@g_ma_decoding_backend_vtable_flac = internal global %struct.ma_decoding_backend_vtable { ptr @ma_decoding_backend_init__flac, ptr @ma_decoding_backend_init_file__flac, ptr @ma_decoding_backend_init_file_w__flac, ptr @ma_decoding_backend_init_memory__flac, ptr @ma_decoding_backend_uninit__flac }, align 8
@g_ma_decoding_backend_vtable_mp3 = internal global %struct.ma_decoding_backend_vtable { ptr @ma_decoding_backend_init__mp3, ptr @ma_decoding_backend_init_file__mp3, ptr @ma_decoding_backend_init_file_w__mp3, ptr @ma_decoding_backend_init_memory__mp3, ptr @ma_decoding_backend_uninit__mp3 }, align 8
@g_ma_waveform_data_source_vtable = internal global { ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @ma_waveform__data_source_on_read, ptr @ma_waveform__data_source_on_seek, ptr @ma_waveform__data_source_on_get_data_format, ptr @ma_waveform__data_source_on_get_cursor, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@g_ma_noise_data_source_vtable = internal global { ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @ma_noise__data_source_on_read, ptr @ma_noise__data_source_on_seek, ptr @ma_noise__data_source_on_get_data_format, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.501 = private unnamed_addr constant [71 x i8] c"Failed to post MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_BUFFER job. %s.\0A\00", align 1
@g_ma_resource_manager_data_buffer_vtable = internal global { ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @ma_resource_manager_data_buffer_cb__read_pcm_frames, ptr @ma_resource_manager_data_buffer_cb__seek_to_pcm_frame, ptr @ma_resource_manager_data_buffer_cb__get_data_format, ptr @ma_resource_manager_data_buffer_cb__get_cursor_in_pcm_frames, ptr @ma_resource_manager_data_buffer_cb__get_length_in_pcm_frames, ptr @ma_resource_manager_data_buffer_cb__set_looping, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.503 = private unnamed_addr constant [69 x i8] c"Failed to retrieve data buffer connector. Unknown data supply type.\0A\00", align 1
@.str.504 = private unnamed_addr constant [138 x i8] c"Cloning data buffer node failed because the source node was released. The source node must remain valid until the cloning has completed.\0A\00", align 1
@.str.505 = private unnamed_addr constant [76 x i8] c"Failed to post MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_BUFFER_NODE job. %s.\0A\00", align 1
@.str.506 = private unnamed_addr constant [76 x i8] c"Failed to post MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_BUFFER_NODE job. %s.\0A\00", align 1
@g_ma_resource_manager_data_stream_vtable = internal global { ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @ma_resource_manager_data_stream_cb__read_pcm_frames, ptr @ma_resource_manager_data_stream_cb__seek_to_pcm_frame, ptr @ma_resource_manager_data_stream_cb__get_data_format, ptr @ma_resource_manager_data_stream_cb__get_cursor_in_pcm_frames, ptr @ma_resource_manager_data_stream_cb__get_length_in_pcm_frames, ptr @ma_resource_manager_data_stream_cb__set_looping, i32 0, [4 x i8] zeroinitializer }, align 8
@g_node_graph_node_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_node_graph_node_process_pcm_frames, ptr null, i8 0, i8 1, [2 x i8] zeroinitializer, i32 0 }, align 8
@g_node_graph_endpoint_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_node_graph_endpoint_process_pcm_frames, ptr null, i8 1, i8 1, [2 x i8] zeroinitializer, i32 1 }, align 8
@g_ma_data_source_node_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_data_source_node_process_pcm_frames, ptr null, i8 0, i8 1, [2 x i8] zeroinitializer, i32 0 }, align 8
@g_ma_splitter_node_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_splitter_node_process_pcm_frames, ptr null, i8 1, i8 -1, [2 x i8] zeroinitializer, i32 0 }, align 8
@g_ma_biquad_node_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_biquad_node_process_pcm_frames, ptr null, i8 1, i8 1, [2 x i8] zeroinitializer, i32 0 }, align 8
@g_ma_lpf_node_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_lpf_node_process_pcm_frames, ptr null, i8 1, i8 1, [2 x i8] zeroinitializer, i32 0 }, align 8
@g_ma_hpf_node_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_hpf_node_process_pcm_frames, ptr null, i8 1, i8 1, [2 x i8] zeroinitializer, i32 0 }, align 8
@g_ma_bpf_node_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_bpf_node_process_pcm_frames, ptr null, i8 1, i8 1, [2 x i8] zeroinitializer, i32 0 }, align 8
@g_ma_notch_node_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_notch_node_process_pcm_frames, ptr null, i8 1, i8 1, [2 x i8] zeroinitializer, i32 0 }, align 8
@g_ma_peak_node_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_peak_node_process_pcm_frames, ptr null, i8 1, i8 1, [2 x i8] zeroinitializer, i32 0 }, align 8
@g_ma_loshelf_node_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_loshelf_node_process_pcm_frames, ptr null, i8 1, i8 1, [2 x i8] zeroinitializer, i32 0 }, align 8
@g_ma_hishelf_node_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_hishelf_node_process_pcm_frames, ptr null, i8 1, i8 1, [2 x i8] zeroinitializer, i32 0 }, align 8
@g_ma_delay_node_vtable = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_delay_node_process_pcm_frames, ptr null, i8 1, i8 1, [2 x i8] zeroinitializer, i32 2 }, align 8
@g_ma_engine_node_vtable__sound = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_engine_node_process_pcm_frames__sound, ptr null, i8 0, i8 1, [2 x i8] zeroinitializer, i32 0 }, align 8
@g_ma_engine_node_vtable__group = internal global { ptr, ptr, i8, i8, [2 x i8], i32 } { ptr @ma_engine_node_process_pcm_frames__group, ptr null, i8 1, i8 1, [2 x i8] zeroinitializer, i32 8 }, align 8
@.str.523 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@ma_dr_wavGUID_W64_RIFF = internal constant [16 x i8] c"riff.\91\CF\11\A5\D6(\DB\04\C1\00\00", align 16
@.str.526 = private unnamed_addr constant [5 x i8] c"RF64\00", align 1
@.str.528 = private unnamed_addr constant [5 x i8] c"WAVE\00", align 1
@ma_dr_wavGUID_W64_WAVE = internal constant [16 x i8] c"wave\F3\AC\D3\11\8C\D1\00\C0O\8E\DB\8A", align 16
@.str.531 = private unnamed_addr constant [5 x i8] c"ds64\00", align 1
@.str.532 = private unnamed_addr constant [5 x i8] c"fmt \00", align 1
@ma_dr_wavGUID_W64_FMT = internal constant [16 x i8] c"fmt \F3\AC\D3\11\8C\D1\00\C0O\8E\DB\8A", align 16
@.str.533 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@ma_dr_wavGUID_W64_DATA = internal constant [16 x i8] c"data\F3\AC\D3\11\8C\D1\00\C0O\8E\DB\8A", align 16
@ma_dr_wavGUID_W64_FACT = internal constant [16 x i8] c"fact\F3\AC\D3\11\8C\D1\00\C0O\8E\DB\8A", align 16
@.str.549 = private unnamed_addr constant [5 x i8] c"smpl\00", align 1
@.str.550 = private unnamed_addr constant [5 x i8] c"inst\00", align 1
@.str.551 = private unnamed_addr constant [5 x i8] c"acid\00", align 1
@.str.552 = private unnamed_addr constant [5 x i8] c"cue \00", align 1
@.str.553 = private unnamed_addr constant [5 x i8] c"bext\00", align 1
@.str.554 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.556 = private unnamed_addr constant [5 x i8] c"adtl\00", align 1
@.str.557 = private unnamed_addr constant [5 x i8] c"labl\00", align 1
@.str.558 = private unnamed_addr constant [5 x i8] c"note\00", align 1
@.str.559 = private unnamed_addr constant [5 x i8] c"ltxt\00", align 1
@.str.560 = private unnamed_addr constant [5 x i8] c"ISFT\00", align 1
@.str.561 = private unnamed_addr constant [5 x i8] c"ICOP\00", align 1
@.str.562 = private unnamed_addr constant [5 x i8] c"INAM\00", align 1
@.str.563 = private unnamed_addr constant [5 x i8] c"IART\00", align 1
@.str.564 = private unnamed_addr constant [5 x i8] c"ICMT\00", align 1
@.str.565 = private unnamed_addr constant [5 x i8] c"ICRD\00", align 1
@.str.566 = private unnamed_addr constant [5 x i8] c"IGNR\00", align 1
@.str.567 = private unnamed_addr constant [5 x i8] c"IPRD\00", align 1
@.str.568 = private unnamed_addr constant [5 x i8] c"ITRK\00", align 1
@.str.569 = private unnamed_addr constant [5 x i8] c"IARL\00", align 1
@.str.570 = private unnamed_addr constant [5 x i8] c"ICMS\00", align 1
@.str.571 = private unnamed_addr constant [5 x i8] c"IKEY\00", align 1
@.str.572 = private unnamed_addr constant [5 x i8] c"IMED\00", align 1
@.str.573 = private unnamed_addr constant [5 x i8] c"ISBJ\00", align 1
@ma_dr_wav_read_pcm_frames_s16__msadpcm.adaptationTable = internal unnamed_addr constant [16 x i32] [i32 230, i32 230, i32 230, i32 230, i32 307, i32 409, i32 512, i32 614, i32 768, i32 614, i32 512, i32 409, i32 307, i32 230, i32 230, i32 230], align 16
@ma_dr_wav_read_pcm_frames_s16__msadpcm.coeff1Table = internal unnamed_addr constant [7 x i32] [i32 256, i32 512, i32 0, i32 192, i32 240, i32 460, i32 392], align 16
@ma_dr_wav_read_pcm_frames_s16__msadpcm.coeff2Table = internal unnamed_addr constant [7 x i32] [i32 0, i32 -256, i32 0, i32 64, i32 0, i32 -208, i32 -232], align 16
@ma_dr_wav_read_pcm_frames_s16__ima.indexTable = internal unnamed_addr constant [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 16
@ma_dr_wav_read_pcm_frames_s16__ima.stepTable = internal unnamed_addr constant [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 16
@ma_dr_wav_gAlawTable = internal unnamed_addr constant [256 x i16] [i16 -5504, i16 -5248, i16 -6016, i16 -5760, i16 -4480, i16 -4224, i16 -4992, i16 -4736, i16 -7552, i16 -7296, i16 -8064, i16 -7808, i16 -6528, i16 -6272, i16 -7040, i16 -6784, i16 -2752, i16 -2624, i16 -3008, i16 -2880, i16 -2240, i16 -2112, i16 -2496, i16 -2368, i16 -3776, i16 -3648, i16 -4032, i16 -3904, i16 -3264, i16 -3136, i16 -3520, i16 -3392, i16 -22016, i16 -20992, i16 -24064, i16 -23040, i16 -17920, i16 -16896, i16 -19968, i16 -18944, i16 -30208, i16 -29184, i16 -32256, i16 -31232, i16 -26112, i16 -25088, i16 -28160, i16 -27136, i16 -11008, i16 -10496, i16 -12032, i16 -11520, i16 -8960, i16 -8448, i16 -9984, i16 -9472, i16 -15104, i16 -14592, i16 -16128, i16 -15616, i16 -13056, i16 -12544, i16 -14080, i16 -13568, i16 -344, i16 -328, i16 -376, i16 -360, i16 -280, i16 -264, i16 -312, i16 -296, i16 -472, i16 -456, i16 -504, i16 -488, i16 -408, i16 -392, i16 -440, i16 -424, i16 -88, i16 -72, i16 -120, i16 -104, i16 -24, i16 -8, i16 -56, i16 -40, i16 -216, i16 -200, i16 -248, i16 -232, i16 -152, i16 -136, i16 -184, i16 -168, i16 -1376, i16 -1312, i16 -1504, i16 -1440, i16 -1120, i16 -1056, i16 -1248, i16 -1184, i16 -1888, i16 -1824, i16 -2016, i16 -1952, i16 -1632, i16 -1568, i16 -1760, i16 -1696, i16 -688, i16 -656, i16 -752, i16 -720, i16 -560, i16 -528, i16 -624, i16 -592, i16 -944, i16 -912, i16 -1008, i16 -976, i16 -816, i16 -784, i16 -880, i16 -848, i16 5504, i16 5248, i16 6016, i16 5760, i16 4480, i16 4224, i16 4992, i16 4736, i16 7552, i16 7296, i16 8064, i16 7808, i16 6528, i16 6272, i16 7040, i16 6784, i16 2752, i16 2624, i16 3008, i16 2880, i16 2240, i16 2112, i16 2496, i16 2368, i16 3776, i16 3648, i16 4032, i16 3904, i16 3264, i16 3136, i16 3520, i16 3392, i16 22016, i16 20992, i16 24064, i16 23040, i16 17920, i16 16896, i16 19968, i16 18944, i16 30208, i16 29184, i16 32256, i16 31232, i16 26112, i16 25088, i16 28160, i16 27136, i16 11008, i16 10496, i16 12032, i16 11520, i16 8960, i16 8448, i16 9984, i16 9472, i16 15104, i16 14592, i16 16128, i16 15616, i16 13056, i16 12544, i16 14080, i16 13568, i16 344, i16 328, i16 376, i16 360, i16 280, i16 264, i16 312, i16 296, i16 472, i16 456, i16 504, i16 488, i16 408, i16 392, i16 440, i16 424, i16 88, i16 72, i16 120, i16 104, i16 24, i16 8, i16 56, i16 40, i16 216, i16 200, i16 248, i16 232, i16 152, i16 136, i16 184, i16 168, i16 1376, i16 1312, i16 1504, i16 1440, i16 1120, i16 1056, i16 1248, i16 1184, i16 1888, i16 1824, i16 2016, i16 1952, i16 1632, i16 1568, i16 1760, i16 1696, i16 688, i16 656, i16 752, i16 720, i16 560, i16 528, i16 624, i16 592, i16 944, i16 912, i16 1008, i16 976, i16 816, i16 784, i16 880, i16 848], align 16
@ma_dr_wav_gMulawTable = internal unnamed_addr constant [256 x i16] [i16 -32124, i16 -31100, i16 -30076, i16 -29052, i16 -28028, i16 -27004, i16 -25980, i16 -24956, i16 -23932, i16 -22908, i16 -21884, i16 -20860, i16 -19836, i16 -18812, i16 -17788, i16 -16764, i16 -15996, i16 -15484, i16 -14972, i16 -14460, i16 -13948, i16 -13436, i16 -12924, i16 -12412, i16 -11900, i16 -11388, i16 -10876, i16 -10364, i16 -9852, i16 -9340, i16 -8828, i16 -8316, i16 -7932, i16 -7676, i16 -7420, i16 -7164, i16 -6908, i16 -6652, i16 -6396, i16 -6140, i16 -5884, i16 -5628, i16 -5372, i16 -5116, i16 -4860, i16 -4604, i16 -4348, i16 -4092, i16 -3900, i16 -3772, i16 -3644, i16 -3516, i16 -3388, i16 -3260, i16 -3132, i16 -3004, i16 -2876, i16 -2748, i16 -2620, i16 -2492, i16 -2364, i16 -2236, i16 -2108, i16 -1980, i16 -1884, i16 -1820, i16 -1756, i16 -1692, i16 -1628, i16 -1564, i16 -1500, i16 -1436, i16 -1372, i16 -1308, i16 -1244, i16 -1180, i16 -1116, i16 -1052, i16 -988, i16 -924, i16 -876, i16 -844, i16 -812, i16 -780, i16 -748, i16 -716, i16 -684, i16 -652, i16 -620, i16 -588, i16 -556, i16 -524, i16 -492, i16 -460, i16 -428, i16 -396, i16 -372, i16 -356, i16 -340, i16 -324, i16 -308, i16 -292, i16 -276, i16 -260, i16 -244, i16 -228, i16 -212, i16 -196, i16 -180, i16 -164, i16 -148, i16 -132, i16 -120, i16 -112, i16 -104, i16 -96, i16 -88, i16 -80, i16 -72, i16 -64, i16 -56, i16 -48, i16 -40, i16 -32, i16 -24, i16 -16, i16 -8, i16 0, i16 32124, i16 31100, i16 30076, i16 29052, i16 28028, i16 27004, i16 25980, i16 24956, i16 23932, i16 22908, i16 21884, i16 20860, i16 19836, i16 18812, i16 17788, i16 16764, i16 15996, i16 15484, i16 14972, i16 14460, i16 13948, i16 13436, i16 12924, i16 12412, i16 11900, i16 11388, i16 10876, i16 10364, i16 9852, i16 9340, i16 8828, i16 8316, i16 7932, i16 7676, i16 7420, i16 7164, i16 6908, i16 6652, i16 6396, i16 6140, i16 5884, i16 5628, i16 5372, i16 5116, i16 4860, i16 4604, i16 4348, i16 4092, i16 3900, i16 3772, i16 3644, i16 3516, i16 3388, i16 3260, i16 3132, i16 3004, i16 2876, i16 2748, i16 2620, i16 2492, i16 2364, i16 2236, i16 2108, i16 1980, i16 1884, i16 1820, i16 1756, i16 1692, i16 1628, i16 1564, i16 1500, i16 1436, i16 1372, i16 1308, i16 1244, i16 1180, i16 1116, i16 1052, i16 988, i16 924, i16 876, i16 844, i16 812, i16 780, i16 748, i16 716, i16 684, i16 652, i16 620, i16 588, i16 556, i16 524, i16 492, i16 460, i16 428, i16 396, i16 372, i16 356, i16 340, i16 324, i16 308, i16 292, i16 276, i16 260, i16 244, i16 228, i16 212, i16 196, i16 180, i16 164, i16 148, i16 132, i16 120, i16 112, i16 104, i16 96, i16 88, i16 80, i16 72, i16 64, i16 56, i16 48, i16 40, i16 32, i16 24, i16 16, i16 8, i16 0], align 16
@ma_dr_flac__init_cpu_caps.isCPUCapsInitialized = internal unnamed_addr global i1 false, align 4
@ma_dr_flac__gIsLZCNTSupported = internal unnamed_addr global i32 0, align 4
@ma_dr_flac__gIsSSE2Supported = internal unnamed_addr global i1 false, align 4
@ma_dr_flac__crc32_table = internal unnamed_addr constant [256 x i32] [i32 0, i32 79764919, i32 159529838, i32 222504665, i32 319059676, i32 398814059, i32 445009330, i32 507990021, i32 638119352, i32 583659535, i32 797628118, i32 726387553, i32 890018660, i32 835552979, i32 1015980042, i32 944750013, i32 1276238704, i32 1221641927, i32 1167319070, i32 1095957929, i32 1595256236, i32 1540665371, i32 1452775106, i32 1381403509, i32 1780037320, i32 1859660671, i32 1671105958, i32 1733955601, i32 2031960084, i32 2111593891, i32 1889500026, i32 1952343757, i32 -1742489888, i32 -1662866601, i32 -1851683442, i32 -1788833735, i32 -1960329156, i32 -1880695413, i32 -2103051438, i32 -2040207643, i32 -1104454824, i32 -1159051537, i32 -1213636554, i32 -1284997759, i32 -1389417084, i32 -1444007885, i32 -1532160278, i32 -1603531939, i32 -734892656, i32 -789352409, i32 -575645954, i32 -646886583, i32 -952755380, i32 -1007220997, i32 -827056094, i32 -898286187, i32 -231047128, i32 -151282273, i32 -71779514, i32 -8804623, i32 -515967244, i32 -436212925, i32 -390279782, i32 -327299027, i32 881225847, i32 809987520, i32 1023691545, i32 969234094, i32 662832811, i32 591600412, i32 771767749, i32 717299826, i32 311336399, i32 374308984, i32 453813921, i32 533576470, i32 25881363, i32 88864420, i32 134795389, i32 214552010, i32 2023205639, i32 2086057648, i32 1897238633, i32 1976864222, i32 1804852699, i32 1867694188, i32 1645340341, i32 1724971778, i32 1587496639, i32 1516133128, i32 1461550545, i32 1406951526, i32 1302016099, i32 1230646740, i32 1142491917, i32 1087903418, i32 -1398421865, i32 -1469785312, i32 -1524105735, i32 -1578704818, i32 -1079922613, i32 -1151291908, i32 -1239184603, i32 -1293773166, i32 -1968362705, i32 -1905510760, i32 -2094067647, i32 -2014441994, i32 -1716953613, i32 -1654112188, i32 -1876203875, i32 -1796572374, i32 -525066777, i32 -462094256, i32 -382327159, i32 -302564546, i32 -206542021, i32 -143559028, i32 -97365931, i32 -17609246, i32 -960696225, i32 -1031934488, i32 -817968335, i32 -872425850, i32 -709327229, i32 -780559564, i32 -600130067, i32 -654598054, i32 1762451694, i32 1842216281, i32 1619975040, i32 1682949687, i32 2047383090, i32 2127137669, i32 1938468188, i32 2001449195, i32 1325665622, i32 1271206113, i32 1183200824, i32 1111960463, i32 1543535498, i32 1489069629, i32 1434599652, i32 1363369299, i32 622672798, i32 568075817, i32 748617968, i32 677256519, i32 907627842, i32 853037301, i32 1067152940, i32 995781531, i32 51762726, i32 131386257, i32 177728840, i32 240578815, i32 269590778, i32 349224269, i32 429104020, i32 491947555, i32 -248556018, i32 -168932423, i32 -122852000, i32 -60002089, i32 -500490030, i32 -420856475, i32 -341238852, i32 -278395381, i32 -685261898, i32 -739858943, i32 -559578920, i32 -630940305, i32 -1004286614, i32 -1058877219, i32 -845023740, i32 -916395085, i32 -1119974018, i32 -1174433591, i32 -1262701040, i32 -1333941337, i32 -1371866206, i32 -1426332139, i32 -1481064244, i32 -1552294533, i32 -1690935098, i32 -1611170447, i32 -1833673816, i32 -1770699233, i32 -2009983462, i32 -1930228819, i32 -2119160460, i32 -2056179517, i32 1569362073, i32 1498123566, i32 1409854455, i32 1355396672, i32 1317987909, i32 1246755826, i32 1192025387, i32 1137557660, i32 2072149281, i32 2135122070, i32 1912620623, i32 1992383480, i32 1753615357, i32 1816598090, i32 1627664531, i32 1707420964, i32 295390185, i32 358241886, i32 404320391, i32 483945776, i32 43990325, i32 106832002, i32 186451547, i32 266083308, i32 932423249, i32 861060070, i32 1041341759, i32 986742920, i32 613929101, i32 542559546, i32 756411363, i32 701822548, i32 -978770311, i32 -1050133554, i32 -869589737, i32 -924188512, i32 -693284699, i32 -764654318, i32 -550540341, i32 -605129092, i32 -475935807, i32 -413084042, i32 -366743377, i32 -287118056, i32 -257573603, i32 -194731862, i32 -114850189, i32 -35218492, i32 -1984365303, i32 -1921392450, i32 -2143631769, i32 -2063868976, i32 -1698919467, i32 -1635936670, i32 -1824608069, i32 -1744851700, i32 -1347415887, i32 -1418654458, i32 -1506661409, i32 -1561119128, i32 -1129027987, i32 -1200260134, i32 -1254728445, i32 -1309196108], align 16
@ma_dr_flac__crc16_table = internal unnamed_addr constant [256 x i16] [i16 0, i16 -32763, i16 -32753, i16 10, i16 -32741, i16 30, i16 20, i16 -32751, i16 -32717, i16 54, i16 60, i16 -32711, i16 40, i16 -32723, i16 -32729, i16 34, i16 -32669, i16 102, i16 108, i16 -32663, i16 120, i16 -32643, i16 -32649, i16 114, i16 80, i16 -32683, i16 -32673, i16 90, i16 -32693, i16 78, i16 68, i16 -32703, i16 -32573, i16 198, i16 204, i16 -32567, i16 216, i16 -32547, i16 -32553, i16 210, i16 240, i16 -32523, i16 -32513, i16 250, i16 -32533, i16 238, i16 228, i16 -32543, i16 160, i16 -32603, i16 -32593, i16 170, i16 -32581, i16 190, i16 180, i16 -32591, i16 -32621, i16 150, i16 156, i16 -32615, i16 136, i16 -32627, i16 -32633, i16 130, i16 -32381, i16 390, i16 396, i16 -32375, i16 408, i16 -32355, i16 -32361, i16 402, i16 432, i16 -32331, i16 -32321, i16 442, i16 -32341, i16 430, i16 420, i16 -32351, i16 480, i16 -32283, i16 -32273, i16 490, i16 -32261, i16 510, i16 500, i16 -32271, i16 -32301, i16 470, i16 476, i16 -32295, i16 456, i16 -32307, i16 -32313, i16 450, i16 320, i16 -32443, i16 -32433, i16 330, i16 -32421, i16 350, i16 340, i16 -32431, i16 -32397, i16 374, i16 380, i16 -32391, i16 360, i16 -32403, i16 -32409, i16 354, i16 -32477, i16 294, i16 300, i16 -32471, i16 312, i16 -32451, i16 -32457, i16 306, i16 272, i16 -32491, i16 -32481, i16 282, i16 -32501, i16 270, i16 260, i16 -32511, i16 -31997, i16 774, i16 780, i16 -31991, i16 792, i16 -31971, i16 -31977, i16 786, i16 816, i16 -31947, i16 -31937, i16 826, i16 -31957, i16 814, i16 804, i16 -31967, i16 864, i16 -31899, i16 -31889, i16 874, i16 -31877, i16 894, i16 884, i16 -31887, i16 -31917, i16 854, i16 860, i16 -31911, i16 840, i16 -31923, i16 -31929, i16 834, i16 960, i16 -31803, i16 -31793, i16 970, i16 -31781, i16 990, i16 980, i16 -31791, i16 -31757, i16 1014, i16 1020, i16 -31751, i16 1000, i16 -31763, i16 -31769, i16 994, i16 -31837, i16 934, i16 940, i16 -31831, i16 952, i16 -31811, i16 -31817, i16 946, i16 912, i16 -31851, i16 -31841, i16 922, i16 -31861, i16 910, i16 900, i16 -31871, i16 640, i16 -32123, i16 -32113, i16 650, i16 -32101, i16 670, i16 660, i16 -32111, i16 -32077, i16 694, i16 700, i16 -32071, i16 680, i16 -32083, i16 -32089, i16 674, i16 -32029, i16 742, i16 748, i16 -32023, i16 760, i16 -32003, i16 -32009, i16 754, i16 720, i16 -32043, i16 -32033, i16 730, i16 -32053, i16 718, i16 708, i16 -32063, i16 -32189, i16 582, i16 588, i16 -32183, i16 600, i16 -32163, i16 -32169, i16 594, i16 624, i16 -32139, i16 -32129, i16 634, i16 -32149, i16 622, i16 612, i16 -32159, i16 544, i16 -32219, i16 -32209, i16 554, i16 -32197, i16 574, i16 564, i16 -32207, i16 -32237, i16 534, i16 540, i16 -32231, i16 520, i16 -32243, i16 -32249, i16 514], align 16
@ma_dr_flac__clz_software.clz_table_4 = internal unnamed_addr constant [16 x i32] [i32 0, i32 4, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@ma_dr_flac__decode_samples__fixed.lpcCoefficientsTable = internal global [5 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 2, i32 -1, i32 0, i32 0], [4 x i32] [i32 3, i32 -3, i32 1, i32 0], [4 x i32] [i32 4, i32 -6, i32 4, i32 -1]], align 16
@__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t = private unnamed_addr constant [2 x i32] [i32 0, i32 -1], align 4
@__const.ma_dr_flac__read_next_flac_frame_header.sampleRateTable = private unnamed_addr constant [12 x i32] [i32 0, i32 88200, i32 176400, i32 192000, i32 8000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 96000], align 16
@__const.ma_dr_flac__read_next_flac_frame_header.bitsPerSampleTable = private unnamed_addr constant [8 x i8] c"\00\08\0C\FF\10\14\18\FF", align 1
@ma_dr_flac__crc8_table = internal unnamed_addr constant [256 x i8] c"\00\07\0E\09\1C\1B\12\158?61$#*-pw~ylkbeHOFATSZ]\E0\E7\EE\E9\FC\FB\F2\F5\D8\DF\D6\D1\C4\C3\CA\CD\90\97\9E\99\8C\8B\82\85\A8\AF\A6\A1\B4\B3\BA\BD\C7\C0\C9\CE\DB\DC\D5\D2\FF\F8\F1\F6\E3\E4\ED\EA\B7\B0\B9\BE\AB\AC\A5\A2\8F\88\81\86\93\94\9D\9A' ).;<52\1F\18\11\16\03\04\0D\0AWPY^KLEBohafst}z\89\8E\87\80\95\92\9B\9C\B1\B6\BF\B8\AD\AA\A3\A4\F9\FE\F7\F0\E5\E2\EB\EC\C1\C6\CF\C8\DD\DA\D3\D4ing`ur{|QV_XMJCD\19\1E\17\10\05\02\0B\0C!&/(=:34NI@GRU\\[vqx\7Fjmdc>907\22%,+\06\01\08\0F\1A\1D\14\13\AE\A9\A0\A7\B2\B5\BC\BB\96\91\98\9F\8A\8D\84\83\DE\D9\D0\D7\C2\C5\CC\CB\E6\E1\E8\EF\FA\FD\F4\F3", align 16
@__const.ma_dr_flac__get_channel_count_from_channel_assignment.lookup = private unnamed_addr constant [11 x i8] c"\01\02\03\04\05\06\07\08\02\02\02", align 1
@ma_dr_mp3_hdr_sample_rate_hz.g_hz = internal unnamed_addr constant [3 x i32] [i32 44100, i32 48000, i32 32000], align 4
@ma_dr_mp3_hdr_bitrate_kbps.halfrate = internal unnamed_addr constant [2 x [3 x [15 x i8]]] [[3 x [15 x i8]] [[15 x i8] c"\00\04\08\0C\10\14\18\1C (08@HP", [15 x i8] c"\00\04\08\0C\10\14\18\1C (08@HP", [15 x i8] c"\00\10\18\1C (08@HPX`p\80"], [3 x [15 x i8]] [[15 x i8] c"\00\10\14\18\1C (08@P`p\80\A0", [15 x i8] c"\00\10\18\1C (08@P`p\80\A0\C0", [15 x i8] c"\00\10 0@P`p\80\90\A0\B0\C0\D0\E0"]], align 16
@ma_dr_mp3_L3_read_side_info.g_scf_long = internal constant [8 x [23 x i8]] [[23 x i8] c"\06\06\06\06\06\06\08\0A\0C\0E\10\14\18\1C &.4<D:6\00", [23 x i8] c"\0C\0C\0C\0C\0C\0C\10\14\18\1C (08@LZ\02\02\02\02\02\00", [23 x i8] c"\06\06\06\06\06\06\08\0A\0C\0E\10\14\18\1C &.4<D:6\00", [23 x i8] c"\06\06\06\06\06\06\08\0A\0C\0E\10\12\16\1A &.6>FL$\00", [23 x i8] c"\06\06\06\06\06\06\08\0A\0C\0E\10\14\18\1C &.4<D:6\00", [23 x i8] c"\04\04\04\04\04\04\06\06\08\08\0A\0C\10\14\18\1C\22*26L\9E\00", [23 x i8] c"\04\04\04\04\04\04\06\06\06\08\0A\0C\10\12\16\1C\22(.66\C0\00", [23 x i8] c"\04\04\04\04\04\04\06\06\08\0A\0C\10\14\18\1E&.8DTf\1A\00"], align 16
@ma_dr_mp3_L3_read_side_info.g_scf_short = internal constant [8 x [40 x i8]] [[40 x i8] c"\04\04\04\04\04\04\04\04\04\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\18\18\18\1E\1E\1E(((\12\12\12\00", [40 x i8] c"\08\08\08\08\08\08\08\08\08\0C\0C\0C\10\10\10\14\14\14\18\18\18\1C\1C\1C$$$\02\02\02\02\02\02\02\02\02\1A\1A\1A\00", [40 x i8] c"\04\04\04\04\04\04\04\04\04\06\06\06\06\06\06\08\08\08\0A\0A\0A\0E\0E\0E\12\12\12\1A\1A\1A   ***\12\12\12\00", [40 x i8] c"\04\04\04\04\04\04\04\04\04\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\18\18\18   ,,,\0C\0C\0C\00", [40 x i8] c"\04\04\04\04\04\04\04\04\04\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\18\18\18\1E\1E\1E(((\12\12\12\00", [40 x i8] c"\04\04\04\04\04\04\04\04\04\04\04\04\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\16\16\16\1E\1E\1E888\00", [40 x i8] c"\04\04\04\04\04\04\04\04\04\04\04\04\06\06\06\06\06\06\0A\0A\0A\0C\0C\0C\0E\0E\0E\10\10\10\14\14\14\1A\1A\1ABBB\00", [40 x i8] c"\04\04\04\04\04\04\04\04\04\04\04\04\06\06\06\08\08\08\0C\0C\0C\10\10\10\14\14\14\1A\1A\1A\22\22\22***\0C\0C\0C\00"], align 16
@ma_dr_mp3_L3_read_side_info.g_scf_mixed = internal constant [8 x [40 x i8]] [[40 x i8] c"\06\06\06\06\06\06\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\18\18\18\1E\1E\1E(((\12\12\12\00\00\00\00", [40 x i8] c"\0C\0C\0C\04\04\04\08\08\08\0C\0C\0C\10\10\10\14\14\14\18\18\18\1C\1C\1C$$$\02\02\02\02\02\02\02\02\02\1A\1A\1A\00", [40 x i8] c"\06\06\06\06\06\06\06\06\06\06\06\06\08\08\08\0A\0A\0A\0E\0E\0E\12\12\12\1A\1A\1A   ***\12\12\12\00\00\00\00", [40 x i8] c"\06\06\06\06\06\06\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\18\18\18   ,,,\0C\0C\0C\00\00\00\00", [40 x i8] c"\06\06\06\06\06\06\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\18\18\18\1E\1E\1E(((\12\12\12\00\00\00\00", [40 x i8] c"\04\04\04\04\04\04\06\06\04\04\04\06\06\06\08\08\08\0A\0A\0A\0C\0C\0C\0E\0E\0E\12\12\12\16\16\16\1E\1E\1E888\00\00", [40 x i8] c"\04\04\04\04\04\04\06\06\04\04\04\06\06\06\06\06\06\0A\0A\0A\0C\0C\0C\0E\0E\0E\10\10\10\14\14\14\1A\1A\1ABBB\00\00", [40 x i8] c"\04\04\04\04\04\04\06\06\04\04\04\06\06\06\08\08\08\0C\0C\0C\10\10\10\14\14\14\1A\1A\1A\22\22\22***\0C\0C\0C\00\00"], align 16
@ma_dr_mp3_L3_decode_scalefactors.g_scf_partitions = internal unnamed_addr constant [3 x [28 x i8]] [[28 x i8] c"\06\05\05\05\06\05\05\05\06\05\07\03\0B\0A\00\00\07\07\07\00\06\06\06\03\08\08\05\00", [28 x i8] c"\08\09\06\0C\06\09\09\09\06\09\0C\06\0F\12\00\00\06\0F\0C\00\06\0C\09\06\06\12\09\00", [28 x i8] c"\09\09\06\0C\09\09\09\09\09\09\0C\06\12\12\00\00\0C\0C\0C\00\0C\09\09\06\0F\0C\09\00"], align 16
@ma_dr_mp3_L3_decode_scalefactors.g_scfc_decode = internal unnamed_addr constant [16 x i8] c"\00\01\02\03\0C\05\06\07\09\0A\0B\0D\0E\0F\12\13", align 16
@ma_dr_mp3_L3_decode_scalefactors.g_mod = internal unnamed_addr constant [24 x i8] c"\05\05\04\04\05\05\04\01\04\03\01\01\05\06\06\01\04\04\04\01\04\03\01\01", align 16
@ma_dr_mp3_L3_ldexp_q2.g_expfrac = internal unnamed_addr constant [4 x float] [float f0x30800000, float f0x305744FD, float f0x303504F3, float f0x301837F0], align 16
@ma_dr_mp3_L3_huffman.tabs = internal unnamed_addr constant [2164 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 785, i16 785, i16 785, i16 785, i16 784, i16 784, i16 784, i16 784, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 513, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 -255, i16 1313, i16 1298, i16 1282, i16 785, i16 785, i16 785, i16 785, i16 784, i16 784, i16 784, i16 784, i16 769, i16 769, i16 769, i16 769, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 290, i16 288, i16 -255, i16 1313, i16 1298, i16 1282, i16 769, i16 769, i16 769, i16 769, i16 529, i16 529, i16 529, i16 529, i16 529, i16 529, i16 529, i16 529, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 528, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 290, i16 288, i16 -253, i16 -318, i16 -351, i16 -367, i16 785, i16 785, i16 785, i16 785, i16 784, i16 784, i16 784, i16 784, i16 769, i16 769, i16 769, i16 769, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 819, i16 818, i16 547, i16 547, i16 275, i16 275, i16 275, i16 275, i16 561, i16 560, i16 515, i16 546, i16 289, i16 274, i16 288, i16 258, i16 -254, i16 -287, i16 1329, i16 1299, i16 1314, i16 1312, i16 1057, i16 1057, i16 1042, i16 1042, i16 1026, i16 1026, i16 784, i16 784, i16 784, i16 784, i16 529, i16 529, i16 529, i16 529, i16 529, i16 529, i16 529, i16 529, i16 769, i16 769, i16 769, i16 769, i16 768, i16 768, i16 768, i16 768, i16 563, i16 560, i16 306, i16 306, i16 291, i16 259, i16 -252, i16 -413, i16 -477, i16 -542, i16 1298, i16 -575, i16 1041, i16 1041, i16 784, i16 784, i16 784, i16 784, i16 769, i16 769, i16 769, i16 769, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 -383, i16 -399, i16 1107, i16 1092, i16 1106, i16 1061, i16 849, i16 849, i16 789, i16 789, i16 1104, i16 1091, i16 773, i16 773, i16 1076, i16 1075, i16 341, i16 340, i16 325, i16 309, i16 834, i16 804, i16 577, i16 577, i16 532, i16 532, i16 516, i16 516, i16 832, i16 818, i16 803, i16 816, i16 561, i16 561, i16 531, i16 531, i16 515, i16 546, i16 289, i16 289, i16 288, i16 258, i16 -252, i16 -429, i16 -493, i16 -559, i16 1057, i16 1057, i16 1042, i16 1042, i16 529, i16 529, i16 529, i16 529, i16 529, i16 529, i16 529, i16 529, i16 784, i16 784, i16 784, i16 784, i16 769, i16 769, i16 769, i16 769, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 -382, i16 1077, i16 -415, i16 1106, i16 1061, i16 1104, i16 849, i16 849, i16 789, i16 789, i16 1091, i16 1076, i16 1029, i16 1075, i16 834, i16 834, i16 597, i16 581, i16 340, i16 340, i16 339, i16 324, i16 804, i16 833, i16 532, i16 532, i16 832, i16 772, i16 818, i16 803, i16 817, i16 787, i16 816, i16 771, i16 290, i16 290, i16 290, i16 290, i16 288, i16 258, i16 -253, i16 -349, i16 -414, i16 -447, i16 -463, i16 1329, i16 1299, i16 -479, i16 1314, i16 1312, i16 1057, i16 1057, i16 1042, i16 1042, i16 1026, i16 1026, i16 785, i16 785, i16 785, i16 785, i16 784, i16 784, i16 784, i16 784, i16 769, i16 769, i16 769, i16 769, i16 768, i16 768, i16 768, i16 768, i16 -319, i16 851, i16 821, i16 -335, i16 836, i16 850, i16 805, i16 849, i16 341, i16 340, i16 325, i16 336, i16 533, i16 533, i16 579, i16 579, i16 564, i16 564, i16 773, i16 832, i16 578, i16 548, i16 563, i16 516, i16 321, i16 276, i16 306, i16 291, i16 304, i16 259, i16 -251, i16 -572, i16 -733, i16 -830, i16 -863, i16 -879, i16 1041, i16 1041, i16 784, i16 784, i16 784, i16 784, i16 769, i16 769, i16 769, i16 769, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 -511, i16 -527, i16 -543, i16 1396, i16 1351, i16 1381, i16 1366, i16 1395, i16 1335, i16 1380, i16 -559, i16 1334, i16 1138, i16 1138, i16 1063, i16 1063, i16 1350, i16 1392, i16 1031, i16 1031, i16 1062, i16 1062, i16 1364, i16 1363, i16 1120, i16 1120, i16 1333, i16 1348, i16 881, i16 881, i16 881, i16 881, i16 375, i16 374, i16 359, i16 373, i16 343, i16 358, i16 341, i16 325, i16 791, i16 791, i16 1123, i16 1122, i16 -703, i16 1105, i16 1045, i16 -719, i16 865, i16 865, i16 790, i16 790, i16 774, i16 774, i16 1104, i16 1029, i16 338, i16 293, i16 323, i16 308, i16 -799, i16 -815, i16 833, i16 788, i16 772, i16 818, i16 803, i16 816, i16 322, i16 292, i16 307, i16 320, i16 561, i16 531, i16 515, i16 546, i16 289, i16 274, i16 288, i16 258, i16 -251, i16 -525, i16 -605, i16 -685, i16 -765, i16 -831, i16 -846, i16 1298, i16 1057, i16 1057, i16 1312, i16 1282, i16 785, i16 785, i16 785, i16 785, i16 784, i16 784, i16 784, i16 784, i16 769, i16 769, i16 769, i16 769, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 512, i16 1399, i16 1398, i16 1383, i16 1367, i16 1382, i16 1396, i16 1351, i16 -511, i16 1381, i16 1366, i16 1139, i16 1139, i16 1079, i16 1079, i16 1124, i16 1124, i16 1364, i16 1349, i16 1363, i16 1333, i16 882, i16 882, i16 882, i16 882, i16 807, i16 807, i16 807, i16 807, i16 1094, i16 1094, i16 1136, i16 1136, i16 373, i16 341, i16 535, i16 535, i16 881, i16 775, i16 867, i16 822, i16 774, i16 -591, i16 324, i16 338, i16 -671, i16 849, i16 550, i16 550, i16 866, i16 864, i16 609, i16 609, i16 293, i16 336, i16 534, i16 534, i16 789, i16 835, i16 773, i16 -751, i16 834, i16 804, i16 308, i16 307, i16 833, i16 788, i16 832, i16 772, i16 562, i16 562, i16 547, i16 547, i16 305, i16 275, i16 560, i16 515, i16 290, i16 290, i16 -252, i16 -397, i16 -477, i16 -557, i16 -622, i16 -653, i16 -719, i16 -735, i16 -750, i16 1329, i16 1299, i16 1314, i16 1057, i16 1057, i16 1042, i16 1042, i16 1312, i16 1282, i16 1024, i16 1024, i16 785, i16 785, i16 785, i16 785, i16 784, i16 784, i16 784, i16 784, i16 769, i16 769, i16 769, i16 769, i16 -383, i16 1127, i16 1141, i16 1111, i16 1126, i16 1140, i16 1095, i16 1110, i16 869, i16 869, i16 883, i16 883, i16 1079, i16 1109, i16 882, i16 882, i16 375, i16 374, i16 807, i16 868, i16 838, i16 881, i16 791, i16 -463, i16 867, i16 822, i16 368, i16 263, i16 852, i16 837, i16 836, i16 -543, i16 610, i16 610, i16 550, i16 550, i16 352, i16 336, i16 534, i16 534, i16 865, i16 774, i16 851, i16 821, i16 850, i16 805, i16 593, i16 533, i16 579, i16 564, i16 773, i16 832, i16 578, i16 578, i16 548, i16 548, i16 577, i16 577, i16 307, i16 276, i16 306, i16 291, i16 516, i16 560, i16 259, i16 259, i16 -250, i16 -2107, i16 -2507, i16 -2764, i16 -2909, i16 -2974, i16 -3007, i16 -3023, i16 1041, i16 1041, i16 1040, i16 1040, i16 769, i16 769, i16 769, i16 769, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 -767, i16 -1052, i16 -1213, i16 -1277, i16 -1358, i16 -1405, i16 -1469, i16 -1535, i16 -1550, i16 -1582, i16 -1614, i16 -1647, i16 -1662, i16 -1694, i16 -1726, i16 -1759, i16 -1774, i16 -1807, i16 -1822, i16 -1854, i16 -1886, i16 1565, i16 -1919, i16 -1935, i16 -1951, i16 -1967, i16 1731, i16 1730, i16 1580, i16 1717, i16 -1983, i16 1729, i16 1564, i16 -1999, i16 1548, i16 -2015, i16 -2031, i16 1715, i16 1595, i16 -2047, i16 1714, i16 -2063, i16 1610, i16 -2079, i16 1609, i16 -2095, i16 1323, i16 1323, i16 1457, i16 1457, i16 1307, i16 1307, i16 1712, i16 1547, i16 1641, i16 1700, i16 1699, i16 1594, i16 1685, i16 1625, i16 1442, i16 1442, i16 1322, i16 1322, i16 -780, i16 -973, i16 -910, i16 1279, i16 1278, i16 1277, i16 1262, i16 1276, i16 1261, i16 1275, i16 1215, i16 1260, i16 1229, i16 -959, i16 974, i16 974, i16 989, i16 989, i16 -943, i16 735, i16 478, i16 478, i16 495, i16 463, i16 506, i16 414, i16 -1039, i16 1003, i16 958, i16 1017, i16 927, i16 942, i16 987, i16 957, i16 431, i16 476, i16 1272, i16 1167, i16 1228, i16 -1183, i16 1256, i16 -1199, i16 895, i16 895, i16 941, i16 941, i16 1242, i16 1227, i16 1212, i16 1135, i16 1014, i16 1014, i16 490, i16 489, i16 503, i16 487, i16 910, i16 1013, i16 985, i16 925, i16 863, i16 894, i16 970, i16 955, i16 1012, i16 847, i16 -1343, i16 831, i16 755, i16 755, i16 984, i16 909, i16 428, i16 366, i16 754, i16 559, i16 -1391, i16 752, i16 486, i16 457, i16 924, i16 997, i16 698, i16 698, i16 983, i16 893, i16 740, i16 740, i16 908, i16 877, i16 739, i16 739, i16 667, i16 667, i16 953, i16 938, i16 497, i16 287, i16 271, i16 271, i16 683, i16 606, i16 590, i16 712, i16 726, i16 574, i16 302, i16 302, i16 738, i16 736, i16 481, i16 286, i16 526, i16 725, i16 605, i16 711, i16 636, i16 724, i16 696, i16 651, i16 589, i16 681, i16 666, i16 710, i16 364, i16 467, i16 573, i16 695, i16 466, i16 466, i16 301, i16 465, i16 379, i16 379, i16 709, i16 604, i16 665, i16 679, i16 316, i16 316, i16 634, i16 633, i16 436, i16 436, i16 464, i16 269, i16 424, i16 394, i16 452, i16 332, i16 438, i16 363, i16 347, i16 408, i16 393, i16 448, i16 331, i16 422, i16 362, i16 407, i16 392, i16 421, i16 346, i16 406, i16 391, i16 376, i16 375, i16 359, i16 1441, i16 1306, i16 -2367, i16 1290, i16 -2383, i16 1337, i16 -2399, i16 -2415, i16 1426, i16 1321, i16 -2431, i16 1411, i16 1336, i16 -2447, i16 -2463, i16 -2479, i16 1169, i16 1169, i16 1049, i16 1049, i16 1424, i16 1289, i16 1412, i16 1352, i16 1319, i16 -2495, i16 1154, i16 1154, i16 1064, i16 1064, i16 1153, i16 1153, i16 416, i16 390, i16 360, i16 404, i16 403, i16 389, i16 344, i16 374, i16 373, i16 343, i16 358, i16 372, i16 327, i16 357, i16 342, i16 311, i16 356, i16 326, i16 1395, i16 1394, i16 1137, i16 1137, i16 1047, i16 1047, i16 1365, i16 1392, i16 1287, i16 1379, i16 1334, i16 1364, i16 1349, i16 1378, i16 1318, i16 1363, i16 792, i16 792, i16 792, i16 792, i16 1152, i16 1152, i16 1032, i16 1032, i16 1121, i16 1121, i16 1046, i16 1046, i16 1120, i16 1120, i16 1030, i16 1030, i16 -2895, i16 1106, i16 1061, i16 1104, i16 849, i16 849, i16 789, i16 789, i16 1091, i16 1076, i16 1029, i16 1090, i16 1060, i16 1075, i16 833, i16 833, i16 309, i16 324, i16 532, i16 532, i16 832, i16 772, i16 818, i16 803, i16 561, i16 561, i16 531, i16 560, i16 515, i16 546, i16 289, i16 274, i16 288, i16 258, i16 -250, i16 -1179, i16 -1579, i16 -1836, i16 -1996, i16 -2124, i16 -2253, i16 -2333, i16 -2413, i16 -2477, i16 -2542, i16 -2574, i16 -2607, i16 -2622, i16 -2655, i16 1314, i16 1313, i16 1298, i16 1312, i16 1282, i16 785, i16 785, i16 785, i16 785, i16 1040, i16 1040, i16 1025, i16 1025, i16 768, i16 768, i16 768, i16 768, i16 -766, i16 -798, i16 -830, i16 -862, i16 -895, i16 -911, i16 -927, i16 -943, i16 -959, i16 -975, i16 -991, i16 -1007, i16 -1023, i16 -1039, i16 -1055, i16 -1070, i16 1724, i16 1647, i16 -1103, i16 -1119, i16 1631, i16 1767, i16 1662, i16 1738, i16 1708, i16 1723, i16 -1135, i16 1780, i16 1615, i16 1779, i16 1599, i16 1677, i16 1646, i16 1778, i16 1583, i16 -1151, i16 1777, i16 1567, i16 1737, i16 1692, i16 1765, i16 1722, i16 1707, i16 1630, i16 1751, i16 1661, i16 1764, i16 1614, i16 1736, i16 1676, i16 1763, i16 1750, i16 1645, i16 1598, i16 1721, i16 1691, i16 1762, i16 1706, i16 1582, i16 1761, i16 1566, i16 -1167, i16 1749, i16 1629, i16 767, i16 766, i16 751, i16 765, i16 494, i16 494, i16 735, i16 764, i16 719, i16 749, i16 734, i16 763, i16 447, i16 447, i16 748, i16 718, i16 477, i16 506, i16 431, i16 491, i16 446, i16 476, i16 461, i16 505, i16 415, i16 430, i16 475, i16 445, i16 504, i16 399, i16 460, i16 489, i16 414, i16 503, i16 383, i16 474, i16 429, i16 459, i16 502, i16 502, i16 746, i16 752, i16 488, i16 398, i16 501, i16 473, i16 413, i16 472, i16 486, i16 271, i16 480, i16 270, i16 -1439, i16 -1455, i16 1357, i16 -1471, i16 -1487, i16 -1503, i16 1341, i16 1325, i16 -1519, i16 1489, i16 1463, i16 1403, i16 1309, i16 -1535, i16 1372, i16 1448, i16 1418, i16 1476, i16 1356, i16 1462, i16 1387, i16 -1551, i16 1475, i16 1340, i16 1447, i16 1402, i16 1386, i16 -1567, i16 1068, i16 1068, i16 1474, i16 1461, i16 455, i16 380, i16 468, i16 440, i16 395, i16 425, i16 410, i16 454, i16 364, i16 467, i16 466, i16 464, i16 453, i16 269, i16 409, i16 448, i16 268, i16 432, i16 1371, i16 1473, i16 1432, i16 1417, i16 1308, i16 1460, i16 1355, i16 1446, i16 1459, i16 1431, i16 1083, i16 1083, i16 1401, i16 1416, i16 1458, i16 1445, i16 1067, i16 1067, i16 1370, i16 1457, i16 1051, i16 1051, i16 1291, i16 1430, i16 1385, i16 1444, i16 1354, i16 1415, i16 1400, i16 1443, i16 1082, i16 1082, i16 1173, i16 1113, i16 1186, i16 1066, i16 1185, i16 1050, i16 -1967, i16 1158, i16 1128, i16 1172, i16 1097, i16 1171, i16 1081, i16 -1983, i16 1157, i16 1112, i16 416, i16 266, i16 375, i16 400, i16 1170, i16 1142, i16 1127, i16 1065, i16 793, i16 793, i16 1169, i16 1033, i16 1156, i16 1096, i16 1141, i16 1111, i16 1155, i16 1080, i16 1126, i16 1140, i16 898, i16 898, i16 808, i16 808, i16 897, i16 897, i16 792, i16 792, i16 1095, i16 1152, i16 1032, i16 1125, i16 1110, i16 1139, i16 1079, i16 1124, i16 882, i16 807, i16 838, i16 881, i16 853, i16 791, i16 -2319, i16 867, i16 368, i16 263, i16 822, i16 852, i16 837, i16 866, i16 806, i16 865, i16 -2399, i16 851, i16 352, i16 262, i16 534, i16 534, i16 821, i16 836, i16 594, i16 594, i16 549, i16 549, i16 593, i16 593, i16 533, i16 533, i16 848, i16 773, i16 579, i16 579, i16 564, i16 578, i16 548, i16 563, i16 276, i16 276, i16 577, i16 576, i16 306, i16 291, i16 516, i16 560, i16 305, i16 305, i16 275, i16 259, i16 -251, i16 -892, i16 -2058, i16 -2620, i16 -2828, i16 -2957, i16 -3023, i16 -3039, i16 1041, i16 1041, i16 1040, i16 1040, i16 769, i16 769, i16 769, i16 769, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 256, i16 -511, i16 -527, i16 -543, i16 -559, i16 1530, i16 -575, i16 -591, i16 1528, i16 1527, i16 1407, i16 1526, i16 1391, i16 1023, i16 1023, i16 1023, i16 1023, i16 1525, i16 1375, i16 1268, i16 1268, i16 1103, i16 1103, i16 1087, i16 1087, i16 1039, i16 1039, i16 1523, i16 -604, i16 815, i16 815, i16 815, i16 815, i16 510, i16 495, i16 509, i16 479, i16 508, i16 463, i16 507, i16 447, i16 431, i16 505, i16 415, i16 399, i16 -734, i16 -782, i16 1262, i16 -815, i16 1259, i16 1244, i16 -831, i16 1258, i16 1228, i16 -847, i16 -863, i16 1196, i16 -879, i16 1253, i16 987, i16 987, i16 748, i16 -767, i16 493, i16 493, i16 462, i16 477, i16 414, i16 414, i16 686, i16 669, i16 478, i16 446, i16 461, i16 445, i16 474, i16 429, i16 487, i16 458, i16 412, i16 471, i16 1266, i16 1264, i16 1009, i16 1009, i16 799, i16 799, i16 -1019, i16 -1276, i16 -1452, i16 -1581, i16 -1677, i16 -1757, i16 -1821, i16 -1886, i16 -1933, i16 -1997, i16 1257, i16 1257, i16 1483, i16 1468, i16 1512, i16 1422, i16 1497, i16 1406, i16 1467, i16 1496, i16 1421, i16 1510, i16 1134, i16 1134, i16 1225, i16 1225, i16 1466, i16 1451, i16 1374, i16 1405, i16 1252, i16 1252, i16 1358, i16 1480, i16 1164, i16 1164, i16 1251, i16 1251, i16 1238, i16 1238, i16 1389, i16 1465, i16 -1407, i16 1054, i16 1101, i16 -1423, i16 1207, i16 -1439, i16 830, i16 830, i16 1248, i16 1038, i16 1237, i16 1117, i16 1223, i16 1148, i16 1236, i16 1208, i16 411, i16 426, i16 395, i16 410, i16 379, i16 269, i16 1193, i16 1222, i16 1132, i16 1235, i16 1221, i16 1116, i16 976, i16 976, i16 1192, i16 1162, i16 1177, i16 1220, i16 1131, i16 1191, i16 963, i16 963, i16 -1647, i16 961, i16 780, i16 -1663, i16 558, i16 558, i16 994, i16 993, i16 437, i16 408, i16 393, i16 407, i16 829, i16 978, i16 813, i16 797, i16 947, i16 -1743, i16 721, i16 721, i16 377, i16 392, i16 844, i16 950, i16 828, i16 890, i16 706, i16 706, i16 812, i16 859, i16 796, i16 960, i16 948, i16 843, i16 934, i16 874, i16 571, i16 571, i16 -1919, i16 690, i16 555, i16 689, i16 421, i16 346, i16 539, i16 539, i16 944, i16 779, i16 918, i16 873, i16 932, i16 842, i16 903, i16 888, i16 570, i16 570, i16 931, i16 917, i16 674, i16 674, i16 -2575, i16 1562, i16 -2591, i16 1609, i16 -2607, i16 1654, i16 1322, i16 1322, i16 1441, i16 1441, i16 1696, i16 1546, i16 1683, i16 1593, i16 1669, i16 1624, i16 1426, i16 1426, i16 1321, i16 1321, i16 1639, i16 1680, i16 1425, i16 1425, i16 1305, i16 1305, i16 1545, i16 1668, i16 1608, i16 1623, i16 1667, i16 1592, i16 1638, i16 1666, i16 1320, i16 1320, i16 1652, i16 1607, i16 1409, i16 1409, i16 1304, i16 1304, i16 1288, i16 1288, i16 1664, i16 1637, i16 1395, i16 1395, i16 1335, i16 1335, i16 1622, i16 1636, i16 1394, i16 1394, i16 1319, i16 1319, i16 1606, i16 1621, i16 1392, i16 1392, i16 1137, i16 1137, i16 1137, i16 1137, i16 345, i16 390, i16 360, i16 375, i16 404, i16 373, i16 1047, i16 -2751, i16 -2767, i16 -2783, i16 1062, i16 1121, i16 1046, i16 -2799, i16 1077, i16 -2815, i16 1106, i16 1061, i16 789, i16 789, i16 1105, i16 1104, i16 263, i16 355, i16 310, i16 340, i16 325, i16 354, i16 352, i16 262, i16 339, i16 324, i16 1091, i16 1076, i16 1029, i16 1090, i16 1060, i16 1075, i16 833, i16 833, i16 788, i16 788, i16 1088, i16 1028, i16 818, i16 818, i16 803, i16 803, i16 561, i16 561, i16 531, i16 531, i16 816, i16 771, i16 546, i16 546, i16 289, i16 274, i16 288, i16 258, i16 -253, i16 -317, i16 -381, i16 -446, i16 -478, i16 -509, i16 1279, i16 1279, i16 -811, i16 -1179, i16 -1451, i16 -1756, i16 -1900, i16 -2028, i16 -2189, i16 -2253, i16 -2333, i16 -2414, i16 -2445, i16 -2511, i16 -2526, i16 1313, i16 1298, i16 -2559, i16 1041, i16 1041, i16 1040, i16 1040, i16 1025, i16 1025, i16 1024, i16 1024, i16 1022, i16 1007, i16 1021, i16 991, i16 1020, i16 975, i16 1019, i16 959, i16 687, i16 687, i16 1018, i16 1017, i16 671, i16 671, i16 655, i16 655, i16 1016, i16 1015, i16 639, i16 639, i16 758, i16 758, i16 623, i16 623, i16 757, i16 607, i16 756, i16 591, i16 755, i16 575, i16 754, i16 559, i16 543, i16 543, i16 1009, i16 783, i16 -575, i16 -621, i16 -685, i16 -749, i16 496, i16 -590, i16 750, i16 749, i16 734, i16 748, i16 974, i16 989, i16 1003, i16 958, i16 988, i16 973, i16 1002, i16 942, i16 987, i16 957, i16 972, i16 1001, i16 926, i16 986, i16 941, i16 971, i16 956, i16 1000, i16 910, i16 985, i16 925, i16 999, i16 894, i16 970, i16 -1071, i16 -1087, i16 -1102, i16 1390, i16 -1135, i16 1436, i16 1509, i16 1451, i16 1374, i16 -1151, i16 1405, i16 1358, i16 1480, i16 1420, i16 -1167, i16 1507, i16 1494, i16 1389, i16 1342, i16 1465, i16 1435, i16 1450, i16 1326, i16 1505, i16 1310, i16 1493, i16 1373, i16 1479, i16 1404, i16 1492, i16 1464, i16 1419, i16 428, i16 443, i16 472, i16 397, i16 736, i16 526, i16 464, i16 464, i16 486, i16 457, i16 442, i16 471, i16 484, i16 482, i16 1357, i16 1449, i16 1434, i16 1478, i16 1388, i16 1491, i16 1341, i16 1490, i16 1325, i16 1489, i16 1463, i16 1403, i16 1309, i16 1477, i16 1372, i16 1448, i16 1418, i16 1433, i16 1476, i16 1356, i16 1462, i16 1387, i16 -1439, i16 1475, i16 1340, i16 1447, i16 1402, i16 1474, i16 1324, i16 1461, i16 1371, i16 1473, i16 269, i16 448, i16 1432, i16 1417, i16 1308, i16 1460, i16 -1711, i16 1459, i16 -1727, i16 1441, i16 1099, i16 1099, i16 1446, i16 1386, i16 1431, i16 1401, i16 -1743, i16 1289, i16 1083, i16 1083, i16 1160, i16 1160, i16 1458, i16 1445, i16 1067, i16 1067, i16 1370, i16 1457, i16 1307, i16 1430, i16 1129, i16 1129, i16 1098, i16 1098, i16 268, i16 432, i16 267, i16 416, i16 266, i16 400, i16 -1887, i16 1144, i16 1187, i16 1082, i16 1173, i16 1113, i16 1186, i16 1066, i16 1050, i16 1158, i16 1128, i16 1143, i16 1172, i16 1097, i16 1171, i16 1081, i16 420, i16 391, i16 1157, i16 1112, i16 1170, i16 1142, i16 1127, i16 1065, i16 1169, i16 1049, i16 1156, i16 1096, i16 1141, i16 1111, i16 1155, i16 1080, i16 1126, i16 1154, i16 1064, i16 1153, i16 1140, i16 1095, i16 1048, i16 -2159, i16 1125, i16 1110, i16 1137, i16 -2175, i16 823, i16 823, i16 1139, i16 1138, i16 807, i16 807, i16 384, i16 264, i16 368, i16 263, i16 868, i16 838, i16 853, i16 791, i16 867, i16 822, i16 852, i16 837, i16 866, i16 806, i16 865, i16 790, i16 -2319, i16 851, i16 821, i16 836, i16 352, i16 262, i16 850, i16 805, i16 849, i16 -2399, i16 533, i16 533, i16 835, i16 820, i16 336, i16 261, i16 578, i16 548, i16 563, i16 577, i16 532, i16 532, i16 832, i16 772, i16 562, i16 562, i16 547, i16 547, i16 305, i16 275, i16 560, i16 515, i16 290, i16 290, i16 288, i16 258], align 16
@ma_dr_mp3_L3_huffman.tab32 = internal unnamed_addr constant [28 x i8] c"\82\A2\C1\D1,\1CL\8C\09\09\09\09\09\09\09\09\BE\FE\DE\EE~^\9D\9Dm=\AD\CD", align 16
@ma_dr_mp3_L3_huffman.tab33 = internal unnamed_addr constant [16 x i8] c"\FC\EC\DC\CC\BC\AC\9C\8C|l\\L<,\1C\0C", align 16
@ma_dr_mp3_L3_huffman.tabindex = internal unnamed_addr constant [32 x i16] [i16 0, i16 32, i16 64, i16 98, i16 0, i16 132, i16 180, i16 218, i16 292, i16 364, i16 426, i16 538, i16 648, i16 746, i16 0, i16 1126, i16 1460, i16 1460, i16 1460, i16 1460, i16 1460, i16 1460, i16 1460, i16 1460, i16 1842, i16 1842, i16 1842, i16 1842, i16 1842, i16 1842, i16 1842, i16 1842], align 16
@ma_dr_mp3_L3_huffman.g_linbits = internal unnamed_addr constant [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\06\08\0A\0D\04\05\06\07\08\09\0B\0D", align 16
@ma_dr_mp3_g_pow43 = internal unnamed_addr constant [145 x float] [float 0.000000e+00, float -1.000000e+00, float f0xC0214517, float f0xC08A74BA, float f0xC0CB2FF5, float -8.549880e+00, float f0xC12E718F, float f0xC1563F90, float -1.600000e+01, float f0xC195C41B, float f0xC1AC5AD3, float f0xC1C3B5D3, float f0xC1DBC8FF, float f0xC1F489EF, float f0xC206F7CD, float f0xC213F904, float 0.000000e+00, float 1.000000e+00, float f0x40214517, float f0x408A74BA, float f0x40CB2FF5, float 8.549880e+00, float f0x412E718F, float f0x41563F90, float 1.600000e+01, float f0x4195C41B, float f0x41AC5AD3, float f0x41C3B5D3, float f0x41DBC8FF, float f0x41F489EF, float f0x4206F7CD, float f0x4213F904, float f0x42214518, float f0x422ED8DF, float f0x423CB181, float f0x424ACC6C, float f0x42592746, float f0x4267BFE8, float f0x42769457, float f0x4282D161, float f0x428A74BA, float f0x4292336D, float f0x429A0CBF, float 8.100000e+01, float f0x42AA0C8A, float f0x42B231C3, float f0x42BA6F17, float f0x42C2C3FE, float f0x42CB2FF5, float f0x42D3B280, float f0x42DC4B2A, float f0x42E4F982, float f0x42EDBD20, float f0x42F6959C, float f0x42FF8298, float f0x430441DB, float f0x4308CC4F, float f0x430D607D, float f0x4311FE3D, float f0x4316A568, float f0x431B55D8, float f0x43200F69, float f0x4324D1F9, float f0x43299D65, float f0x432E718E, float f0x43334E55, float f0x4338339A, float f0x433D2142, float f0x43421730, float f0x43471549, float f0x434C1B72, float f0x43512992, float f0x43563F90, float f0x435B5D54, float f0x436082C7, float f0x4365AFD1, float f0x436AE45E, float f0x43702057, float f0x437563A8, float f0x437AAE3C, float 2.560000e+02, float f0x4382AC70, float f0x43855C65, float f0x43880FD6, float f0x438AC6BA, float f0x438D8108, float f0x43903EB7, float f0x4392FFC0, float f0x4395C41B, float f0x43988BBF, float f0x439B56A5, float f0x439E24C5, float f0x43A0F617, float f0x43A3CA96, float f0x43A6A239, float f0x43A97CFA, float f0x43AC5AD3, float f0x43AF3BBB, float f0x43B21FAD, float f0x43B506A4, float f0x43B7F097, float f0x43BADD82, float f0x43BDCD5E, float f0x43C0C025, float f0x43C3B5D3, float f0x43C6AE60, float f0x43C9A9C8, float f0x43CCA806, float f0x43CFA913, float f0x43D2ACEA, float f0x43D5B388, float f0x43D8BCE5, float f0x43DBC8FF, float f0x43DED7CE, float f0x43E1E950, float f0x43E4FD7F, float f0x43E81456, float f0x43EB2DD2, float f0x43EE49ED, float f0x43F168A2, float f0x43F489EF, float f0x43F7ADCF, float f0x43FAD43C, float f0x43FDFD34, float f0x44009459, float f0x44022B59, float f0x4403C399, float f0x44055D15, float f0x4406F7CD, float f0x440893BE, float f0x440A30E6, float f0x440BCF45, float f0x440D6ED7, float f0x440F0F9C, float f0x4410B190, float f0x441254B4, float f0x4413F904, float f0x44159E80, float f0x44174526, float f0x4418ECF3, float f0x441A95E7, float 6.250000e+02, float f0x441DEB3C, float f0x441F979A, float f0x44214518], align 16
@ma_dr_mp3_L3_stereo_process.g_pan = internal unnamed_addr constant [14 x float] [float 0.000000e+00, float 1.000000e+00, float f0x3E58658C, float f0x3F49E69D, float f0x3EBB67AE, float f0x3F224C29, float 5.000000e-01, float 5.000000e-01, float f0x3F224C29, float f0x3EBB67AE, float f0x3F49E69D, float f0x3E58658C, float 1.000000e+00, float 0.000000e+00], align 16
@ma_dr_mp3_L3_imdct_gr.g_mdct_window = internal constant [2 x [18 x float]] [[18 x float] [float f0x3F7FC1A0, float f0x3F7DCF55, float 9.762960e-01, float f0x3F7426CB, float f0x3F6C835E, float f0x3F631324, float f0x3F57E881, float f0x3F4B1934, float f0x3F3CBE35, float f0x3D32AA3C, float f0x3E05A8A8, float f0x3E5DA258, float f0x3E99F61C, float f0x3EC3EF15, float f0x3EEC6A50, float f0x3F098C78, float f0x3F1BD7CA, float f0x3F2CF37B], [18 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float f0x3F7DCF55, float f0x3F6C835E, float f0x3F4B1934, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float f0x3E05A8A8, float f0x3EC3EF15, float f0x3F1BD7CA]], align 16
@ma_dr_mp3d_synth.g_win = internal unnamed_addr constant [240 x float] [float -1.000000e+00, float 2.600000e+01, float -3.100000e+01, float 2.080000e+02, float 2.180000e+02, float 4.010000e+02, float -5.190000e+02, float 2.063000e+03, float 2.000000e+03, float 4.788000e+03, float -5.517000e+03, float 7.134000e+03, float 5.959000e+03, float 3.564000e+04, float -3.933600e+04, float 7.499200e+04, float -1.000000e+00, float 2.400000e+01, float -3.500000e+01, float 2.020000e+02, float 2.220000e+02, float 3.470000e+02, float -5.810000e+02, float 2.080000e+03, float 1.952000e+03, float 4.425000e+03, float -5.879000e+03, float 7.640000e+03, float 5.288000e+03, float 3.379100e+04, float -4.117600e+04, float 7.485600e+04, float -1.000000e+00, float 2.100000e+01, float -3.800000e+01, float 1.960000e+02, float 2.250000e+02, float 2.940000e+02, float -6.450000e+02, float 2.087000e+03, float 1.893000e+03, float 4.063000e+03, float -6.237000e+03, float 8.092000e+03, float 4.561000e+03, float 3.194700e+04, float -4.300600e+04, float 7.463000e+04, float -1.000000e+00, float 1.900000e+01, float -4.100000e+01, float 1.900000e+02, float 2.270000e+02, float 2.440000e+02, float -7.110000e+02, float 2.085000e+03, float 1.822000e+03, float 3.705000e+03, float -6.589000e+03, float 8.492000e+03, float 3.776000e+03, float 3.011200e+04, float -4.482100e+04, float 7.431300e+04, float -1.000000e+00, float 1.700000e+01, float -4.500000e+01, float 1.830000e+02, float 2.280000e+02, float 1.970000e+02, float -7.790000e+02, float 2.075000e+03, float 1.739000e+03, float 3.351000e+03, float -6.935000e+03, float 8.840000e+03, float 2.935000e+03, float 2.828900e+04, float -4.661700e+04, float 7.390800e+04, float -1.000000e+00, float 1.600000e+01, float -4.900000e+01, float 1.760000e+02, float 2.280000e+02, float 1.530000e+02, float -8.480000e+02, float 2.057000e+03, float 1.644000e+03, float 3.004000e+03, float -7.271000e+03, float 9.139000e+03, float 2.037000e+03, float 2.648200e+04, float -4.839000e+04, float 7.341500e+04, float -2.000000e+00, float 1.400000e+01, float -5.300000e+01, float 1.690000e+02, float 2.270000e+02, float 1.110000e+02, float -9.190000e+02, float 2.032000e+03, float 1.535000e+03, float 2.663000e+03, float -7.597000e+03, float 9.389000e+03, float 1.082000e+03, float 2.469400e+04, float -5.013700e+04, float 7.283500e+04, float -2.000000e+00, float 1.300000e+01, float -5.800000e+01, float 1.610000e+02, float 2.240000e+02, float 7.200000e+01, float -9.910000e+02, float 2.001000e+03, float 1.414000e+03, float 2.330000e+03, float -7.910000e+03, float 9.592000e+03, float 7.000000e+01, float 2.292900e+04, float -5.185300e+04, float 7.216900e+04, float -2.000000e+00, float 1.100000e+01, float -6.300000e+01, float 1.540000e+02, float 2.210000e+02, float 3.600000e+01, float -1.064000e+03, float 1.962000e+03, float 1.280000e+03, float 2.006000e+03, float -8.209000e+03, float 9.750000e+03, float -9.980000e+02, float 2.118900e+04, float -5.353400e+04, float 7.142000e+04, float -2.000000e+00, float 1.000000e+01, float -6.800000e+01, float 1.470000e+02, float 2.150000e+02, float 2.000000e+00, float -1.137000e+03, float 1.919000e+03, float 1.131000e+03, float 1.692000e+03, float -8.491000e+03, float 9.863000e+03, float -2.122000e+03, float 1.947800e+04, float -5.517800e+04, float 7.059000e+04, float -3.000000e+00, float 9.000000e+00, float -7.300000e+01, float 1.390000e+02, float 2.080000e+02, float -2.900000e+01, float -1.210000e+03, float 1.870000e+03, float 9.700000e+02, float 1.388000e+03, float -8.755000e+03, float 9.935000e+03, float -3.300000e+03, float 1.779900e+04, float -5.677800e+04, float 6.967900e+04, float -3.000000e+00, float 8.000000e+00, float -7.900000e+01, float 1.320000e+02, float 2.000000e+02, float -5.700000e+01, float -1.283000e+03, float 1.817000e+03, float 7.940000e+02, float 1.095000e+03, float -8.998000e+03, float 9.966000e+03, float -4.533000e+03, float 1.615500e+04, float -5.833300e+04, float 6.869200e+04, float -4.000000e+00, float 7.000000e+00, float -8.500000e+01, float 1.250000e+02, float 1.890000e+02, float -8.300000e+01, float -1.356000e+03, float 1.759000e+03, float 6.050000e+02, float 8.140000e+02, float -9.219000e+03, float 9.959000e+03, float -5.818000e+03, float 1.454800e+04, float -5.983800e+04, float 6.762900e+04, float -4.000000e+00, float 7.000000e+00, float -9.100000e+01, float 1.170000e+02, float 1.770000e+02, float -1.060000e+02, float -1.428000e+03, float 1.698000e+03, float 4.020000e+02, float 5.450000e+02, float -9.416000e+03, float 9.916000e+03, float -7.154000e+03, float 1.298000e+04, float -6.128900e+04, float 6.649400e+04, float -5.000000e+00, float 6.000000e+00, float -9.700000e+01, float 1.110000e+02, float 1.630000e+02, float -1.270000e+02, float -1.498000e+03, float 1.634000e+03, float 1.850000e+02, float 2.880000e+02, float -9.585000e+03, float 9.838000e+03, float -8.540000e+03, float 1.145500e+04, float -6.268400e+04, float 6.529000e+04], align 16
@ma_dr_mp3_L12_read_scale_info.g_bitalloc_code_tab = internal unnamed_addr constant [92 x i8] c"\00\11\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\00\11\12\03\13\04\05\06\07\08\09\0A\0B\0C\0D\10\00\11\12\03\13\04\05\10\00\11\12\10\00\11\12\13\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\00\11\12\03\13\04\05\06\07\08\09\0A\0B\0C\0D\0E\00\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ma_dr_mp3_L12_subband_alloc_table.g_alloc_L1 = internal unnamed_addr constant [1 x %struct.ma_dr_mp3_L12_subband_alloc] [%struct.ma_dr_mp3_L12_subband_alloc { i8 76, i8 4, i8 32 }], align 1
@ma_dr_mp3_L12_subband_alloc_table.g_alloc_L2M2 = internal unnamed_addr constant [3 x %struct.ma_dr_mp3_L12_subband_alloc] [%struct.ma_dr_mp3_L12_subband_alloc { i8 60, i8 4, i8 4 }, %struct.ma_dr_mp3_L12_subband_alloc { i8 44, i8 3, i8 7 }, %struct.ma_dr_mp3_L12_subband_alloc { i8 44, i8 2, i8 19 }], align 1
@ma_dr_mp3_L12_subband_alloc_table.g_alloc_L2M1 = internal unnamed_addr constant [4 x %struct.ma_dr_mp3_L12_subband_alloc] [%struct.ma_dr_mp3_L12_subband_alloc { i8 0, i8 4, i8 3 }, %struct.ma_dr_mp3_L12_subband_alloc { i8 16, i8 4, i8 8 }, %struct.ma_dr_mp3_L12_subband_alloc { i8 32, i8 3, i8 12 }, %struct.ma_dr_mp3_L12_subband_alloc { i8 40, i8 2, i8 7 }], align 1
@ma_dr_mp3_L12_subband_alloc_table.g_alloc_L2M1_lowrate = internal unnamed_addr constant [2 x %struct.ma_dr_mp3_L12_subband_alloc] [%struct.ma_dr_mp3_L12_subband_alloc { i8 44, i8 4, i8 2 }, %struct.ma_dr_mp3_L12_subband_alloc { i8 44, i8 3, i8 10 }], align 1
@ma_dr_mp3_L12_read_scalefactors.g_deq_L12 = internal unnamed_addr constant [54 x float] [float f0x34AAAAAB, float f0x3487754E, float f0x345706CB, float f0x34124925, float f0x33E836CF, float f0x33B84EF7, float f0x33888889, float f0x3358BBB0, float f0x332C056F, float f0x33042108, float f0x32D1BDE4, float f0x32A678DF, float f0x32820821, float f0x324E699B, float f0x3223D46A, float f0x32010204, float f0x31CCC988, float f0x31A28A2C, float f0x31808081, float 2.968360e-09, float f0x3121E6FF, float f0x31004020, float f0x30CB95C0, float f0x30A195E3, float f0x30802008, float f0x304B62CE, float f0x30216D73, float f0x30001002, float f0x2FCB495E, float f0x2FA15943, float f0x2F800801, float f0x2F4B3CA9, float f0x2F214F2D, float f0x2F000400, float f0x2ECB364F, float f0x2EA14A22, float f0x2E800200, float f0x2E4B3322, float f0x2E21479D, float f0x2E000100, float f0x2DCB318B, float f0x2DA1465B, float f0x2D800080, float f0x2D4B30C0, float f0x2D2145B9, float f0x34AAAAAB, float f0x3487754E, float f0x345706CB, float f0x344CCCCD, float f0x34228CC4, float f0x34010413, float f0x33E38E39, float f0x33B49C68, float f0x338F59DC], align 16
@switch.table.ma_result_from_errno = private unnamed_addr constant [126 x i32] [i32 0, i32 -3, i32 -7, i32 -7, i32 -21, i32 -20, i32 -7, i32 -2, i32 -10, i32 -10, i32 -1, i32 -22, i32 -4, i32 -6, i32 -24, i32 -1, i32 -19, i32 -8, i32 -1, i32 -7, i32 -14, i32 -15, i32 -2, i32 -9, i32 -9, i32 -3, i32 -19, i32 -11, i32 -18, i32 -25, i32 -6, i32 -28, i32 -26, i32 -5, i32 -5, i32 -27, i32 -12, i32 -1, i32 -29, i32 -16, i32 -28, i32 -1, i32 -30, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -5, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -10, i32 -1, i32 -32, i32 -34, i32 -32, i32 -35, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -31, i32 -11, i32 -36, i32 -1, i32 -1, i32 -6, i32 -10, i32 -10, i32 -1, i32 -1, i32 -33, i32 -1, i32 -1, i32 -1, i32 -37, i32 -38, i32 -11, i32 -39, i32 -40, i32 -41, i32 -44, i32 -3, i32 -42, i32 -43, i32 -23, i32 -1, i32 -35, i32 -35, i32 -35, i32 -35, i32 -45, i32 -18, i32 -46, i32 -47, i32 -1, i32 -1, i32 -34, i32 -48, i32 -49, i32 -49, i32 -50, i32 -50, i32 -10, i32 -1, i32 -1, i32 -1, i32 -1, i32 -20, i32 -18, i32 -7, i32 -1, i32 -51], align 4
@switch.table.ma_log_level_to_string = private unnamed_addr constant [3 x ptr] [ptr @.str.3, ptr @.str.2, ptr @.str.1], align 8
@switch.table.ma_is_backend_enabled = private unnamed_addr constant [8 x i8] c"\01\01\01\00\00\00\01\01", align 4
@switch.table.ma_get_format_priority_index = private unnamed_addr constant [5 x i8] c"\04\00\03\02\01", align 4
@switch.table.ma_channel_map_apply_f32 = private unnamed_addr constant [5 x i8] c"\03\04\05\0B\0C", align 8
@switch.table.ma_channel_map_apply_f32.56 = private unnamed_addr constant [6 x i8] c"\03\04\05\0A\0B\0C", align 8
@switch.table.ma_channel_map_apply_f32.57 = private unnamed_addr constant [8 x i8] c"\02\03\04\05\06\07\0B\0C", align 8
@switch.table.ma_channel_position_to_string = private unnamed_addr constant [52 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], align 8
@switch.table.ma_result_description = private unnamed_addr constant [404 x ptr] [ptr @.str.162, ptr @.str.161, ptr @.str.160, ptr @.str.159, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.158, ptr @.str.98, ptr @.str.157, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.156, ptr @.str.155, ptr @.str.154, ptr @.str.153, ptr @.str.152, ptr @.str.151, ptr @.str.150, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.98, ptr @.str.149, ptr @.str.148, ptr @.str.147, ptr @.str.146, ptr @.str.145, ptr @.str.144, ptr @.str.143, ptr @.str.142, ptr @.str.141, ptr @.str.140, ptr @.str.139, ptr @.str.138, ptr @.str.137, ptr @.str.136, ptr @.str.135, ptr @.str.134, ptr @.str.133, ptr @.str.132, ptr @.str.131, ptr @.str.130, ptr @.str.129, ptr @.str.128, ptr @.str.127, ptr @.str.126, ptr @.str.125, ptr @.str.124, ptr @.str.123, ptr @.str.122, ptr @.str.121, ptr @.str.120, ptr @.str.119, ptr @.str.118, ptr @.str.117, ptr @.str.116, ptr @.str.115, ptr @.str.114, ptr @.str.113, ptr @.str.112, ptr @.str.111, ptr @.str.110, ptr @.str.109, ptr @.str.108, ptr @.str.107, ptr @.str.106, ptr @.str.105, ptr @.str.104, ptr @.str.103, ptr @.str.102, ptr @.str.101, ptr @.str.100, ptr @.str.99, ptr @.str.98, ptr @.str.97], align 8
@switch.table.ma_wav_init_memory = private unnamed_addr constant [25 x i8] c"\01\05\05\05\05\05\05\05\02\05\05\05\05\05\05\05\03\05\05\05\05\05\05\05\04", align 4
@switch.table.ma_device_init__pulse.62 = private unnamed_addr constant [5 x i32] [i32 -6, i32 -2, i32 -1, i32 -1, i32 -204], align 4
@switch.table.ma_device_init__pulse.63 = private unnamed_addr constant [10 x ptr] [ptr @.str.163, ptr @.str.9, ptr @.str.9, ptr @.str.164, ptr @.str.9, ptr @.str.167, ptr @.str.9, ptr @.str.166, ptr @.str.9, ptr @.str.165], align 8
@switch.table.ma_device_init__pulse.64 = private unnamed_addr constant [10 x i8] [i8 1, i8 poison, i8 poison, i8 2, i8 poison, i8 5, i8 poison, i8 4, i8 poison, i8 3], align 4
@switch.table.ma_device_init__pulse.65 = private unnamed_addr constant [6 x ptr] [ptr @.str.9, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167], align 8
@switch.table.ma_device__pa_buffer_attr_new = private unnamed_addr constant [10 x i8] c"\01\00\00\02\00\05\00\04\00\03", align 8
@switch.table.ma_channel_position_from_pulse = private unnamed_addr constant [51 x i8] c"\01\02\03\04\0A\06\07\05\08\09\0B\0C\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\0D\0E\10\0F\11\13\12", align 1
@switch.table.ma_device_init_by_type__alsa = private unnamed_addr constant [32 x i8] [i8 1, i8 2, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 4, i8 poison, i8 poison, i8 poison, i8 5, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 3], align 4
@switch.table.ma_convert_alsa_channel_position_to_ma_channel = private unnamed_addr constant [26 x i8] c"\01\02\03\06\07\04\05\0B\0C\0A\08\09\00\00\00\00\00\00\00\0D\0E\10\0F\11\13\12", align 1
@switch.table.ma_dr_wav__write_or_count_metadata = private unnamed_addr constant [14 x ptr] [ptr @.str.560, ptr @.str.561, ptr @.str.562, ptr @.str.563, ptr @.str.564, ptr @.str.565, ptr @.str.566, ptr @.str.567, ptr @.str.568, ptr @.str.569, ptr @.str.570, ptr @.str.571, ptr @.str.572, ptr @.str.573], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_version(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !118
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %1, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 11, ptr %1, align 4, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 25, ptr %2, align 4, !tbaa !118
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ma_version_string() local_unnamed_addr #1 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 35) i32 @ma_strcpy_s(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 1, !tbaa !119
  br label %bb.f

.preheader:                                       ; preds = %bb.c, %bb.e
  %.024 = phi i64 [ %i.g, %bb.e ], [ 0, %bb.c ]   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.024
  %i.e = load i8, ptr %i.d, align 1, !tbaa !119   ; 2 uses
  %.not = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.024 ; 2 uses
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.preheader
  store i8 %i.e, ptr %i.f, align 1, !tbaa !119
  %i.g = add nuw i64 %.024, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %1
  br i1 %exitcond.not, label %.critedge22, label %.preheader, !llvm.loop !1208

.critedge:                                        ; preds = %.preheader
  store i8 0, ptr %i.f, align 1, !tbaa !119
  br label %bb.f

.critedge22:                                      ; preds = %bb.e
  store i8 0, ptr %0, align 1, !tbaa !119
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %.critedge22, %.critedge, %bb.d
  %.018 = phi i32 [ 34, %.critedge22 ], [ 22, %bb.a ], [ 22, %bb.d ], [ 0, %.critedge ], [ 34, %bb.b ]
  ret i32 %.018
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 35) i32 @ma_wcscpy_s(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %0, align 4, !tbaa !118
  br label %bb.f

.preheader:                                       ; preds = %bb.c, %bb.e
  %.025 = phi i64 [ %i.g, %bb.e ], [ 0, %bb.c ]   ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.025
  %i.e = load i32, ptr %i.d, align 4, !tbaa !118  ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.025 ; 2 uses
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.preheader
  store i32 %i.e, ptr %i.f, align 4, !tbaa !118
  %i.g = add nuw i64 %.025, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %1
  br i1 %exitcond.not, label %.critedge23, label %.preheader, !llvm.loop !1209

.critedge:                                        ; preds = %.preheader
  store i32 0, ptr %i.f, align 4, !tbaa !118
  br label %bb.f

.critedge23:                                      ; preds = %bb.e
  store i32 0, ptr %0, align 4, !tbaa !118
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %.critedge23, %.critedge, %bb.d
  %.018 = phi i32 [ 34, %.critedge23 ], [ 22, %bb.a ], [ 22, %bb.d ], [ 0, %.critedge ], [ 34, %bb.b ]
  ret i32 %.018
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 35) i32 @ma_strncpy_s(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 1, !tbaa !119
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %3, -1
end_hunk_0
begin_hunk_1_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %i.kg = xor i16 %i.jz, %i.kf
  store i16 %i.kg, ptr %i.n, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit.i.i

._crit_edge.i:                                    ; preds = %bb.y
  %.pre23.i = trunc i64 %i.hk to i16
  br label %bb.ag

bb.aa:                                            ; preds = %bb.y
  %i.kh = lshr i64 %i.hk, 48
  %i.ki = trunc nuw i64 %i.kh to i16
  %i.kj = shl i16 %i.hj, 8
  %i.kk = lshr i16 %i.hj, 8
  %i.kl = and i16 %i.ki, 255
  %i.km = xor i16 %i.kl, %i.kk
  %i.kn = zext nneg i16 %i.km to i64
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.kn
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !122
  %i.kq = xor i16 %i.kp, %i.kj
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.1.i105.i.i = phi i16 [ %i.kq, %bb.aa ], [ %i.hj, %bb.y ] ; 2 uses
  %i.kr = lshr i64 %i.hk, 40
  %i.ks = trunc i64 %i.kr to i16
  %i.kt = shl i16 %.1.i105.i.i, 8
  %i.ku = lshr i16 %.1.i105.i.i, 8
  %i.kv = and i16 %i.ks, 255
  %i.kw = xor i16 %i.ku, %i.kv
  %i.kx = zext nneg i16 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.kx
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !122
  %i.la = xor i16 %i.kt, %i.kz
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.2.i104.i.i = phi i16 [ %i.la, %bb.ab ], [ %i.hj, %bb.y ] ; 2 uses
  %i.lb = lshr i64 %i.hk, 32
  %i.lc = trunc i64 %i.lb to i16
  %i.ld = shl i16 %.2.i104.i.i, 8
  %i.le = lshr i16 %.2.i104.i.i, 8
  %i.lf = and i16 %i.lc, 255
  %i.lg = xor i16 %i.le, %i.lf
  %i.lh = zext nneg i16 %i.lg to i64
  %i.li = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !122
  %i.lk = xor i16 %i.ld, %i.lj
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %.3.i103.i.i = phi i16 [ %i.lk, %bb.ac ], [ %i.hj, %bb.y ] ; 2 uses
  %i.ll = lshr i64 %i.hk, 24
  %i.lm = trunc i64 %i.ll to i16
  %i.ln = shl i16 %.3.i103.i.i, 8
  %i.lo = lshr i16 %.3.i103.i.i, 8
  %i.lp = and i16 %i.lm, 255
  %i.lq = xor i16 %i.lo, %i.lp
  %i.lr = zext nneg i16 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.lr
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !122
  %i.lu = xor i16 %i.ln, %i.lt
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  %.4.i102.i.i = phi i16 [ %i.lu, %bb.ad ], [ %i.hj, %bb.y ] ; 2 uses
  %i.lv = lshr i64 %i.hk, 16
  %i.lw = trunc i64 %i.lv to i16
  %i.lx = shl i16 %.4.i102.i.i, 8
  %i.ly = lshr i16 %.4.i102.i.i, 8
  %i.lz = and i16 %i.lw, 255
  %i.ma = xor i16 %i.ly, %i.lz
  %i.mb = zext nneg i16 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.mb
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !122
  %i.me = xor i16 %i.lx, %i.md
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.y
  %.5.i101.i.i = phi i16 [ %i.me, %bb.ae ], [ %i.hj, %bb.y ] ; 2 uses
  %i.mf = trunc i64 %i.hk to i16                  ; 2 uses
  %i.mg = shl i16 %.5.i101.i.i, 8
  %i.mh = xor i16 %.5.i101.i.i, %i.mf
  %i.mi = lshr i16 %i.mh, 8
  %i.mj = zext nneg i16 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.mj
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !122
  %i.mm = xor i16 %i.mg, %i.ml
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.i
  %.pre-phi24.i = phi i16 [ %.pre23.i, %._crit_edge.i ], [ %i.mf, %bb.af ]
  %.6.i99.i.i = phi i16 [ %i.hj, %._crit_edge.i ], [ %i.mm, %bb.af ] ; 2 uses
  %i.mn = shl i16 %.6.i99.i.i, 8
  %i.mo = lshr i16 %.6.i99.i.i, 8
  %i.mp = and i16 %.pre-phi24.i, 255
  %i.mq = xor i16 %i.mo, %i.mp
  %i.mr = zext nneg i16 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.mr
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !122
  %i.mu = xor i16 %i.mn, %i.mt
  br label %ma_dr_flac_crc16_bytes.exit107.i.i

ma_dr_flac_crc16_bytes.exit107.i.i:               ; preds = %bb.ag, %bb.y
  %.7.i100.i.i = phi i16 [ %i.hj, %bb.y ], [ %i.mu, %bb.ag ]
  store i16 %.7.i100.i.i, ptr %i.n, align 8, !tbaa !1198
  store i32 0, ptr %i.m, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i.i

ma_dr_flac__update_crc16.exit.i.i:                ; preds = %ma_dr_flac_crc16_bytes.exit107.i.i, %bb.z
  %i.mv = add nuw nsw i32 %i.hg, 1
  store i32 %i.mv, ptr %i.l, align 8, !tbaa !738
  %i.mw = zext nneg i32 %i.hg to i64
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.mw
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !164
  %i.mz = tail call i64 @llvm.bswap.i64(i64 %i.my) ; 2 uses
  store i64 %i.mz, ptr %i.o, align 8, !tbaa !741
  br label %bb.aj

bb.ah:                                            ; preds = %bb.x
  %i.na = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i.i974 = icmp eq i32 %i.na, 0
  br i1 %.not.i.i974, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.nb = load i64, ptr %i.j, align 8, !tbaa !740
  %i.nc = load i32, ptr %i.k, align 4, !tbaa !739
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %ma_dr_flac__update_crc16.exit.i.i
  %.479.i.i = phi i64 [ %i.mz, %ma_dr_flac__update_crc16.exit.i.i ], [ %i.nb, %bb.ai ] ; 7 uses
  %.4.i.i975 = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i.i ], [ %i.nc, %bb.ai ]
  %i.nd = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i.i = icmp eq i32 %i.nd, 0
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ne = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i.i) #55, !srcloc !1207
  %i.nf = trunc i64 %i.ne to i32
  br label %ma_dr_flac__clz.exit.i.i

bb.al:                                            ; preds = %bb.aj
  %i.ng = icmp eq i64 %.479.i.i, 0
  br i1 %i.ng, label %ma_dr_flac__clz.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.nh = lshr i64 %.479.i.i, 60                  ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !118
  %i.nk = icmp eq i64 %i.nh, 0
  br i1 %i.nk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.nl = icmp ult i64 %.479.i.i, 4294967296      ; 2 uses
  %i.nm = shl nuw i64 %.479.i.i, 32
  %spec.select.i114.i.i = select i1 %i.nl, i64 %i.nm, i64 %.479.i.i ; 3 uses
  %spec.select26.i115.i.i = select i1 %i.nl, i32 32, i32 0 ; 2 uses
  %i.nn = icmp ult i64 %spec.select.i114.i.i, 281474976710656 ; 2 uses
  %i.no = or disjoint i32 %spec.select26.i115.i.i, 16
  %i.np = shl nuw i64 %spec.select.i114.i.i, 16
  %.119.i116.i.i = select i1 %i.nn, i64 %i.np, i64 %spec.select.i114.i.i ; 3 uses
  %.1.i117.i.i = select i1 %i.nn, i32 %i.no, i32 %spec.select26.i115.i.i ; 2 uses
  %i.nq = icmp ult i64 %.119.i116.i.i, 72057594037927936 ; 2 uses
  %i.nr = or disjoint i32 %.1.i117.i.i, 8
  %i.ns = shl nuw i64 %.119.i116.i.i, 8
  %.220.i118.i.i = select i1 %i.nq, i64 %i.ns, i64 %.119.i116.i.i ; 3 uses
  %.2.i119.i.i = select i1 %i.nq, i32 %i.nr, i32 %.1.i117.i.i ; 2 uses
  %i.nt = icmp ult i64 %.220.i118.i.i, 1152921504606846976 ; 2 uses
  %i.nu = or disjoint i32 %.2.i119.i.i, 4
  %i.nv = shl nuw i64 %.220.i118.i.i, 4
  %.321.i120.i.i = select i1 %i.nt, i64 %i.nv, i64 %.220.i118.i.i
  %.3.i121.i.i = select i1 %i.nt, i32 %i.nu, i32 %.2.i119.i.i
  %i.nw = lshr i64 %.321.i120.i.i, 60
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.nw
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !118
  %i.nz = add i32 %i.ny, %.3.i121.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.4.i112.i.i = phi i32 [ %i.nz, %bb.an ], [ %i.nj, %bb.am ]
  %i.oa = add i32 %.4.i112.i.i, -1
  br label %ma_dr_flac__clz.exit.i.i

ma_dr_flac__clz.exit.i.i:                         ; preds = %bb.ao, %bb.al, %bb.ak
  %.0.i.i.i = phi i32 [ %i.nf, %bb.ak ], [ %i.oa, %bb.ao ], [ 64, %bb.al ] ; 3 uses
  %i.ob = add i32 %.0.i.i.i, %.0.i.i973           ; 2 uses
  %i.oc = icmp ult i32 %.0.i.i.i, 64
  br i1 %i.oc, label %.loopexit.i, label %bb.x

bb.ap:                                            ; preds = %bb.w, %bb.i
  %.1.in.i = phi i64 [ %i.hd, %bb.w ], [ %i.av, %bb.i ]
  %.681.i.i = phi i64 [ %i.he, %bb.w ], [ %i.aw, %bb.i ] ; 2 uses
  %.6.i.i977 = phi i32 [ %.173.i.i, %bb.w ], [ %i.ax, %bb.i ]
  %.1.i978 = trunc i64 %.1.in.i to i32
  store i64 %.681.i.i, ptr %i.j, align 8, !tbaa !740
  store i32 %.6.i.i977, ptr %i.k, align 4, !tbaa !739
  %i.od = and i32 %.1.i978, %i.f
  %i.oe = shl i32 %.14.i976, %i.b
  %i.of = or i32 %i.od, %i.oe                     ; 2 uses
  %i.og = lshr i32 %i.of, 1
  %i.oh = and i32 %i.of, 1
  %9 = zext nneg i32 %i.oh to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !118
  %i.oi = xor i32 %11, %i.og
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i
  store i32 %i.oi, ptr %i.oj, align 4, !tbaa !118
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.c, !llvm.loop !3271

ma_dr_flac__ilog2_u32.exit:                       ; preds = %bb.a
  %i.ok = tail call range(i32 24, 33) i32 @llvm.ctlz.i32(i32 %4, i1 true)
  %i.ol = zext i8 %3 to i32                       ; 15 uses
  %i.om = zext nneg i8 %3 to i64
  %i.on = shl nsw i64 -1, %i.om
  %i.oo = trunc i64 %i.on to i32
  %i.op = xor i32 %i.oo, -1                       ; 9 uses
  %i.oq = and i32 %2, -4                          ; 4 uses
  %i.or = zext i32 %i.oq to i64
  %.idx = shl nuw nsw i64 %i.or, 2
  %i.os = getelementptr inbounds nuw i8, ptr %8, i64 %.idx ; 2 uses
  %i.ot = add nsw i32 %6, %1
  %reass.sub = sub nsw i32 %i.ot, %i.ok
  %i.ou = add nsw i32 %reass.sub, 32
  %i.ov = icmp ult i32 %i.ou, 33                  ; 2 uses
  %.not1178 = icmp eq i32 %i.oq, 0                ; 2 uses
  br i1 %i.ov, label %.preheader, label %.preheader1139

.preheader1139:                                   ; preds = %ma_dr_flac__ilog2_u32.exit
  br i1 %.not1178, label %.loopexit1129, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1139
  %i.ow = add nuw nsw i32 %i.ol, 1                ; 5 uses
  %i.ox = zext nneg i32 %i.ow to i64              ; 4 uses
  %i.oy = sub nsw i32 63, %i.ol                   ; 9 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 13 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 13 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 16 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 24 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 4168 ; 16 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.pg = zext nneg i32 %i.oy to i64              ; 4 uses
  %trunc.i763 = trunc nuw i32 %4 to i8            ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %7, i64 124 ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %7, i64 116 ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 4 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %7, i64 108 ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 4 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %7, i64 100 ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %7, i64 92 ; 4 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %7, i64 76 ; 4 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  %i.px = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 4 uses
  %i.py = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 4 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.qm = zext nneg i32 %5 to i64                 ; 4 uses
  %.pre = load i64, ptr %i.oz, align 8, !tbaa !740
  br label %bb.aq

.preheader:                                       ; preds = %ma_dr_flac__ilog2_u32.exit
  br i1 %.not1178, label %.loopexit1129, label %.lr.ph1165

.lr.ph1165:                                       ; preds = %.preheader
  %i.qn = add nuw nsw i32 %i.ol, 1                ; 5 uses
  %i.qo = zext nneg i32 %i.qn to i64              ; 4 uses
  %i.qp = sub nsw i32 63, %i.ol                   ; 9 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 13 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 13 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 16 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 24 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 4168 ; 16 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.qx = zext nneg i32 %i.qp to i64              ; 4 uses
  %trunc.i932 = trunc nuw i32 %4 to i8            ; 4 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %7, i64 124 ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %7, i64 116 ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %7, i64 108 ; 4 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %7, i64 100 ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %7, i64 92 ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %7, i64 76 ; 4 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %.pre1208 = load i64, ptr %i.qq, align 8, !tbaa !740
  br label %bb.lp

bb.aq:                                            ; preds = %.lr.ph, %ma_dr_flac__calculate_prediction_64.exit694
  %i.sd = phi i64 [ %.pre, %.lr.ph ], [ %.681.i410, %ma_dr_flac__calculate_prediction_64.exit694 ] ; 7 uses
  %.01151163 = phi ptr [ %8, %.lr.ph ], [ %i.dhc, %ma_dr_flac__calculate_prediction_64.exit694 ] ; 127 uses
  %i.se = load i32, ptr %i.pa, align 4, !tbaa !739 ; 2 uses
  %i.sf = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i94.i591 = icmp eq i32 %i.sf, 0
  br i1 %.not.i94.i591, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.sg = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.sd) #55, !srcloc !1207
  %i.sh = trunc i64 %i.sg to i32
  br label %ma_dr_flac__clz.exit96.i592

bb.as:                                            ; preds = %bb.aq
  %i.si = icmp eq i64 %i.sd, 0
  br i1 %i.si, label %ma_dr_flac__clz.exit96.i592.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.sj = lshr i64 %i.sd, 60                      ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !118
  %i.sm = icmp eq i64 %i.sj, 0
  br i1 %i.sm, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.sn = icmp ult i64 %i.sd, 4294967296          ; 2 uses
  %i.so = shl nuw i64 %i.sd, 32
  %spec.select.i.i648 = select i1 %i.sn, i64 %i.so, i64 %i.sd ; 3 uses
  %spec.select26.i.i649 = select i1 %i.sn, i32 32, i32 0 ; 2 uses
  %i.sp = icmp ult i64 %spec.select.i.i648, 281474976710656 ; 2 uses
  %i.sq = or disjoint i32 %spec.select26.i.i649, 16
  %i.sr = shl nuw i64 %spec.select.i.i648, 16
  %.119.i.i650 = select i1 %i.sp, i64 %i.sr, i64 %spec.select.i.i648 ; 3 uses
  %.1.i109.i651 = select i1 %i.sp, i32 %i.sq, i32 %spec.select26.i.i649 ; 2 uses
  %i.ss = icmp ult i64 %.119.i.i650, 72057594037927936 ; 2 uses
  %i.st = or disjoint i32 %.1.i109.i651, 8
  %i.su = shl nuw i64 %.119.i.i650, 8
  %.220.i.i652 = select i1 %i.ss, i64 %i.su, i64 %.119.i.i650 ; 3 uses
  %.2.i110.i653 = select i1 %i.ss, i32 %i.st, i32 %.1.i109.i651 ; 2 uses
  %i.sv = icmp ult i64 %.220.i.i652, 1152921504606846976 ; 2 uses
  %i.sw = or disjoint i32 %.2.i110.i653, 4
  %i.sx = shl nuw i64 %.220.i.i652, 4
  %.321.i.i654 = select i1 %i.sv, i64 %i.sx, i64 %.220.i.i652
  %.3.i111.i655 = select i1 %i.sv, i32 %i.sw, i32 %.2.i110.i653
  %i.sy = lshr i64 %.321.i.i654, 60
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.sy
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !118
  %i.tb = add i32 %i.ta, %.3.i111.i655
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.4.i108.i645 = phi i32 [ %i.tb, %bb.au ], [ %i.sl, %bb.at ]
  %i.tc = add i32 %.4.i108.i645, -1
  br label %ma_dr_flac__clz.exit96.i592

ma_dr_flac__clz.exit96.i592:                      ; preds = %bb.av, %bb.ar
  %.0.i95.i593 = phi i32 [ %i.sh, %bb.ar ], [ %i.tc, %bb.av ] ; 3 uses
  %i.td = icmp ult i32 %.0.i95.i593, 64
  br i1 %i.td, label %.loopexit1138, label %ma_dr_flac__clz.exit96.i592.thread

.loopexit1138:                                    ; preds = %ma_dr_flac__clz.exit.i602, %ma_dr_flac__clz.exit96.i592
  %.81070 = phi i32 [ %.0.i95.i593, %ma_dr_flac__clz.exit96.i592 ], [ %i.agn, %ma_dr_flac__clz.exit.i602 ]
  %.075.i604 = phi i64 [ %i.sd, %ma_dr_flac__clz.exit96.i592 ], [ %.479.i599, %ma_dr_flac__clz.exit.i602 ]
  %.072.i605 = phi i32 [ %i.se, %ma_dr_flac__clz.exit96.i592 ], [ %.4.i600, %ma_dr_flac__clz.exit.i602 ]
  %.070.i606 = phi i32 [ %.0.i95.i593, %ma_dr_flac__clz.exit96.i592 ], [ %.0.i.i603, %ma_dr_flac__clz.exit.i602 ] ; 2 uses
  %i.te = zext nneg i32 %.070.i606 to i64
  %i.tf = shl i64 %.075.i604, %i.te               ; 2 uses
  %i.tg = add i32 %.070.i606, %.072.i605          ; 3 uses
  %.not90.i607 = icmp ugt i32 %i.tg, %i.oy
  %i.th = lshr i64 %i.tf, %i.pg                   ; 2 uses
  br i1 %.not90.i607, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.loopexit1138
  %i.ti = shl i64 %i.tf, %i.ox
  %i.tj = add i32 %i.tg, %i.ow
end_hunk_1
begin_hunk_2_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %i.btx = lshr i64 %i.bra, 48
  %i.bty = trunc nuw i64 %i.btx to i16
  %i.btz = shl i16 %i.bqz, 8
  %i.bua = lshr i16 %i.bqz, 8
  %i.bub = and i16 %i.bty, 255
  %i.buc = xor i16 %i.bub, %i.bua
  %i.bud = zext nneg i16 %i.buc to i64
  %i.bue = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bud
  %i.buf = load i16, ptr %i.bue, align 2, !tbaa !122
  %i.bug = xor i16 %i.buf, %i.btz
  br label %bb.gc

bb.gc:                                            ; preds = %bb.fz, %bb.gb
  %.1.i105.i445 = phi i16 [ %i.bug, %bb.gb ], [ %i.bqz, %bb.fz ] ; 2 uses
  %i.buh = lshr i64 %i.bra, 40
  %i.bui = trunc i64 %i.buh to i16
  %i.buj = shl i16 %.1.i105.i445, 8
  %i.buk = lshr i16 %.1.i105.i445, 8
  %i.bul = and i16 %i.bui, 255
  %i.bum = xor i16 %i.buk, %i.bul
  %i.bun = zext nneg i16 %i.bum to i64
  %i.buo = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bun
  %i.bup = load i16, ptr %i.buo, align 2, !tbaa !122
  %i.buq = xor i16 %i.buj, %i.bup
  br label %bb.gd

bb.gd:                                            ; preds = %bb.fz, %bb.gc
  %.2.i104.i444 = phi i16 [ %i.buq, %bb.gc ], [ %i.bqz, %bb.fz ] ; 2 uses
  %i.bur = lshr i64 %i.bra, 32
  %i.bus = trunc i64 %i.bur to i16
  %i.but = shl i16 %.2.i104.i444, 8
  %i.buu = lshr i16 %.2.i104.i444, 8
  %i.buv = and i16 %i.bus, 255
  %i.buw = xor i16 %i.buu, %i.buv
  %i.bux = zext nneg i16 %i.buw to i64
  %i.buy = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bux
  %i.buz = load i16, ptr %i.buy, align 2, !tbaa !122
  %i.bva = xor i16 %i.but, %i.buz
  br label %bb.ge

bb.ge:                                            ; preds = %bb.fz, %bb.gd
  %.3.i103.i443 = phi i16 [ %i.bva, %bb.gd ], [ %i.bqz, %bb.fz ] ; 2 uses
  %i.bvb = lshr i64 %i.bra, 24
  %i.bvc = trunc i64 %i.bvb to i16
  %i.bvd = shl i16 %.3.i103.i443, 8
  %i.bve = lshr i16 %.3.i103.i443, 8
  %i.bvf = and i16 %i.bvc, 255
  %i.bvg = xor i16 %i.bve, %i.bvf
  %i.bvh = zext nneg i16 %i.bvg to i64
  %i.bvi = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bvh
  %i.bvj = load i16, ptr %i.bvi, align 2, !tbaa !122
  %i.bvk = xor i16 %i.bvd, %i.bvj
  br label %bb.gf

bb.gf:                                            ; preds = %bb.fz, %bb.ge
  %.4.i102.i442 = phi i16 [ %i.bvk, %bb.ge ], [ %i.bqz, %bb.fz ] ; 2 uses
  %i.bvl = lshr i64 %i.bra, 16
  %i.bvm = trunc i64 %i.bvl to i16
  %i.bvn = shl i16 %.4.i102.i442, 8
  %i.bvo = lshr i16 %.4.i102.i442, 8
  %i.bvp = and i16 %i.bvm, 255
  %i.bvq = xor i16 %i.bvo, %i.bvp
  %i.bvr = zext nneg i16 %i.bvq to i64
  %i.bvs = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bvr
  %i.bvt = load i16, ptr %i.bvs, align 2, !tbaa !122
  %i.bvu = xor i16 %i.bvn, %i.bvt
  br label %bb.gg

bb.gg:                                            ; preds = %bb.fz, %bb.gf
  %.5.i101.i441 = phi i16 [ %i.bvu, %bb.gf ], [ %i.bqz, %bb.fz ] ; 2 uses
  %i.bvv = trunc i64 %i.bra to i16                ; 2 uses
  %i.bvw = shl i16 %.5.i101.i441, 8
  %i.bvx = xor i16 %.5.i101.i441, %i.bvv
  %i.bvy = lshr i16 %i.bvx, 8
  %i.bvz = zext nneg i16 %i.bvy to i64
  %i.bwa = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bvz
  %i.bwb = load i16, ptr %i.bwa, align 2, !tbaa !122
  %i.bwc = xor i16 %i.bvw, %i.bwb
  br label %bb.gh

bb.gh:                                            ; preds = %._crit_edge1232, %bb.gg
  %.pre-phi1267 = phi i16 [ %.pre1266.a, %._crit_edge1232 ], [ %i.bvv, %bb.gg ]
  %.6.i99.i437 = phi i16 [ %i.bqz, %._crit_edge1232 ], [ %i.bwc, %bb.gg ] ; 2 uses
  %i.bwd = shl i16 %.6.i99.i437, 8
  %i.bwe = lshr i16 %.6.i99.i437, 8
  %i.bwf = and i16 %.pre-phi1267, 255
  %i.bwg = xor i16 %i.bwe, %i.bwf
  %i.bwh = zext nneg i16 %i.bwg to i64
  %i.bwi = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.bwh
  %i.bwj = load i16, ptr %i.bwi, align 2, !tbaa !122
  %i.bwk = xor i16 %i.bwd, %i.bwj
  br label %ma_dr_flac_crc16_bytes.exit107.i438

ma_dr_flac_crc16_bytes.exit107.i438:              ; preds = %bb.fz, %bb.gh
  %.7.i100.i439 = phi i16 [ %i.bqz, %bb.fz ], [ %i.bwk, %bb.gh ]
  store i16 %.7.i100.i439, ptr %i.pd, align 8, !tbaa !1198
  store i32 0, ptr %i.pc, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i440

ma_dr_flac__update_crc16.exit.i440:               ; preds = %ma_dr_flac_crc16_bytes.exit107.i438, %bb.ga
  %i.bwl = add nuw nsw i32 %i.bqw, 1
  store i32 %i.bwl, ptr %i.pb, align 8, !tbaa !738
  %i.bwm = zext nneg i32 %i.bqw to i64
  %i.bwn = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.bwm
  %i.bwo = load i64, ptr %i.bwn, align 8, !tbaa !164
  %i.bwp = tail call i64 @llvm.bswap.i64(i64 %i.bwo) ; 2 uses
  store i64 %i.bwp, ptr %i.pe, align 8, !tbaa !741
  br label %bb.gk

bb.gi:                                            ; preds = %bb.fy
  %i.bwq = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i400 = icmp eq i32 %i.bwq, 0
  br i1 %.not.i400, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.bwr = load i64, ptr %i.oz, align 8, !tbaa !740
  %i.bws = load i32, ptr %i.pa, align 4, !tbaa !739
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %ma_dr_flac__update_crc16.exit.i440
  %.479.i401 = phi i64 [ %i.bwp, %ma_dr_flac__update_crc16.exit.i440 ], [ %i.bwr, %bb.gj ] ; 7 uses
  %.4.i402 = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i440 ], [ %i.bws, %bb.gj ]
  %i.bwt = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i403 = icmp eq i32 %i.bwt, 0
  br i1 %.not.i.i403, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.bwu = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i401) #55, !srcloc !1207
  %i.bwv = trunc i64 %i.bwu to i32
  br label %ma_dr_flac__clz.exit.i404

bb.gm:                                            ; preds = %bb.gk
  %i.bww = icmp eq i64 %.479.i401, 0
  br i1 %i.bww, label %ma_dr_flac__clz.exit.i404, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.bwx = lshr i64 %.479.i401, 60                ; 2 uses
  %i.bwy = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.bwx
  %i.bwz = load i32, ptr %i.bwy, align 4, !tbaa !118
  %i.bxa = icmp eq i64 %i.bwx, 0
  br i1 %i.bxa, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.bxb = icmp ult i64 %.479.i401, 4294967296    ; 2 uses
  %i.bxc = shl nuw i64 %.479.i401, 32
  %spec.select.i114.i429 = select i1 %i.bxb, i64 %i.bxc, i64 %.479.i401 ; 3 uses
  %spec.select26.i115.i430 = select i1 %i.bxb, i32 32, i32 0 ; 2 uses
  %i.bxd = icmp ult i64 %spec.select.i114.i429, 281474976710656 ; 2 uses
  %i.bxe = or disjoint i32 %spec.select26.i115.i430, 16
  %i.bxf = shl nuw i64 %spec.select.i114.i429, 16
  %.119.i116.i431 = select i1 %i.bxd, i64 %i.bxf, i64 %spec.select.i114.i429 ; 3 uses
  %.1.i117.i432 = select i1 %i.bxd, i32 %i.bxe, i32 %spec.select26.i115.i430 ; 2 uses
  %i.bxg = icmp ult i64 %.119.i116.i431, 72057594037927936 ; 2 uses
  %i.bxh = or disjoint i32 %.1.i117.i432, 8
  %i.bxi = shl nuw i64 %.119.i116.i431, 8
  %.220.i118.i433 = select i1 %i.bxg, i64 %i.bxi, i64 %.119.i116.i431 ; 3 uses
  %.2.i119.i434 = select i1 %i.bxg, i32 %i.bxh, i32 %.1.i117.i432 ; 2 uses
  %i.bxj = icmp ult i64 %.220.i118.i433, 1152921504606846976 ; 2 uses
  %i.bxk = or disjoint i32 %.2.i119.i434, 4
  %i.bxl = shl nuw i64 %.220.i118.i433, 4
  %.321.i120.i435 = select i1 %i.bxj, i64 %i.bxl, i64 %.220.i118.i433
  %.3.i121.i436 = select i1 %i.bxj, i32 %i.bxk, i32 %.2.i119.i434
  %i.bxm = lshr i64 %.321.i120.i435, 60
  %i.bxn = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.bxm
  %i.bxo = load i32, ptr %i.bxn, align 4, !tbaa !118
  %i.bxp = add i32 %i.bxo, %.3.i121.i436
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.4.i112.i426 = phi i32 [ %i.bxp, %bb.go ], [ %i.bwz, %bb.gn ]
  %i.bxq = add i32 %.4.i112.i426, -1
  br label %ma_dr_flac__clz.exit.i404

ma_dr_flac__clz.exit.i404:                        ; preds = %bb.gm, %bb.gp, %bb.gl
  %.0.i.i405 = phi i32 [ %i.bwv, %bb.gl ], [ %i.bxq, %bb.gp ], [ 64, %bb.gm ] ; 3 uses
  %i.bxr = add i32 %.0.i.i405, %.0.i399           ; 2 uses
  %i.bxs = icmp ult i32 %.0.i.i405, 64
  br i1 %i.bxs, label %.loopexit1132, label %bb.fy

bb.gq:                                            ; preds = %bb.fx, %bb.fj
  %.4.in = phi i64 [ %i.bqt, %bb.fx ], [ %i.bkl, %bb.fj ]
  %.681.i410 = phi i64 [ %i.bqu, %bb.fx ], [ %i.bkm, %bb.fj ] ; 2 uses
  %.6.i411 = phi i32 [ %.173.i415, %bb.fx ], [ %i.bkn, %bb.fj ]
  %.4 = trunc i64 %.4.in to i32
  store i64 %.681.i410, ptr %i.oz, align 8, !tbaa !740
  store i32 %.6.i411, ptr %i.pa, align 4, !tbaa !739
  %i.bxt = and i32 %.8, %i.op
  %i.bxu = and i32 %.41036, %i.op
  %i.bxv = and i32 %.41030, %i.op
  %i.bxw = and i32 %.4, %i.op
  %i.bxx = shl i32 %.81070, %i.ol
  %i.bxy = or i32 %i.bxt, %i.bxx                  ; 2 uses
  %i.bxz = shl i32 %.41060, %i.ol
  %i.bya = or i32 %i.bxu, %i.bxz                  ; 2 uses
  %i.byb = shl i32 %.41054, %i.ol
  %i.byc = or i32 %i.bxv, %i.byb                  ; 2 uses
  %i.byd = shl i32 %.41048, %i.ol
  %i.bye = or i32 %i.bxw, %i.byd                  ; 2 uses
  %i.byf = lshr i32 %i.bxy, 1
  %i.byg = and i32 %i.bxy, 1
  %12 = zext nneg i32 %i.byg to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !118
  %i.byh = xor i32 %14, %i.byf
  %i.byi = lshr i32 %i.bya, 1
  %i.byj = and i32 %i.bya, 1
  %15 = zext nneg i32 %i.byj to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !118
  %i.byk = xor i32 %17, %i.byi
  %i.byl = lshr i32 %i.byc, 1
  %i.bym = and i32 %i.byc, 1
  %18 = zext nneg i32 %i.bym to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !118
  %i.byn = xor i32 %20, %i.byl
  %i.byo = lshr i32 %i.bye, 1
  %i.byp = and i32 %i.bye, 1
  %21 = zext nneg i32 %i.byp to i64
  %22 = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !118
  %i.byq = xor i32 %23, %i.byo
  switch i8 %trunc.i763, label %ma_dr_flac__calculate_prediction_64.exit796 [
    i8 32, label %bb.gr
    i8 31, label %bb.gs
    i8 30, label %bb.gt
    i8 29, label %bb.gu
    i8 28, label %bb.gv
    i8 27, label %bb.gw
    i8 26, label %bb.gx
    i8 25, label %bb.gy
    i8 24, label %bb.gz
    i8 23, label %bb.ha
    i8 22, label %bb.hb
    i8 21, label %bb.hc
    i8 20, label %bb.hd
    i8 19, label %bb.he
    i8 18, label %bb.hf
    i8 17, label %bb.hg
    i8 16, label %bb.hh
    i8 15, label %bb.hi
    i8 14, label %bb.hj
    i8 13, label %bb.hk
    i8 12, label %bb.hl
    i8 11, label %bb.hm
    i8 10, label %bb.hn
    i8 9, label %bb.ho
    i8 8, label %bb.hp
    i8 7, label %bb.hq
    i8 6, label %bb.hr
    i8 5, label %bb.hs
    i8 4, label %bb.ht
    i8 3, label %bb.hu
    i8 2, label %bb.hv
    i8 1, label %bb.hw
  ]

bb.gr:                                            ; preds = %bb.gq
  %i.byr = load i32, ptr %i.ph, align 4, !tbaa !118
  %i.bys = sext i32 %i.byr to i64
  %i.byt = getelementptr inbounds i8, ptr %.01151163, i64 -128
  %i.byu = load i32, ptr %i.byt, align 4, !tbaa !118
  %i.byv = sext i32 %i.byu to i64
  %i.byw = mul nsw i64 %i.byv, %i.bys
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.0.i795 = phi i64 [ %i.byw, %bb.gr ], [ 0, %bb.gq ]
  %i.byx = load i32, ptr %i.pi, align 4, !tbaa !118
  %i.byy = sext i32 %i.byx to i64
  %i.byz = getelementptr inbounds i8, ptr %.01151163, i64 -124
  %i.bza = load i32, ptr %i.byz, align 4, !tbaa !118
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = mul nsw i64 %i.bzb, %i.byy
  %i.bzd = add nsw i64 %i.bzc, %.0.i795
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gq
  %.1.i794 = phi i64 [ %i.bzd, %bb.gs ], [ 0, %bb.gq ]
  %i.bze = load i32, ptr %i.pj, align 4, !tbaa !118
  %i.bzf = sext i32 %i.bze to i64
  %i.bzg = getelementptr inbounds i8, ptr %.01151163, i64 -120
  %i.bzh = load i32, ptr %i.bzg, align 4, !tbaa !118
  %i.bzi = sext i32 %i.bzh to i64
  %i.bzj = mul nsw i64 %i.bzi, %i.bzf
  %i.bzk = add nsw i64 %i.bzj, %.1.i794
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gq
  %.2.i793 = phi i64 [ %i.bzk, %bb.gt ], [ 0, %bb.gq ]
  %i.bzl = load i32, ptr %i.pk, align 4, !tbaa !118
  %i.bzm = sext i32 %i.bzl to i64
  %i.bzn = getelementptr inbounds i8, ptr %.01151163, i64 -116
  %i.bzo = load i32, ptr %i.bzn, align 4, !tbaa !118
  %i.bzp = sext i32 %i.bzo to i64
  %i.bzq = mul nsw i64 %i.bzp, %i.bzm
  %i.bzr = add nsw i64 %i.bzq, %.2.i793
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gq
  %.3.i792 = phi i64 [ %i.bzr, %bb.gu ], [ 0, %bb.gq ]
  %i.bzs = load i32, ptr %i.pl, align 4, !tbaa !118
  %i.bzt = sext i32 %i.bzs to i64
  %i.bzu = getelementptr inbounds i8, ptr %.01151163, i64 -112
  %i.bzv = load i32, ptr %i.bzu, align 4, !tbaa !118
  %i.bzw = sext i32 %i.bzv to i64
  %i.bzx = mul nsw i64 %i.bzw, %i.bzt
  %i.bzy = add nsw i64 %i.bzx, %.3.i792
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gq
  %.4.i791 = phi i64 [ %i.bzy, %bb.gv ], [ 0, %bb.gq ]
  %i.bzz = load i32, ptr %i.pm, align 4, !tbaa !118
  %i.caa = sext i32 %i.bzz to i64
  %i.cab = getelementptr inbounds i8, ptr %.01151163, i64 -108
  %i.cac = load i32, ptr %i.cab, align 4, !tbaa !118
  %i.cad = sext i32 %i.cac to i64
  %i.cae = mul nsw i64 %i.cad, %i.caa
  %i.caf = add nsw i64 %i.cae, %.4.i791
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gq
  %.5.i790 = phi i64 [ %i.caf, %bb.gw ], [ 0, %bb.gq ]
  %i.cag = load i32, ptr %i.pn, align 4, !tbaa !118
  %i.cah = sext i32 %i.cag to i64
  %i.cai = getelementptr inbounds i8, ptr %.01151163, i64 -104
  %i.caj = load i32, ptr %i.cai, align 4, !tbaa !118
  %i.cak = sext i32 %i.caj to i64
  %i.cal = mul nsw i64 %i.cak, %i.cah
  %i.cam = add nsw i64 %i.cal, %.5.i790
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gq
  %.6.i789 = phi i64 [ %i.cam, %bb.gx ], [ 0, %bb.gq ]
  %i.can = load i32, ptr %i.po, align 4, !tbaa !118
  %i.cao = sext i32 %i.can to i64
  %i.cap = getelementptr inbounds i8, ptr %.01151163, i64 -100
  %i.caq = load i32, ptr %i.cap, align 4, !tbaa !118
  %i.car = sext i32 %i.caq to i64
  %i.cas = mul nsw i64 %i.car, %i.cao
  %i.cat = add nsw i64 %i.cas, %.6.i789
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gq
  %.7.i788 = phi i64 [ %i.cat, %bb.gy ], [ 0, %bb.gq ]
  %i.cau = load i32, ptr %i.pp, align 4, !tbaa !118
  %i.cav = sext i32 %i.cau to i64
  %i.caw = getelementptr inbounds i8, ptr %.01151163, i64 -96
  %i.cax = load i32, ptr %i.caw, align 4, !tbaa !118
  %i.cay = sext i32 %i.cax to i64
  %i.caz = mul nsw i64 %i.cay, %i.cav
  %i.cba = add nsw i64 %i.caz, %.7.i788
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gq
  %.8.i787 = phi i64 [ %i.cba, %bb.gz ], [ 0, %bb.gq ]
  %i.cbb = load i32, ptr %i.pq, align 4, !tbaa !118
  %i.cbc = sext i32 %i.cbb to i64
  %i.cbd = getelementptr inbounds i8, ptr %.01151163, i64 -92
  %i.cbe = load i32, ptr %i.cbd, align 4, !tbaa !118
  %i.cbf = sext i32 %i.cbe to i64
  %i.cbg = mul nsw i64 %i.cbf, %i.cbc
  %i.cbh = add nsw i64 %i.cbg, %.8.i787
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gq
  %.9.i786 = phi i64 [ %i.cbh, %bb.ha ], [ 0, %bb.gq ]
  %i.cbi = load i32, ptr %i.pr, align 4, !tbaa !118
  %i.cbj = sext i32 %i.cbi to i64
  %i.cbk = getelementptr inbounds i8, ptr %.01151163, i64 -88
  %i.cbl = load i32, ptr %i.cbk, align 4, !tbaa !118
  %i.cbm = sext i32 %i.cbl to i64
  %i.cbn = mul nsw i64 %i.cbm, %i.cbj
  %i.cbo = add nsw i64 %i.cbn, %.9.i786
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.gq
  %.10.i785 = phi i64 [ %i.cbo, %bb.hb ], [ 0, %bb.gq ]
  %i.cbp = load i32, ptr %i.ps, align 4, !tbaa !118
  %i.cbq = sext i32 %i.cbp to i64
  %i.cbr = getelementptr inbounds i8, ptr %.01151163, i64 -84
  %i.cbs = load i32, ptr %i.cbr, align 4, !tbaa !118
  %i.cbt = sext i32 %i.cbs to i64
  %i.cbu = mul nsw i64 %i.cbt, %i.cbq
  %i.cbv = add nsw i64 %i.cbu, %.10.i785
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.gq
  %.11.i784 = phi i64 [ %i.cbv, %bb.hc ], [ 0, %bb.gq ]
  %i.cbw = load i32, ptr %i.pt, align 4, !tbaa !118
  %i.cbx = sext i32 %i.cbw to i64
  %i.cby = getelementptr inbounds i8, ptr %.01151163, i64 -80
  %i.cbz = load i32, ptr %i.cby, align 4, !tbaa !118
  %i.cca = sext i32 %i.cbz to i64
  %i.ccb = mul nsw i64 %i.cca, %i.cbx
  %i.ccc = add nsw i64 %i.ccb, %.11.i784
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.gq
  %.12.i783 = phi i64 [ %i.ccc, %bb.hd ], [ 0, %bb.gq ]
  %i.ccd = load i32, ptr %i.pu, align 4, !tbaa !118
  %i.cce = sext i32 %i.ccd to i64
  %i.ccf = getelementptr inbounds i8, ptr %.01151163, i64 -76
  %i.ccg = load i32, ptr %i.ccf, align 4, !tbaa !118
  %i.cch = sext i32 %i.ccg to i64
  %i.cci = mul nsw i64 %i.cch, %i.cce
  %i.ccj = add nsw i64 %i.cci, %.12.i783
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.gq
  %.13.i782 = phi i64 [ %i.ccj, %bb.he ], [ 0, %bb.gq ]
  %i.cck = load i32, ptr %i.pv, align 4, !tbaa !118
  %i.ccl = sext i32 %i.cck to i64
  %i.ccm = getelementptr inbounds i8, ptr %.01151163, i64 -72
  %i.ccn = load i32, ptr %i.ccm, align 4, !tbaa !118
  %i.cco = sext i32 %i.ccn to i64
  %i.ccp = mul nsw i64 %i.cco, %i.ccl
  %i.ccq = add nsw i64 %i.ccp, %.13.i782
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.gq
  %.14.i781 = phi i64 [ %i.ccq, %bb.hf ], [ 0, %bb.gq ]
end_hunk_2
begin_hunk_3_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %i.fiy = lshr i64 %i.fgb, 48
  %i.fiz = trunc nuw i64 %i.fiy to i16
  %i.fja = shl i16 %i.fga, 8
  %i.fjb = lshr i16 %i.fga, 8
  %i.fjc = and i16 %i.fiz, 255
  %i.fjd = xor i16 %i.fjc, %i.fjb
  %i.fje = zext nneg i16 %i.fjd to i64
  %i.fjf = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fje
  %i.fjg = load i16, ptr %i.fjf, align 2, !tbaa !122
  %i.fjh = xor i16 %i.fjg, %i.fja
  br label %bb.rb

bb.rb:                                            ; preds = %bb.qy, %bb.ra
  %.1.i105.i181 = phi i16 [ %i.fjh, %bb.ra ], [ %i.fga, %bb.qy ] ; 2 uses
  %i.fji = lshr i64 %i.fgb, 40
  %i.fjj = trunc i64 %i.fji to i16
  %i.fjk = shl i16 %.1.i105.i181, 8
  %i.fjl = lshr i16 %.1.i105.i181, 8
  %i.fjm = and i16 %i.fjj, 255
  %i.fjn = xor i16 %i.fjl, %i.fjm
  %i.fjo = zext nneg i16 %i.fjn to i64
  %i.fjp = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fjo
  %i.fjq = load i16, ptr %i.fjp, align 2, !tbaa !122
  %i.fjr = xor i16 %i.fjk, %i.fjq
  br label %bb.rc

bb.rc:                                            ; preds = %bb.qy, %bb.rb
  %.2.i104.i180 = phi i16 [ %i.fjr, %bb.rb ], [ %i.fga, %bb.qy ] ; 2 uses
  %i.fjs = lshr i64 %i.fgb, 32
  %i.fjt = trunc i64 %i.fjs to i16
  %i.fju = shl i16 %.2.i104.i180, 8
  %i.fjv = lshr i16 %.2.i104.i180, 8
  %i.fjw = and i16 %i.fjt, 255
  %i.fjx = xor i16 %i.fjv, %i.fjw
  %i.fjy = zext nneg i16 %i.fjx to i64
  %i.fjz = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fjy
  %i.fka = load i16, ptr %i.fjz, align 2, !tbaa !122
  %i.fkb = xor i16 %i.fju, %i.fka
  br label %bb.rd

bb.rd:                                            ; preds = %bb.qy, %bb.rc
  %.3.i103.i179 = phi i16 [ %i.fkb, %bb.rc ], [ %i.fga, %bb.qy ] ; 2 uses
  %i.fkc = lshr i64 %i.fgb, 24
  %i.fkd = trunc i64 %i.fkc to i16
  %i.fke = shl i16 %.3.i103.i179, 8
  %i.fkf = lshr i16 %.3.i103.i179, 8
  %i.fkg = and i16 %i.fkd, 255
  %i.fkh = xor i16 %i.fkf, %i.fkg
  %i.fki = zext nneg i16 %i.fkh to i64
  %i.fkj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fki
  %i.fkk = load i16, ptr %i.fkj, align 2, !tbaa !122
  %i.fkl = xor i16 %i.fke, %i.fkk
  br label %bb.re

bb.re:                                            ; preds = %bb.qy, %bb.rd
  %.4.i102.i178 = phi i16 [ %i.fkl, %bb.rd ], [ %i.fga, %bb.qy ] ; 2 uses
  %i.fkm = lshr i64 %i.fgb, 16
  %i.fkn = trunc i64 %i.fkm to i16
  %i.fko = shl i16 %.4.i102.i178, 8
  %i.fkp = lshr i16 %.4.i102.i178, 8
  %i.fkq = and i16 %i.fkn, 255
  %i.fkr = xor i16 %i.fkp, %i.fkq
  %i.fks = zext nneg i16 %i.fkr to i64
  %i.fkt = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fks
  %i.fku = load i16, ptr %i.fkt, align 2, !tbaa !122
  %i.fkv = xor i16 %i.fko, %i.fku
  br label %bb.rf

bb.rf:                                            ; preds = %bb.qy, %bb.re
  %.5.i101.i177 = phi i16 [ %i.fkv, %bb.re ], [ %i.fga, %bb.qy ] ; 2 uses
  %i.fkw = trunc i64 %i.fgb to i16                ; 2 uses
  %i.fkx = shl i16 %.5.i101.i177, 8
  %i.fky = xor i16 %.5.i101.i177, %i.fkw
  %i.fkz = lshr i16 %i.fky, 8
  %i.fla = zext nneg i16 %i.fkz to i64
  %i.flb = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fla
  %i.flc = load i16, ptr %i.flb, align 2, !tbaa !122
  %i.fld = xor i16 %i.fkx, %i.flc
  br label %bb.rg

bb.rg:                                            ; preds = %._crit_edge1240, %bb.rf
  %.pre-phi1251 = phi i16 [ %.pre1250, %._crit_edge1240 ], [ %i.fkw, %bb.rf ]
  %.6.i99.i173 = phi i16 [ %i.fga, %._crit_edge1240 ], [ %i.fld, %bb.rf ] ; 2 uses
  %i.fle = shl i16 %.6.i99.i173, 8
  %i.flf = lshr i16 %.6.i99.i173, 8
  %i.flg = and i16 %.pre-phi1251, 255
  %i.flh = xor i16 %i.flf, %i.flg
  %i.fli = zext nneg i16 %i.flh to i64
  %i.flj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.fli
  %i.flk = load i16, ptr %i.flj, align 2, !tbaa !122
  %i.fll = xor i16 %i.fle, %i.flk
  br label %ma_dr_flac_crc16_bytes.exit107.i174

ma_dr_flac_crc16_bytes.exit107.i174:              ; preds = %bb.qy, %bb.rg
  %.7.i100.i175 = phi i16 [ %i.fga, %bb.qy ], [ %i.fll, %bb.rg ]
  store i16 %.7.i100.i175, ptr %i.qu, align 8, !tbaa !1198
  store i32 0, ptr %i.qt, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i176

ma_dr_flac__update_crc16.exit.i176:               ; preds = %ma_dr_flac_crc16_bytes.exit107.i174, %bb.qz
  %i.flm = add nuw nsw i32 %i.ffx, 1
  store i32 %i.flm, ptr %i.qs, align 8, !tbaa !738
  %i.fln = zext nneg i32 %i.ffx to i64
  %i.flo = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %i.fln
  %i.flp = load i64, ptr %i.flo, align 8, !tbaa !164
  %i.flq = tail call i64 @llvm.bswap.i64(i64 %i.flp) ; 2 uses
  store i64 %i.flq, ptr %i.qv, align 8, !tbaa !741
  br label %bb.rj

bb.rh:                                            ; preds = %bb.qx
  %i.flr = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i136 = icmp eq i32 %i.flr, 0
  br i1 %.not.i136, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.fls = load i64, ptr %i.qq, align 8, !tbaa !740
  %i.flt = load i32, ptr %i.qr, align 4, !tbaa !739
  br label %bb.rj

bb.rj:                                            ; preds = %bb.ri, %ma_dr_flac__update_crc16.exit.i176
  %.479.i137 = phi i64 [ %i.flq, %ma_dr_flac__update_crc16.exit.i176 ], [ %i.fls, %bb.ri ] ; 7 uses
  %.4.i138 = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i176 ], [ %i.flt, %bb.ri ]
  %i.flu = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i139 = icmp eq i32 %i.flu, 0
  br i1 %.not.i.i139, label %bb.rl, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.flv = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i137) #55, !srcloc !1207
  %i.flw = trunc i64 %i.flv to i32
  br label %ma_dr_flac__clz.exit.i140

bb.rl:                                            ; preds = %bb.rj
  %i.flx = icmp eq i64 %.479.i137, 0
  br i1 %i.flx, label %ma_dr_flac__clz.exit.i140, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.fly = lshr i64 %.479.i137, 60                ; 2 uses
  %i.flz = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.fly
  %i.fma = load i32, ptr %i.flz, align 4, !tbaa !118
  %i.fmb = icmp eq i64 %i.fly, 0
  br i1 %i.fmb, label %bb.rn, label %bb.ro

bb.rn:                                            ; preds = %bb.rm
  %i.fmc = icmp ult i64 %.479.i137, 4294967296    ; 2 uses
  %i.fmd = shl nuw i64 %.479.i137, 32
  %spec.select.i114.i165 = select i1 %i.fmc, i64 %i.fmd, i64 %.479.i137 ; 3 uses
  %spec.select26.i115.i166 = select i1 %i.fmc, i32 32, i32 0 ; 2 uses
  %i.fme = icmp ult i64 %spec.select.i114.i165, 281474976710656 ; 2 uses
  %i.fmf = or disjoint i32 %spec.select26.i115.i166, 16
  %i.fmg = shl nuw i64 %spec.select.i114.i165, 16
  %.119.i116.i167 = select i1 %i.fme, i64 %i.fmg, i64 %spec.select.i114.i165 ; 3 uses
  %.1.i117.i168 = select i1 %i.fme, i32 %i.fmf, i32 %spec.select26.i115.i166 ; 2 uses
  %i.fmh = icmp ult i64 %.119.i116.i167, 72057594037927936 ; 2 uses
  %i.fmi = or disjoint i32 %.1.i117.i168, 8
  %i.fmj = shl nuw i64 %.119.i116.i167, 8
  %.220.i118.i169 = select i1 %i.fmh, i64 %i.fmj, i64 %.119.i116.i167 ; 3 uses
  %.2.i119.i170 = select i1 %i.fmh, i32 %i.fmi, i32 %.1.i117.i168 ; 2 uses
  %i.fmk = icmp ult i64 %.220.i118.i169, 1152921504606846976 ; 2 uses
  %i.fml = or disjoint i32 %.2.i119.i170, 4
  %i.fmm = shl nuw i64 %.220.i118.i169, 4
  %.321.i120.i171 = select i1 %i.fmk, i64 %i.fmm, i64 %.220.i118.i169
  %.3.i121.i172 = select i1 %i.fmk, i32 %i.fml, i32 %.2.i119.i170
  %i.fmn = lshr i64 %.321.i120.i171, 60
  %i.fmo = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.fmn
  %i.fmp = load i32, ptr %i.fmo, align 4, !tbaa !118
  %i.fmq = add i32 %i.fmp, %.3.i121.i172
  br label %bb.ro

bb.ro:                                            ; preds = %bb.rn, %bb.rm
  %.4.i112.i162 = phi i32 [ %i.fmq, %bb.rn ], [ %i.fma, %bb.rm ]
  %i.fmr = add i32 %.4.i112.i162, -1
  br label %ma_dr_flac__clz.exit.i140

ma_dr_flac__clz.exit.i140:                        ; preds = %bb.rl, %bb.ro, %bb.rk
  %.0.i.i141 = phi i32 [ %i.flw, %bb.rk ], [ %i.fmr, %bb.ro ], [ 64, %bb.rl ] ; 3 uses
  %i.fms = add i32 %.0.i.i141, %.0.i135           ; 2 uses
  %i.fmt = icmp ult i32 %.0.i.i141, 64
  br i1 %i.fmt, label %.loopexit1122, label %bb.qx

bb.rp:                                            ; preds = %bb.qw, %bb.qi
  %.21024.in = phi i64 [ %i.ffu, %bb.qw ], [ %i.ezm, %bb.qi ]
  %.681.i146 = phi i64 [ %i.ffv, %bb.qw ], [ %i.ezn, %bb.qi ] ; 2 uses
  %.6.i147 = phi i32 [ %.173.i151, %bb.qw ], [ %i.ezo, %bb.qi ]
  %.21024 = trunc i64 %.21024.in to i32
  store i64 %.681.i146, ptr %i.qq, align 8, !tbaa !740
  store i32 %.6.i147, ptr %i.qr, align 4, !tbaa !739
  %i.fmu = and i32 %.6, %i.op
  %i.fmv = and i32 %.21034, %i.op
  %i.fmw = and i32 %.21028, %i.op
  %i.fmx = and i32 %.21024, %i.op
  %i.fmy = shl i32 %.61068, %i.ol
  %i.fmz = or i32 %i.fmu, %i.fmy                  ; 2 uses
  %i.fna = shl i32 %.21058, %i.ol
  %i.fnb = or i32 %i.fmv, %i.fna                  ; 2 uses
  %i.fnc = shl i32 %.21052, %i.ol
  %i.fnd = or i32 %i.fmw, %i.fnc                  ; 2 uses
  %i.fne = shl i32 %.21046, %i.ol
  %i.fnf = or i32 %i.fmx, %i.fne                  ; 2 uses
  %i.fng = lshr i32 %i.fmz, 1
  %i.fnh = and i32 %i.fmz, 1
  %24 = zext nneg i32 %i.fnh to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !118
  %i.fni = xor i32 %26, %i.fng
  %i.fnj = lshr i32 %i.fnb, 1
  %i.fnk = and i32 %i.fnb, 1
  %27 = zext nneg i32 %i.fnk to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !118
  %i.fnl = xor i32 %29, %i.fnj
  %i.fnm = lshr i32 %i.fnd, 1
  %i.fnn = and i32 %i.fnd, 1
  %30 = zext nneg i32 %i.fnn to i64
  %31 = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !118
  %i.fno = xor i32 %32, %i.fnm
  %i.fnp = lshr i32 %i.fnf, 1
  %i.fnq = and i32 %i.fnf, 1
  %33 = zext nneg i32 %i.fnq to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !118
  %i.fnr = xor i32 %35, %i.fnp
  switch i8 %trunc.i932, label %ma_dr_flac__calculate_prediction_32.exit965 [
    i8 32, label %bb.rq
    i8 31, label %bb.rr
    i8 30, label %bb.rs
    i8 29, label %bb.rt
    i8 28, label %bb.ru
    i8 27, label %bb.rv
    i8 26, label %bb.rw
    i8 25, label %bb.rx
    i8 24, label %bb.ry
    i8 23, label %bb.rz
    i8 22, label %bb.sa
    i8 21, label %bb.sb
    i8 20, label %bb.sc
    i8 19, label %bb.sd
    i8 18, label %bb.se
    i8 17, label %bb.sf
    i8 16, label %bb.sg
    i8 15, label %bb.sh
    i8 14, label %bb.si
    i8 13, label %bb.sj
    i8 12, label %bb.sk
    i8 11, label %bb.sl
    i8 10, label %bb.sm
    i8 9, label %bb.sn
    i8 8, label %bb.so
    i8 7, label %bb.sp
    i8 6, label %bb.sq
    i8 5, label %bb.sr
    i8 4, label %bb.ss
    i8 3, label %bb.st
    i8 2, label %bb.su
    i8 1, label %bb.sv
  ]

bb.rq:                                            ; preds = %bb.rp
  %i.fns = load i32, ptr %i.qy, align 4, !tbaa !118
  %i.fnt = getelementptr inbounds i8, ptr %.11164, i64 -128
  %i.fnu = load i32, ptr %i.fnt, align 4, !tbaa !118
  %i.fnv = mul nsw i32 %i.fnu, %i.fns
  br label %bb.rr

bb.rr:                                            ; preds = %bb.rq, %bb.rp
  %.0.i964 = phi i32 [ %i.fnv, %bb.rq ], [ 0, %bb.rp ]
  %i.fnw = load i32, ptr %i.qz, align 4, !tbaa !118
  %i.fnx = getelementptr inbounds i8, ptr %.11164, i64 -124
  %i.fny = load i32, ptr %i.fnx, align 4, !tbaa !118
  %i.fnz = mul nsw i32 %i.fny, %i.fnw
  %i.foa = add nsw i32 %i.fnz, %.0.i964
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %bb.rp
  %.1.i963 = phi i32 [ %i.foa, %bb.rr ], [ 0, %bb.rp ]
  %i.fob = load i32, ptr %i.ra, align 4, !tbaa !118
  %i.foc = getelementptr inbounds i8, ptr %.11164, i64 -120
  %i.fod = load i32, ptr %i.foc, align 4, !tbaa !118
  %i.foe = mul nsw i32 %i.fod, %i.fob
  %i.fof = add nsw i32 %i.foe, %.1.i963
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %bb.rp
  %.2.i962 = phi i32 [ %i.fof, %bb.rs ], [ 0, %bb.rp ]
  %i.fog = load i32, ptr %i.rb, align 4, !tbaa !118
  %i.foh = getelementptr inbounds i8, ptr %.11164, i64 -116
  %i.foi = load i32, ptr %i.foh, align 4, !tbaa !118
  %i.foj = mul nsw i32 %i.foi, %i.fog
  %i.fok = add nsw i32 %i.foj, %.2.i962
  br label %bb.ru

bb.ru:                                            ; preds = %bb.rt, %bb.rp
  %.3.i961 = phi i32 [ %i.fok, %bb.rt ], [ 0, %bb.rp ]
  %i.fol = load i32, ptr %i.rc, align 4, !tbaa !118
  %i.fom = getelementptr inbounds i8, ptr %.11164, i64 -112
  %i.fon = load i32, ptr %i.fom, align 4, !tbaa !118
  %i.foo = mul nsw i32 %i.fon, %i.fol
  %i.fop = add nsw i32 %i.foo, %.3.i961
  br label %bb.rv

bb.rv:                                            ; preds = %bb.ru, %bb.rp
  %.4.i960 = phi i32 [ %i.fop, %bb.ru ], [ 0, %bb.rp ]
  %i.foq = load i32, ptr %i.rd, align 4, !tbaa !118
  %i.for = getelementptr inbounds i8, ptr %.11164, i64 -108
  %i.fos = load i32, ptr %i.for, align 4, !tbaa !118
  %i.fot = mul nsw i32 %i.fos, %i.foq
  %i.fou = add nsw i32 %i.fot, %.4.i960
  br label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %bb.rp
  %.5.i959 = phi i32 [ %i.fou, %bb.rv ], [ 0, %bb.rp ]
  %i.fov = load i32, ptr %i.re, align 4, !tbaa !118
  %i.fow = getelementptr inbounds i8, ptr %.11164, i64 -104
  %i.fox = load i32, ptr %i.fow, align 4, !tbaa !118
  %i.foy = mul nsw i32 %i.fox, %i.fov
  %i.foz = add nsw i32 %i.foy, %.5.i959
  br label %bb.rx

bb.rx:                                            ; preds = %bb.rw, %bb.rp
  %.6.i958 = phi i32 [ %i.foz, %bb.rw ], [ 0, %bb.rp ]
  %i.fpa = load i32, ptr %i.rf, align 4, !tbaa !118
  %i.fpb = getelementptr inbounds i8, ptr %.11164, i64 -100
  %i.fpc = load i32, ptr %i.fpb, align 4, !tbaa !118
  %i.fpd = mul nsw i32 %i.fpc, %i.fpa
  %i.fpe = add nsw i32 %i.fpd, %.6.i958
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rp
  %.7.i957 = phi i32 [ %i.fpe, %bb.rx ], [ 0, %bb.rp ]
  %i.fpf = load i32, ptr %i.rg, align 4, !tbaa !118
  %i.fpg = getelementptr inbounds i8, ptr %.11164, i64 -96
  %i.fph = load i32, ptr %i.fpg, align 4, !tbaa !118
  %i.fpi = mul nsw i32 %i.fph, %i.fpf
  %i.fpj = add nsw i32 %i.fpi, %.7.i957
  br label %bb.rz

bb.rz:                                            ; preds = %bb.ry, %bb.rp
  %.8.i956 = phi i32 [ %i.fpj, %bb.ry ], [ 0, %bb.rp ]
  %i.fpk = load i32, ptr %i.rh, align 4, !tbaa !118
  %i.fpl = getelementptr inbounds i8, ptr %.11164, i64 -92
  %i.fpm = load i32, ptr %i.fpl, align 4, !tbaa !118
  %i.fpn = mul nsw i32 %i.fpm, %i.fpk
  %i.fpo = add nsw i32 %i.fpn, %.8.i956
  br label %bb.sa

bb.sa:                                            ; preds = %bb.rz, %bb.rp
  %.9.i955 = phi i32 [ %i.fpo, %bb.rz ], [ 0, %bb.rp ]
  %i.fpp = load i32, ptr %i.ri, align 4, !tbaa !118
  %i.fpq = getelementptr inbounds i8, ptr %.11164, i64 -88
  %i.fpr = load i32, ptr %i.fpq, align 4, !tbaa !118
  %i.fps = mul nsw i32 %i.fpr, %i.fpp
  %i.fpt = add nsw i32 %i.fps, %.9.i955
  br label %bb.sb

bb.sb:                                            ; preds = %bb.sa, %bb.rp
  %.10.i954 = phi i32 [ %i.fpt, %bb.sa ], [ 0, %bb.rp ]
  %i.fpu = load i32, ptr %i.rj, align 4, !tbaa !118
  %i.fpv = getelementptr inbounds i8, ptr %.11164, i64 -84
  %i.fpw = load i32, ptr %i.fpv, align 4, !tbaa !118
  %i.fpx = mul nsw i32 %i.fpw, %i.fpu
  %i.fpy = add nsw i32 %i.fpx, %.10.i954
  br label %bb.sc

bb.sc:                                            ; preds = %bb.sb, %bb.rp
  %.11.i953 = phi i32 [ %i.fpy, %bb.sb ], [ 0, %bb.rp ]
  %i.fpz = load i32, ptr %i.rk, align 4, !tbaa !118
  %i.fqa = getelementptr inbounds i8, ptr %.11164, i64 -80
  %i.fqb = load i32, ptr %i.fqa, align 4, !tbaa !118
  %i.fqc = mul nsw i32 %i.fqb, %i.fpz
  %i.fqd = add nsw i32 %i.fqc, %.11.i953
  br label %bb.sd

bb.sd:                                            ; preds = %bb.sc, %bb.rp
  %.12.i952 = phi i32 [ %i.fqd, %bb.sc ], [ 0, %bb.rp ]
  %i.fqe = load i32, ptr %i.rl, align 4, !tbaa !118
  %i.fqf = getelementptr inbounds i8, ptr %.11164, i64 -76
  %i.fqg = load i32, ptr %i.fqf, align 4, !tbaa !118
  %i.fqh = mul nsw i32 %i.fqg, %i.fqe
  %i.fqi = add nsw i32 %i.fqh, %.12.i952
  br label %bb.se

bb.se:                                            ; preds = %bb.sd, %bb.rp
  %.13.i951 = phi i32 [ %i.fqi, %bb.sd ], [ 0, %bb.rp ]
  %i.fqj = load i32, ptr %i.rm, align 4, !tbaa !118
  %i.fqk = getelementptr inbounds i8, ptr %.11164, i64 -72
  %i.fql = load i32, ptr %i.fqk, align 4, !tbaa !118
  %i.fqm = mul nsw i32 %i.fql, %i.fqj
  %i.fqn = add nsw i32 %i.fqm, %.13.i951
  br label %bb.sf

bb.sf:                                            ; preds = %bb.se, %bb.rp
  %.14.i950 = phi i32 [ %i.fqn, %bb.se ], [ 0, %bb.rp ]
  %i.fqo = load i32, ptr %i.rn, align 4, !tbaa !118
  %i.fqp = getelementptr inbounds i8, ptr %.11164, i64 -68
  %i.fqq = load i32, ptr %i.fqp, align 4, !tbaa !118
  %i.fqr = mul nsw i32 %i.fqq, %i.fqo
  %i.fqs = add nsw i32 %i.fqr, %.14.i950
  br label %bb.sg

bb.sg:                                            ; preds = %bb.sf, %bb.rp
  %.15.i949 = phi i32 [ %i.fqs, %bb.sf ], [ 0, %bb.rp ]
  %i.fqt = load i32, ptr %i.ro, align 4, !tbaa !118
  %i.fqu = getelementptr inbounds i8, ptr %.11164, i64 -64
  %i.fqv = load i32, ptr %i.fqu, align 4, !tbaa !118
  %i.fqw = mul nsw i32 %i.fqv, %i.fqt
  %i.fqx = add nsw i32 %i.fqw, %.15.i949
  br label %bb.sh

bb.sh:                                            ; preds = %bb.sg, %bb.rp
  %.16.i948 = phi i32 [ %i.fqx, %bb.sg ], [ 0, %bb.rp ]
  %i.fqy = load i32, ptr %i.rp, align 4, !tbaa !118
  %i.fqz = getelementptr inbounds i8, ptr %.11164, i64 -60
  %i.fra = load i32, ptr %i.fqz, align 4, !tbaa !118
  %i.frb = mul nsw i32 %i.fra, %i.fqy
  %i.frc = add nsw i32 %i.frb, %.16.i948
  br label %bb.si

bb.si:                                            ; preds = %bb.sh, %bb.rp
  %.17.i947 = phi i32 [ %i.frc, %bb.sh ], [ 0, %bb.rp ]
  %i.frd = load i32, ptr %i.rq, align 4, !tbaa !118
  %i.fre = getelementptr inbounds i8, ptr %.11164, i64 -56
  %i.frf = load i32, ptr %i.fre, align 4, !tbaa !118
end_hunk_3
begin_hunk_4_@ma_dr_flac__decode_samples_with_residual__rice__scalar:bb.a
  %i.gyd = xor i16 %i.gxw, %i.gyc
  %i.gye = shl i16 %i.gyc, 8
  %i.gyf = lshr i16 %i.gyd, 8
  %i.gyg = and i16 %i.gxv, 255
  %i.gyh = xor i16 %i.gyf, %i.gyg
  %i.gyi = zext nneg i16 %i.gyh to i64
  %i.gyj = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gyi
  %i.gyk = load i16, ptr %i.gyj, align 2, !tbaa !122
  %i.gyl = xor i16 %i.gye, %i.gyk
  store i16 %i.gyl, ptr %i.gmm, align 8, !tbaa !1198
  br label %ma_dr_flac__update_crc16.exit.i

._crit_edge1242:                                  ; preds = %bb.xk
  %.pre1246 = trunc i64 %i.gvp to i16
  br label %bb.xs

bb.xm:                                            ; preds = %bb.xk
  %i.gym = lshr i64 %i.gvp, 48
  %i.gyn = trunc nuw i64 %i.gym to i16
  %i.gyo = shl i16 %i.gvo, 8
  %i.gyp = lshr i16 %i.gvo, 8
  %i.gyq = and i16 %i.gyn, 255
  %i.gyr = xor i16 %i.gyq, %i.gyp
  %i.gys = zext nneg i16 %i.gyr to i64
  %i.gyt = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gys
  %i.gyu = load i16, ptr %i.gyt, align 2, !tbaa !122
  %i.gyv = xor i16 %i.gyu, %i.gyo
  br label %bb.xn

bb.xn:                                            ; preds = %bb.xk, %bb.xm
  %.1.i105.i = phi i16 [ %i.gyv, %bb.xm ], [ %i.gvo, %bb.xk ] ; 2 uses
  %i.gyw = lshr i64 %i.gvp, 40
  %i.gyx = trunc i64 %i.gyw to i16
  %i.gyy = shl i16 %.1.i105.i, 8
  %i.gyz = lshr i16 %.1.i105.i, 8
  %i.gza = and i16 %i.gyx, 255
  %i.gzb = xor i16 %i.gyz, %i.gza
  %i.gzc = zext nneg i16 %i.gzb to i64
  %i.gzd = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gzc
  %i.gze = load i16, ptr %i.gzd, align 2, !tbaa !122
  %i.gzf = xor i16 %i.gyy, %i.gze
  br label %bb.xo

bb.xo:                                            ; preds = %bb.xk, %bb.xn
  %.2.i104.i = phi i16 [ %i.gzf, %bb.xn ], [ %i.gvo, %bb.xk ] ; 2 uses
  %i.gzg = lshr i64 %i.gvp, 32
  %i.gzh = trunc i64 %i.gzg to i16
  %i.gzi = shl i16 %.2.i104.i, 8
  %i.gzj = lshr i16 %.2.i104.i, 8
  %i.gzk = and i16 %i.gzh, 255
  %i.gzl = xor i16 %i.gzj, %i.gzk
  %i.gzm = zext nneg i16 %i.gzl to i64
  %i.gzn = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gzm
  %i.gzo = load i16, ptr %i.gzn, align 2, !tbaa !122
  %i.gzp = xor i16 %i.gzi, %i.gzo
  br label %bb.xp

bb.xp:                                            ; preds = %bb.xk, %bb.xo
  %.3.i103.i = phi i16 [ %i.gzp, %bb.xo ], [ %i.gvo, %bb.xk ] ; 2 uses
  %i.gzq = lshr i64 %i.gvp, 24
  %i.gzr = trunc i64 %i.gzq to i16
  %i.gzs = shl i16 %.3.i103.i, 8
  %i.gzt = lshr i16 %.3.i103.i, 8
  %i.gzu = and i16 %i.gzr, 255
  %i.gzv = xor i16 %i.gzt, %i.gzu
  %i.gzw = zext nneg i16 %i.gzv to i64
  %i.gzx = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.gzw
  %i.gzy = load i16, ptr %i.gzx, align 2, !tbaa !122
  %i.gzz = xor i16 %i.gzs, %i.gzy
  br label %bb.xq

bb.xq:                                            ; preds = %bb.xk, %bb.xp
  %.4.i102.i = phi i16 [ %i.gzz, %bb.xp ], [ %i.gvo, %bb.xk ] ; 2 uses
  %i.haa = lshr i64 %i.gvp, 16
  %i.hab = trunc i64 %i.haa to i16
  %i.hac = shl i16 %.4.i102.i, 8
  %i.had = lshr i16 %.4.i102.i, 8
  %i.hae = and i16 %i.hab, 255
  %i.haf = xor i16 %i.had, %i.hae
  %i.hag = zext nneg i16 %i.haf to i64
  %i.hah = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hag
  %i.hai = load i16, ptr %i.hah, align 2, !tbaa !122
  %i.haj = xor i16 %i.hac, %i.hai
  br label %bb.xr

bb.xr:                                            ; preds = %bb.xk, %bb.xq
  %.5.i101.i = phi i16 [ %i.haj, %bb.xq ], [ %i.gvo, %bb.xk ] ; 2 uses
  %i.hak = trunc i64 %i.gvp to i16                ; 2 uses
  %i.hal = shl i16 %.5.i101.i, 8
  %i.ham = xor i16 %.5.i101.i, %i.hak
  %i.han = lshr i16 %i.ham, 8
  %i.hao = zext nneg i16 %i.han to i64
  %i.hap = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.hao
  %i.haq = load i16, ptr %i.hap, align 2, !tbaa !122
  %i.har = xor i16 %i.hal, %i.haq
  br label %bb.xs

bb.xs:                                            ; preds = %._crit_edge1242, %bb.xr
  %.pre-phi1247 = phi i16 [ %.pre1246, %._crit_edge1242 ], [ %i.hak, %bb.xr ]
  %.6.i99.i = phi i16 [ %i.gvo, %._crit_edge1242 ], [ %i.har, %bb.xr ] ; 2 uses
  %i.has = shl i16 %.6.i99.i, 8
  %i.hat = lshr i16 %.6.i99.i, 8
  %i.hau = and i16 %.pre-phi1247, 255
  %i.hav = xor i16 %i.hat, %i.hau
  %i.haw = zext nneg i16 %i.hav to i64
  %i.hax = getelementptr inbounds nuw [2 x i8], ptr @ma_dr_flac__crc16_table, i64 %i.haw
  %i.hay = load i16, ptr %i.hax, align 2, !tbaa !122
  %i.haz = xor i16 %i.has, %i.hay
  br label %ma_dr_flac_crc16_bytes.exit107.i

ma_dr_flac_crc16_bytes.exit107.i:                 ; preds = %bb.xk, %bb.xs
  %.7.i100.i = phi i16 [ %i.gvo, %bb.xk ], [ %i.haz, %bb.xs ]
  store i16 %.7.i100.i, ptr %i.gmm, align 8, !tbaa !1198
  store i32 0, ptr %i.gml, align 8, !tbaa !742
  br label %ma_dr_flac__update_crc16.exit.i

ma_dr_flac__update_crc16.exit.i:                  ; preds = %ma_dr_flac_crc16_bytes.exit107.i, %bb.xl
  %i.hba = add nuw nsw i32 %i.gvl, 1
  store i32 %i.hba, ptr %i.gmk, align 8, !tbaa !738
  %i.hbb = zext nneg i32 %i.gvl to i64
  %i.hbc = getelementptr inbounds nuw [8 x i8], ptr %i.gmo, i64 %i.hbb
  %i.hbd = load i64, ptr %i.hbc, align 8, !tbaa !164
  %i.hbe = tail call i64 @llvm.bswap.i64(i64 %i.hbd) ; 2 uses
  store i64 %i.hbe, ptr %i.gmn, align 8, !tbaa !741
  br label %bb.xv

bb.xt:                                            ; preds = %bb.xj
  %i.hbf = tail call fastcc i32 @ma_dr_flac__reload_cache(ptr noundef nonnull %0)
  %.not.i = icmp eq i32 %i.hbf, 0
  br i1 %.not.i, label %ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.exit, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  %i.hbg = load i64, ptr %i.gmi, align 8, !tbaa !740
  %i.hbh = load i32, ptr %i.gmj, align 4, !tbaa !739
  br label %bb.xv

bb.xv:                                            ; preds = %bb.xu, %ma_dr_flac__update_crc16.exit.i
  %.479.i = phi i64 [ %i.hbe, %ma_dr_flac__update_crc16.exit.i ], [ %i.hbg, %bb.xu ] ; 7 uses
  %.4.i = phi i32 [ 0, %ma_dr_flac__update_crc16.exit.i ], [ %i.hbh, %bb.xu ]
  %i.hbi = load i32, ptr @ma_dr_flac__gIsLZCNTSupported, align 4, !tbaa !118
  %.not.i.i = icmp eq i32 %i.hbi, 0
  br i1 %.not.i.i, label %bb.xx, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.hbj = tail call i64 asm sideeffect "rep; bsr$(q $1, $0$| $0, $1$)", "=r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.479.i) #55, !srcloc !1207
  %i.hbk = trunc i64 %i.hbj to i32
  br label %ma_dr_flac__clz.exit.i

bb.xx:                                            ; preds = %bb.xv
  %i.hbl = icmp eq i64 %.479.i, 0
  br i1 %i.hbl, label %ma_dr_flac__clz.exit.i, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.hbm = lshr i64 %.479.i, 60                   ; 2 uses
  %i.hbn = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.hbm
  %i.hbo = load i32, ptr %i.hbn, align 4, !tbaa !118
  %i.hbp = icmp eq i64 %i.hbm, 0
  br i1 %i.hbp, label %bb.xz, label %bb.ya

bb.xz:                                            ; preds = %bb.xy
  %i.hbq = icmp ult i64 %.479.i, 4294967296       ; 2 uses
  %i.hbr = shl nuw i64 %.479.i, 32
  %spec.select.i114.i = select i1 %i.hbq, i64 %i.hbr, i64 %.479.i ; 3 uses
  %spec.select26.i115.i = select i1 %i.hbq, i32 32, i32 0 ; 2 uses
  %i.hbs = icmp ult i64 %spec.select.i114.i, 281474976710656 ; 2 uses
  %i.hbt = or disjoint i32 %spec.select26.i115.i, 16
  %i.hbu = shl nuw i64 %spec.select.i114.i, 16
  %.119.i116.i = select i1 %i.hbs, i64 %i.hbu, i64 %spec.select.i114.i ; 3 uses
  %.1.i117.i = select i1 %i.hbs, i32 %i.hbt, i32 %spec.select26.i115.i ; 2 uses
  %i.hbv = icmp ult i64 %.119.i116.i, 72057594037927936 ; 2 uses
  %i.hbw = or disjoint i32 %.1.i117.i, 8
  %i.hbx = shl nuw i64 %.119.i116.i, 8
  %.220.i118.i = select i1 %i.hbv, i64 %i.hbx, i64 %.119.i116.i ; 3 uses
  %.2.i119.i = select i1 %i.hbv, i32 %i.hbw, i32 %.1.i117.i ; 2 uses
  %i.hby = icmp ult i64 %.220.i118.i, 1152921504606846976 ; 2 uses
  %i.hbz = or disjoint i32 %.2.i119.i, 4
  %i.hca = shl nuw i64 %.220.i118.i, 4
  %.321.i120.i = select i1 %i.hby, i64 %i.hca, i64 %.220.i118.i
  %.3.i121.i = select i1 %i.hby, i32 %i.hbz, i32 %.2.i119.i
  %i.hcb = lshr i64 %.321.i120.i, 60
  %i.hcc = getelementptr inbounds nuw [4 x i8], ptr @ma_dr_flac__clz_software.clz_table_4, i64 %i.hcb
  %i.hcd = load i32, ptr %i.hcc, align 4, !tbaa !118
  %i.hce = add i32 %i.hcd, %.3.i121.i
  br label %bb.ya

bb.ya:                                            ; preds = %bb.xz, %bb.xy
  %.4.i112.i = phi i32 [ %i.hce, %bb.xz ], [ %i.hbo, %bb.xy ]
  %i.hcf = add i32 %.4.i112.i, -1
  br label %ma_dr_flac__clz.exit.i

ma_dr_flac__clz.exit.i:                           ; preds = %bb.xx, %bb.ya, %bb.xw
  %.0.i.i = phi i32 [ %i.hbk, %bb.xw ], [ %i.hcf, %bb.ya ], [ 64, %bb.xx ] ; 3 uses
  %i.hcg = add i32 %.0.i.i, %.0.i                 ; 2 uses
  %i.hch = icmp ult i32 %.0.i.i, 64
  br i1 %i.hch, label %.loopexit, label %bb.xj

ma_dr_flac__ilog2_u32.exit971:                    ; preds = %bb.xi, %bb.wu
  %.41042.in = phi i64 [ %i.gvi, %bb.xi ], [ %i.gpa, %bb.wu ]
  %.681.i = phi i64 [ %i.gvj, %bb.xi ], [ %i.gpb, %bb.wu ] ; 2 uses
  %.6.i = phi i32 [ %.173.i, %bb.xi ], [ %i.gpc, %bb.wu ]
  %.41042 = trunc i64 %.41042.in to i32
  store i64 %.681.i, ptr %i.gmi, align 8, !tbaa !740
  store i32 %.6.i, ptr %i.gmj, align 4, !tbaa !739
  %i.hci = and i32 %.41042, %i.op
  %i.hcj = shl i32 %.41066, %i.ol
  %i.hck = or i32 %i.hci, %i.hcj                  ; 2 uses
  %36 = and i32 %i.hck, 1
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_dr_flac__decode_samples_with_residual__rice__scalar_zeroorder.t, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !118
  %40 = lshr i32 %i.hck, 1
  %i.hcl = xor i32 %39, %40
  br i1 %i.ov, label %bb.zi, label %bb.yb

bb.yb:                                            ; preds = %ma_dr_flac__ilog2_u32.exit971
  switch i8 %trunc.i, label %ma_dr_flac__calculate_prediction_64.exit [
    i8 32, label %bb.yc
    i8 31, label %bb.yd
    i8 30, label %bb.ye
    i8 29, label %bb.yf
    i8 28, label %bb.yg
    i8 27, label %bb.yh
    i8 26, label %bb.yi
    i8 25, label %bb.yj
    i8 24, label %bb.yk
    i8 23, label %bb.yl
    i8 22, label %bb.ym
    i8 21, label %bb.yn
    i8 20, label %bb.yo
    i8 19, label %bb.yp
    i8 18, label %bb.yq
    i8 17, label %bb.yr
    i8 16, label %bb.ys
    i8 15, label %bb.yt
    i8 14, label %bb.yu
    i8 13, label %bb.yv
    i8 12, label %bb.yw
    i8 11, label %bb.yx
    i8 10, label %bb.yy
    i8 9, label %bb.yz
    i8 8, label %bb.za
    i8 7, label %bb.zb
    i8 6, label %bb.zc
    i8 5, label %bb.zd
    i8 4, label %bb.ze
    i8 3, label %bb.zf
    i8 2, label %bb.zg
    i8 1, label %bb.zh
  ]

bb.yc:                                            ; preds = %bb.yb
  %i.hcm = load i32, ptr %i.gmq, align 4, !tbaa !118
  %i.hcn = sext i32 %i.hcm to i64
  %i.hco = getelementptr inbounds i8, ptr %.31169, i64 -128
  %i.hcp = load i32, ptr %i.hco, align 4, !tbaa !118
  %i.hcq = sext i32 %i.hcp to i64
  %i.hcr = mul nsw i64 %i.hcq, %i.hcn
  br label %bb.yd

bb.yd:                                            ; preds = %bb.yc, %bb.yb
  %.0.i660 = phi i64 [ %i.hcr, %bb.yc ], [ 0, %bb.yb ]
  %i.hcs = load i32, ptr %i.gmr, align 4, !tbaa !118
  %i.hct = sext i32 %i.hcs to i64
  %i.hcu = getelementptr inbounds i8, ptr %.31169, i64 -124
  %i.hcv = load i32, ptr %i.hcu, align 4, !tbaa !118
  %i.hcw = sext i32 %i.hcv to i64
  %i.hcx = mul nsw i64 %i.hcw, %i.hct
  %i.hcy = add nsw i64 %i.hcx, %.0.i660
  br label %bb.ye

bb.ye:                                            ; preds = %bb.yd, %bb.yb
  %.1.i = phi i64 [ %i.hcy, %bb.yd ], [ 0, %bb.yb ]
  %i.hcz = load i32, ptr %i.gms, align 4, !tbaa !118
  %i.hda = sext i32 %i.hcz to i64
  %i.hdb = getelementptr inbounds i8, ptr %.31169, i64 -120
  %i.hdc = load i32, ptr %i.hdb, align 4, !tbaa !118
  %i.hdd = sext i32 %i.hdc to i64
  %i.hde = mul nsw i64 %i.hdd, %i.hda
  %i.hdf = add nsw i64 %i.hde, %.1.i
  br label %bb.yf

bb.yf:                                            ; preds = %bb.ye, %bb.yb
  %.2.i = phi i64 [ %i.hdf, %bb.ye ], [ 0, %bb.yb ]
  %i.hdg = load i32, ptr %i.gmt, align 4, !tbaa !118
  %i.hdh = sext i32 %i.hdg to i64
  %i.hdi = getelementptr inbounds i8, ptr %.31169, i64 -116
  %i.hdj = load i32, ptr %i.hdi, align 4, !tbaa !118
  %i.hdk = sext i32 %i.hdj to i64
  %i.hdl = mul nsw i64 %i.hdk, %i.hdh
  %i.hdm = add nsw i64 %i.hdl, %.2.i
  br label %bb.yg

bb.yg:                                            ; preds = %bb.yf, %bb.yb
  %.3.i659 = phi i64 [ %i.hdm, %bb.yf ], [ 0, %bb.yb ]
  %i.hdn = load i32, ptr %i.gmu, align 4, !tbaa !118
  %i.hdo = sext i32 %i.hdn to i64
  %i.hdp = getelementptr inbounds i8, ptr %.31169, i64 -112
  %i.hdq = load i32, ptr %i.hdp, align 4, !tbaa !118
  %i.hdr = sext i32 %i.hdq to i64
  %i.hds = mul nsw i64 %i.hdr, %i.hdo
  %i.hdt = add nsw i64 %i.hds, %.3.i659
  br label %bb.yh

bb.yh:                                            ; preds = %bb.yg, %bb.yb
  %.4.i658 = phi i64 [ %i.hdt, %bb.yg ], [ 0, %bb.yb ]
  %i.hdu = load i32, ptr %i.gmv, align 4, !tbaa !118
  %i.hdv = sext i32 %i.hdu to i64
  %i.hdw = getelementptr inbounds i8, ptr %.31169, i64 -108
  %i.hdx = load i32, ptr %i.hdw, align 4, !tbaa !118
  %i.hdy = sext i32 %i.hdx to i64
  %i.hdz = mul nsw i64 %i.hdy, %i.hdv
  %i.hea = add nsw i64 %i.hdz, %.4.i658
  br label %bb.yi

bb.yi:                                            ; preds = %bb.yh, %bb.yb
  %.5.i = phi i64 [ %i.hea, %bb.yh ], [ 0, %bb.yb ]
  %i.heb = load i32, ptr %i.gmw, align 4, !tbaa !118
  %i.hec = sext i32 %i.heb to i64
  %i.hed = getelementptr inbounds i8, ptr %.31169, i64 -104
  %i.hee = load i32, ptr %i.hed, align 4, !tbaa !118
  %i.hef = sext i32 %i.hee to i64
  %i.heg = mul nsw i64 %i.hef, %i.hec
  %i.heh = add nsw i64 %i.heg, %.5.i
  br label %bb.yj

bb.yj:                                            ; preds = %bb.yi, %bb.yb
  %.6.i657 = phi i64 [ %i.heh, %bb.yi ], [ 0, %bb.yb ]
  %i.hei = load i32, ptr %i.gmx, align 4, !tbaa !118
  %i.hej = sext i32 %i.hei to i64
  %i.hek = getelementptr inbounds i8, ptr %.31169, i64 -100
  %i.hel = load i32, ptr %i.hek, align 4, !tbaa !118
  %i.hem = sext i32 %i.hel to i64
  %i.hen = mul nsw i64 %i.hem, %i.hej
  %i.heo = add nsw i64 %i.hen, %.6.i657
  br label %bb.yk

bb.yk:                                            ; preds = %bb.yj, %bb.yb
  %.7.i = phi i64 [ %i.heo, %bb.yj ], [ 0, %bb.yb ]
  %i.hep = load i32, ptr %i.gmy, align 4, !tbaa !118
  %i.heq = sext i32 %i.hep to i64
  %i.her = getelementptr inbounds i8, ptr %.31169, i64 -96
  %i.hes = load i32, ptr %i.her, align 4, !tbaa !118
  %i.het = sext i32 %i.hes to i64
  %i.heu = mul nsw i64 %i.het, %i.heq
  %i.hev = add nsw i64 %i.heu, %.7.i
  br label %bb.yl

bb.yl:                                            ; preds = %bb.yk, %bb.yb
  %.8.i = phi i64 [ %i.hev, %bb.yk ], [ 0, %bb.yb ]
  %i.hew = load i32, ptr %i.gmz, align 4, !tbaa !118
  %i.hex = sext i32 %i.hew to i64
  %i.hey = getelementptr inbounds i8, ptr %.31169, i64 -92
  %i.hez = load i32, ptr %i.hey, align 4, !tbaa !118
  %i.hfa = sext i32 %i.hez to i64
  %i.hfb = mul nsw i64 %i.hfa, %i.hex
  %i.hfc = add nsw i64 %i.hfb, %.8.i
  br label %bb.ym

bb.ym:                                            ; preds = %bb.yl, %bb.yb
  %.9.i = phi i64 [ %i.hfc, %bb.yl ], [ 0, %bb.yb ]
  %i.hfd = load i32, ptr %i.gna, align 4, !tbaa !118
  %i.hfe = sext i32 %i.hfd to i64
  %i.hff = getelementptr inbounds i8, ptr %.31169, i64 -88
  %i.hfg = load i32, ptr %i.hff, align 4, !tbaa !118
  %i.hfh = sext i32 %i.hfg to i64
  %i.hfi = mul nsw i64 %i.hfh, %i.hfe
  %i.hfj = add nsw i64 %i.hfi, %.9.i
  br label %bb.yn

bb.yn:                                            ; preds = %bb.ym, %bb.yb
  %.10.i = phi i64 [ %i.hfj, %bb.ym ], [ 0, %bb.yb ]
  %i.hfk = load i32, ptr %i.gnb, align 4, !tbaa !118
  %i.hfl = sext i32 %i.hfk to i64
  %i.hfm = getelementptr inbounds i8, ptr %.31169, i64 -84
  %i.hfn = load i32, ptr %i.hfm, align 4, !tbaa !118
  %i.hfo = sext i32 %i.hfn to i64
  %i.hfp = mul nsw i64 %i.hfo, %i.hfl
  %i.hfq = add nsw i64 %i.hfp, %.10.i
  br label %bb.yo

bb.yo:                                            ; preds = %bb.yn, %bb.yb
  %.11.i = phi i64 [ %i.hfq, %bb.yn ], [ 0, %bb.yb ]
  %i.hfr = load i32, ptr %i.gnc, align 4, !tbaa !118
  %i.hfs = sext i32 %i.hfr to i64
  %i.hft = getelementptr inbounds i8, ptr %.31169, i64 -80
  %i.hfu = load i32, ptr %i.hft, align 4, !tbaa !118
  %i.hfv = sext i32 %i.hfu to i64
  %i.hfw = mul nsw i64 %i.hfv, %i.hfs
  %i.hfx = add nsw i64 %i.hfw, %.11.i
  br label %bb.yp

bb.yp:                                            ; preds = %bb.yo, %bb.yb
  %.12.i = phi i64 [ %i.hfx, %bb.yo ], [ 0, %bb.yb ]
  %i.hfy = load i32, ptr %i.gnd, align 4, !tbaa !118
  %i.hfz = sext i32 %i.hfy to i64
  %i.hga = getelementptr inbounds i8, ptr %.31169, i64 -76
  %i.hgb = load i32, ptr %i.hga, align 4, !tbaa !118
  %i.hgc = sext i32 %i.hgb to i64
  %i.hgd = mul nsw i64 %i.hgc, %i.hfz
  %i.hge = add nsw i64 %i.hgd, %.12.i
  br label %bb.yq

bb.yq:                                            ; preds = %bb.yp, %bb.yb
  %.13.i = phi i64 [ %i.hge, %bb.yp ], [ 0, %bb.yb ]
  %i.hgf = load i32, ptr %i.gne, align 4, !tbaa !118
  %i.hgg = sext i32 %i.hgf to i64
  %i.hgh = getelementptr inbounds i8, ptr %.31169, i64 -72
  %i.hgi = load i32, ptr %i.hgh, align 4, !tbaa !118
  %i.hgj = sext i32 %i.hgi to i64
  %i.hgk = mul nsw i64 %i.hgj, %i.hgg
  %i.hgl = add nsw i64 %i.hgk, %.13.i
  br label %bb.yr
end_hunk_4
