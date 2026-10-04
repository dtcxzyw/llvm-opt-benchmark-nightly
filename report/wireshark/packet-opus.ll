Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-opus?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hf_register_info = type { ptr, %struct._header_field_info }
%struct._header_field_info = type { ptr, ptr, i32, i32, ptr, i64, ptr, i32, i32, i32, i32, ptr }
%struct._value_string_ext = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.true_false_string = type { ptr, ptr }
%struct.unit_name_string = type { ptr, ptr }
%struct.expert_field = type { i32, i32 }
%struct.FRAME_T = type { i16, i16 }

@proto_register_opus.hf = internal global [10 x %struct.hf_register_info] [%struct.hf_register_info { ptr @hf_opus_toc_config, %struct._header_field_info { ptr @.str, ptr @.str.1, i32 4, i32 513, ptr @opus_codec_toc_config_request_vals_ext, i64 248, ptr @.str.2, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_opus_toc_s, %struct._header_field_info { ptr @.str.3, ptr @.str.4, i32 2, i32 8, ptr @toc_s_bit_vals, i64 4, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_opus_toc_c, %struct._header_field_info { ptr @.str.5, ptr @.str.6, i32 4, i32 513, ptr @opus_codec_toc_c_request_vals_ext, i64 3, ptr @.str.7, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_opus_frame_count_m, %struct._header_field_info { ptr @.str.8, ptr @.str.9, i32 4, i32 1, ptr null, i64 63, ptr @.str.10, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_opus_frame_count_p, %struct._header_field_info { ptr @.str.11, ptr @.str.12, i32 2, i32 8, ptr @fc_p_bit_vals, i64 64, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_opus_frame_count_v, %struct._header_field_info { ptr @.str.13, ptr @.str.14, i32 2, i32 8, ptr @fc_v_bit_vals, i64 128, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_opus_frame_size, %struct._header_field_info { ptr @.str.15, ptr @.str.16, i32 5, i32 4097, ptr @units_byte_bytes, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_opus_frame, %struct._header_field_info { ptr @.str.17, ptr @.str.18, i32 30, i32 2048, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_opus_padding, %struct._header_field_info { ptr @.str.19, ptr @.str.20, i32 30, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } }, %struct.hf_register_info { ptr @hf_opus_padding_size, %struct._header_field_info { ptr @.str.21, ptr @.str.22, i32 7, i32 1, ptr null, i64 0, ptr @.str.23, i32 -1, i32 0, i32 0, i32 -1, ptr null } }], align 16
@hf_opus_toc_config = internal global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"TOC.config\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"opus.TOC.config\00", align 1
@opus_codec_toc_config_request_vals_ext = internal global %struct._value_string_ext { ptr @_try_val_to_str_ext_init, i32 0, i32 32, ptr @opus_codec_toc_config_request_vals, ptr @.str.47, ptr null }, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Opus TOC config\00", align 1
@hf_opus_toc_s = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"TOC.S bit\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"opus.TOC.s\00", align 1
@toc_s_bit_vals = internal constant %struct.true_false_string { ptr @.str.81, ptr @.str.82 }, align 8
@hf_opus_toc_c = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"TOC.C bits\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"opus.TOC.c\00", align 1
@opus_codec_toc_c_request_vals_ext = internal global %struct._value_string_ext { ptr @_try_val_to_str_ext_init, i32 0, i32 4, ptr @opus_codec_toc_c_request_vals, ptr @.str.83, ptr null }, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"Opus TOC code\00", align 1
@hf_opus_frame_count_m = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"Frame Count.m\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"opus.FC.m\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Frame Count\00", align 1
@hf_opus_frame_count_p = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"Frame Count.p bit\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"opus.FC.p\00", align 1
@fc_p_bit_vals = internal constant %struct.true_false_string { ptr @.str.19, ptr @.str.89 }, align 8
@hf_opus_frame_count_v = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"Frame Count.v bit\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"opus.FC.v\00", align 1
@fc_v_bit_vals = internal constant %struct.true_false_string { ptr @.str.90, ptr @.str.91 }, align 8
@hf_opus_frame_size = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"Frame Size\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"opus.frame_size\00", align 1
@units_byte_bytes = external constant %struct.unit_name_string, align 8
@hf_opus_frame = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"Frame Data\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"opus.frame_data\00", align 1
@hf_opus_padding = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"Padding\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"opus.padding\00", align 1
@hf_opus_padding_size = internal global i32 0, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"Padding Size\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"opus.padding_size\00", align 1
@.str.23 = private unnamed_addr constant [78 x i8] c"Additional padding bytes, not including the bytes indicating the padding size\00", align 1
@proto_register_opus.ett = internal global [1 x ptr] [ptr @ett_opus], align 8
@ett_opus = internal global i32 0, align 4
@proto_register_opus.ei = internal global [8 x { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } }] [{ ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_opus_err_r1, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.24, i32 150994944, i32 8388608, ptr @.str.25, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_opus_err_r2, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.26, i32 117440512, i32 8388608, ptr @.str.27, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_opus_err_r3, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.28, i32 117440512, i32 8388608, ptr @.str.29, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_opus_err_r4, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.30, i32 117440512, i32 8388608, ptr @.str.31, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_opus_err_r5, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.32, i32 150994944, i32 8388608, ptr @.str.33, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_opus_err_r6, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.34, i32 150994944, i32 8388608, ptr @.str.35, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_opus_err_r7, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.36, i32 150994944, i32 8388608, ptr @.str.37, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }, { ptr, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } } { ptr @ei_opus_padding_nonzero, { ptr, i32, i32, ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, %struct.hf_register_info } { ptr @.str.38, i32 150994944, i32 6291456, ptr @.str.39, i32 0, [4 x i8] zeroinitializer, ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, %struct.hf_register_info { ptr null, %struct._header_field_info { ptr null, ptr null, i32 0, i32 0, ptr null, i64 0, ptr null, i32 -1, i32 0, i32 0, i32 -1, ptr null } } } }], align 16
@ei_opus_err_r1 = internal global %struct.expert_field zeroinitializer, align 4
@.str.24 = private unnamed_addr constant [16 x i8] c"opus.violate_r1\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"Error:[R1] Packets are at least one byte.\00", align 1
@ei_opus_err_r2 = internal global %struct.expert_field zeroinitializer, align 4
@.str.26 = private unnamed_addr constant [16 x i8] c"opus.violate_r2\00", align 1
@.str.27 = private unnamed_addr constant [63 x i8] c"Error:[R2] No implicit frame length is larger than 1275 bytes.\00", align 1
@ei_opus_err_r3 = internal global %struct.expert_field zeroinitializer, align 4
@.str.28 = private unnamed_addr constant [16 x i8] c"opus.violate_r3\00", align 1
@.str.29 = private unnamed_addr constant [86 x i8] c"Error:[R3] Code 1 packets have an odd total length, N, so that (N-1)/2 is an integer.\00", align 1
@ei_opus_err_r4 = internal global %struct.expert_field zeroinitializer, align 4
@.str.30 = private unnamed_addr constant [16 x i8] c"opus.violate_r4\00", align 1
@.str.31 = private unnamed_addr constant [162 x i8] c"Error:[R4] Code 2 packets have enough bytes after the TOC for a valid frame length, and that length is no larger than the number ofbytes remaining in the packet.\00", align 1
@ei_opus_err_r5 = internal global %struct.expert_field zeroinitializer, align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"opus.violate_r5\00", align 1
@.str.33 = private unnamed_addr constant [94 x i8] c"Error:[R5] Code 3 packets contain at least one frame, but no more than 120 ms of audio total.\00", align 1
@ei_opus_err_r6 = internal global %struct.expert_field zeroinitializer, align 4
@.str.34 = private unnamed_addr constant [16 x i8] c"opus.violate_r6\00", align 1
@.str.35 = private unnamed_addr constant [298 x i8] c"Error:[R6] The length of a CBR code 3 packet, N, is at least two bytes, the number of bytes added to indicate the padding size plus the trailing padding bytes themselves, P, is no more than N-2, and the frame count, M, satisfies the constraint that (N-2-P) is a non-negative integer multiple of M.\00", align 1
@ei_opus_err_r7 = internal global %struct.expert_field zeroinitializer, align 4
@.str.36 = private unnamed_addr constant [16 x i8] c"opus.violate_r7\00", align 1
@.str.37 = private unnamed_addr constant [237 x i8] c"Error:[R7] VBR code 3 packets are large enough to contain all the header bytes (TOC byte, frame count byte, any padding length bytes, and any frame length bytes), plus the length of the first M-1 frames, plus any trailing padding bytes.\00", align 1
@ei_opus_padding_nonzero = internal global %struct.expert_field zeroinitializer, align 4
@.str.38 = private unnamed_addr constant [21 x i8] c"opus.padding.nonzero\00", align 1
@.str.39 = private unnamed_addr constant [60 x i8] c"Additional padding bytes MUST be set to zero by the encoder\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"Opus Interactive Audio Codec\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"OPUS\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"opus\00", align 1
@proto_opus = internal unnamed_addr global i32 0, align 4
@.str.43 = private unnamed_addr constant [21 x i8] c"dynamic.payload.type\00", align 1
@opus_handle = internal unnamed_addr global ptr null, align 8
@.str.44 = private unnamed_addr constant [21 x i8] c"rtp_dyn_payload_type\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"rtp.pt\00", align 1
@.str.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"opus_codec_toc_config_request_vals\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"NB, SILK-only ptime=10\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"NB, SILK-only ptime=20\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"NB, SILK-only ptime=40\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"NB, SILK-only ptime=60\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"MB, SILK-only ptime=10\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"MB, SILK-only ptime=20\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"MB, SILK-only ptime=40\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"MB, SILK-only ptime=60\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"WB, SILK-only ptime=10\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"WB, SILK-only ptime=20\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"WB, SILK-only ptime=40\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"WB, SILK-only ptime=60\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"SWB, Hybrid ptime=10\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"SWB, Hybrid ptime=20\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"FB, Hybrid ptime=10\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"FB, Hybrid ptime=20\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"NB, CELT-only ptime=2.5\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"NB, CELT-only ptime=5\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"NB, CELT-only ptime=10\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"NB, CELT-only ptime=20\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"WB, CELT-only ptime=2.5\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"WB, CELT-only ptime=5\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"WB, CELT-only ptime=10\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"WB, CELT-only ptime=20\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"SWB, CELT-only ptime=2.5\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"SWB, CELT-only ptime=5\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"SWB, CELT-only ptime=10\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"SWB, CELT-only ptime=20\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"FB, CELT-only ptime=2.5\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"FB, CELT-only ptime=5\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"FB, CELT-only ptime=10\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"FB, CELT-only ptime=20\00", align 1
@opus_codec_toc_config_request_vals = internal constant [33 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.48 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.49 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.50 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.51 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.52 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.53 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.54 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.55 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.56 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.57 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.58 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.59 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.60 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.61 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.62 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.63 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.64 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.65 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.66 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.67 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.68 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.69 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.70 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.71 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.72 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.73 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.74 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.75 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.76 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.77 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.78 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.79 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.81 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.83 = private unnamed_addr constant [30 x i8] c"opus_codec_toc_c_request_vals\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"1 frame in the packet\00", align 1
@.str.85 = private unnamed_addr constant [56 x i8] c"2 frames in the packet, each with equal compressed size\00", align 1
@.str.86 = private unnamed_addr constant [56 x i8] c"2 frames in the packet, with different compressed sizes\00", align 1
@.str.87 = private unnamed_addr constant [44 x i8] c"an arbitrary number of frames in the packet\00", align 1
@opus_codec_toc_c_request_vals = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.84 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.85 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.87 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.89 = private unnamed_addr constant [11 x i8] c"No Padding\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"VBR\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"CBR\00", align 1
@dissect_opus.toc_fields = internal global [4 x ptr] [ptr @hf_opus_toc_config, ptr @hf_opus_toc_s, ptr @hf_opus_toc_c, ptr null], align 16
@dissect_opus.frame_count_fields = internal global [4 x ptr] [ptr @hf_opus_frame_count_v, ptr @hf_opus_frame_count_p, ptr @hf_opus_frame_count_m, ptr null], align 16

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_opus() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) ; 2 uses
  store i32 %i.a, ptr @proto_opus, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_opus.hf, i32 noundef 10)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_opus.ett, i32 noundef 1)
  %i.b = load i32, ptr @proto_opus, align 4
  %i.c = tail call ptr @prefs_register_protocol(i32 noundef %i.b, ptr noundef null)
  %i.d = load i32, ptr @proto_opus, align 4
  %i.e = tail call ptr @expert_register_protocol(i32 noundef %i.d)
  tail call void @expert_register_field_array(ptr noundef %i.e, ptr noundef nonnull @proto_register_opus.ei, i32 noundef 8)
  tail call void @prefs_register_obsolete_preference(ptr noundef %i.c, ptr noundef nonnull @.str.43)
  %i.f = load i32, ptr @proto_opus, align 4
  %i.g = tail call ptr @register_dissector(ptr noundef nonnull @.str.42, ptr noundef nonnull @dissect_opus, i32 noundef %i.f)
  store ptr %i.g, ptr @opus_handle, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @prefs_register_protocol(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_obsolete_preference(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_opus(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca [48 x %struct.FRAME_T], align 16    ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %4, i8 0, i64 192, i1 false)
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_set_str(ptr noundef %i.b, i32 noundef 35, ptr noundef nonnull @.str.41)
  %i.c = load i32, ptr @proto_opus, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.e = load i32, ptr @ett_opus, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 20 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.f, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @dissect_opus.toc_fields, i32 noundef 0)
  %i.g = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.h = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0) ; 11 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_opus_err_r1) ; 0 uses
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 3 uses
  %i.l = and i8 %i.k, 3
  switch i8 %i.l, label %default.unreachable349 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.h
    i8 3, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  store i16 1, ptr %4, align 16
  %i.m = trunc i32 %i.h to i16
  %i.n = add i16 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.n, ptr %i.o, align 2
  br label %.lr.ph313.preheader

bb.e:                                             ; preds = %bb.c
  %i.p = add nsw i32 %i.h, -1                     ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not235 = icmp eq i32 %i.q, 0
  br i1 %.not235, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_opus_err_r3) ; 0 uses
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.s = lshr exact i32 %i.p, 1
  %i.t = trunc i32 %i.s to i16
  %i.u = insertelement <4 x i16> <i16 0, i16 poison, i16 poison, i16 poison>, i16 %i.t, i64 1
  %i.v = shufflevector <4 x i16> %i.u, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.w = add <4 x i16> %i.v, <i16 1, i16 0, i16 1, i16 0>
  store <4 x i16> %i.w, ptr %4, align 16
  br label %.lr.ph313.preheader

bb.h:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %i.h, 1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_opus_err_r4) ; 0 uses
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.z = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 4 uses
  %i.aa = icmp samesign ugt i32 %i.h, 2
  br i1 %i.aa, label %.split, label %.split224

.split224:                                        ; preds = %bb.j
  %i.ab = zext i8 %i.z to i16
  %i.ac = icmp ult i8 %i.z, -4
  br i1 %i.ac, label %parse_size_field.exit, label %parse_size_field.exit.thread

.split:                                           ; preds = %bb.j
  %i.ad = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 2)
  %i.ae = zext i8 %i.z to i16                     ; 2 uses
  %i.af = icmp ult i8 %i.z, -4
  br i1 %i.af, label %parse_size_field.exit, label %bb.k

