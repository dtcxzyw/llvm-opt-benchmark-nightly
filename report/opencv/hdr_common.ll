Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hdr_common?download=true
inline.NumInlined: 151
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !41
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.d, ptr %i.a, align 8, !tbaa !26
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !15
  %i.g = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.g, ptr %i.b, align 8, !tbaa !16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.i, ptr %i.h, align 1, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !42
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv15triangleWeightsEi(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv15triangleWeightsEi, ptr noundef nonnull @.str.1, i32 noundef 65) #14
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !16
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, i32 noundef 1, i32 noundef 5)
  %i.h = lshr i32 %1, 1                           ; 2 uses
  %i.i = add nsw i32 %1, -1                       ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27
  %i.l = icmp slt i32 %i.k, 2                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 5 uses
  store float f0x358637BD, ptr %i.n, align 4, !tbaa !30
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %0, align 8, !tbaa !24
  %i.p = and i32 %i.o, 16384
  %i.q = icmp ne i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 1
  %or.cond.i28 = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond.i28, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.u = zext nneg i32 %i.i to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.u
  br label %_ZN2cv3Mat2atIfEERT_i.exit30

bb.h:                                             ; preds = %bb.f
  %i.w = zext nneg i32 %i.i to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.w
  br label %_ZN2cv3Mat2atIfEERT_i.exit30

bb.i:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.ad = zext nneg i32 %i.i to i64
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ae
  br label %_ZN2cv3Mat2atIfEERT_i.exit30

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !23 ; 3 uses
  %i.ai = sdiv i32 %i.i, %i.ah                    ; 2 uses
  %i.aj = mul nsw i32 %i.ai, %i.ah                ; 0 uses
  %.recomposed = srem i32 %i.i, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !26
  %i.am = sext i32 %i.ai to i64
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.an
  %i.ap = sext i32 %.recomposed to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  br label %_ZN2cv3Mat2atIfEERT_i.exit30

_ZN2cv3Mat2atIfEERT_i.exit30:                     ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %.0.i29 = phi ptr [ %i.v, %bb.g ], [ %i.x, %bb.h ], [ %i.af, %bb.j ], [ %i.aq, %bb.k ]
  store float f0x358637BD, ptr %.0.i29, align 4, !tbaa !30
  %.not = icmp eq i32 %1, 2
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cv3Mat2atIfEERT_i.exit30
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.at = load i32, ptr %i.as, align 8
  %.fr45 = freeze i32 %i.at
  %i.au = icmp eq i32 %.fr45, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aw = load i32, ptr %i.av, align 4            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8            ; 12 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ba = load i64, ptr %i.az, align 8            ; 4 uses
  br i1 %i.l, label %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader, label %.lr.ph.split

_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader:        ; preds = %.lr.ph
  %i.bb = zext nneg i32 %i.h to i64               ; 2 uses
  %wide.trip.count66 = zext nneg i32 %i.i to i64  ; 2 uses
  %i.bc = add nsw i64 %wide.trip.count66, -1      ; 3 uses
  %min.iters.check86 = icmp ult i64 %i.bc, 4
  br i1 %min.iters.check86, label %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader105, label %vector.ph87

vector.ph87:                                      ; preds = %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader
  %n.vec88 = and i64 %i.bc, -4                    ; 3 uses
  %i.bd = or disjoint i64 %n.vec88, 1
  %broadcast.splatinsert89.a = insertelement <4 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat90.a = shufflevector <4 x i64> %broadcast.splatinsert89.a, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat92 = shufflevector <4 x i32> %broadcast.splatinsert91, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph87
  %index94 = phi i64 [ 0, %vector.ph87 ], [ %index.next98, %vector.body93 ] ; 2 uses
  %vec.ind95 = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph87 ], [ %vec.ind.next99, %vector.body93 ] ; 2 uses
  %vec.ind96 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph87 ], [ %vec.ind.next100, %vector.body93 ] ; 2 uses
  %vec.ind97 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph87 ], [ %vec.ind.next101, %vector.body93 ] ; 2 uses
  %i.be = icmp samesign ult <4 x i64> %vec.ind95, %broadcast.splat90.a
  %i.bf = sub <4 x i32> %broadcast.splat92, %vec.ind97
  %i.bg = select <4 x i1> %i.be, <4 x i32> %vec.ind96, <4 x i32> %i.bf
  %i.bh = uitofp <4 x i32> %i.bg to <4 x float>
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index94
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store <4 x float> %i.bh, ptr %i.bj, align 4, !tbaa !30
  %index.next98 = add nuw i64 %index94, 4         ; 2 uses
  %vec.ind.next99 = add nuw nsw <4 x i64> %vec.ind95, splat (i64 4)
  %vec.ind.next100 = add <4 x i32> %vec.ind96, splat (i32 4)
  %vec.ind.next101 = add <4 x i32> %vec.ind97, splat (i32 4)
  %i.bk = icmp eq i64 %index.next98, %n.vec88
  br i1 %i.bk, label %middle.block102, label %vector.body93, !llvm.loop !43

