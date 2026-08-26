Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mxfdec?download=true
inline.NumInlined: 142
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 78
begin_hunk_0
@.str.96 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.98 = private unnamed_addr constant [18 x i8] c"file_package_umid\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"file_package_name\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"track_name\00", align 1
@mxf_picture_essence_container_uls = internal unnamed_addr constant [19 x %struct.MXFCodecUL] [%struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\07\0D\01\03\01\02\0C\01\00", i32 14, i32 88, ptr null, i32 14, i32 4 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\02\0D\01\03\01\02\10`\01", i32 14, i32 27, ptr null, i32 15, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\02\0D\01\03\01\02\11\01\00", i32 14, i32 99, ptr null, i32 14, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\0D\0D\01\03\01\02\1E\01\00", i32 14, i32 267, ptr null, i32 14, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\02\0D\01\03\01\02\12\01\00", i32 14, i32 70, ptr null, i32 14, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\02\0D\01\03\01\02\14\01\00", i32 14, i32 96, ptr null, i32 14, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\02\0D\01\03\01\02\15\01\00", i32 14, i32 116, ptr null, i32 14, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\02\0D\01\03\01\02\1B\01\00", i32 14, i32 209, ptr null, i32 14, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\02\0D\01\03\01\02\1C\01\00", i32 14, i32 147, ptr null, i32 14, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\02\0D\01\03\01\02\04`\01", i32 14, i32 2, ptr null, i32 15, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\01\0D\01\03\01\02\01\04\01", i32 14, i32 2, ptr null, i32 15, i32 1 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\0D\0D\01\03\01\02#\01\00", i32 14, i32 33, ptr null, i32 14, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\01\0D\01\03\01\02\02A\01", i32 14, i32 24, ptr null, i32 15, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\01\0D\01\03\01\02\05\00\00", i32 14, i32 13, ptr null, i32 15, i32 3 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\0A\0E\0F\03\01\02 \01\01", i32 15, i32 185, ptr null, i32 0, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\0A\0E\0F\03\01\02 \02\01", i32 15, i32 183, ptr null, i32 0, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\0A\0E\15\00\04\02\10\00\01", i32 16, i32 172, ptr null, i32 15, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\01\01\01\FFKFAA\00\0DMO", i32 14, i32 13, ptr null, i32 0, i32 0 }, %struct.MXFCodecUL zeroinitializer], align 16
@.str.101 = private unnamed_addr constant [49 x i8] c"OneField frame layout isn't currently supported\0A\00", align 1
@.str.102 = private unnamed_addr constant [47 x i8] c"video_line_map: (%d, %d), field_dominance: %d\0A\00", align 1
@.str.103 = private unnamed_addr constant [27 x i8] c"Field dominance %d support\00", align 1
@.str.104 = private unnamed_addr constant [31 x i8] c"Unknown frame layout type: %d\0A\00", align 1
@ff_mxf_pixel_format_uls = external constant [0 x %struct.MXFCodecUL], align 8
@ff_mxf_codec_tag_uls = external constant [0 x %struct.MXFCodecUL], align 8
@.str.105 = private unnamed_addr constant [22 x i8] c"material_track_origin\00", align 1
@.str.106 = private unnamed_addr constant [20 x i8] c"source_track_origin\00", align 1
@ff_mxf_color_primaries_uls = external local_unnamed_addr constant [0 x %struct.MXFCodecUL], align 8
@ff_mxf_color_trc_uls = external local_unnamed_addr constant [0 x %struct.MXFCodecUL], align 8
@ff_mxf_color_space_uls = external local_unnamed_addr constant [0 x %struct.MXFCodecUL], align 8
@mxf_sound_essence_container_uls = internal unnamed_addr constant [9 x %struct.MXFCodecUL] [%struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\01\0D\01\03\01\02\06\01\00", i32 14, i32 65536, ptr null, i32 14, i32 2 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\02\0D\01\03\01\02\04@\01", i32 14, i32 86016, ptr null, i32 15, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\01\0D\01\03\01\02\01\01\01", i32 14, i32 65536, ptr null, i32 13, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\01\01\01\FFKFAA\00\0DMO", i32 14, i32 65536, ptr null, i32 0, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\03\04\02\02\02\03\03\01\00", i32 14, i32 86018, ptr null, i32 0, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\0D\0D\01\03\01\02\16\00\00", i32 14, i32 86018, ptr null, i32 14, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\0D\0D\01\03\01\02\17\00\00", i32 14, i32 86018, ptr null, i32 14, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\0D\0D\01\03\01\02\18\00\00", i32 14, i32 86018, ptr null, i32 14, i32 0 }, %struct.MXFCodecUL zeroinitializer], align 16
@.str.107 = private unnamed_addr constant [79 x i8] c"invalid sample rate (%d/%d) found for stream #%d, time base forced to 1/48000\0A\00", align 1
@.str.108 = private unnamed_addr constant [53 x i8] c"Invalid number of channels %d, must be less than %d\0A\00", align 1
@mxf_data_essence_container_uls = internal unnamed_addr constant [4 x %struct.MXFCodecUL] [%struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\09\0D\01\03\01\02\0D\00\00", i32 16, i32 0, ptr @.str.121, i32 11, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\09\0D\01\03\01\02\0E\00\00", i32 16, i32 98317, ptr @.str.122, i32 11, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\09\0D\01\03\01\02\13\01\01", i32 16, i32 94232, ptr null, i32 0, i32 0 }, %struct.MXFCodecUL zeroinitializer], align 16
@.str.109 = private unnamed_addr constant [10 x i8] c"data_type\00", align 1
@mxf_intra_only_picture_coded_width = internal constant [5 x %struct.MXFCodecUL] [%struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\0A\04\01\02\02\012!\01", i32 16, i32 1440, ptr null, i32 0, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\0A\04\01\02\02\012!\02", i32 16, i32 1440, ptr null, i32 0, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\0A\04\01\02\02\012!\03", i32 16, i32 1440, ptr null, i32 0, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\0A\04\01\02\02\012!\04", i32 16, i32 1440, ptr null, i32 0, i32 0 }, %struct.MXFCodecUL zeroinitializer], align 16
@.str.110 = private unnamed_addr constant [76 x i8] c"stream %d and stream %d have the same BodySID (%d) with different wrapping\0A\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"comment_%s\00", align 1
@.str.113 = private unnamed_addr constant [36 x i8] c"could not allocate metadata stream\0A\00", align 1
@.str.114 = private unnamed_addr constant [46 x i8] c"could not resolve file descriptor strong ref\0A\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"reel_umid\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"reel_name\00", align 1
@.str.117 = private unnamed_addr constant [81 x i8] c"Invalid edit rate (%d/%d) found on structural component #%d, defaulting to 25/1\0A\00", align 1
@mxf_intra_only_essence_container_uls = internal unnamed_addr constant [2 x %struct.MXFCodecUL] [%struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\01\0D\01\03\01\02\01\00\00", i32 14, i32 2, ptr null, i32 0, i32 0 }, %struct.MXFCodecUL zeroinitializer], align 16
@mxf_intra_only_picture_essence_coding_uls = internal unnamed_addr constant [3 x %struct.MXFCodecUL] [%struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\0A\04\01\02\02\012\00\00", i32 14, i32 27, ptr null, i32 0, i32 0 }, %struct.MXFCodecUL { [16 x i8] c"\06\0E+4\04\01\01\07\04\01\02\02\03\01\01\00", i32 14, i32 88, ptr null, i32 0, i32 0 }, %struct.MXFCodecUL zeroinitializer], align 16
@.str.118 = private unnamed_addr constant [74 x i8] c"Unrecognized CDCI color range (color diff range %d, b %d, w %d, depth %d)\00", align 1
@mxf_channel_ordering = internal constant [37 x %struct.MXFChannelOrderingUL] [%struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\01\00\00\00\00", i32 0, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\02\00\00\00\00", i32 1, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\03\00\00\00\00", i32 2, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\04\00\00\00\00", i32 3, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\05\00\00\00\00", i32 9, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\06\00\00\00\00", i32 10, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\07\00\00\00\00", i32 41, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\08\00\00\00\00", i32 42, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\09\00\00\00\00", i32 4, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\0A\00\00\00\00", i32 5, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\0B\00\00\00\00", i32 6, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\0C\00\00\00\00", i32 7, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\0D\00\00\00\00", i32 8, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\0E\00\00\00\00", i32 2, i32 2 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01\0F\00\00\00\00", i32 2, i32 3 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01 \03\00\00\00", i32 29, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\01 \04\00\00\00", i32 30, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\01\00\00", i32 12, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\02\00\00", i32 14, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\03\00\00", i32 13, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\04\00\00", i32 43, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\05\00\00", i32 44, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\06\00\00", i32 36, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\07\00\00", i32 37, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\08\00\00", i32 15, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\09\00\00", i32 17, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\0A\00\00", i32 36, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\0B\00\00", i32 37, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\0C\00\00", i32 11, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\0D\00\00", i32 3, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\0E\00\00", i32 35, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\0F\00\00", i32 16, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\10\00\00", i32 8, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\11\00\00", i32 39, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\12\00\00", i32 40, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] c"\06\0E+4\04\01\01\0D\03\02\010\01\13\00\00", i32 38, i32 0 }, %struct.MXFChannelOrderingUL { [16 x i8] zeroinitializer, i32 0, i32 9 }], align 16
@.str.119 = private unnamed_addr constant [62 x i8] c"AudioChannelLabelSubDescriptor has invalid MCA channel ID %d\0A\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"vbi_smpte_436M\00", align 1
@.str.122 = private unnamed_addr constant [20 x i8] c"vbi_vanc_smpte_436M\00", align 1
@.str.123 = private unnamed_addr constant [60 x i8] c"guessing index for stream %d using edit unit byte count %d\0A\00", align 1
@.str.124 = private unnamed_addr constant [23 x i8] c"broken or empty index\0A\00", align 1
@.str.125 = private unnamed_addr constant [28 x i8] c"found inconsistent BodySID\0A\00", align 1
@.str.126 = private unnamed_addr constant [33 x i8] c"failed to allocate index tables\0A\00", align 1
@.str.127 = private unnamed_addr constant [52 x i8] c"failed to allocate IndexTableSegment pointer array\0A\00", align 1
@.str.128 = private unnamed_addr constant [71 x i8] c"IndexSID %i starts at EditUnit %ld - seeking may not work as expected\0A\00", align 1
@.str.129 = private unnamed_addr constant [50 x i8] c"IndexSID %i segment %i has invalid IndexEditRate\0A\00", align 1
@.str.130 = private unnamed_addr constant [81 x i8] c"IndexSID %i segment %i has zero IndexDuration and there's more than one segment\0A\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"no streams?\0A\00", align 1
@.str.132 = private unnamed_addr constant [74 x i8] c"IndexSID %i segment at %ld missing EditUnitByteCount and IndexEntryArray\0A\00", align 1
@.str.133 = private unnamed_addr constant [45 x i8] c"ignoring IndexSID %d, duration is too large\0A\00", align 1
@.str.134 = private unnamed_addr constant [64 x i8] c"ignoring IndexSID %d, duration does not match nb_index_entries\0A\00", align 1
@.str.135 = private unnamed_addr constant [57 x i8] c"x >= nb_ptses - IndexEntryCount %i < IndexDuration %ld?\0A\00", align 1
@.str.136 = private unnamed_addr constant [65 x i8] c"index entry %i + TemporalOffset %i = %i, which is out of bounds\0A\00", align 1
@.str.137 = private unnamed_addr constant [39 x i8] c"partition %i: bad ThisPartition = %lX\0A\00", align 1
@.str.138 = private unnamed_addr constant [25 x i8] c"invalid encoded triplet\0A\00", align 1
@.str.139 = private unnamed_addr constant [31 x i8] c"error getting stream index %u\0A\00", align 1
@.str.140 = private unnamed_addr constant [59 x i8] c"Huge KLV without proper index in non-frame wrapped essence\00", align 1
@.str.141 = private unnamed_addr constant [15 x i8] c"bad size: %ld\0A\00", align 1
@.str.142 = private unnamed_addr constant [31 x i8] c"error reading D-10 aes3 frame\0A\00", align 1
@.str.143 = private unnamed_addr constant [35 x i8] c"probably incorrect decryption key\0A\00", align 1
@.str.144 = private unnamed_addr constant [47 x i8] c"unable to compute the size of the last packet\0A\00", align 1
@.str.145 = private unnamed_addr constant [61 x i8] c"cannot find current edit unit for stream %d, invalid index?\0A\00", align 1
@.str.146 = private unnamed_addr constant [50 x i8] c"failed to find next track edit unit in stream %d\0A\00", align 1
@.str.147 = private unnamed_addr constant [59 x i8] c"edit unit sync lost on stream %d, jumping from %ld to %ld\0A\00", align 1
@.str.148 = private unnamed_addr constant [25 x i8] c"no index table segments\0A\00", align 1
@.str.149 = private unnamed_addr constant [54 x i8] c"IndexSID %i segment at %ld IndexEntryArray too small\0A\00", align 1
@.str.150 = private unnamed_addr constant [56 x i8] c"failed to map EditUnit %ld in IndexSID %i to an offset\0A\00", align 1
@.str.151 = private unnamed_addr constant [69 x i8] c"failed to find absolute offset of %lX in BodySID %i - partial file?\0A\00", align 1
@.str.152 = private unnamed_addr constant [109 x i8] c"seeking detected on stream #%d with time base (%d/%d) and sample rate (%d/%d), audio pts won't be accurate.\0A\00", align 1
@.str.153 = private unnamed_addr constant [54 x i8] c"unsupported multiple ANC packets (%d) per KLV packet\0A\00", align 1
@.str.154 = private unnamed_addr constant [32 x i8] c"error reading s436m packet %ld\0A\00", align 1
@.str.155 = private unnamed_addr constant [40 x i8] c"unsupported s436m 10 bit sample coding\0A\00", align 1
@.str.156 = private unnamed_addr constant [32 x i8] c"unsupported did or sdid: %x %x\0A\00", align 1
@.str.157 = private unnamed_addr constant [25 x i8] c"wrong cdp identifier %x\0A\00", align 1
@.str.158 = private unnamed_addr constant [27 x i8] c"wrong cdp data section %x\0A\00", align 1
@.str.159 = private unnamed_addr constant [31 x i8] c"wrong cdp size %d cc count %d\0A\00", align 1
@.str.160 = private unnamed_addr constant [29 x i8] c"wrong cdp footer section %x\0A\00", align 1
@.str.161 = private unnamed_addr constant [45 x i8] c"attempted seek in an UnknownWrapped essence\0A\00", align 1
@.str.162 = private unnamed_addr constant [40 x i8] c"attempted seek out of clip wrapped KLV\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 101) i32 @mxf_probe(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = icmp ult i32 %i.d, 14
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %narrow = tail call i32 @llvm.umin.i32(i32 %i.d, i32 65551)
  %spec.select = zext nneg i32 %narrow to i64
  %i.f = getelementptr i8, ptr %i.b, i64 %spec.select
  %i.g = getelementptr i8, ptr %i.f, i64 -14
  %.not21 = icmp eq i32 %i.d, 14
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.h
  %.020 = phi ptr [ %i.y, %bb.h ], [ %i.b, %bb.b ] ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.020, i64 13
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %i.j = add i8 %i.i, -1
  %i.k = and i8 %i.j, -14
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.l = load i32, ptr %.020, align 1, !tbaa !14
  %i.m = icmp eq i32 %i.l, 875236870
  br i1 %i.m, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.020, i64 4
  %i.o = load i32, ptr %i.n, align 1, !tbaa !14
  %i.p = icmp eq i32 %i.o, 16844034
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.r = load i32, ptr %i.q, align 1, !tbaa !14
  %i.s = icmp eq i32 %i.r, 16908557
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.020, i64 12
  %i.u = load i16, ptr %i.t, align 1, !tbaa !14
  %i.v = icmp eq i16 %i.u, 513
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = icmp eq ptr %.020, %i.b
  %i.x = select i1 %i.w, i32 100, i32 99
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph, %bb.c, %bb.d, %bb.e, %bb.f
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ], [ 10, %.lr.ph ]
  %i.y = getelementptr inbounds nuw i8, ptr %.020, i64 %.sink ; 2 uses
  %i.z = icmp ult ptr %i.y, %i.g
  br i1 %i.z, label %.lr.ph, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %bb.h, %bb.b, %bb.a, %bb.g
  %.017 = phi i32 [ 0, %bb.a ], [ %i.x, %bb.g ], [ 0, %bb.b ], [ 0, %bb.h ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mxf_read_header(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 13 uses
  %1 = alloca %struct.KLVPacket, align 8          ; 6 uses
  %2 = alloca %struct.KLVPacket, align 16         ; 39 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 576 ; 2 uses
  store i64 9223372036854775807, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 18 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %select.unfold.i, %bb.a
  %.01.i = phi i32 [ 0, %bb.a ], [ %.1.i, %select.unfold.i ] ; 2 uses
  %i.i = tail call i32 @avio_feof(ptr noundef %i.h) #12
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.c, label %mxf_read_sync.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @avio_r8(ptr noundef %i.h) #12 ; 2 uses
  %i.k = icmp eq i32 %i.j, 6
  br i1 %i.k, label %select.unfold.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %.01.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr @mxf_header_partition_pack_key, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = zext i8 %i.n to i32
  %.not12.i = icmp eq i32 %i.j, %i.o
  %i.p = add nuw nsw i32 %.01.i, 1
  %spec.select347 = select i1 %.not12.i, i32 %i.p, i32 0
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.d, %bb.c
  %.1.i = phi i32 [ %spec.select347, %bb.d ], [ 1, %bb.c ] ; 3 uses
  %i.q = icmp ult i32 %.1.i, 14
  br i1 %i.q, label %bb.b, label %mxf_read_sync.exit, !llvm.loop !40

mxf_read_sync.exit:                               ; preds = %select.unfold.i
  %.not = icmp eq i32 %.1.i, 14
  br i1 %.not, label %bb.e, label %mxf_read_sync.exit.thread

mxf_read_sync.exit.thread:                        ; preds = %bb.b, %mxf_read_sync.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.6) #12
  br label %.thread191

bb.e:                                             ; preds = %mxf_read_sync.exit
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.s = tail call i64 @avio_seek(ptr noundef %i.r, i64 noundef -14, i32 noundef 1) #12 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 472 ; 22 uses
  store ptr %0, ptr %i.t, align 8, !tbaa !41
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.v = tail call i64 @avio_seek(ptr noundef %i.u, i64 noundef 0, i32 noundef 1) #12 ; 2 uses
  %or.cond = icmp ugt i64 %i.v, 65536
  br i1 %or.cond, label %.thread191, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 552 ; 3 uses
  store i32 %i.w, ptr %i.x, align 8, !tbaa !42
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !39   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !43
  %i.ac = and i32 %i.ab, 1
  %.not.i119 = icmp eq i32 %i.ac, 0
  br i1 %.not.i119, label %mxf_read_random_index_pack.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call i64 @avio_size(ptr noundef nonnull %i.z) #12 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 552 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !42
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.ah = add nsw i64 %i.ad, -4
  %i.ai = tail call i64 @avio_seek(ptr noundef %i.ag, i64 noundef %i.ah, i32 noundef 0) #12 ; 0 uses
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.ak = tail call i32 @avio_rb32(ptr noundef %i.aj) #12 ; 2 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = icmp ult i32 %i.ak, 45
  br i1 %i.am, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = sext i32 %i.af to i64
  %i.ao = sub nsw i64 %i.ad, %i.an
  %i.ap = sdiv i64 %i.ao, 105
  %i.aq = mul nsw i64 %i.ap, 12
  %i.ar = tail call i64 @llvm.smin.i64(i64 %i.aq, i64 2147483619)
  %i.as = add nsw i64 %i.ar, 28
  %i.at = icmp slt i64 %i.as, %i.al
  br i1 %i.at, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.av = sub nsw i64 %i.ad, %i.al
  %i.aw = tail call i64 @avio_seek(ptr noundef %i.au, i64 noundef %i.av, i32 noundef 0) #12 ; 0 uses
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.ay = call fastcc i32 @klv_read_packet(ptr noundef nonnull %i.y, ptr noundef %1, ptr noundef %i.ax)
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i128, ptr %1, align 8
  %i.bb = load i128, ptr @ff_mxf_random_index_pack_key, align 16
  %i.bc = icmp ne i128 %i.ba, %i.bb
  %i.bd = zext i1 %i.bc to i32
  %.not34.i = icmp eq i32 %i.bd, 0
  br i1 %.not34.i, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !45
  %i.bg = icmp ne i64 %i.bf, %i.ad
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 5
  %or.cond.i = select i1 %i.bg, i1 true, i1 %i.bj
  br i1 %or.cond.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = add i64 %i.bi, -4
  %i.bl = urem i64 %i.bk, 12
  %.not35.i = icmp eq i64 %i.bl, 0
  br i1 %.not35.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.14) #12
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.bn = add i64 %i.bi, -12
  %i.bo = call i64 @avio_skip(ptr noundef %i.bm, i64 noundef %i.bn) #12 ; 0 uses
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.bq = call i64 @avio_rb64(ptr noundef %i.bp) #12 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 504 ; 2 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !46
  %i.bs = load i32, ptr %i.ae, align 8, !tbaa !42
  %i.bt = sext i32 %i.bs to i64
  %i.bu = add i64 %i.bq, %i.bt
  %.not36.i = icmp ult i64 %i.bu, %i.ad
  br i1 %.not36.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.15) #12
  store i64 0, ptr %i.br, align 8, !tbaa !46
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %bb.g
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.bw = load i32, ptr %i.ae, align 8, !tbaa !42
  %i.bx = sext i32 %i.bw to i64
  %i.by = call i64 @avio_seek(ptr noundef %i.bv, i64 noundef %i.bx, i32 noundef 0) #12 ; 0 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !39
  br label %mxf_read_random_index_pack.exit

mxf_read_random_index_pack.exit:                  ; preds = %bb.f, %bb.p
  %i.bz = phi ptr [ %i.z, %bb.f ], [ %.pre, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.ca = call i32 @avio_feof(ptr noundef %i.bz) #12
  %.not94225 = icmp eq i32 %i.ca, 0
  br i1 %.not94225, label %.lr.ph, label %.thread186.thread

.lr.ph:                                           ; preds = %mxf_read_random_index_pack.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 560 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 568 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 15 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 504 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %mxf_parse_handle_partition_or_eof.exit.thread
  %.082226 = phi i64 [ 0, %.lr.ph ], [ %.284, %mxf_parse_handle_partition_or_eof.exit.thread ] ; 10 uses
  %i.cw = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.cx = call fastcc i32 @klv_read_packet(ptr noundef %i.e, ptr noundef %2, ptr noundef %i.cw)
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = load i128, ptr %2, align 16
  %i.da = load i128, ptr @ff_mxf_random_index_pack_key, align 16
  %i.db = icmp ne i128 %i.cz, %i.da
  %i.dc = zext i1 %i.db to i32
  %.not95 = icmp eq i32 %i.dc, 0
  br i1 %.not95, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.de = call i64 @avio_size(ptr noundef %i.dd) #12
  %i.df = load i64, ptr %i.cv, align 16, !tbaa !45
  %i.dg = icmp sgt i64 %i.de, %i.df
  br i1 %i.dg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.7) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.s
  %i.dh = load i32, ptr %i.cf, align 8, !tbaa !47
  %.not.i120 = icmp eq i32 %i.dh, 0
  br i1 %.not.i120, label %mxf_parse_handle_partition_or_eof.exit.thread, label %mxf_parse_handle_partition_or_eof.exit

mxf_parse_handle_partition_or_eof.exit:           ; preds = %bb.u
  %i.di = call fastcc i32 @mxf_seek_to_previous_partition(ptr noundef nonnull %i.e)
  %.fr = freeze i32 %i.di
  %i.dj = icmp slt i32 %.fr, 1
  br i1 %i.dj, label %.thread186, label %mxf_parse_handle_partition_or_eof.exit.thread

bb.v:                                             ; preds = %bb.r
  %i.dk = load i64, ptr %i.cb, align 8, !tbaa !48
  %i.dl = load i64, ptr %i.cc, align 16, !tbaa !49
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.8, i64 noundef %i.dk, i64 noundef %i.dl) #12
  %i.dm = load <9 x i8>, ptr %2, align 16
  %i.dn = shufflevector <9 x i8> %i.dm, <9 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %.fr387 = freeze <8 x i8> %i.dn
  %i.do = icmp eq <8 x i8> %.fr387, <i8 6, i8 14, i8 43, i8 52, i8 2, i8 4, i8 1, i8 13> ; 2 uses
  %i.dp = load <4 x i8>, ptr %i.co, align 1
  %.fr388 = freeze <4 x i8> %i.dp
  %i.dq = icmp eq <4 x i8> %.fr388, <i8 1, i8 3, i8 1, i8 2>
  %i.dr = load i8, ptr %i.cd, align 1
  %.not9.i.13 = icmp eq i8 %i.dr, 126
  %i.ds = load i8, ptr %i.cs, align 2
  %.fr389 = freeze i8 %i.ds
  %.not9.i.14 = icmp eq i8 %.fr389, 1
  %i.dt = load i8, ptr %i.ct, align 1
  %.not9.i.15 = icmp eq i8 %i.dt, 0
  %i.du = shufflevector <8 x i1> %i.do, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.du, %i.dq
  %i.dv = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dw = shufflevector <8 x i1> %i.dv, <8 x i1> %i.do, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.dx = bitcast <8 x i1> %i.dw to i8
  %i.dy = icmp eq i8 %i.dx, -1
  %op.rdx = select i1 %i.dy, i1 %.not9.i.13, i1 false
  %i.dz = freeze i1 %op.rdx