bb.k:                                             ; preds = %.split
  %i.ag = zext i8 %i.ad to i16
  %i.ah = shl nuw nsw i16 %i.ag, 2
  %i.ai = add nuw nsw i16 %i.ah, %i.ae
  br label %parse_size_field.exit

parse_size_field.exit:                            ; preds = %bb.k, %.split, %.split224
  %.0255 = phi i16 [ %i.ab, %.split224 ], [ %i.ae, %.split ], [ %i.ai, %bb.k ] ; 3 uses
  %phi.call = phi i32 [ 1, %.split224 ], [ 1, %.split ], [ 2, %bb.k ] ; 2 uses
  %i.aj = zext nneg i16 %.0255 to i32             ; 2 uses
  %i.ak = icmp samesign ult i32 %i.h, %i.aj
  br i1 %i.ak, label %parse_size_field.exit.thread, label %bb.l

parse_size_field.exit.thread:                     ; preds = %.split224, %parse_size_field.exit
  %i.al = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_opus_err_r1) ; 0 uses
  br label %.critedge

bb.l:                                             ; preds = %parse_size_field.exit
  %i.am = load i32, ptr @hf_opus_frame_size, align 4
  %i.an = tail call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.am, ptr noundef %0, i32 noundef 1, i32 noundef %phi.call, i32 noundef %i.aj) ; 0 uses
  %i.ao = trunc nuw nsw i32 %phi.call to i16
  %i.ap = add nuw nsw i16 %i.ao, 1                ; 2 uses
  store i16 %i.ap, ptr %4, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %.0255, ptr %i.aq, align 2
  %i.ar = add nuw nsw i16 %i.ap, %.0255
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.ar, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 -1, ptr %i.at, align 2
  br label %.lr.ph313.preheader