middle.block102:                                  ; preds = %vector.body93
  %cmp.n103 = icmp eq i64 %i.bc, %n.vec88
  br i1 %cmp.n103, label %._crit_edge, label %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader105

_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader105:     ; preds = %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader, %middle.block102
  %indvars.iv62.ph = phi i64 [ 1, %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader ], [ %i.bd, %middle.block102 ]
  br label %_ZN2cv3Mat2atIfEERT_i.exit33.us

_ZN2cv3Mat2atIfEERT_i.exit33.us:                  ; preds = %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader105, %_ZN2cv3Mat2atIfEERT_i.exit33.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %_ZN2cv3Mat2atIfEERT_i.exit33.us ], [ %indvars.iv62.ph, %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader105 ] ; 5 uses
  %i.bl = icmp samesign ult i64 %indvars.iv62, %i.bb
  %i.bm = trunc nuw nsw i64 %indvars.iv62 to i32
  %i.bn = trunc i64 %indvars.iv62 to i32
  %i.bo = sub i32 %i.i, %i.bn
  %.v72 = select i1 %i.bl, i32 %i.bm, i32 %i.bo
  %i.bp = uitofp i32 %.v72 to float
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv62
  store float %i.bp, ptr %i.bq, align 4, !tbaa !30
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge, label %_ZN2cv3Mat2atIfEERT_i.exit33.us, !llvm.loop !44

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.br = load i32, ptr %0, align 8
  %.fr = freeze i32 %i.br
  %i.bs = and i32 %.fr, 16384
  %.not44 = icmp eq i32 %i.bs, 0
  %i.bt = zext nneg i32 %i.h to i64               ; 6 uses
  %wide.trip.count60 = zext i32 %i.i to i64       ; 4 uses
  br i1 %.not44, label %.lr.ph.split.split, label %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader

_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader:      ; preds = %.lr.ph.split
  %i.bu = add nsw i64 %wide.trip.count60, -1      ; 3 uses
  %min.iters.check = icmp ult i64 %i.bu, 4
  br i1 %min.iters.check, label %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader108, label %vector.ph

vector.ph:                                        ; preds = %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader
  %n.vec = and i64 %i.bu, -4                      ; 3 uses
  %i.bv = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.bt, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat80 = shufflevector <4 x i32> %broadcast.splatinsert79, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind81 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next83, %vector.body ] ; 2 uses
  %vec.ind82 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next84, %vector.body ] ; 2 uses
  %i.bw = icmp samesign ult <4 x i64> %vec.ind, %broadcast.splat
  %i.bx = sub <4 x i32> %broadcast.splat80, %vec.ind82
  %i.by = select <4 x i1> %i.bw, <4 x i32> %vec.ind81, <4 x i32> %i.bx
  %i.bz = uitofp <4 x i32> %i.by to <4 x float>
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store <4 x float> %i.bz, ptr %i.cb, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next83 = add <4 x i32> %vec.ind81, splat (i32 4)
  %vec.ind.next84 = add <4 x i32> %vec.ind82, splat (i32 4)
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader108

_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader108:   ; preds = %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader ], [ %i.bv, %middle.block ]
  br label %_ZN2cv3Mat2atIfEERT_i.exit33.us37

