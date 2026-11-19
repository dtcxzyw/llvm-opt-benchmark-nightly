Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/cpu?download=true
inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL19get_thread_siblingsi:bb.a
  %i.aj = or i32 %i.ai, %i.ah
  %.0.5 = add nsw i32 %.0.in25, 6
  %i.ak = shl nuw i32 1, %.0.5
  %i.al = or i32 %i.ak, %i.aj
  %.0.6 = add nsw i32 %.0.in25, 7
  %i.am = shl nuw i32 1, %.0.6
  %i.an = or i32 %i.am, %i.al
  %.0.7 = add nsw i32 %.0.in25, 8                 ; 3 uses
  %i.ao = shl nuw i32 1, %.0.7
  %i.ap = or i32 %i.ao, %i.an                     ; 2 uses
  %exitcond.not.7 = icmp eq i32 %.0.7, %i.p
  br i1 %exitcond.not.7, label %.loopexit, label %.preheader, !llvm.loop !41

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph
  %.3 = phi i32 [ %.1, %.lr.ph ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.ap, %.preheader ] ; 2 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !14
  %i.aq = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %.lr.ph, label %.loopexit23, !llvm.loop !42

.loopexit23:                                      ; preds = %.loopexit, %bb.c, %bb.b
  %.4 = phi i32 [ -1, %bb.b ], [ %i.k, %bb.c ], [ %.3, %.loopexit ]
  %i.as = call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.loopexit23
  %.018 = phi i32 [ %.4, %.loopexit23 ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.018
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare i32 @__isoc23_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -2147483648, 2147482625) i32 @_ZL19get_data_cache_sizeii(i32 noundef %0, i32 noundef range(i32 2, 4) %1) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 13 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %2 = alloca %"class.ncnn::CpuSet", align 8      ; 11 uses
  %i.e = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %0, i32 noundef 0) #17 ; 0 uses
  %i.g = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 2 uses
  %.not165 = icmp eq ptr %i.g, null
  br i1 %.not165, label %.thread143, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.h = phi ptr [ %i.z, %bb.e ], [ %i.g, %bb.a ] ; 2 uses
  %.076166 = phi i32 [ %i.x, %bb.e ], [ 0, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 -1, ptr %i.b, align 4, !tbaa !14
  %i.i = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b)
  %i.j = call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  %.not91 = icmp eq i32 %i.i, 1
  %i.k = load i32, ptr %i.b, align 4
  %.not92 = icmp eq i32 %i.k, %1
  %or.cond108 = select i1 %.not91, i1 %.not92, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br i1 %or.cond108, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.l = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %0, i32 noundef %.076166) #17 ; 0 uses
  %i.m = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 3 uses
  %.not93 = icmp eq ptr %i.m, null
  br i1 %.not93, label %.thread143, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.n = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.c)
  %i.o = call i32 @fclose(ptr noundef nonnull %i.m) ; 0 uses
  %.not94 = icmp eq i32 %i.n, 1
  br i1 %.not94, label %bb.d, label %.thread140

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.c, align 16
  %i.q = xor i32 %i.p, 1635017028
  %i.r = getelementptr i8, ptr %i.c, i64 4
  %i.s = load i8, ptr %i.r, align 4
  %i.t = zext i8 %i.s to i32
  %i.u = or i32 %i.q, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %.not95 = icmp eq i32 %i.w, 0
  %lhsv = load i64, ptr %i.c, align 16
  %.not97 = icmp eq i64 %lhsv, 28259001035222613
  %or.cond109 = select i1 %.not95, i1 true, i1 %.not97
  br i1 %or.cond109, label %bb.f, label %.thread140

.thread140:                                       ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.e

bb.e:                                             ; preds = %.thread140, %.lr.ph
  %i.x = add nuw nsw i32 %.076166, 1              ; 2 uses
  %i.y = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %0, i32 noundef %i.x) #17 ; 0 uses
  %i.z = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.thread143, label %.lr.ph, !llvm.loop !44

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 0, ptr %i.d, align 4, !tbaa !14
  %i.aa = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %0, i32 noundef %.076166) #17 ; 0 uses
  %i.ab = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 3 uses
  %.not98 = icmp eq ptr %i.ab, null
  br i1 %.not98, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.d) ; 2 uses
  %i.ad = call i32 @fclose(ptr noundef nonnull %i.ab) ; 0 uses
  %.not99 = icmp eq i32 %i.ac, 1
  br i1 %.not99, label %.critedge111, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.af = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.32, i32 noundef %i.ac) #26 ; 0 uses
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !17
  %fputc = call i32 @fputc(i32 10, ptr %i.ag)     ; 0 uses
  br label %.critedge