default.unreachable349:                           ; preds = %bb.c
  unreachable

bb.m:                                             ; preds = %bb.c
  %i.au = icmp eq i32 %i.h, 1
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_opus_err_r6) ; 0 uses
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  tail call void @proto_tree_add_bitmask_list(ptr noundef %i.f, ptr noundef %0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @dissect_opus.frame_count_fields, i32 noundef 0)
  %i.aw = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = and i32 %i.ax, 63                       ; 12 uses
  %i.az = zext i8 %i.k to i32                     ; 4 uses
  %.not.i = icmp sgt i8 %i.k, -1
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = lshr i32 %i.az, 3
  %i.bb = and i32 %i.ba, 3
  %i.bc = shl nuw nsw i32 48000, %i.bb
  %i.bd = udiv i32 %i.bc, 400
  br label %opus_packet_get_samples_per_frame.exit

bb.q:                                             ; preds = %bb.o
  %i.be = and i32 %i.az, 96
  %i.bf = icmp eq i32 %i.be, 96
  br i1 %i.bf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = and i32 %i.az, 8
  %.not14.i = icmp eq i32 %i.bg, 0
  %..i = select i1 %.not14.i, i32 480, i32 960
  br label %opus_packet_get_samples_per_frame.exit

bb.s:                                             ; preds = %bb.q
  %i.bh = lshr i32 %i.az, 3
  %i.bi = and i32 %i.bh, 3                        ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 3
  br i1 %i.bj, label %opus_packet_get_samples_per_frame.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = shl nuw nsw i32 48000, %i.bi
  %i.bl = udiv i32 %i.bk, 100
  br label %opus_packet_get_samples_per_frame.exit