_ZN2cv3Mat2atIfEERT_i.exit33.us37:                ; preds = %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader108, %_ZN2cv3Mat2atIfEERT_i.exit33.us37
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cv3Mat2atIfEERT_i.exit33.us37 ], [ %indvars.iv.ph, %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader108 ] ; 5 uses
  %i.cd = icmp samesign ult i64 %indvars.iv, %i.bt
  %i.ce = trunc nuw nsw i64 %indvars.iv to i32
  %i.cf = trunc i64 %indvars.iv to i32
  %i.cg = sub i32 %i.i, %i.cf
  %.v = select i1 %i.cd, i32 %i.ce, i32 %i.cg
  %i.ch = uitofp i32 %.v to float
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  store float %i.ch, ptr %i.ci, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count60
  br i1 %exitcond.not, label %._crit_edge, label %_ZN2cv3Mat2atIfEERT_i.exit33.us37, !llvm.loop !46

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.au, label %.lr.ph.split.split.split.us.preheader, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us.preheader:            ; preds = %.lr.ph.split.split
  %i.cj = add nsw i64 %wide.trip.count60, -1      ; 3 uses
  %xtraiter = and i64 %i.cj, 1
  %i.ck = icmp eq i32 %i.i, 2
  br i1 %i.ck, label %.lr.ph.split.split.split.us.epil.preheader, label %.lr.ph.split.split.split.us.preheader.new

.lr.ph.split.split.split.us.preheader.new:        ; preds = %.lr.ph.split.split.split.us.preheader
  %unroll_iter = and i64 %i.cj, -2
  br label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split.split.us, %.lr.ph.split.split.split.us.preheader.new
  %indvars.iv56 = phi i64 [ 1, %.lr.ph.split.split.split.us.preheader.new ], [ %indvars.iv.next57.1, %.lr.ph.split.split.split.us ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader.new ], [ %niter.next.1, %.lr.ph.split.split.split.us ]
  %i.cl = icmp samesign ult i64 %indvars.iv56, %i.bt
  %i.cm = trunc nuw nsw i64 %indvars.iv56 to i32
  %i.cn = trunc i64 %indvars.iv56 to i32
  %i.co = sub i32 %i.i, %i.cn
  %.v71 = select i1 %i.cl, i32 %i.cm, i32 %i.co
  %i.cp = uitofp i32 %.v71 to float
  %i.cq = load i32, ptr %i.ar, align 4
  %i.cr = icmp eq i32 %i.cq, 1
  %i.cs = mul i64 %i.ba, %indvars.iv56
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv56
  %.0.i32.us41 = select i1 %i.cr, ptr %i.cu, ptr %i.ct
  store float %i.cp, ptr %.0.i32.us41, align 4, !tbaa !30
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 5 uses
  %i.cv = icmp samesign ult i64 %indvars.iv.next57, %i.bt
  %i.cw = trunc nuw nsw i64 %indvars.iv.next57 to i32
  %i.cx = trunc i64 %indvars.iv.next57 to i32
  %i.cy = sub i32 %i.i, %i.cx
  %.v71.1 = select i1 %i.cv, i32 %i.cw, i32 %i.cy
  %i.cz = uitofp i32 %.v71.1 to float
  %i.da = load i32, ptr %i.ar, align 4
  %i.db = icmp eq i32 %i.da, 1
  %i.dc = mul i64 %i.ba, %indvars.iv.next57
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next57
  %.0.i32.us41.1 = select i1 %i.db, ptr %i.de, ptr %i.dd
  store float %i.cz, ptr %.0.i32.us41.1, align 4, !tbaa !30
  %indvars.iv.next57.1 = add nuw nsw i64 %indvars.iv56, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit106.unr-lcssa, label %.lr.ph.split.split.split.us, !llvm.loop !47

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %_ZN2cv3Mat2atIfEERT_i.exit33
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %_ZN2cv3Mat2atIfEERT_i.exit33 ], [ 1, %.lr.ph.split.split ] ; 5 uses
  %i.df = icmp samesign ult i64 %indvars.iv50, %i.bt
  %i.dg = trunc nuw nsw i64 %indvars.iv50 to i32  ; 3 uses
  %i.dh = trunc i64 %indvars.iv50 to i32
  %i.di = sub i32 %i.i, %i.dh
  %.v70 = select i1 %i.df, i32 %i.dg, i32 %i.di
  %i.dj = uitofp i32 %.v70 to float
  %i.dk = load i32, ptr %i.ar, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split.split.split
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv50
  br label %_ZN2cv3Mat2atIfEERT_i.exit33