.critedge111:                                     ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  %i.ah = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %0, i32 noundef %.076166) #17 ; 0 uses
  %i.ai = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.7) ; 3 uses
  %.not100 = icmp eq ptr %i.ai, null
  br i1 %.not100, label %.critedge113, label %bb.i

bb.i:                                             ; preds = %.critedge111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.aj = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.e) ; 2 uses
  %i.ak = call i32 @fclose(ptr noundef nonnull %i.ai) ; 0 uses
  %.not101 = icmp eq i32 %i.aj, 1
  br i1 %.not101, label %bb.j, label %.thread145

.thread145:                                       ; preds = %bb.i
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.am = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.35, i32 noundef %i.aj) #26 ; 0 uses
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !17
  %fputc106 = call i32 @fputc(i32 10, ptr %i.an)  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %.critedge113

bb.j:                                             ; preds = %bb.i
  %i.ao = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #29
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = load i8, ptr %i.e, align 16, !tbaa !18
  %i.ar = icmp eq i8 %i.aq, 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, 120
  %or.cond = select i1 %i.ar, i1 %i.au, i1 false
  %i.av = add nsw i32 %i.ap, -2
  %spec.select = select i1 %or.cond, i32 %i.av, i32 %i.ap ; 2 uses
  %i.aw = icmp sgt i32 %spec.select, 0
  br i1 %i.aw, label %.lr.ph172.preheader, label %._crit_edge