opus_packet_get_samples_per_frame.exit:           ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  %.0.i249 = phi i32 [ %i.bd, %bb.p ], [ %..i, %bb.r ], [ %i.bl, %bb.t ], [ 2880, %bb.s ]
  %i.bm = icmp eq i32 %i.ay, 0
  %i.bn = mul nuw nsw i32 %.0.i249, %i.ay
  %i.bo = icmp samesign ugt i32 %i.bn, 5760
  %or.cond287 = select i1 %i.bm, i1 true, i1 %i.bo
  br i1 %or.cond287, label %bb.u, label %bb.v

bb.u:                                             ; preds = %opus_packet_get_samples_per_frame.exit
  %i.bp = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_opus_err_r5) ; 0 uses
  br label %.critedge

bb.v:                                             ; preds = %opus_packet_get_samples_per_frame.exit
  %i.bq = and i32 %i.ax, 64
  %.not = icmp eq i32 %i.bq, 0
  br i1 %.not, label %bb.x, label %.preheader291.preheader

.preheader291.preheader:                          ; preds = %bb.v
  %exitcond.not361 = icmp eq i32 %i.h, 2
  br i1 %exitcond.not361, label %.preheader291._crit_edge, label %.lr.ph364

.preheader291:                                    ; preds = %.lr.ph364
  %exitcond.not = icmp eq i32 %i.bs, %i.h
  br i1 %exitcond.not, label %.preheader291._crit_edge, label %.lr.ph364, !llvm.loop !6

.preheader291._crit_edge:                         ; preds = %.preheader291, %.preheader291.preheader
  %i.br = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_opus_err_r7) ; 0 uses
  br label %.critedge

.lr.ph364:                                        ; preds = %.preheader291.preheader, %.preheader291
  %.0202363 = phi i32 [ %i.bv, %.preheader291 ], [ 0, %.preheader291.preheader ]
  %.0209362 = phi i32 [ %i.bs, %.preheader291 ], [ 2, %.preheader291.preheader ] ; 3 uses
  %i.bs = add nuw i32 %.0209362, 1                ; 3 uses
  %i.bt = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0209362) ; 2 uses
  %narrow = tail call i8 @llvm.umin.i8(i8 %i.bt, i8 -2)
  %i.bu = zext i8 %narrow to i32
  %i.bv = add i32 %.0202363, %i.bu                ; 4 uses
  %i.bw = icmp eq i8 %i.bt, -1
  br i1 %i.bw, label %.preheader291, label %bb.w, !llvm.loop !6

bb.w:                                             ; preds = %.lr.ph364
  %i.bx = load i32, ptr @hf_opus_padding_size, align 4
  %i.by = add nsw i32 %.0209362, -1
  %i.bz = tail call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.bx, ptr noundef %0, i32 noundef 2, i32 noundef %i.by, i32 noundef %i.bv) ; 0 uses
  %i.ca = sub i32 %i.h, %i.bv
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1214 = phi i32 [ %i.ca, %bb.w ], [ %i.h, %bb.v ] ; 7 uses
  %.2211 = phi i32 [ %i.bs, %bb.w ], [ 2, %bb.v ] ; 6 uses
  %.2204 = phi i32 [ %i.bv, %bb.w ], [ 0, %bb.v ] ; 3 uses
  %.not232 = icmp sgt i8 %i.aw, -1
  br i1 %.not232, label %bb.af, label %.preheader289

.preheader289:                                    ; preds = %bb.x
  %i.cb = add nsw i32 %i.ay, -1                   ; 2 uses
  %i.cc = icmp samesign ugt i32 %i.ay, 1
  br i1 %i.cc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader289
  %wide.trip.count = zext i32 %i.cb to i64        ; 3 uses
  br label %.lr.ph

.lr.ph307.preheader:                              ; preds = %bb.ac
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.cd = add nsw i32 %i.ay, -2
  %i.ce = icmp ult i32 %i.cd, 3
  br i1 %i.ce, label %.lr.ph307.epil.preheader, label %.lr.ph307.preheader.new

