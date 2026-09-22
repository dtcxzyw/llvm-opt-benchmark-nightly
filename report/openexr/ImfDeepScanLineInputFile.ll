Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfDeepScanLineInputFile?download=true
inline.NumInlined: 515
inline.NumDeleted: 283
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7Imf_3_412_GLOBAL__N_115ScanLineProcess8run_fillEPKNS_15DeepFrameBufferEiRKSt6vectorINS_9DeepSliceESaIS6_EE:bb.a
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !132
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.p, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  %i.ah = mul nsw i64 %i.r, %i.b
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.ah
  %i.aj = sext i32 %i.w to i64
  br label %.lr.ph19.split

._crit_edge20:                                    ; preds = %._crit_edge, %.lr.ph19, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.022, i64 56 ; 2 uses
  %.not5 = icmp eq ptr %i.ak, %.8.val
  br i1 %.not5, label %._crit_edge25, label %bb.b

.lr.ph19.split:                                   ; preds = %.lr.ph19.split.preheader, %._crit_edge
  %indvars.iv45 = phi i64 [ %i.b, %.lr.ph19.split.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 2 uses
  %.06616 = phi ptr [ %i.ai, %.lr.ph19.split.preheader ], [ %i.at, %._crit_edge ] ; 2 uses
  %i.al = load i32, ptr %i.c, align 8, !tbaa !117
  %i.am = sext i32 %i.al to i64
  %i.an = sub nsw i64 %indvars.iv45, %i.am
  %i.ao = load i32, ptr %i.h, align 8, !tbaa !152 ; 3 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %i.an, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.aq
  %i.as = icmp sgt i32 %i.ao, 0
  br i1 %i.as, label %.lr.ph15.preheader, label %._crit_edge

.lr.ph15.preheader:                               ; preds = %.lr.ph19.split
  %wide.trip.count43 = zext nneg i32 %i.ao to i64
  br label %.lr.ph15

._crit_edge:                                      ; preds = %.loopexit, %.lr.ph19.split
  %i.at = getelementptr inbounds nuw i8, ptr %.06616, i64 %i.r
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.au = icmp slt i64 %indvars.iv.next46, %i.aj
  br i1 %i.au, label %.lr.ph19.split, label %._crit_edge20, !llvm.loop !243

.lr.ph15:                                         ; preds = %.lr.ph15.preheader, %.loopexit
  %indvars.iv40 = phi i64 [ 0, %.lr.ph15.preheader ], [ %indvars.iv.next41, %.loopexit ] ; 2 uses
  %.06213 = phi ptr [ %.06616, %.lr.ph15.preheader ], [ %.1, %.loopexit ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv40
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !17 ; 11 uses
  %i.ax = load ptr, ptr %.06213, align 8, !tbaa !15 ; 8 uses
  %i.ay = icmp eq i32 %i.aw, 0
  %i.az = icmp eq ptr %i.ax, null
  %or.cond = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph15
  %i.ba = load i32, ptr %.sroa.02.022, align 8, !tbaa !128
  switch i32 %i.ba, label %bb.u [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.t
  ]

bb.h:                                             ; preds = %bb.g
  %i.bb = load double, ptr %i.y, align 8, !tbaa !252
  %i.bc = fptoui double %i.bb to i32              ; 2 uses
  %i.bd = icmp sgt i32 %i.aw, 0
  br i1 %i.bd, label %.lr.ph12.preheader, label %.loopexit

.lr.ph12.preheader:                               ; preds = %bb.h
  %wide.trip.count38 = zext nneg i32 %i.aw to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.aw, 8
  br i1 %min.iters.check, label %.lr.ph12.preheader89, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph12.preheader
  %n.vec = and i64 %wide.trip.count38, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.be, align 4, !tbaa !17
  store <4 x i32> %broadcast.splat, ptr %i.bf, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count38
  br i1 %cmp.n, label %.loopexit, label %.lr.ph12.preheader89

.lr.ph12.preheader89:                             ; preds = %.lr.ph12.preheader, %middle.block
  %indvars.iv35.ph = phi i64 [ 0, %.lr.ph12.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph12

.lr.ph12:                                         ; preds = %.lr.ph12.preheader89, %.lr.ph12
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph12 ], [ %indvars.iv35.ph, %.lr.ph12.preheader89 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv35
  store i32 %i.bc, ptr %i.bh, align 4, !tbaa !17
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %.loopexit, label %.lr.ph12, !llvm.loop !245

bb.i:                                             ; preds = %bb.g
  %i.bi = load double, ptr %i.y, align 8, !tbaa !252
  %i.bj = fptrunc double %i.bi to float           ; 2 uses
  %i.bk = bitcast float %i.bj to i32
  %i.bl = tail call float @llvm.fabs.f32(float %i.bj)
  %i.bm = bitcast float %i.bl to i32              ; 10 uses
  %i.bn = lshr i32 %i.bk, 16                      ; 3 uses
  %i.bo = trunc nuw i32 %i.bn to i16
  %i.bp = and i16 %i.bo, -32768                   ; 3 uses
  %i.bq = icmp samesign ugt i32 %i.bm, 947912703
  br i1 %i.bq, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.br = icmp samesign ugt i32 %i.bm, 2139095039
  br i1 %i.br, label %bb.k, label %bb.m, !prof !59

bb.k:                                             ; preds = %bb.j
  %i.bs = or disjoint i16 %i.bp, 31744            ; 2 uses
  %i.bt = icmp eq i32 %i.bm, 2139095040
  br i1 %i.bt, label %_ZN9Imath_3_24halfC2Ef.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = lshr i32 %i.bm, 13
  %i.bv = and i32 %i.bu, 1023                     ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = zext i1 %i.bw to i16
  %i.by = trunc nuw nsw i32 %i.bv to i16
  %i.bz = or i16 %i.by, %i.bx
  %i.ca = or disjoint i16 %i.bz, %i.bs
  br label %_ZN9Imath_3_24halfC2Ef.exit

bb.m:                                             ; preds = %bb.j
  %i.cb = icmp samesign ugt i32 %i.bm, 1199566847
  br i1 %i.cb, label %bb.n, label %bb.o, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.cc = or disjoint i16 %i.bp, 31744
  br label %_ZN9Imath_3_24halfC2Ef.exit

bb.o:                                             ; preds = %bb.m
  %i.cd = add nuw nsw i32 %i.bm, 134221823
  %i.ce = lshr i32 %i.bm, 13
  %i.cf = and i32 %i.ce, 1
  %i.cg = add nuw nsw i32 %i.cd, %i.cf
  %i.ch = lshr i32 %i.cg, 13
  %i.ci = and i32 %i.bn, 32768
  %i.cj = or i32 %i.ch, %i.ci
  %i.ck = trunc i32 %i.cj to i16
  br label %_ZN9Imath_3_24halfC2Ef.exit

bb.p:                                             ; preds = %bb.i
  %i.cl = icmp samesign ult i32 %i.bm, 855638017
  br i1 %i.cl, label %_ZN9Imath_3_24halfC2Ef.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = lshr i32 %i.bm, 23                      ; 2 uses
  %i.cn = sub nuw nsw i32 126, %i.cm
  %i.co = and i32 %i.bm, 8388607
  %i.cp = or disjoint i32 %i.co, 8388608          ; 2 uses
  %i.cq = add nsw i32 %i.cm, -94
  %i.cr = shl i32 %i.cp, %i.cq                    ; 2 uses
  %i.cs = lshr i32 %i.cp, %i.cn                   ; 2 uses
  %i.ct = and i32 %i.bn, 32768
  %i.cu = or i32 %i.cs, %i.ct
  %i.cv = trunc nuw i32 %i.cu to i16              ; 2 uses
  %i.cw = icmp ugt i32 %i.cr, -2147483648
  br i1 %i.cw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = icmp ne i32 %i.cr, -2147483648
  %i.cy = and i32 %i.cs, 1
  %.not.i.i = icmp eq i32 %i.cy, 0
  %or.cond.i.i = select i1 %i.cx, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN9Imath_3_24halfC2Ef.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cz = add nuw i16 %i.cv, 1
  br label %_ZN9Imath_3_24halfC2Ef.exit

_ZN9Imath_3_24halfC2Ef.exit:                      ; preds = %bb.k, %bb.l, %bb.n, %bb.o, %bb.p, %bb.r, %bb.s
  %.033.i.i = phi i16 [ %i.bp, %bb.p ], [ %i.ca, %bb.l ], [ %i.cc, %bb.n ], [ %i.ck, %bb.o ], [ %i.bs, %bb.k ], [ %i.cz, %bb.s ], [ %i.cv, %bb.r ] ; 3 uses
  %i.da = icmp sgt i32 %i.aw, 0
  br i1 %i.da, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %_ZN9Imath_3_24halfC2Ef.exit
  %wide.trip.count33 = zext nneg i32 %i.aw to i64 ; 6 uses
  %min.iters.check59 = icmp ult i32 %i.aw, 4
  br i1 %min.iters.check59, label %.lr.ph10.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check60 = icmp ult i32 %i.aw, 16
  br i1 %min.iters.check60, label %vec.epilog.ph, label %vector.ph61

vector.ph61:                                      ; preds = %vector.main.loop.iter.check
  %i.db = and i64 %wide.trip.count33, 12
  %n.vec62 = and i64 %wide.trip.count33, 2147483632 ; 4 uses
  %broadcast.splatinsert63 = insertelement <8 x i16> poison, i16 %.033.i.i, i64 0
  %broadcast.splat64 = shufflevector <8 x i16> %broadcast.splatinsert63, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.ph61, %vector.body65
  %index66 = phi i64 [ 0, %vector.ph61 ], [ %index.next67, %vector.body65 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %index66 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <8 x i16> %broadcast.splat64, ptr %i.dc, align 2, !tbaa !255
  store <8 x i16> %broadcast.splat64, ptr %i.dd, align 2, !tbaa !255
  %index.next67 = add nuw i64 %index66, 16        ; 2 uses
  %i.de = icmp eq i64 %index.next67, %n.vec62
  br i1 %i.de, label %middle.block68, label %vector.body65, !llvm.loop !246

middle.block68:                                   ; preds = %vector.body65
  %cmp.n69 = icmp eq i64 %n.vec62, %wide.trip.count33
  br i1 %cmp.n69, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block68
  %min.epilog.iters.check = icmp eq i64 %i.db, 0
  br i1 %min.epilog.iters.check, label %.lr.ph10.preheader, label %vec.epilog.ph, !prof !256

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec62, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %wide.trip.count33, 2147483644 ; 3 uses
  %broadcast.splatinsert71 = insertelement <4 x i16> poison, i16 %.033.i.i, i64 0
  %broadcast.splat72 = shufflevector <4 x i16> %broadcast.splatinsert71, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next74, %vec.epilog.vector.body ] ; 2 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %index73
  store <4 x i16> %broadcast.splat72, ptr %i.df, align 2, !tbaa !255
  %index.next74 = add nuw i64 %index73, 4         ; 2 uses
  %i.dg = icmp eq i64 %index.next74, %n.vec70
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !247

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n75 = icmp eq i64 %n.vec70, %wide.trip.count33
  br i1 %cmp.n75, label %.loopexit, label %.lr.ph10.preheader

.lr.ph10.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv30.ph = phi i64 [ 0, %iter.check ], [ %n.vec62, %vec.epilog.iter.check ], [ %n.vec70, %vec.epilog.middle.block ]
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %.lr.ph10
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.lr.ph10 ], [ %indvars.iv30.ph, %.lr.ph10.preheader ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv30
  store i16 %.033.i.i, ptr %i.dh, align 2, !tbaa !255
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %.loopexit, label %.lr.ph10, !llvm.loop !248

bb.t:                                             ; preds = %bb.g
  %i.di = load double, ptr %i.y, align 8, !tbaa !252
  %i.dj = fptrunc double %i.di to float           ; 2 uses
  %i.dk = icmp sgt i32 %i.aw, 0
  br i1 %i.dk, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.t
  %wide.trip.count = zext nneg i32 %i.aw to i64   ; 3 uses
  %min.iters.check78 = icmp ult i32 %i.aw, 8
  br i1 %min.iters.check78, label %.lr.ph.preheader91, label %vector.ph79

vector.ph79:                                      ; preds = %.lr.ph.preheader
  %n.vec80 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert81 = insertelement <4 x float> poison, float %i.dj, i64 0
  %broadcast.splat82 = shufflevector <4 x float> %broadcast.splatinsert81, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %vector.ph79
  %index84 = phi i64 [ 0, %vector.ph79 ], [ %index.next85, %vector.body83 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index84 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <4 x float> %broadcast.splat82, ptr %i.dl, align 4, !tbaa !154
  store <4 x float> %broadcast.splat82, ptr %i.dm, align 4, !tbaa !154
  %index.next85 = add nuw i64 %index84, 8         ; 2 uses
  %i.dn = icmp eq i64 %index.next85, %n.vec80
  br i1 %i.dn, label %middle.block86, label %vector.body83, !llvm.loop !249

middle.block86:                                   ; preds = %vector.body83
  %cmp.n87 = icmp eq i64 %n.vec80, %wide.trip.count
  br i1 %cmp.n87, label %.loopexit, label %.lr.ph.preheader91

.lr.ph.preheader91:                               ; preds = %.lr.ph.preheader, %middle.block86
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec80, %middle.block86 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader91, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader91 ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  store float %i.dj, ptr %i.do, align 4, !tbaa !154
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !250

bb.u:                                             ; preds = %bb.g
  %i.dp = tail call ptr @__cxa_allocate_exception(i64 72) #25 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.dp, ptr noundef nonnull @.str.30)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @__cxa_throw(ptr nonnull %i.dp, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #26
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph10, %.lr.ph12, %middle.block86, %middle.block68, %vec.epilog.middle.block, %middle.block, %bb.t, %_ZN9Imath_3_24halfC2Ef.exit, %bb.h, %.lr.ph15
  %.1 = getelementptr inbounds nuw i8, ptr %.06213, i64 %i.p
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge, label %.lr.ph15, !llvm.loop !251

bb.x:                                             ; preds = %bb.w, %bb.e
  %.sink = phi ptr [ %i.dp, %bb.w ], [ %i.m, %bb.e ]
  %.pn70 = phi { ptr, i32 } [ %i.dq, %bb.w ], [ %i.n, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #25
  resume { ptr, i32 } %.pn70
}

declare noundef ptr @_ZNK7Imf_3_415DeepFrameBuffer9findSliceEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #4

declare i32 @exr_decoding_update(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN13IlmThread_3_49Semaphore4postEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN7Imf_3_421DeepScanLineInputFile4DataESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN7Imf_3_421DeepScanLineInputFile4DataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7Imf_3_49DeepSliceESaIS1_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIN7Imf_3_49DeepSliceESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN7Imf_3_49DeepSliceESaIS1_EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !146
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef %i.j)
          to label %_ZSt8_DestroyIN7Imf_3_421DeepScanLineInputFile4DataEEvPT_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7Imf_3_49DeepSliceESaIS1_EED2Ev.exit.i.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #28
  unreachable

_ZSt8_DestroyIN7Imf_3_421DeepScanLineInputFile4DataEEvPT_.exit: ; preds = %_ZNSt6vectorIN7Imf_3_49DeepSliceESaIS1_EED2Ev.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN7Imf_3_46HeaderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.m) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN7Imf_3_421DeepScanLineInputFile4DataESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7Imf_3_421DeepScanLineInputFile4DataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7Imf_3_421DeepScanLineInputFile4DataESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !258  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