end_hunk_0
begin_hunk_1_@mxf_read_header:bb.a

.peel.next268.i.epil.preheader:                   ; preds = %.preheader.i.loopexit.unr-lcssa, %.peel.next268.i.preheader
  %indvars.iv262.i.epil.init = phi i64 [ 1, %.peel.next268.i.preheader ], [ %indvars.iv.next263.i.1, %.preheader.i.loopexit.unr-lcssa ]
  %.0123219.i.epil.init = phi i32 [ 0, %.peel.next268.i.preheader ], [ %spec.select.i131.1, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod418 = trunc i64 %i.os to i1
  call void @llvm.assume(i1 %lcmp.mod418)
  %i.ov = getelementptr [8 x i8], ptr %i.oo, i64 %indvars.iv262.i.epil.init ; 2 uses
  %i.ow = getelementptr i8, ptr %i.ov, i64 -8
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !77
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 28
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !79
  %i.pa = load ptr, ptr %i.ov, align 8, !tbaa !77
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 28
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !79
  %.not146.i.epil = icmp ne i32 %i.oz, %i.pc
  %i.pd = zext i1 %.not146.i.epil to i32
  %spec.select.i131.epil = add nuw nsw i32 %.0123219.i.epil.init, %i.pd
  %i.pe = zext nneg i32 %spec.select.i131.epil to i64
  %i.pf = getelementptr inbounds nuw [64 x i8], ptr %i.om, i64 %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 32 ; 2 uses
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !90
  %i.pi = add nsw i32 %i.ph, 1
  store i32 %i.pi, ptr %i.pg, align 8, !tbaa !90
  br label %.preheader.i

.preheader.i:                                     ; preds = %.peel.next268.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %bb.cd
  %i.pj = load i32, ptr %i.nq, align 4, !tbaa !86
  %i.pk = icmp sgt i32 %i.pj, 0
  br i1 %i.pk, label %.lr.ph230.i, label %mxf_compute_index_tables.exit

.peel.next268.i:                                  ; preds = %.peel.next268.i, %.peel.next268.i.preheader.new
  %indvars.iv262.i = phi i64 [ 1, %.peel.next268.i.preheader.new ], [ %indvars.iv.next263.i.1, %.peel.next268.i ] ; 3 uses
  %.0123219.i = phi i32 [ 0, %.peel.next268.i.preheader.new ], [ %spec.select.i131.1, %.peel.next268.i ]
  %niter420 = phi i64 [ 0, %.peel.next268.i.preheader.new ], [ %niter420.next.1, %.peel.next268.i ]
  %i.pl = getelementptr [8 x i8], ptr %i.oo, i64 %indvars.iv262.i ; 2 uses
  %i.pm = getelementptr i8, ptr %i.pl, i64 -8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !77
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 28
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !79
  %i.pq = load ptr, ptr %i.pl, align 8, !tbaa !77
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 28
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !79 ; 2 uses
  %.not146.i = icmp ne i32 %i.pp, %i.ps
  %i.pt = zext i1 %.not146.i to i32
  %spec.select.i131 = add nuw nsw i32 %.0123219.i, %i.pt ; 2 uses
  %i.pu = zext nneg i32 %spec.select.i131 to i64
  %i.pv = getelementptr inbounds nuw [64 x i8], ptr %i.om, i64 %i.pu
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 32 ; 2 uses
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !90
  %i.py = add nsw i32 %i.px, 1
  store i32 %i.py, ptr %i.pw, align 8, !tbaa !90
  %i.pz = getelementptr [8 x i8], ptr %i.oo, i64 %indvars.iv262.i
  %i.qa = getelementptr i8, ptr %i.pz, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !77
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 28
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !79
  %.not146.i.1 = icmp ne i32 %i.ps, %i.qd
  %i.qe = zext i1 %.not146.i.1 to i32
  %spec.select.i131.1 = add nuw nsw i32 %spec.select.i131, %i.qe ; 3 uses
  %i.qf = zext nneg i32 %spec.select.i131.1 to i64
  %i.qg = getelementptr inbounds nuw [64 x i8], ptr %i.om, i64 %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 32 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !90
  %i.qj = add nsw i32 %i.qi, 1
  store i32 %i.qj, ptr %i.qh, align 8, !tbaa !90
  %indvars.iv.next263.i.1 = add nuw nsw i64 %indvars.iv262.i, 2 ; 2 uses
  %niter420.next.1 = add nuw i64 %niter420, 2     ; 2 uses
  %niter420.ncmp.1 = icmp eq i64 %niter420.next.1, %unroll_iter419
  br i1 %niter420.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.peel.next268.i, !llvm.loop !93

.lr.ph230.i:                                      ; preds = %.preheader.i, %.thread178.i
  %i.qk = phi ptr [ %i.yx, %.thread178.i ], [ %i.om, %.preheader.i ]
  %indvars.iv278.i = phi i64 [ %indvars.iv.next279.i, %.thread178.i ], [ 0, %.preheader.i ] ; 3 uses
  %.0122228.i = phi i32 [ %i.zb, %.thread178.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.ql = getelementptr inbounds nuw [64 x i8], ptr %i.qk, i64 %indvars.iv278.i ; 15 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 32 ; 8 uses
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !90
  %i.qo = sext i32 %i.qn to i64
  %i.qp = call noalias ptr @av_calloc(i64 noundef %i.qo, i64 noundef 8) #12 ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ql, i64 40 ; 8 uses
  store ptr %i.qp, ptr %i.qq, align 8, !tbaa !94
  %.not136.i = icmp eq ptr %i.qp, null
  br i1 %.not136.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.lr.ph230.i
  %i.qr = load ptr, ptr %i.t, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.qr, i32 noundef 16, ptr noundef nonnull @.str.127) #12
  br label %mxf_compute_index_tables.exit.thread196

bb.cg:                                            ; preds = %.lr.ph230.i
  %i.qs = load ptr, ptr %i.c, align 8, !tbaa !62  ; 2 uses
  %i.qt = sext i32 %.0122228.i to i64             ; 3 uses
  %i.qu = getelementptr inbounds [8 x i8], ptr %i.qs, i64 %i.qt
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !77 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 48
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !80 ; 2 uses
  %.not137.i = icmp eq i64 %i.qx, 0
  br i1 %.not137.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qy = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 28
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !79
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.qy, i32 noundef 24, ptr noundef nonnull @.str.128, i32 noundef %i.ra, i64 noundef %i.qx) #12
  %.pre289.i = load ptr, ptr %i.qq, align 8, !tbaa !94
  %.pre290.i = load ptr, ptr %i.c, align 8, !tbaa !62
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.rb = phi ptr [ %.pre290.i, %bb.ch ], [ %i.qs, %bb.cg ]
  %i.rc = phi ptr [ %.pre289.i, %bb.ch ], [ %i.qp, %bb.cg ]
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.qt
  %i.re = load i32, ptr %i.qm, align 8, !tbaa !90
  %i.rf = sext i32 %i.re to i64
  %i.rg = shl nsw i64 %i.rf, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.rc, ptr align 8 %i.rd, i64 %i.rg, i1 false)
  %i.rh = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.rh, i64 %i.qt
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !77
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 28
  %i.rl = load <2 x i32>, ptr %i.rk, align 4, !tbaa !95
  store <2 x i32> %i.rl, ptr %i.ql, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.rm = load i32, ptr %i.qm, align 8, !tbaa !90 ; 2 uses
  %i.rn = icmp sgt i32 %i.rm, 0
  br i1 %i.rn, label %.lr.ph.i151.i, label %.._crit_edge_crit_edge.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.ci
  %.phi.trans.insert.i147.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %.pre.i148.i = load i32, ptr %.phi.trans.insert.i147.i, align 8, !tbaa !96
  br label %._crit_edge.i149.i