.lr.ph307.preheader.new:                          ; preds = %.lr.ph307.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph307

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ac ] ; 3 uses
  %.3212303 = phi i32 [ %.2211, %.lr.ph.preheader ], [ %i.dc, %bb.ac ] ; 7 uses
  %.not234 = icmp slt i32 %.3212303, %.1214
  br i1 %.not234, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  %i.cf = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_opus_err_r7) ; 0 uses
  br label %.critedge

bb.z:                                             ; preds = %.lr.ph
  %i.cg = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.3212303) ; 4 uses
  %i.ch = add nsw i32 %.3212303, 1
  %i.ci = icmp slt i32 %i.ch, %.1214
  br i1 %i.ci, label %.thread267, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = getelementptr [4 x i8], ptr %4, i64 %indvars.iv
  %i.ck = getelementptr i8, ptr %i.cj, i64 2      ; 2 uses
  %i.cl = zext i8 %i.cg to i16
  %i.cm = icmp ult i8 %i.cg, -4
  br i1 %i.cm, label %parse_size_field.exit252, label %parse_size_field.exit252.thread

.thread267:                                       ; preds = %bb.z
  %i.cn = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.3212303)
  %i.co = getelementptr [4 x i8], ptr %4, i64 %indvars.iv
  %i.cp = getelementptr i8, ptr %i.co, i64 2      ; 2 uses
  %i.cq = zext i8 %i.cg to i16                    ; 2 uses
  %i.cr = icmp ult i8 %i.cg, -4
  br i1 %i.cr, label %parse_size_field.exit252, label %bb.ab

parse_size_field.exit252.thread:                  ; preds = %bb.aa
  store i16 -1, ptr %i.ck, align 2
  br label %.loopexit290

bb.ab:                                            ; preds = %.thread267
  %i.cs = zext i8 %i.cn to i16
  %i.ct = shl nuw nsw i16 %i.cs, 2
  %i.cu = add nuw nsw i16 %i.ct, %i.cq
  br label %parse_size_field.exit252

parse_size_field.exit252:                         ; preds = %.thread267, %bb.aa, %bb.ab
  %i.cv = phi ptr [ %i.cp, %bb.ab ], [ %i.ck, %bb.aa ], [ %i.cp, %.thread267 ]
  %.sink.i250 = phi i16 [ %i.cu, %bb.ab ], [ %i.cl, %bb.aa ], [ %i.cq, %.thread267 ] ; 2 uses
  %.0.i251 = phi i32 [ 2, %bb.ab ], [ 1, %bb.aa ], [ 1, %.thread267 ] ; 2 uses
  store i16 %.sink.i250, ptr %i.cv, align 2
  %i.cw = zext nneg i16 %.sink.i250 to i32        ; 2 uses
  %i.cx = sub i32 %.1214, %.3212303
  %i.cy = icmp slt i32 %i.cx, %i.cw
  br i1 %i.cy, label %.loopexit290, label %bb.ac

.loopexit290:                                     ; preds = %parse_size_field.exit252, %parse_size_field.exit252.thread
  %i.cz = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_opus_err_r1) ; 0 uses
  br label %.critedge

bb.ac:                                            ; preds = %parse_size_field.exit252
  %i.da = load i32, ptr @hf_opus_frame_size, align 4
  %i.db = tail call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.da, ptr noundef %0, i32 noundef %.3212303, i32 noundef %.0.i251, i32 noundef %i.cw) ; 0 uses
  %i.dc = add i32 %.0.i251, %.3212303             ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond326.not, label %.lr.ph307.preheader, label %.lr.ph, !llvm.loop !7

.lr.ph307:                                        ; preds = %.lr.ph307, %.lr.ph307.preheader.new
  %indvars.iv327 = phi i64 [ 0, %.lr.ph307.preheader.new ], [ %indvars.iv.next328.3, %.lr.ph307 ] ; 5 uses
  %.4306 = phi i32 [ %i.dc, %.lr.ph307.preheader.new ], [ %i.ed, %.lr.ph307 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph307.preheader.new ], [ %niter.next.3, %.lr.ph307 ]
  %i.dd = trunc i32 %.4306 to i16
  %i.de = getelementptr [4 x i8], ptr %4, i64 %indvars.iv327 ; 2 uses
  store i16 %i.dd, ptr %i.de, align 16
  %i.df = getelementptr i8, ptr %i.de, i64 2
  %i.dg = load i16, ptr %i.df, align 2
  %i.dh = sext i16 %i.dg to i32
  %i.di = add i32 %.4306, %i.dh                   ; 2 uses
  %i.dj = trunc i32 %i.di to i16
  %i.dk = getelementptr [4 x i8], ptr %4, i64 %indvars.iv327 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  store i16 %i.dj, ptr %i.dl, align 4
  %i.dm = getelementptr i8, ptr %i.dk, i64 6
  %i.dn = load i16, ptr %i.dm, align 2
  %i.do = sext i16 %i.dn to i32
  %i.dp = add i32 %i.di, %i.do                    ; 2 uses
  %i.dq = trunc i32 %i.dp to i16
  %i.dr = getelementptr [4 x i8], ptr %4, i64 %indvars.iv327 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  store i16 %i.dq, ptr %i.ds, align 8
  %i.dt = getelementptr i8, ptr %i.dr, i64 10
  %i.du = load i16, ptr %i.dt, align 2
  %i.dv = sext i16 %i.du to i32
  %i.dw = add i32 %i.dp, %i.dv                    ; 2 uses
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = getelementptr [4 x i8], ptr %4, i64 %indvars.iv327 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 12
  store i16 %i.dx, ptr %i.dz, align 4
  %i.ea = getelementptr i8, ptr %i.dy, i64 14
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = sext i16 %i.eb to i32
  %i.ed = add i32 %i.dw, %i.ec                    ; 3 uses
  %indvars.iv.next328.3 = add nuw nsw i64 %indvars.iv327, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph307, !llvm.loop !8

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph307
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph307.epil.preheader