bb.m:                                             ; preds = %.lr.ph.split.split.split
  %i.dn = sdiv i32 %i.dg, %i.aw                   ; 2 uses
  %i.do = mul nsw i32 %i.dn, %i.aw                ; 0 uses
  %.recomposed111 = srem i32 %i.dg, %i.aw
  %i.dp = sext i32 %i.dn to i64
  %i.dq = mul i64 %i.ba, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.dq
  %i.ds = sext i32 %.recomposed111 to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.ds
  br label %_ZN2cv3Mat2atIfEERT_i.exit33

_ZN2cv3Mat2atIfEERT_i.exit33:                     ; preds = %bb.m, %bb.l
  %.0.i32 = phi ptr [ %i.dt, %bb.m ], [ %i.dm, %bb.l ]
  store float %i.dj, ptr %.0.i32, align 4, !tbaa !30
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count60
  br i1 %exitcond55.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !47

._crit_edge.loopexit106.unr-lcssa:                ; preds = %.lr.ph.split.split.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.split.split.us.epil.preheader

.lr.ph.split.split.split.us.epil.preheader:       ; preds = %._crit_edge.loopexit106.unr-lcssa, %.lr.ph.split.split.split.us.preheader
  %indvars.iv56.epil.init = phi i64 [ 1, %.lr.ph.split.split.split.us.preheader ], [ %indvars.iv.next57.1, %._crit_edge.loopexit106.unr-lcssa ] ; 5 uses
  %lcmp.mod110 = trunc i64 %i.cj to i1
  tail call void @llvm.assume(i1 %lcmp.mod110)
  %i.du = icmp samesign ult i64 %indvars.iv56.epil.init, %i.bt
  %i.dv = trunc nuw nsw i64 %indvars.iv56.epil.init to i32
  %i.dw = trunc i64 %indvars.iv56.epil.init to i32
  %i.dx = sub i32 %i.i, %i.dw
  %.v71.epil = select i1 %i.du, i32 %i.dv, i32 %i.dx
  %i.dy = uitofp i32 %.v71.epil to float
  %i.dz = load i32, ptr %i.ar, align 4
  %i.ea = icmp eq i32 %i.dz, 1
  %i.eb = mul i64 %i.ba, %indvars.iv56.epil.init
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv56.epil.init
  %.0.i32.us41.epil = select i1 %i.ea, ptr %i.ed, ptr %i.ec
  store float %i.dy, ptr %.0.i32.us41.epil, align 4, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2cv3Mat2atIfEERT_i.exit33.us37, %_ZN2cv3Mat2atIfEERT_i.exit33, %.lr.ph.split.split.split.us.epil.preheader, %._crit_edge.loopexit106.unr-lcssa, %_ZN2cv3Mat2atIfEERT_i.exit33.us, %middle.block, %middle.block102, %_ZN2cv3Mat2atIfEERT_i.exit30
  ret void
}

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv16RobertsonWeightsEi(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv16RobertsonWeightsEi, ptr noundef nonnull @.str.1, i32 noundef 82) #14
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !16
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, i32 noundef 1, i32 noundef 69)
  %i.h = add nsw i32 %1, -1
  %i.i = uitofp nneg i32 %i.h to float
  %i.j = fmul nnan float %i.i, 2.500000e-01
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit ] ; 5 uses
  %i.q = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.r = uitofp nneg i32 %i.q to float
  %i.s = fdiv float %i.r, %i.j
  %i.t = fadd float %i.s, -2.000000e+00           ; 2 uses
  %i.u = fneg float %i.t
  %i.v = fmul float %i.t, %i.u
  %i.w = tail call noundef float @expf(float noundef %i.v) #13
end_hunk_0