.lr.ph.i151.i:                                    ; preds = %bb.ci
  %i.ro = load ptr, ptr %i.qq, align 8, !tbaa !94
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ql, i64 8 ; 5 uses
  %wide.trip.count.i152.i = zext nneg i32 %i.rm to i64
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cq, %.lr.ph.i151.i
  %indvars.iv.i153.i = phi i64 [ 0, %.lr.ph.i151.i ], [ %indvars.iv.next.i155.i, %bb.cq ] ; 2 uses
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %indvars.iv.i153.i
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !77 ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 88
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !76 ; 2 uses
  %.not129.i.i = icmp eq i32 %i.rt, 0
  br i1 %.not129.i.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store i32 0, ptr %i.rp, align 8, !tbaa !96
  br label %mxf_compute_ptses_fake_index.exit.i

bb.cl:                                            ; preds = %bb.cj
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rr, i64 56
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !83 ; 5 uses
  %i.rw = load i32, ptr %i.rp, align 8, !tbaa !96 ; 2 uses
  %i.rx = sub nsw i32 2147483647, %i.rw
  %i.ry = zext nneg i32 %i.rx to i64
  %i.rz = icmp ugt i64 %i.rv, %i.ry
  br i1 %i.rz, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %i.rp, align 8, !tbaa !96
  %i.sa = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rr, i64 28
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !79
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.sa, i32 noundef 16, ptr noundef nonnull @.str.133, i32 noundef %i.sc) #12
  br label %mxf_compute_ptses_fake_index.exit.i