.lr.ph307.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph307.preheader
  %indvars.iv327.epil.init = phi i64 [ 0, %.lr.ph307.preheader ], [ %indvars.iv.next328.3, %._crit_edge.loopexit.unr-lcssa ]
  %.4306.epil.init = phi i32 [ %i.dc, %.lr.ph307.preheader ], [ %i.ed, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod378 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod378)
  br label %.lr.ph307.epil

.lr.ph307.epil:                                   ; preds = %.lr.ph307.epil, %.lr.ph307.epil.preheader
  %indvars.iv327.epil = phi i64 [ %indvars.iv327.epil.init, %.lr.ph307.epil.preheader ], [ %indvars.iv.next328.epil, %.lr.ph307.epil ] ; 2 uses
  %.4306.epil = phi i32 [ %.4306.epil.init, %.lr.ph307.epil.preheader ], [ %i.ej, %.lr.ph307.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph307.epil.preheader ], [ %epil.iter.next, %.lr.ph307.epil ]
  %i.ee = trunc i32 %.4306.epil to i16
  %i.ef = getelementptr [4 x i8], ptr %4, i64 %indvars.iv327.epil ; 2 uses
  store i16 %i.ee, ptr %i.ef, align 4
  %i.eg = getelementptr i8, ptr %i.ef, i64 2
  %i.eh = load i16, ptr %i.eg, align 2
  %i.ei = sext i16 %i.eh to i32
  %i.ej = add i32 %.4306.epil, %i.ei              ; 2 uses
  %indvars.iv.next328.epil = add nuw nsw i64 %indvars.iv327.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph307.epil, !llvm.loop !9

._crit_edge.loopexit:                             ; preds = %.lr.ph307.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.ed, %._crit_edge.loopexit.unr-lcssa ], [ %i.ej, %.lr.ph307.epil ]
  %i.ek = zext nneg i32 %i.cb to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader289, %._crit_edge.loopexit
  %.1216.lcssa = phi i64 [ 0, %.preheader289 ], [ %i.ek, %._crit_edge.loopexit ]
  %.4.lcssa = phi i32 [ %.2211, %.preheader289 ], [ %.lcssa, %._crit_edge.loopexit ] ; 3 uses
  %i.el = icmp sgt i32 %.4.lcssa, %.1214
  br i1 %i.el, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge
  %i.em = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_opus_err_r7) ; 0 uses
  br label %.critedge

bb.ae:                                            ; preds = %._crit_edge
  %i.en = trunc i32 %.4.lcssa to i16
  %i.eo = getelementptr [4 x i8], ptr %4, i64 %.1216.lcssa ; 2 uses
  store i16 %i.en, ptr %i.eo, align 4
  %i.ep = sub i32 %.1214, %.4.lcssa
  %i.eq = trunc i32 %i.ep to i16
  %i.er = getelementptr i8, ptr %i.eo, i64 2
  store i16 %i.eq, ptr %i.er, align 2
  br label %.lr.ph313.preheader

bb.af:                                            ; preds = %bb.x
  %i.es = icmp sgt i32 %.2211, %.1214
  br i1 %i.es, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.et = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_opus_err_r6) ; 0 uses
  br label %.critedge

bb.ah:                                            ; preds = %bb.af
  %i.eu = sub i32 %.1214, %.2211                  ; 2 uses
  %i.ev = sdiv i32 %i.eu, %i.ay                   ; 4 uses
  %i.ew = mul i32 %i.ev, %i.ay
  %.not233 = icmp eq i32 %i.ew, %i.eu
  br i1 %.not233, label %.preheader, label %.thread281

