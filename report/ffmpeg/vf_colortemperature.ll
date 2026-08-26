Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colortemperature?download=true
inline.NumInlined: 45
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"colortemperature\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Adjust color temperature of video.\00", align 1
@inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 1, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_input }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@pixel_fmts = internal constant [27 x i32] [i32 2, i32 3, i32 26, i32 28, i32 25, i32 27, i32 118, i32 120, i32 119, i32 121, i32 71, i32 111, i32 73, i32 75, i32 135, i32 137, i32 77, i32 163, i32 161, i32 113, i32 175, i32 177, i32 35, i32 58, i32 105, i32 107, i32 -1], align 16
@ff_vf_colortemperature = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @inputs, ptr @ff_video_default_filterpad, ptr @colortemperature_class, i32 65540, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr null, ptr null, %union.anon.0 { ptr @pixel_fmts }, i32 56, i32 0, ptr @ff_filter_process_command, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@colortemperature_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @colortemperature_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"set the temperature in Kelvin\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mix\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"set the mix with filtered output\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"set the amount of preserving lightness\00", align 1
@colortemperature_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 8, i32 5, { double } { double 6.500000e+03 }, double 1.000000e+03, double 4.000000e+04, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 12, i32 5, { double } { double 1.000000e+00 }, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 16, i32 5, { double } zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load float, ptr %i.e, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.h = fdiv nsz float %i.f, 1.000000e+02        ; 6 uses
  %i.i = fcmp nsz ugt float %i.h, 6.600000e+01
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call nsz float @llvm.log.f32(float %i.h)
  %i.k = tail call nsz float @llvm.fmuladd.f32(float %i.j, float f0x3EC7B8C6, float f0xBF21C05C)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = fadd nsz float %i.h, -6.000000e+01
  %i.m = tail call nsz float @llvm.maxnum.f32(float %i.l, float 0.000000e+00) ; 2 uses
  %i.n = tail call nsz float @llvm.pow.f32(float %i.m, float f0xBE0866D4)
  %i.o = fmul nsz float %i.n, f0x3FA57EEF         ; 2 uses
  %i.p = fcmp nsz ogt float %i.o, 0.000000e+00
  %i.q = select nsz i1 %i.p, float %i.o, float 0.000000e+00 ; 2 uses
  %i.r = fcmp nsz ogt float %i.q, 1.000000e+00
  %..i.i16.i = select nsz i1 %i.r, float 1.000000e+00, float %i.q
  %i.s = tail call nsz float @llvm.pow.f32(float %i.m, float f0xBD9AA787)
  %i.t = fmul nsz float %i.s, f0x3F90A044
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink24.i = phi float [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink.i = phi float [ %..i.i16.i, %bb.c ], [ 1.000000e+00, %bb.b ]
  %i.u = fcmp nsz ogt float %.sink24.i, 0.000000e+00
  %i.v = select nsz i1 %i.u, float %.sink24.i, float 0.000000e+00 ; 2 uses
  %i.w = fcmp nsz ogt float %i.v, 1.000000e+00
  %..i.i17.i = select nsz i1 %i.w, float 1.000000e+00, float %i.v
  store float %.sink.i, ptr %i.g, align 4, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store float %..i.i17.i, ptr %i.x, align 8, !tbaa !32
  %i.y = fcmp nsz ult float %i.h, 6.600000e+01
  br i1 %i.y, label %bb.e, label %kelvin2rgb.exit

bb.e:                                             ; preds = %bb.d
  %i.z = fcmp nsz ugt float %i.h, 1.900000e+01
  br i1 %i.z, label %bb.f, label %kelvin2rgb.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = fadd nsz float %i.h, -1.000000e+01
  %i.ab = tail call nsz float @llvm.log.f32(float %i.aa)
  %i.ac = tail call nsz float @llvm.fmuladd.f32(float %i.ab, float f0x3F0B0F9A, float f0xBF991EDB) ; 2 uses
  %i.ad = fcmp nsz ogt float %i.ac, 0.000000e+00
  %i.ae = select nsz i1 %i.ad, float %i.ac, float 0.000000e+00 ; 2 uses
  %i.af = fcmp nsz ogt float %i.ae, 1.000000e+00
  %..i.i18.i = select nsz i1 %i.af, float 1.000000e+00, float %i.ae
  br label %kelvin2rgb.exit

kelvin2rgb.exit:                                  ; preds = %bb.d, %bb.e, %bb.f
  %.sink25.i = phi float [ 1.000000e+00, %bb.d ], [ %..i.i18.i, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store float %.sink25.i, ptr %i.ag, align 4, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34
  %i.al = tail call i32 @ff_filter_get_nb_threads(ptr noundef nonnull %i.b) #6
  %. = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.al)
  %i.am = tail call i32 @ff_filter_execute(ptr noundef nonnull %i.b, ptr noundef %i.ai, ptr noundef %1, ptr noundef null, i32 noundef %.) #7 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !41
  %i.aq = tail call i32 @ff_filter_frame(ptr noundef %i.ap, ptr noundef %1) #7
  ret i32 %i.aq
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @config_input(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43
  %i.g = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.f) #7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !46
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.n = load i32, ptr %i.e, align 4, !tbaa !43
  %.off = add i32 %i.n, -118
  %switch = icmp ult i32 %.off, 4
  %spec.store.select = select i1 %switch, i32 4, i32 %i.l
  store i32 %spec.store.select, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.p, ptr %i.q, align 4, !tbaa !49
  %i.r = icmp slt i32 %i.p, 9                     ; 2 uses
  %i.s = select i1 %i.r, ptr @temperature_slice8, ptr @temperature_slice16
  %i.t = and i64 %i.i, 16
  %.not = icmp eq i64 %i.t, 0
  %i.u = select i1 %i.r, ptr @temperature_slice8p, ptr @temperature_slice16p
  %spec.select = select i1 %.not, ptr %i.u, ptr %i.s
  %i.v = icmp eq i32 %i.p, 32
  %storemerge21 = select i1 %i.v, ptr @temperature_slice32, ptr %spec.select
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %storemerge21, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.y = load i32, ptr %i.e, align 4, !tbaa !43
  %i.z = tail call i32 @ff_fill_rgba_map(ptr noundef nonnull %i.x, i32 noundef %i.y) #7 ; 0 uses
  ret i32 0
}

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #4

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @temperature_slice8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !51 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load float, ptr %i.i, align 8, !tbaa !52 ; 3 uses
  %i.k = getelementptr i8, ptr %i.b, i64 20       ; 5 uses
  %i.l = sext i32 %i.f to i64                     ; 2 uses
  %i.m = sext i32 %2 to i64
  %i.n = mul nsw i64 %i.l, %i.m
  %i.o = sext i32 %3 to i64                       ; 2 uses
  %i.p = sdiv i64 %i.n, %i.o                      ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = add nsw i32 %2, 1
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.l, %i.s
  %i.u = sdiv i64 %i.t, %i.o                      ; 2 uses
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !53   ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aa = load <2 x i32>, ptr %i.z, align 4, !tbaa !53 ; 3 uses
  %i.ab = extractelement <2 x i32> %i.aa, i64 0   ; 3 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %i.ad = extractelement <2 x i32> %i.aa, i64 1   ; 3 uses
  %i.ae = sext i32 %i.ad to i64                   ; 3 uses
  %i.af = icmp slt i32 %i.q, %i.v
  br i1 %i.af, label %.preheader.lr.ph, label %._crit_edge146.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.ag = icmp sgt i32 %i.d, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  br i1 %i.ag, label %.preheader.preheader, label %._crit_edge146.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.aj = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %sext = shl i64 %i.p, 32
  %i.ak = ashr exact i64 %sext, 32                ; 4 uses
  %i.al = mul nsw i64 %i.ak, %i.y
  %i.am = getelementptr i8, ptr %i.aj, i64 %i.al  ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54 ; 2 uses
  %i.ap = mul nsw i64 %i.ak, %i.ac
  %i.aq = getelementptr i8, ptr %i.ao, i64 %i.ap  ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !54 ; 2 uses
  %i.at = mul nsw i64 %i.ak, %i.ae
  %i.au = getelementptr i8, ptr %i.as, i64 %i.at  ; 4 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 6 uses
  %i.av = xor i64 %i.p, -1
  %i.aw = add i64 %i.u, %i.av
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = add nsw i64 %i.ak, %i.ax                ; 3 uses
  %i.az = mul i64 %i.ay, %i.y
  %i.ba = getelementptr i8, ptr %i.aj, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.ba, i64 %wide.trip.count ; 3 uses
  %i.bb = mul i64 %i.ay, %i.ac
  %i.bc = getelementptr i8, ptr %i.ao, i64 %i.bb
  %scevgep152 = getelementptr i8, ptr %i.bc, i64 %wide.trip.count ; 3 uses
  %i.bd = mul i64 %i.ay, %i.ae
  %i.be = getelementptr i8, ptr %i.as, i64 %i.bd
  %scevgep153 = getelementptr i8, ptr %i.be, i64 %wide.trip.count ; 3 uses
  %scevgep154 = getelementptr i8, ptr %i.b, i64 32 ; 3 uses
  %i.bf = insertelement <2 x ptr> poison, ptr %i.aq, i64 0
  %i.bg = insertelement <2 x ptr> %i.bf, ptr %i.am, i64 1
  %i.bh = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.bi = insertelement <2 x ptr> %i.bh, ptr %scevgep153, i64 1
  %i.bj = insertelement <2 x ptr> poison, ptr %i.am, i64 0
  %i.bk = insertelement <2 x ptr> %i.bj, ptr %i.au, i64 1
  %i.bl = insertelement <2 x ptr> poison, ptr %scevgep152, i64 0
  %i.bm = insertelement <2 x ptr> %i.bl, ptr %scevgep, i64 1
  %i.bn = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %i.bo = shufflevector <2 x i32> %i.bn, <2 x i32> poison, <2 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.d, 4
  %i.bp = icmp ult <2 x ptr> %i.bk, %i.bm
  %i.bq = icmp ult <2 x ptr> %i.bg, %i.bi
  %i.br = or <2 x i32> %i.aa, %i.bo
  %i.bs = and <2 x i1> %i.bq, %i.bp
  %i.bt = icmp slt <2 x i32> %i.br, zeroinitializer
  %i.bu = or <2 x i1> %i.bs, %i.bt
  %i.bv = bitcast <2 x i1> %i.bu to i2
  %conflict.rdx = icmp ne i2 %i.bv, 0
end_hunk_0