bb.cn:                                            ; preds = %bb.cl
  %i.sd = sext i32 %i.rt to i64                   ; 3 uses
  %.not130.i.i = icmp eq i64 %i.rv, %i.sd
  %i.se = add nuw nsw i64 %i.rv, 1
  %.not131.i.i = icmp eq i64 %i.se, %i.sd
  %or.cond.i154.i = select i1 %.not130.i.i, i1 true, i1 %.not131.i.i
  br i1 %or.cond.i154.i, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.sf = shl nuw nsw i64 %i.rv, 1
  %i.sg = or disjoint i64 %i.sf, 1
  %.not132.i.i = icmp eq i64 %i.sg, %i.sd
  br i1 %.not132.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i32 0, ptr %i.rp, align 8, !tbaa !96
  %i.sh = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.si = getelementptr inbounds nuw i8, ptr %i.rr, i64 28
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !79
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.sh, i32 noundef 16, ptr noundef nonnull @.str.134, i32 noundef %i.sj) #12
  br label %mxf_compute_ptses_fake_index.exit.i

bb.cq:                                            ; preds = %bb.co, %bb.cn
  %i.sk = trunc nuw nsw i64 %i.rv to i32
  %i.sl = add i32 %i.rw, %i.sk                    ; 2 uses
  store i32 %i.sl, ptr %i.rp, align 8, !tbaa !96
  %indvars.iv.next.i155.i = add nuw nsw i64 %indvars.iv.i153.i, 1 ; 2 uses
  %exitcond.not.i156.i = icmp eq i64 %indvars.iv.next.i155.i, %wide.trip.count.i152.i
  br i1 %exitcond.not.i156.i, label %._crit_edge.i149.i, label %bb.cj, !llvm.loop !97

._crit_edge.i149.i:                               ; preds = %bb.cq, %.._crit_edge_crit_edge.i.i
  %i.sm = phi i32 [ %.pre.i148.i, %.._crit_edge_crit_edge.i.i ], [ %i.sl, %bb.cq ] ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ql, i64 8 ; 8 uses
  %i.so = icmp slt i32 %i.sm, 1
  br i1 %i.so, label %mxf_compute_ptses_fake_index.exit.i, label %bb.cr

bb.cr:                                            ; preds = %._crit_edge.i149.i
  %i.sp = zext nneg i32 %i.sm to i64
  %i.sq = call ptr @av_malloc_array(i64 noundef %i.sp, i64 noundef 8) #12 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ql, i64 24 ; 5 uses
  store ptr %i.sq, ptr %i.sr, align 8, !tbaa !98
  %.not.i150.i = icmp eq ptr %i.sq, null
  br i1 %.not.i150.i, label %mxf_compute_ptses_fake_index.exit.thread.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ss = load i32, ptr %i.sn, align 8, !tbaa !96
  %i.st = sext i32 %i.ss to i64
  %i.su = call noalias ptr @av_calloc(i64 noundef %i.st, i64 noundef 24) #12 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ql, i64 48 ; 2 uses
  store ptr %i.su, ptr %i.sv, align 8, !tbaa !99
  %.not122.i.i = icmp eq ptr %i.su, null
  br i1 %.not122.i.i, label %mxf_compute_ptses_fake_index.exit.thread.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sw = load i32, ptr %i.sn, align 8, !tbaa !96
  %i.sx = sext i32 %i.sw to i64
  %i.sy = call ptr @av_malloc_array(i64 noundef %i.sx, i64 noundef 1) #12 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ql, i64 56 ; 2 uses
  store ptr %i.sy, ptr %i.sz, align 8, !tbaa !100
  %.not123.i.i = icmp eq ptr %i.sy, null
  br i1 %.not123.i.i, label %mxf_compute_ptses_fake_index.exit.thread.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ta = load i32, ptr %i.sn, align 8, !tbaa !96
  %i.tb = sext i32 %i.ta to i64
  %i.tc = call ptr @av_malloc_array(i64 noundef %i.tb, i64 noundef 1) #12 ; 4 uses
  store ptr %i.tc, ptr %i.b, align 8, !tbaa !101
  %.not124.i.i = icmp eq ptr %i.tc, null
  br i1 %.not124.i.i, label %mxf_compute_ptses_fake_index.exit.thread.i, label %.preheader137.i.i