.preheader:                                       ; preds = %bb.ah
  %i.ex = trunc i32 %i.ev to i16                  ; 2 uses
  %wide.trip.count335 = zext nneg i32 %i.ay to i64 ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.ay, 8
  br i1 %min.iters.check, label %scalar.ph.prol.loopexit, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %wide.trip.count335, 56        ; 8 uses
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.ex, i64 0 ; 14 uses
  %broadcast.splatinsert365 = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat366 = shufflevector <4 x i32> %broadcast.splatinsert365, <4 x i32> poison, <4 x i32> zeroinitializer ; 14 uses
  %broadcast.splatinsert367 = insertelement <4 x i32> poison, i32 %.2211, i64 0
  %broadcast.splat368 = shufflevector <4 x i32> %broadcast.splatinsert367, <4 x i32> poison, <4 x i32> zeroinitializer ; 14 uses
  %i.ey = mul <4 x i32> %broadcast.splat366, <i32 0, i32 1, i32 2, i32 3>
  %i.ez = mul <4 x i32> %broadcast.splat366, <i32 4, i32 5, i32 6, i32 7>
  %i.fa = add <4 x i32> %i.ey, %broadcast.splat368
  %i.fb = add <4 x i32> %i.ez, %broadcast.splat368
  %i.fc = trunc <4 x i32> %i.fa to <4 x i16>
  %i.fd = trunc <4 x i32> %i.fb to <4 x i16>
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16
  %interleaved.vec = shufflevector <4 x i16> %i.fc, <4 x i16> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x i16> %interleaved.vec, ptr %4, align 16
  %interleaved.vec369 = shufflevector <4 x i16> %i.fd, <4 x i16> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x i16> %interleaved.vec369, ptr %i.fe, align 16
  %i.ff = icmp eq i64 %n.vec, 8
  br i1 %i.ff, label %scalar.ph.prol, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.fg = mul <4 x i32> %broadcast.splat366, <i32 8, i32 9, i32 10, i32 11>
  %i.fh = mul <4 x i32> %broadcast.splat366, <i32 12, i32 13, i32 14, i32 15>
  %i.fi = add <4 x i32> %i.fg, %broadcast.splat368
  %i.fj = add <4 x i32> %i.fh, %broadcast.splat368
  %i.fk = trunc <4 x i32> %i.fi to <4 x i16>
  %i.fl = trunc <4 x i32> %i.fj to <4 x i16>
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 48
  %interleaved.vec.1 = shufflevector <4 x i16> %i.fk, <4 x i16> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x i16> %interleaved.vec.1, ptr %i.fm, align 16
  %interleaved.vec369.1 = shufflevector <4 x i16> %i.fl, <4 x i16> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x i16> %interleaved.vec369.1, ptr %i.fn, align 16
  %i.fo = icmp eq i64 %n.vec, 16
  br i1 %i.fo, label %scalar.ph.prol, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.fp = mul <4 x i32> %broadcast.splat366, <i32 16, i32 17, i32 18, i32 19>
  %i.fq = mul <4 x i32> %broadcast.splat366, <i32 20, i32 21, i32 22, i32 23>
  %i.fr = add <4 x i32> %i.fp, %broadcast.splat368
  %i.fs = add <4 x i32> %i.fq, %broadcast.splat368
  %i.ft = trunc <4 x i32> %i.fr to <4 x i16>
  %i.fu = trunc <4 x i32> %i.fs to <4 x i16>
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 80
  %interleaved.vec.2 = shufflevector <4 x i16> %i.ft, <4 x i16> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x i16> %interleaved.vec.2, ptr %i.fv, align 16
  %interleaved.vec369.2 = shufflevector <4 x i16> %i.fu, <4 x i16> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x i16> %interleaved.vec369.2, ptr %i.fw, align 16
  %i.fx = icmp eq i64 %n.vec, 24
  br i1 %i.fx, label %scalar.ph.prol, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.fy = mul <4 x i32> %broadcast.splat366, <i32 24, i32 25, i32 26, i32 27>
  %i.fz = mul <4 x i32> %broadcast.splat366, <i32 28, i32 29, i32 30, i32 31>
  %i.ga = add <4 x i32> %i.fy, %broadcast.splat368
  %i.gb = add <4 x i32> %i.fz, %broadcast.splat368
  %i.gc = trunc <4 x i32> %i.ga to <4 x i16>
  %i.gd = trunc <4 x i32> %i.gb to <4 x i16>
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 112
  %interleaved.vec.3 = shufflevector <4 x i16> %i.gc, <4 x i16> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x i16> %interleaved.vec.3, ptr %i.ge, align 16
  %interleaved.vec369.3 = shufflevector <4 x i16> %i.gd, <4 x i16> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x i16> %interleaved.vec369.3, ptr %i.gf, align 16
  %i.gg = icmp eq i64 %n.vec, 32
  br i1 %i.gg, label %scalar.ph.prol, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.gh = mul <4 x i32> %broadcast.splat366, <i32 32, i32 33, i32 34, i32 35>
  %i.gi = mul <4 x i32> %broadcast.splat366, <i32 36, i32 37, i32 38, i32 39>
  %i.gj = add <4 x i32> %i.gh, %broadcast.splat368
  %i.gk = add <4 x i32> %i.gi, %broadcast.splat368
  %i.gl = trunc <4 x i32> %i.gj to <4 x i16>
  %i.gm = trunc <4 x i32> %i.gk to <4 x i16>
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 144
  %interleaved.vec.4 = shufflevector <4 x i16> %i.gl, <4 x i16> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x i16> %interleaved.vec.4, ptr %i.gn, align 16
  %interleaved.vec369.4 = shufflevector <4 x i16> %i.gm, <4 x i16> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x i16> %interleaved.vec369.4, ptr %i.go, align 16
  %i.gp = icmp eq i64 %n.vec, 40
  br i1 %i.gp, label %scalar.ph.prol, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.gq = mul <4 x i32> %broadcast.splat366, <i32 40, i32 41, i32 42, i32 43>
  %i.gr = mul <4 x i32> %broadcast.splat366, <i32 44, i32 45, i32 46, i32 47>
  %i.gs = add <4 x i32> %i.gq, %broadcast.splat368
  %i.gt = add <4 x i32> %i.gr, %broadcast.splat368
  %i.gu = trunc <4 x i32> %i.gs to <4 x i16>
  %i.gv = trunc <4 x i32> %i.gt to <4 x i16>
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 176
  %interleaved.vec.5 = shufflevector <4 x i16> %i.gu, <4 x i16> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x i16> %interleaved.vec.5, ptr %i.gw, align 16
  %interleaved.vec369.5 = shufflevector <4 x i16> %i.gv, <4 x i16> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x i16> %interleaved.vec369.5, ptr %i.gx, align 16
  %i.gy = icmp eq i64 %n.vec, 48
  br i1 %i.gy, label %scalar.ph.prol, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.gz = mul <4 x i32> %broadcast.splat366, <i32 48, i32 49, i32 50, i32 51>
  %i.ha = mul <4 x i32> %broadcast.splat366, <i32 52, i32 53, i32 54, i32 55>
  %i.hb = add <4 x i32> %i.gz, %broadcast.splat368
  %i.hc = add <4 x i32> %i.ha, %broadcast.splat368
  %i.hd = trunc <4 x i32> %i.hb to <4 x i16>
  %i.he = trunc <4 x i32> %i.hc to <4 x i16>
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.hg = getelementptr i8, ptr %4, i64 208
  %interleaved.vec.6 = shufflevector <4 x i16> %i.hd, <4 x i16> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x i16> %interleaved.vec.6, ptr %i.hf, align 16
  %interleaved.vec369.6 = shufflevector <4 x i16> %i.he, <4 x i16> %broadcast.splatinsert, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x i16> %interleaved.vec369.6, ptr %i.hg, align 16
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %prol.iter.cmp.not = icmp eq i64 %n.vec, %wide.trip.count335
  br i1 %prol.iter.cmp.not, label %.lr.ph313.preheader, label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %.preheader, %scalar.ph.prol
  %indvars.iv332.unr = phi i64 [ 0, %.preheader ], [ %n.vec, %scalar.ph.prol ]
  br label %scalar.ph