.lr.ph172.preheader:                              ; preds = %bb.j
  %i.ax = zext nneg i32 %spec.select to i64
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %_ZN4ncnn6CpuSet6enableEi.exit119
  %indvars.iv194 = phi i64 [ 0, %.lr.ph172.preheader ], [ %indvars.iv.next195, %_ZN4ncnn6CpuSet6enableEi.exit119 ] ; 10 uses
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph172.preheader ], [ %indvars.iv.next, %_ZN4ncnn6CpuSet6enableEi.exit119 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !18  ; 4 uses
  %.not102 = trunc i8 %i.az to i1
  %i.ba = icmp samesign ult i64 %indvars.iv194, 1024 ; 4 uses
  %or.cond146 = select i1 %.not102, i1 %i.ba, i1 false
  br i1 %or.cond146, label %bb.k, label %_ZN4ncnn6CpuSet6enableEi.exit

bb.k:                                             ; preds = %.lr.ph172
  %i.bb = and i64 %indvars.iv194, 60
  %i.bc = shl nuw nsw i64 1, %i.bb
  %i.bd = lshr i64 %indvars.iv194, 6
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bd ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !10
  %i.bg = or i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !10
  br label %_ZN4ncnn6CpuSet6enableEi.exit

_ZN4ncnn6CpuSet6enableEi.exit:                    ; preds = %bb.k, %.lr.ph172
  %i.bh = and i8 %i.az, 2
  %.not103 = icmp ne i8 %i.bh, 0
  %or.cond147 = select i1 %.not103, i1 %i.ba, i1 false
  br i1 %or.cond147, label %bb.l, label %_ZN4ncnn6CpuSet6enableEi.exit117

bb.l:                                             ; preds = %_ZN4ncnn6CpuSet6enableEi.exit
  %i.bi = and i64 %indvars.iv194, 60
  %i.bj = shl nuw nsw i64 2, %i.bi
  %i.bk = lshr i64 %indvars.iv194, 6
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10
  %i.bn = or i64 %i.bm, %i.bj
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !10
  br label %_ZN4ncnn6CpuSet6enableEi.exit117

_ZN4ncnn6CpuSet6enableEi.exit117:                 ; preds = %bb.l, %_ZN4ncnn6CpuSet6enableEi.exit
  %i.bo = and i8 %i.az, 4
  %.not104 = icmp ne i8 %i.bo, 0
  %or.cond148 = select i1 %.not104, i1 %i.ba, i1 false
  br i1 %or.cond148, label %bb.m, label %_ZN4ncnn6CpuSet6enableEi.exit118

bb.m:                                             ; preds = %_ZN4ncnn6CpuSet6enableEi.exit117
  %i.bp = and i64 %indvars.iv194, 60
  %i.bq = shl nuw nsw i64 4, %i.bp
  %i.br = lshr i64 %indvars.iv194, 6
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.br ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !10
  %i.bu = or i64 %i.bt, %i.bq
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !10
  br label %_ZN4ncnn6CpuSet6enableEi.exit118

_ZN4ncnn6CpuSet6enableEi.exit118:                 ; preds = %bb.m, %_ZN4ncnn6CpuSet6enableEi.exit117
  %i.bv = and i8 %i.az, 8
  %.not105 = icmp ne i8 %i.bv, 0
  %or.cond149 = select i1 %.not105, i1 %i.ba, i1 false
  br i1 %or.cond149, label %bb.n, label %_ZN4ncnn6CpuSet6enableEi.exit119

bb.n:                                             ; preds = %_ZN4ncnn6CpuSet6enableEi.exit118
  %i.bw = and i64 %indvars.iv194, 60
  %i.bx = shl nuw i64 8, %i.bw
  %i.by = lshr i64 %indvars.iv194, 6
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.by ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !10
  %i.cb = or i64 %i.ca, %i.bx
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !10
  br label %_ZN4ncnn6CpuSet6enableEi.exit119

_ZN4ncnn6CpuSet6enableEi.exit119:                 ; preds = %bb.n, %_ZN4ncnn6CpuSet6enableEi.exit118
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 4
  %i.cc = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.cc, label %.lr.ph172, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %_ZN4ncnn6CpuSet6enableEi.exit119, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %._crit_edge
  %index = phi i64 [ 0, %._crit_edge ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %._crit_edge ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %._crit_edge ], [ %i.cr, %vector.body ]
  %vec.phi236 = phi <2 x i32> [ zeroinitializer, %._crit_edge ], [ %i.cs, %vector.body ]
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.cd = lshr i64 %index, 6
  %i.ce = lshr i64 %index, 6
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cd
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ce
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !10
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ch, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !10
  %broadcast.splatinsert237 = insertelement <2 x i64> poison, i64 %i.ci, i64 0
  %broadcast.splat238 = shufflevector <2 x i64> %broadcast.splatinsert237, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cj = and <2 x i64> %vec.ind, splat (i64 63)
  %i.ck = and <2 x i64> %step.add, splat (i64 63)
  %i.cl = lshr <2 x i64> %broadcast.splat, %i.cj
  %i.cm = lshr <2 x i64> %broadcast.splat238, %i.ck
  %i.cn = trunc <2 x i64> %i.cl to <2 x i32>
  %i.co = and <2 x i32> %i.cn, splat (i32 1)
  %i.cp = trunc <2 x i64> %i.cm to <2 x i32>
  %i.cq = and <2 x i32> %i.cp, splat (i32 1)
  %i.cr = add <2 x i32> %i.co, %vec.phi           ; 2 uses
  %i.cs = add <2 x i32> %i.cq, %vec.phi236        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ct = icmp eq i64 %index.next, 1024
  br i1 %i.ct, label %_ZNK4ncnn6CpuSet11num_enabledEv.exit, label %vector.body, !llvm.loop !46

_ZNK4ncnn6CpuSet11num_enabledEv.exit:             ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.cs, %i.cr
  %i.cu = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %bb.o, label %.lr.ph182

bb.o:                                             ; preds = %_ZNK4ncnn6CpuSet11num_enabledEv.exit
  %i.cw = load i32, ptr %i.d, align 4, !tbaa !14
  %i.cx = shl nsw i32 %i.cw, 10
  br label %.critedge113

._crit_edge183:                                   ; preds = %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread
  %.not.i.i.i = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge183
  %i.cy = ptrtoint ptr %.sroa.14.2 to i64
  %i.cz = ptrtoint ptr %.sroa.0.2 to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.da) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge183, %bb.p
  %i.db = load i32, ptr %i.d, align 4, !tbaa !14
  %i.dc = sdiv i32 %i.db, %.3
  %i.dd = add nsw i32 %i.dc, 3
  %i.de = sdiv i32 %i.dd, 4
  %i.df = shl nsw i32 %i.de, 12
  br label %.critedge113

.lr.ph182:                                        ; preds = %_ZNK4ncnn6CpuSet11num_enabledEv.exit, %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread ], [ 0, %_ZNK4ncnn6CpuSet11num_enabledEv.exit ] ; 5 uses
  %.068180 = phi i32 [ %.3, %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread ], [ 0, %_ZNK4ncnn6CpuSet11num_enabledEv.exit ] ; 5 uses
  %.sroa.14.0179 = phi ptr [ %.sroa.14.2, %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread ], [ null, %_ZNK4ncnn6CpuSet11num_enabledEv.exit ] ; 9 uses
  %.sroa.10.0178 = phi ptr [ %.sroa.10.2, %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread ], [ null, %_ZNK4ncnn6CpuSet11num_enabledEv.exit ] ; 10 uses
  %.sroa.0.0177 = phi ptr [ %.sroa.0.2, %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread ], [ null, %_ZNK4ncnn6CpuSet11num_enabledEv.exit ] ; 14 uses
  %i.dg = icmp samesign ult i64 %indvars.iv199, 1024
  br i1 %i.dg, label %_ZNK4ncnn6CpuSet10is_enabledEi.exit, label %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread

_ZNK4ncnn6CpuSet10is_enabledEi.exit:              ; preds = %.lr.ph182
  %i.dh = lshr i64 %indvars.iv199, 6
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !10
  %i.dk = and i64 %indvars.iv199, 63
  %i.dl = lshr i64 %i.dj, %i.dk
  %i.dm = trunc i64 %i.dl to i1
  br i1 %i.dm, label %bb.q, label %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread

bb.q:                                             ; preds = %_ZNK4ncnn6CpuSet10is_enabledEi.exit
  %i.dn = trunc nuw nsw i64 %indvars.iv199 to i32
  %i.do = invoke fastcc noundef i32 @_ZL19get_thread_siblingsi(i32 noundef %i.dn)
          to label %bb.r unwind label %bb.y       ; 4 uses

bb.r:                                             ; preds = %bb.q
  %i.dp = icmp eq i32 %i.do, -1
  br i1 %i.dp, label %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.dq = ptrtoint ptr %.sroa.10.0178 to i64
  %i.dr = ptrtoint ptr %.sroa.0.0177 to i64       ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 5 uses
  %i.dt = ashr exact i64 %i.ds, 2                 ; 4 uses
  %.not186 = icmp eq ptr %.sroa.10.0178, %.sroa.0.0177
  br i1 %.not186, label %.critedge115.thread, label %.lr.ph174

bb.s:                                             ; preds = %.lr.ph174
  %i.du = add nuw i64 %.0173, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.du, %i.dt
  br i1 %exitcond.not, label %.critedge115, label %.lr.ph174, !llvm.loop !47

.lr.ph174:                                        ; preds = %.preheader, %bb.s
  %.0173 = phi i64 [ %i.du, %bb.s ], [ 0, %.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0177, i64 %.0173
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !14
  %i.dx = icmp eq i32 %i.dw, %i.do
  br i1 %i.dx, label %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread, label %bb.s

.critedge115:                                     ; preds = %bb.s
  %.not.i = icmp eq ptr %.sroa.10.0178, %.sroa.14.0179
  br i1 %.not.i, label %bb.u, label %bb.t

.critedge115.thread:                              ; preds = %.preheader
  %.not.i216 = icmp eq ptr %.sroa.10.0178, %.sroa.14.0179
  br i1 %.not.i216, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, label %bb.t

bb.t:                                             ; preds = %.critedge115.thread, %.critedge115
  store i32 %i.do, ptr %.sroa.10.0178, align 4, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.u:                                             ; preds = %.critedge115
  %i.dy = icmp eq i64 %i.ds, 9223372036854775804
  br i1 %i.dy, label %bb.v, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #24
          to label %.noexc unwind label %.thread217

.noexc:                                           ; preds = %bb.v
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %.critedge115.thread, %bb.u
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dt, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i, %i.dt ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dt
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 2305843009213693951)
  %i.ec = select i1 %i.ea, i64 2305843009213693951, i64 %i.eb ; 3 uses
  %.not.i.i.i120 = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i120)
  %i.ed = shl nuw nsw i64 %i.ec, 2
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #25
          to label %.noexc121 unwind label %bb.y  ; 4 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.ds ; 2 uses
  store i32 %i.do, ptr %i.ef, align 4, !tbaa !14
  %i.eg = icmp sgt i64 %i.ds, 0
  br i1 %i.eg, label %bb.w, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %.noexc121
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ee, ptr align 4 %.sroa.0.0177, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %.noexc121
  %.not.i17.i.i = icmp eq ptr %.sroa.0.0177, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.eh = ptrtoint ptr %.sroa.14.0179 to i64
  %i.ei = sub i64 %i.eh, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0177, i64 noundef %i.ei) #23
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ec
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.t
  %.sroa.0.3 = phi ptr [ %i.ee, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0.0177, %bb.t ]
  %.pn = phi ptr [ %i.ef, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.10.0178, %bb.t ]
  %.sroa.14.3 = phi ptr [ %i.ej, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.14.0179, %bb.t ]
  %.sroa.10.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.ek = add nsw i32 %.068180, 1
  br label %_ZNK4ncnn6CpuSet10is_enabledEi.exit.thread

.thread217:                                       ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %.sroa.0.0177, null
  br i1 %.not.i.i.i122, label %_ZNSt6vectorIiSaIiEED2Ev.exit123, label %bb.z

bb.z:                                             ; preds = %.thread217, %bb.y
  %lpad.phi220 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread217 ], [ %lpad.loopexit, %bb.y ]
  %i.el = ptrtoint ptr %.sroa.14.0179 to i64
  %i.em = ptrtoint ptr %.sroa.0.0177 to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0177, i64 noundef %i.en) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit123

end_hunk_0