.preheader137.i.i:                                ; preds = %bb.cu
  %i.td = load i32, ptr %i.sn, align 8, !tbaa !96 ; 4 uses
  %i.te = icmp sgt i32 %i.td, 0
  br i1 %i.te, label %.lr.ph152.i.i, label %.preheader136.i.i

.lr.ph152.i.i:                                    ; preds = %.preheader137.i.i
  %i.tf = load ptr, ptr %i.sr, align 8, !tbaa !98 ; 2 uses
  %wide.trip.count177.i.i = zext nneg i32 %i.td to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.td, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph152.i.i
  %n.vec = and i64 %wide.trip.count177.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %index ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  store <2 x i64> splat (i64 -9223372036854775808), ptr %i.tg, align 8, !tbaa !54
  store <2 x i64> splat (i64 -9223372036854775808), ptr %i.th, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ti = icmp eq i64 %index.next, %n.vec
  br i1 %i.ti, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count177.i.i
  br i1 %cmp.n, label %.preheader136.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph152.i.i, %middle.block
  %indvars.iv174.i.i.ph = phi i64 [ 0, %.lr.ph152.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

mxf_compute_ptses_fake_index.exit.thread.i:       ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cr
  call void @av_freep(ptr noundef nonnull %i.sr) #12
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ql, i64 48
  call void @av_freep(ptr noundef nonnull %i.tj) #12
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ql, i64 56
  call void @av_freep(ptr noundef nonnull %i.tk) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %mxf_compute_index_tables.exit.thread196

.preheader136.i.i:                                ; preds = %scalar.ph, %middle.block, %.preheader137.i.i
  %i.tl = load i32, ptr %i.qm, align 8, !tbaa !90
  %i.tm = icmp sgt i32 %i.tl, 0
  br i1 %i.tm, label %.lr.ph162.i.i, label %.preheader.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv174.i.i = phi i64 [ %indvars.iv.next175.i.i, %scalar.ph ], [ %indvars.iv174.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %indvars.iv174.i.i
  store i64 -9223372036854775808, ptr %i.tn, align 8, !tbaa !54
  %indvars.iv.next175.i.i = add nuw nsw i64 %indvars.iv174.i.i, 1 ; 2 uses
  %exitcond178.not.i.i = icmp eq i64 %indvars.iv.next175.i.i, %wide.trip.count177.i.i
  br i1 %exitcond178.not.i.i, label %.preheader136.i.i, label %scalar.ph, !llvm.loop !105

.preheader.loopexit.i.i:                          ; preds = %.loopexit.i.i
  %.pre188.i.i = load i32, ptr %i.sn, align 8, !tbaa !96
  %i.to = sext i8 %.1113141.i.i to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %.preheader136.i.i
  %i.tp = phi i32 [ %i.td, %.preheader136.i.i ], [ %.pre188.i.i, %.preheader.loopexit.i.i ] ; 2 uses
  %.0112.lcssa.i.i = phi i64 [ -128, %.preheader136.i.i ], [ %i.to, %.preheader.loopexit.i.i ]
  %i.tq = icmp sgt i32 %i.tp, 0
  br i1 %i.tq, label %.lr.ph165.i.i, label %._crit_edge166.i.i

.lr.ph162.i.i:                                    ; preds = %.preheader136.i.i, %.loopexit.i.i
  %indvars.iv183.i.i = phi i64 [ %indvars.iv.next184.i.i, %.loopexit.i.i ], [ 0, %.preheader136.i.i ] ; 2 uses
  %.1110160.i.i = phi i32 [ %.2111139.i.i, %.loopexit.i.i ], [ 0, %.preheader136.i.i ] ; 2 uses
  %.0112159.i.i = phi i8 [ %.1113141.i.i, %.loopexit.i.i ], [ -128, %.preheader136.i.i ] ; 2 uses
  %i.tr = load ptr, ptr %i.qq, align 8, !tbaa !94
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv183.i.i
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !77 ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 88 ; 2 uses
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !76 ; 2 uses
  %i.tw = sext i32 %i.tv to i64                   ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tt, i64 56 ; 2 uses
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !83 ; 2 uses
  %i.tz = shl i64 %i.ty, 1
  %i.ua = or disjoint i64 %i.tz, 1
  %i.ub = icmp eq i64 %i.ua, %i.tw                ; 2 uses
  %spec.select.i.i = select i1 %i.ub, i32 2, i32 1 ; 2 uses
  %i.uc = zext i1 %i.ub to i64
  %i.ud = shl i64 %i.ty, %i.uc
  %i.ue = add i64 %i.ud, 1
  %i.uf = icmp eq i64 %i.ue, %i.tw
  %i.ug = sext i1 %i.uf to i32
  %.0104.i.i = add nsw i32 %i.tv, %i.ug           ; 2 uses
  %i.uh = icmp sgt i32 %.0104.i.i, 0
  br i1 %i.uh, label %.lr.ph157.i.i.a, label %.loopexit.i.i

.lr.ph157.i.i.a:                                  ; preds = %.lr.ph162.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tt, i64 64
  %3 = getelementptr inbounds nuw i8, ptr %i.tt, i64 72
  %i.uj = zext nneg i32 %spec.select.i.i to i64
  %4 = sext i32 %.1110160.i.i to i64
  br label %bb.cv

bb.cv:                                            ; preds = %bb.db, %.lr.ph157.i.i.a
  %indvars.iv181.i.i = phi i64 [ %4, %.lr.ph157.i.i.a ], [ %indvars.iv.next182.i.i, %bb.db ] ; 6 uses
  %indvars.iv179.i.i = phi i64 [ 0, %.lr.ph157.i.i.a ], [ %indvars.iv.next180.i.i, %bb.db ] ; 3 uses
  %.1113153.i.i = phi i8 [ %.0112159.i.i, %.lr.ph157.i.i.a ], [ %.2114.ph.i.i, %bb.db ] ; 3 uses
  %i.uk = load ptr, ptr %i.ui, align 8, !tbaa !106
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 %indvars.iv179.i.i
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !14
  %i.un = sext i8 %i.um to i32
  %5 = sdiv i32 %i.un, %spec.select.i.i           ; 4 uses
  %i.uo = trunc nsw i64 %indvars.iv181.i.i to i32 ; 3 uses
  %i.up = add nsw i32 %5, %i.uo                   ; 4 uses
  %i.uq = load i32, ptr %i.sn, align 8, !tbaa !96
  %i.ur = sext i32 %i.uq to i64
  %.not126.i.i = icmp slt i64 %indvars.iv181.i.i, %i.ur
  br i1 %.not126.i.i, label %bb.cw, label %bb.da

bb.cw:                                            ; preds = %bb.cv
  %i.us = load ptr, ptr %3, align 8, !tbaa !107
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %indvars.iv179.i.i
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !95
  %i.uv = and i32 %i.uu, 48
  %.not127.i.i = icmp eq i32 %i.uv, 0
  %i.uw = zext i1 %.not127.i.i to i8
  %i.ux = getelementptr inbounds i8, ptr %i.tc, i64 %indvars.iv181.i.i
  store i8 %i.uw, ptr %i.ux, align 1, !tbaa !14
  %i.uy = icmp slt i32 %i.up, 0
  br i1 %i.uy, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.uz = load i32, ptr %i.sn, align 8, !tbaa !96
  %.not128.i.i = icmp slt i32 %i.up, %i.uz
  br i1 %.not128.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.va = load ptr, ptr %i.t, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.va, i32 noundef 16, ptr noundef nonnull @.str.136, i32 noundef %i.uo, i32 noundef %5, i32 noundef %i.up) #12
  br label %bb.db

bb.cz:                                            ; preds = %bb.cx
  %6 = trunc nsw i32 %5 to i8
  %i.vb = load ptr, ptr %i.sz, align 8, !tbaa !100
  %i.vc = getelementptr inbounds i8, ptr %i.vb, i64 %indvars.iv181.i.i
  store i8 %6, ptr %i.vc, align 1, !tbaa !14
  %i.vd = load ptr, ptr %i.sr, align 8, !tbaa !98
  %i.ve = zext nneg i32 %i.up to i64
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %i.ve
  store i64 %indvars.iv181.i.i, ptr %i.vf, align 8, !tbaa !54
  %7 = sext i8 %.1113153.i.i to i32
  %8 = call i32 @llvm.smax.i32(i32 %5, i32 %7)
  %9 = trunc nsw i32 %8 to i8
  br label %bb.db

bb.da:                                            ; preds = %bb.cv
  %i.vg = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.vh = load i32, ptr %i.tu, align 8, !tbaa !76
  %i.vi = load i64, ptr %i.tx, align 8, !tbaa !83
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vg, i32 noundef 16, ptr noundef nonnull @.str.135, i32 noundef %i.vh, i64 noundef %i.vi) #12
  br label %.loopexit.i.i