.thread281:                                       ; preds = %bb.ah
  %i.hh = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_opus_err_r6) ; 0 uses
  br label %.critedge

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv332 = phi i64 [ %indvars.iv.next333.3, %scalar.ph ], [ %indvars.iv332.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.hi = trunc nuw nsw i64 %indvars.iv332 to i32
  %i.hj = mul i32 %i.ev, %i.hi
  %i.hk = add i32 %i.hj, %.2211
  %i.hl = trunc i32 %i.hk to i16
  %i.hm = getelementptr [4 x i8], ptr %4, i64 %indvars.iv332 ; 2 uses
  store i16 %i.hl, ptr %i.hm, align 4
  %i.hn = getelementptr i8, ptr %i.hm, i64 2
  store i16 %i.ex, ptr %i.hn, align 2
  %indvars.iv.next333.3 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %exitcond336.not.3 = icmp eq i64 %indvars.iv.next333.3, %wide.trip.count335
  br i1 %exitcond336.not.3, label %.lr.ph313.preheader, label %scalar.ph, !llvm.loop !10

.lr.ph313.preheader:                              ; preds = %scalar.ph, %scalar.ph.prol, %bb.d, %bb.g, %bb.l, %bb.ae
  %.0206 = phi i32 [ 1, %bb.d ], [ 2, %bb.g ], [ 2, %bb.l ], [ %i.ay, %bb.ae ], [ %i.ay, %scalar.ph.prol ], [ %i.ay, %scalar.ph ]
  %.3205 = phi i32 [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.l ], [ %.2204, %bb.ae ], [ %.2204, %scalar.ph.prol ], [ %.2204, %scalar.ph ] ; 5 uses
  %wide.trip.count340 = zext nneg i32 %.0206 to i64
  br label %.lr.ph313

.lr.ph313:                                        ; preds = %.lr.ph313.preheader, %bb.aj
  %indvars.iv337 = phi i64 [ 0, %.lr.ph313.preheader ], [ %indvars.iv.next338, %bb.aj ] ; 2 uses
  %i.ho = getelementptr [4 x i8], ptr %4, i64 %indvars.iv337 ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 2
  %i.hq = load i16, ptr %i.hp, align 2            ; 2 uses
  %i.hr = icmp slt i16 %i.hq, 1276
  br i1 %i.hr, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph313
  %i.hs = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.f, ptr noundef nonnull @ei_opus_err_r2) ; 0 uses
  br label %.critedge

bb.aj:                                            ; preds = %.lr.ph313
  %i.ht = sext i16 %i.hq to i32
  %i.hu = load i32, ptr @hf_opus_frame, align 4
  %i.hv = load i16, ptr %i.ho, align 4
  %i.hw = sext i16 %i.hv to i32
  %i.hx = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.hu, ptr noundef %0, i32 noundef %i.hw, i32 noundef %i.ht, i32 noundef 0) ; 0 uses
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %exitcond341.not = icmp eq i64 %indvars.iv.next338, %wide.trip.count340
  br i1 %exitcond341.not, label %._crit_edge314, label %.lr.ph313, !llvm.loop !11

._crit_edge314:                                   ; preds = %bb.aj
  %.not236 = icmp eq i32 %.3205, 0
  br i1 %.not236, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge314
  %i.hy = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.hz = sub i32 %i.hy, %.3205                   ; 2 uses
  %i.ia = load i32, ptr @hf_opus_padding, align 4
  %i.ib = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.ia, ptr noundef %0, i32 noundef %i.hz, i32 noundef %.3205, i32 noundef 0)
  %i.ic = icmp sgt i32 %.3205, 0
  br i1 %i.ic, label %.lr.ph317, label %.critedge

bb.al:                                            ; preds = %.lr.ph317
  %i.id = add nuw nsw i32 %.0315, 1               ; 2 uses
  %exitcond342.not = icmp eq i32 %i.id, %.3205
  br i1 %exitcond342.not, label %.critedge, label %.lr.ph317, !llvm.loop !12

.lr.ph317:                                        ; preds = %bb.ak, %bb.al
  %.0315 = phi i32 [ %i.id, %bb.al ], [ 0, %bb.ak ] ; 2 uses
  %i.ie = add i32 %.0315, %i.hz
  %i.if = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ie)
  %.not237 = icmp eq i8 %i.if, 0
  br i1 %.not237, label %bb.al, label %bb.am

bb.am:                                            ; preds = %.lr.ph317
  %i.ig = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ib, ptr noundef nonnull @ei_opus_padding_nonzero) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %bb.ak, %bb.ai, %.thread281, %.preheader291._crit_edge, %._crit_edge314, %bb.am, %bb.ag, %bb.ad, %.loopexit290, %bb.y, %bb.u, %bb.n, %parse_size_field.exit.thread, %bb.i, %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_opus() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @opus_handle, align 8
  tail call void @dissector_add_string(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.41, ptr noundef %i.a)
  %i.b = load ptr, ptr @opus_handle, align 8
  tail call void @dissector_add_uint_range_with_preference(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef %i.b)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_range_with_preference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_tree_add_bitmask_list(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !13}
!7 = distinct !{!7, !13}
!8 = distinct !{!8, !13}
!9 = distinct !{!9, !14}
!10 = distinct !{!10, !13, !15, !16}
!11 = distinct !{!11, !13}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_0