bb.db:                                            ; preds = %bb.cz, %bb.cy
  %.2114.ph.i.i = phi i8 [ %9, %bb.cz ], [ %.1113153.i.i, %bb.cy ] ; 2 uses
  %indvars.iv.next180.i.i = add nuw nsw i64 %indvars.iv179.i.i, %i.uj ; 2 uses
  %indvars.iv.next182.i.i = add nsw i64 %indvars.iv181.i.i, 1 ; 2 uses
  %10 = trunc nuw i64 %indvars.iv.next180.i.i to i32
  %11 = icmp sgt i32 %.0104.i.i, %10
  br i1 %11, label %bb.cv, label %.loopexit.loopexit.i.i.a, !llvm.loop !108

.loopexit.loopexit.i.i.a:                         ; preds = %bb.db
  %i.vj = trunc nsw i64 %indvars.iv.next182.i.i to i32
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i.a, %bb.da, %.lr.ph162.i.i
  %.1113141.i.i = phi i8 [ %.1113153.i.i, %bb.da ], [ %.0112159.i.i, %.lr.ph162.i.i ], [ %.2114.ph.i.i, %.loopexit.loopexit.i.i.a ] ; 2 uses
  %.2111139.i.i = phi i32 [ %i.uo, %bb.da ], [ %.1110160.i.i, %.lr.ph162.i.i ], [ %i.vj, %.loopexit.loopexit.i.i.a ]
  %indvars.iv.next184.i.i = add nuw nsw i64 %indvars.iv183.i.i, 1 ; 2 uses
  %i.vk = load i32, ptr %i.qm, align 8, !tbaa !90
  %i.vl = sext i32 %i.vk to i64
  %i.vm = icmp slt i64 %indvars.iv.next184.i.i, %i.vl
  br i1 %i.vm, label %.lr.ph162.i.i, label %.preheader.loopexit.i.i, !llvm.loop !109

.lr.ph165.i.i:                                    ; preds = %.preheader.i.i, %bb.dd
  %i.vn = phi i32 [ %i.wd, %bb.dd ], [ %i.tp, %.preheader.i.i ]
  %indvars.iv185.i.i = phi i64 [ %indvars.iv.next186.i.i, %bb.dd ], [ 0, %.preheader.i.i ] ; 5 uses
  %i.vo = load ptr, ptr %i.sv, align 8, !tbaa !99 ; 2 uses
  %i.vp = getelementptr inbounds nuw [24 x i8], ptr %i.vo, i64 %indvars.iv185.i.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  store i64 %indvars.iv185.i.i, ptr %i.vq, align 8, !tbaa !110
  %i.vr = load ptr, ptr %i.sr, align 8, !tbaa !98
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %indvars.iv185.i.i
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !54 ; 2 uses
  %.not125.i.i = icmp eq i64 %i.vt, -9223372036854775808
  br i1 %.not125.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph165.i.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.tc, i64 %indvars.iv185.i.i
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !14
  %i.vw = getelementptr inbounds [24 x i8], ptr %i.vo, i64 %i.vt
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16 ; 2 uses
  %i.vy = load i32, ptr %i.vx, align 8
  %i.vz = and i8 %i.vv, 3
  %i.wa = zext nneg i8 %i.vz to i32
  %i.wb = and i32 %i.vy, -4
  %i.wc = or disjoint i32 %i.wb, %i.wa
  store i32 %i.wc, ptr %i.vx, align 8
  %.pre189.i.i = load i32, ptr %i.sn, align 8, !tbaa !96
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %.lr.ph165.i.i
  %i.wd = phi i32 [ %i.vn, %.lr.ph165.i.i ], [ %.pre189.i.i, %bb.dc ] ; 2 uses
  %indvars.iv.next186.i.i = add nuw nsw i64 %indvars.iv185.i.i, 1 ; 2 uses
  %i.we = sext i32 %i.wd to i64
  %i.wf = icmp slt i64 %indvars.iv.next186.i.i, %i.we
  br i1 %i.wf, label %.lr.ph165.i.i, label %._crit_edge166.i.i, !llvm.loop !112

._crit_edge166.i.i:                               ; preds = %bb.dd, %.preheader.i.i
  call void @av_freep(ptr noundef nonnull %i.b) #12
  %i.wg = sub nsw i64 0, %.0112.lcssa.i.i
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  store i64 %i.wg, ptr %i.wh, align 8, !tbaa !113
  br label %mxf_compute_ptses_fake_index.exit.i

mxf_compute_ptses_fake_index.exit.i:              ; preds = %._crit_edge166.i.i, %._crit_edge.i149.i, %bb.cp, %bb.cm, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.wi = load ptr, ptr %i.t, align 8, !tbaa !41  ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 44
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !61 ; 2 uses
  %.not231.i = icmp eq i32 %i.wk, 0
  br i1 %.not231.i, label %._crit_edge.i, label %.lr.ph221.i

.lr.ph221.i:                                      ; preds = %mxf_compute_ptses_fake_index.exit.i
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 48
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !114
  %wide.trip.count273.i = zext i32 %i.wk to i64
  br label %bb.de

bb.de:                                            ; preds = %bb.dg, %.lr.ph221.i
  %indvars.iv270.i = phi i64 [ 0, %.lr.ph221.i ], [ %indvars.iv.next271.i, %bb.dg ] ; 2 uses
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv270.i
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !115
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 24
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !117 ; 3 uses
  %.not138.i = icmp eq ptr %i.wq, null
  br i1 %.not138.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 96
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !123
  %i.wt = load i32, ptr %i.ql, align 8, !tbaa !126
  %i.wu = icmp eq i32 %i.ws, %i.wt
  br i1 %i.wu, label %._crit_edge.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %indvars.iv.next271.i = add nuw nsw i64 %indvars.iv270.i, 1 ; 2 uses
  %exitcond274.not.i = icmp eq i64 %indvars.iv.next271.i, %wide.trip.count273.i
  br i1 %exitcond274.not.i, label %._crit_edge.i, label %bb.de, !llvm.loop !127

._crit_edge.i:                                    ; preds = %bb.dg, %bb.df, %mxf_compute_ptses_fake_index.exit.i
  %.2114.i = phi ptr [ null, %mxf_compute_ptses_fake_index.exit.i ], [ null, %bb.dg ], [ %i.wq, %bb.df ] ; 3 uses
  %i.wv = load i32, ptr %i.qm, align 8, !tbaa !90
  %i.ww = icmp sgt i32 %i.wv, 0
  br i1 %i.ww, label %.lr.ph227.i, label %.thread178.i

.lr.ph227.i:                                      ; preds = %._crit_edge.i
  %.not141.i = icmp eq ptr %.2114.i, null         ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.2114.i, i64 68
  %.pre291.i = load ptr, ptr %i.qq, align 8, !tbaa !94
  br label %bb.dh

bb.dh:                                            ; preds = %bb.du, %.lr.ph227.i
  %i.wy = phi ptr [ %.pre291.i, %.lr.ph227.i ], [ %i.xy, %bb.du ]
  %indvars.iv275.i = phi i64 [ 0, %.lr.ph227.i ], [ %indvars.iv.next276.i, %bb.du ] ; 7 uses
  %.0110224.i = phi i64 [ 0, %.lr.ph227.i ], [ %i.yt, %bb.du ] ; 3 uses
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.wy, i64 %indvars.iv275.i
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !77 ; 5 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 36
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !128
  %.not139.i = icmp eq i32 %i.xc, 0
  br i1 %.not139.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 40
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !129
  %.not140.i = icmp eq i32 %i.xe, 0
  br i1 %.not140.i, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.xf = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.xg = load i32, ptr %i.ql, align 8, !tbaa !126
  %i.xh = trunc nuw nsw i64 %indvars.iv275.i to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.xf, i32 noundef 24, ptr noundef nonnull @.str.129, i32 noundef %i.xg, i32 noundef %i.xh) #12
  br i1 %.not141.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.xi = load ptr, ptr %i.qq, align 8, !tbaa !94
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.xi, i64 %indvars.iv275.i
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !77
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 36
  %i.xm = load i64, ptr %i.wx, align 4
  store i64 %i.xm, ptr %i.xl, align 4
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.di
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xa, i64 96
  store i64 %.0110224.i, ptr %i.xn, align 8, !tbaa !130
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xa, i64 24
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !70 ; 2 uses
  %.not142.i = icmp eq i32 %i.xp, 0
  br i1 %.not142.i, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xa, i64 56
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !83 ; 2 uses
  %i.xs = zext i32 %i.xp to i64                   ; 2 uses
  %i.xt = udiv i64 9223372036854775807, %i.xs
  %i.xu = icmp ugt i64 %i.xr, %i.xt
  br i1 %i.xu, label %mxf_compute_index_tables.exit.thread196, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.xv = mul i64 %i.xr, %i.xs
  %i.xw = sub nsw i64 9223372036854775807, %.0110224.i
  %i.xx = icmp ugt i64 %i.xv, %i.xw
  br i1 %i.xx, label %mxf_compute_index_tables.exit.thread196, label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dl
  %i.xy = load ptr, ptr %i.qq, align 8, !tbaa !94 ; 2 uses
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.xy, i64 %indvars.iv275.i
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !77 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 56
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !83 ; 2 uses
  %.not143.i = icmp eq i64 %i.yc, 0
  br i1 %.not143.i, label %bb.dp, label %bb.du

bb.dp:                                            ; preds = %bb.do
  %i.yd = load i32, ptr %i.qm, align 8, !tbaa !90
  %i.ye = icmp sgt i32 %i.yd, 1
  br i1 %i.ye, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.yf = trunc nuw nsw i64 %indvars.iv275.i to i32
  %i.yg = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.yh = load i32, ptr %i.ql, align 8, !tbaa !126
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.yg, i32 noundef 24, ptr noundef nonnull @.str.130, i32 noundef %i.yh, i32 noundef %i.yf) #12
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  br i1 %.not141.i, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.yi = load ptr, ptr %i.t, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.yi, i32 noundef 24, ptr noundef nonnull @.str.131) #12
  br label %.thread178.i

bb.dt:                                            ; preds = %bb.dr
  %i.yj = getelementptr inbounds nuw i8, ptr %.2114.i, i64 88
  %i.yk = load i64, ptr %i.yj, align 8, !tbaa !131
  %i.yl = load ptr, ptr %i.qq, align 8, !tbaa !94
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.yl, i64 %indvars.iv275.i
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !77
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 56
  store i64 %i.yk, ptr %i.yo, align 8, !tbaa !83
  br label %.thread178.i

bb.du:                                            ; preds = %bb.do
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ya, i64 24
  %i.yq = load i32, ptr %i.yp, align 8, !tbaa !70
  %i.yr = zext i32 %i.yq to i64
  %i.ys = mul i64 %i.yc, %i.yr
  %i.yt = add i64 %i.ys, %.0110224.i
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1 ; 2 uses
  %i.yu = load i32, ptr %i.qm, align 8, !tbaa !90
  %i.yv = sext i32 %i.yu to i64
  %i.yw = icmp slt i64 %indvars.iv.next276.i, %i.yv
  br i1 %i.yw, label %bb.dh, label %.thread178.i, !llvm.loop !132

end_hunk_1
begin_hunk_2_@mxf_edit_unit_absolute_offset:bb.a

bb.m:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !76
  %i.bm = sext i32 %i.bl to i64                   ; 2 uses
  %i.bn = shl i64 %i.av, 1
  %i.bo = or disjoint i64 %i.bn, 1
  %i.bp = icmp eq i64 %i.bo, %i.bm
  %i.bq = zext i1 %i.bp to i64
  %spec.select = shl nsw i64 %i.ay, %i.bq         ; 2 uses
  %.not116 = icmp slt i64 %spec.select, %i.bm
  br i1 %.not116, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  %i.bt = load i32, ptr %1, align 8, !tbaa !126
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bs, i32 noundef 16, ptr noundef nonnull @.str.149, i32 noundef %i.bt, i64 noundef %i.at) #12
  br label %mxf_absolute_bodysid_offset.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !353
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %spec.select
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !54
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.0 = phi i64 [ %i.bj, %bb.l ], [ %i.bx, %bb.o ] ; 4 uses
  %.not117 = icmp eq ptr %4, null
  br i1 %.not117, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.bz = load i64, ptr %i.by, align 4
  %i.ca = tail call i64 @av_rescale_q(i64 noundef %., i64 %3, i64 %i.bz) #13
  store i64 %i.ca, ptr %4, align 8, !tbaa !54
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !374 ; 2 uses
  %i.cd = icmp slt i64 %.0, 0
  br i1 %i.cd, label %mxf_absolute_bodysid_offset.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !137 ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph56.i, label %.thread.i

.lr.ph56.i:                                       ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph56.i
  %.03855.i = phi i32 [ %i.cf, %.lr.ph56.i ], [ %.1.i, %bb.w ] ; 4 uses
  %.03954.i = phi i32 [ -1, %.lr.ph56.i ], [ %.140.i, %bb.w ] ; 2 uses
  %i.ci = add nsw i32 %.03954.i, %.03855.i
  %i.cj = ashr i32 %i.ci, 1                       ; 3 uses
  %i.ck = icmp slt i32 %i.cj, %.03855.i
  br i1 %i.ck, label %.lr.ph.i, label %.critedge49.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !138
  %i.cm = sext i32 %i.cj to i64
  %wide.trip.count.i = sext i32 %.03855.i to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.cm, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.v ] ; 3 uses
  %i.cn = getelementptr inbounds [136 x i8], ptr %i.cl, i64 %indvars.iv.i ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 28
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !139
  %.not47.i = icmp eq i32 %i.cp, %i.cc
  br i1 %.not47.i, label %.critedge.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge49.i, label %bb.u, !llvm.loop !375

.critedge.i:                                      ; preds = %bb.u
  %i.cq = trunc nsw i64 %indvars.iv.i to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 88
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !329
  %.not48.i = icmp sgt i64 %i.cs, %.0
  br i1 %.not48.i, label %.critedge49.i, label %bb.w

.critedge49.i:                                    ; preds = %bb.v, %.critedge.i, %bb.t
  br label %bb.w

bb.w:                                             ; preds = %.critedge49.i, %.critedge.i
  %.140.i = phi i32 [ %.03954.i, %.critedge49.i ], [ %i.cq, %.critedge.i ] ; 4 uses
  %.1.i = phi i32 [ %i.cj, %.critedge49.i ], [ %.03855.i, %.critedge.i ] ; 2 uses
  %i.ct = sub nsw i32 %.1.i, %.140.i
  %i.cu = icmp sgt i32 %i.ct, 1
  br i1 %i.cu, label %bb.t, label %._crit_edge.i, !llvm.loop !376

._crit_edge.i:                                    ; preds = %bb.w
  %i.cv = icmp sgt i32 %.140.i, -1
  br i1 %i.cv, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %._crit_edge.i
  %i.cw = load ptr, ptr %i.ch, align 8, !tbaa !138 ; 2 uses
  %i.cx = zext nneg i32 %.140.i to i64
  %i.cy = getelementptr inbounds nuw [136 x i8], ptr %i.cw, i64 %i.cx ; 4 uses
  %.not.i = icmp eq ptr %i.cw, null
  br i1 %.not.i, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !156 ; 2 uses
  %.not45.i = icmp eq i64 %i.da, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !329
  %i.db = sub i64 %.0, %.pre.i                    ; 2 uses
  %i.dc = icmp sgt i64 %i.da, %i.db
  %or.cond.i = select i1 %.not45.i, i1 true, i1 %i.dc
  br i1 %or.cond.i, label %._crit_edge60.i, label %.thread.i

._crit_edge60.i:                                  ; preds = %bb.y
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !155
  %i.df = add i64 %i.db, %i.de
  store i64 %i.df, ptr %5, align 8, !tbaa !54
  %.not46.i = icmp eq ptr %6, null
  br i1 %.not46.i, label %mxf_absolute_bodysid_offset.exit.thread, label %bb.z

bb.z:                                             ; preds = %._crit_edge60.i
  store ptr %i.cy, ptr %6, align 8, !tbaa !209
  br label %mxf_absolute_bodysid_offset.exit.thread

.thread.i:                                        ; preds = %bb.y, %bb.x, %._crit_edge.i, %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !41
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dh, i32 noundef 16, ptr noundef nonnull @.str.151, i64 noundef %.0, i32 noundef %i.cc) #12
  br label %mxf_absolute_bodysid_offset.exit.thread

mxf_absolute_bodysid_offset.exit:                 ; preds = %bb.h, %bb.g
  %.119 = phi i32 [ 1, %bb.h ], [ -1, %bb.g ]
  %i.di = icmp eq i32 %.095131, 0
  %spec.select124 = select i1 %i.di, i32 %.119, i32 %.095131 ; 2 uses
  %i.dj = add nsw i32 %spec.select124, %.194132   ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, -1
  br i1 %i.dk, label %.lr.ph, label %.critedge, !llvm.loop !377

.critedge:                                        ; preds = %.lr.ph, %mxf_absolute_bodysid_offset.exit
  %.not113 = icmp eq i32 %7, 0
  br i1 %.not113, label %mxf_absolute_bodysid_offset.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.dn = load i32, ptr %1, align 8, !tbaa !126
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dm, i32 noundef 16, ptr noundef nonnull @.str.150, i64 noundef %., i32 noundef %i.dn) #12
  br label %mxf_absolute_bodysid_offset.exit.thread

mxf_absolute_bodysid_offset.exit.thread:          ; preds = %.thread.i, %bb.z, %._crit_edge60.i, %bb.r, %bb.k, %bb.j, %bb.n, %.critedge, %bb.aa, %bb.c, %bb.b
  %.3 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %.critedge ], [ -1163346256, %bb.c ], [ -1094995529, %bb.aa ], [ 0, %._crit_edge60.i ], [ 0, %bb.z ], [ -22, %bb.r ], [ -1094995529, %.thread.i ], [ -1094995529, %bb.k ], [ -1094995529, %bb.n ], [ -1094995529, %bb.j ]
  ret i32 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

declare void @avpriv_update_cur_dts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_index_search_timestamp(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"AVProbeData", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 24}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !6, i64 16}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !12, i64 24}
!18 = !{!"AVFormatContext", !19, i64 0, !20, i64 8, !21, i64 16, !12, i64 24, !22, i64 32, !6, i64 40, !6, i64 44, !23, i64 48, !6, i64 56, !25, i64 64, !6, i64 72, !26, i64 80, !11, i64 88, !27, i64 96, !27, i64 104, !27, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !27, i64 136, !27, i64 144, !11, i64 152, !6, i64 160, !6, i64 164, !28, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !29, i64 192, !27, i64 200, !6, i64 208, !6, i64 212, !30, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !27, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !27, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !6, i64 368, !31, i64 376, !31, i64 384, !31, i64 392, !31, i64 400, !6, i64 408, !12, i64 416, !12, i64 424, !27, i64 432, !11, i64 440, !12, i64 448, !12, i64 456, !27, i64 464, !11, i64 472}
!19 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!20 = !{!"p1 _ZTS13AVInputFormat", !12, i64 0}
!21 = !{!"p1 _ZTS14AVOutputFormat", !12, i64 0}
!22 = !{!"p1 _ZTS11AVIOContext", !12, i64 0}
!23 = !{!"p2 _ZTS8AVStream", !24, i64 0}
!24 = !{!"any p2 pointer", !12, i64 0}
!25 = !{!"p2 _ZTS13AVStreamGroup", !24, i64 0}
!26 = !{!"p2 _ZTS9AVChapter", !24, i64 0}
!27 = !{!"long", !7, i64 0}
!28 = !{!"p2 _ZTS9AVProgram", !24, i64 0}
!29 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!30 = !{!"AVIOInterruptCB", !12, i64 0, !12, i64 8}
!31 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!32 = !{!33, !27, i64 576}
!33 = !{!"MXFContext", !19, i64 0, !34, i64 8, !6, i64 16, !6, i64 20, !11, i64 24, !6, i64 32, !11, i64 40, !6, i64 48, !7, i64 56, !35, i64 472, !36, i64 480, !11, i64 488, !6, i64 496, !27, i64 504, !37, i64 512, !6, i64 552, !34, i64 560, !6, i64 568, !27, i64 576, !6, i64 584, !6, i64 588, !38, i64 592, !6, i64 600}
!34 = !{!"p1 _ZTS12MXFPartition", !12, i64 0}
!35 = !{!"p1 _ZTS15AVFormatContext", !12, i64 0}
!36 = !{!"p1 _ZTS5AVAES", !12, i64 0}
!37 = !{!"KLVPacket", !7, i64 0, !27, i64 16, !27, i64 24, !27, i64 32}
!38 = !{!"p1 _ZTS13MXFIndexTable", !12, i64 0}
!39 = !{!18, !22, i64 32}
!40 = distinct !{!40, !16}
!41 = !{!33, !35, i64 472}
!42 = !{!33, !6, i64 552}
!43 = !{!44, !6, i64 144}
!44 = !{!"AVIOContext", !19, i64 0, !11, i64 8, !6, i64 16, !11, i64 24, !11, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !27, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !27, i64 104, !11, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !6, i64 144, !6, i64 148, !11, i64 152, !11, i64 160, !12, i64 168, !6, i64 176, !11, i64 184, !27, i64 192, !27, i64 200}
!45 = !{!37, !27, i64 32}
!46 = !{!33, !27, i64 504}
!47 = !{!33, !6, i64 568}
!48 = !{!37, !27, i64 24}
!49 = !{!37, !27, i64 16}
!50 = !{!33, !34, i64 560}
!51 = !{!52, !27, i64 112}
!52 = !{!"MXFPartition", !6, i64 0, !6, i64 4, !6, i64 8, !27, i64 16, !6, i64 24, !6, i64 28, !27, i64 32, !27, i64 40, !6, i64 48, !27, i64 56, !27, i64 64, !6, i64 72, !27, i64 80, !27, i64 88, !37, i64 96}
!53 = !{i64 0, i64 16, !14, i64 16, i64 8, !54, i64 24, i64 8, !54, i64 32, i64 8, !54}
!54 = !{!27, !27, i64 0}
!55 = distinct !{!55, !16}
!56 = !{!57, !12, i64 16}
!57 = !{!"MXFMetadataReadTableEntry", !7, i64 0, !12, i64 16, !6, i64 24, !6, i64 28}
!58 = !{!57, !6, i64 24}
!59 = !{!57, !6, i64 28}
!60 = distinct !{!60, !16}
!61 = !{!18, !6, i64 44}
!62 = !{!63, !63, i64 0}
!63 = !{!"p2 _ZTS20MXFIndexTableSegment", !24, i64 0}
!64 = !{!65, !6, i64 8}
!65 = !{!"MXFMetadataSetGroup", !66, i64 0, !6, i64 8}
!66 = !{!"p2 _ZTS14MXFMetadataSet", !24, i64 0}
!67 = !{!65, !66, i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTS14MXFMetadataSet", !12, i64 0}
!70 = !{!71, !6, i64 24}
!71 = !{!"MXFIndexTableSegment", !72, i64 0, !6, i64 24, !6, i64 28, !6, i64 32, !73, i64 36, !27, i64 48, !27, i64 56, !11, i64 64, !74, i64 72, !75, i64 80, !6, i64 88, !27, i64 96}
!72 = !{!"MXFMetadataSet", !7, i64 0, !27, i64 16}
!73 = !{!"AVRational", !6, i64 0, !6, i64 4}
!74 = !{!"p1 int", !12, i64 0}
!75 = !{!"p1 long", !12, i64 0}
!76 = !{!71, !6, i64 88}
!77 = !{!78, !78, i64 0}
!78 = !{!"p1 _ZTS20MXFIndexTableSegment", !12, i64 0}
!79 = !{!71, !6, i64 28}
!80 = !{!71, !27, i64 48}
!81 = distinct !{!81, !16}
!82 = !{!71, !6, i64 32}
!83 = !{!71, !27, i64 56}
!84 = distinct !{!84, !16}
!85 = distinct !{!85, !16}
!86 = !{!33, !6, i64 588}
!87 = distinct !{!87, !16, !88}
!88 = !{!"llvm.loop.peeled.count", i32 1}
!89 = !{!33, !38, i64 592}
!90 = !{!91, !6, i64 32}
!91 = !{!"MXFIndexTable", !6, i64 0, !6, i64 4, !6, i64 8, !27, i64 16, !75, i64 24, !6, i64 32, !63, i64 40, !92, i64 48, !11, i64 56}
!92 = !{!"p1 _ZTS12AVIndexEntry", !12, i64 0}
!93 = distinct !{!93, !16, !88}
!94 = !{!91, !63, i64 40}
!95 = !{!6, !6, i64 0}
!96 = !{!91, !6, i64 8}
!97 = distinct !{!97, !16}
!98 = !{!91, !75, i64 24}
!99 = !{!91, !92, i64 48}
!100 = !{!91, !11, i64 56}
!101 = !{!11, !11, i64 0}
!102 = distinct !{!102, !16, !103, !104}
!103 = !{!"llvm.loop.isvectorized", i32 1}
!104 = !{!"llvm.loop.unroll.runtime.disable"}
!105 = distinct !{!105, !16, !104, !103}
!106 = !{!71, !11, i64 64}
!107 = !{!71, !74, i64 72}
!108 = distinct !{!108, !16}
!109 = distinct !{!109, !16}
!110 = !{!111, !27, i64 8}
!111 = !{!"AVIndexEntry", !27, i64 0, !27, i64 8, !6, i64 16, !6, i64 16, !6, i64 20}
!112 = distinct !{!112, !16}
!113 = !{!91, !27, i64 16}
!114 = !{!18, !23, i64 48}
!115 = !{!116, !116, i64 0}
!116 = !{!"p1 _ZTS8AVStream", !12, i64 0}
!117 = !{!118, !12, i64 24}
!118 = !{!"AVStream", !19, i64 0, !6, i64 8, !6, i64 12, !119, i64 16, !12, i64 24, !73, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !6, i64 64, !6, i64 68, !73, i64 72, !29, i64 80, !73, i64 88, !120, i64 96, !6, i64 200, !73, i64 204, !6, i64 212}
!119 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!120 = !{!"AVPacket", !121, i64 0, !27, i64 8, !27, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !122, i64 48, !6, i64 56, !27, i64 64, !27, i64 72, !12, i64 80, !121, i64 88, !73, i64 96}
!121 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!122 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!123 = !{!124, !6, i64 96}
!124 = !{!"", !72, i64 0, !125, i64 24, !7, i64 32, !6, i64 48, !11, i64 56, !7, i64 64, !73, i64 68, !6, i64 76, !27, i64 80, !27, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !27, i64 112}
!125 = !{!"p1 _ZTS11MXFSequence", !12, i64 0}
!126 = !{!91, !6, i64 0}
!127 = distinct !{!127, !16}
!128 = !{!71, !6, i64 36}
!129 = !{!71, !6, i64 40}
!130 = !{!71, !27, i64 96}
!131 = !{!124, !27, i64 88}
!132 = distinct !{!132, !16}
!133 = distinct !{!133, !16}
!134 = !{!124, !6, i64 104}
!135 = !{!124, !6, i64 100}
!136 = distinct !{!136, !16}
!137 = !{!33, !6, i64 16}
!138 = !{!33, !34, i64 8}
!139 = !{!52, !6, i64 28}
!140 = distinct !{!140, !16}
!141 = !{!118, !119, i64 16}
!142 = !{!143, !6, i64 0}
!143 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !6, i64 24, !122, i64 32, !6, i64 40, !6, i64 44, !27, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !73, i64 80, !73, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !144, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!144 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!145 = !{!143, !6, i64 4}
!146 = !{!143, !6, i64 132}
!147 = !{!118, !27, i64 48}
!148 = !{!52, !27, i64 120}
!149 = !{!118, !6, i64 8}
!150 = distinct !{!150, !16}
!151 = !{!33, !6, i64 20}
!152 = !{!18, !6, i64 212}
!153 = distinct !{!153, !16}
!154 = !{!52, !27, i64 128}
!155 = !{!52, !27, i64 32}
!156 = !{!52, !27, i64 40}
!157 = !{!52, !27, i64 80}
!158 = distinct !{!158, !16}
!159 = !{!124, !6, i64 108}
!160 = distinct !{!160, !16}
!161 = !{!124, !6, i64 68}
!162 = !{!124, !6, i64 72}
!163 = distinct !{!163, !16}
!164 = !{!33, !27, i64 544}
!165 = !{!33, !27, i64 536}
!166 = !{!33, !36, i64 480}
!167 = !{!18, !11, i64 152}
!168 = !{!18, !6, i64 160}
!169 = distinct !{!169, !16}
!170 = distinct !{!170, !16}
!171 = distinct !{!171, !16}
!172 = !{!120, !11, i64 24}
!173 = !{!120, !6, i64 36}
!174 = !{!118, !6, i64 68}
!175 = !{!176, !6, i64 808}
end_hunk_2
