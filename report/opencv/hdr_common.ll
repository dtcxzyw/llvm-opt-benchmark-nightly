Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hdr_common?download=true
inline.NumInlined: 151
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@llvm.lifetime.start.p0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !28
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.d, ptr %i.a, align 8, !tbaa !29
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !11
  %i.g = load i64, ptr %i.a, align 8, !tbaa !29
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
  %i.j = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !30
  %i.l = load ptr, ptr %0, align 8, !tbaa !11
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
  %i.c = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
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
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31
  %i.l = icmp slt i32 %i.k, 2                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 5 uses
  store float f0x358637BD, ptr %i.n, align 4, !tbaa !33
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %0, align 8, !tbaa !25
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
  %i.z = load i32, ptr %i.y, align 8, !tbaa !35
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !29
  %i.ad = zext nneg i32 %i.i to i64
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ae
  br label %_ZN2cv3Mat2atIfEERT_i.exit30

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !17 ; 3 uses
  %i.ai = sdiv i32 %i.i, %i.ah                    ; 2 uses
  %i.aj = mul nsw i32 %i.ai, %i.ah                ; 0 uses
  %.recomposed = srem i32 %i.i, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !29
  %i.am = sext i32 %i.ai to i64
  %i.an = mul i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.an
  %i.ap = sext i32 %.recomposed to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  br label %_ZN2cv3Mat2atIfEERT_i.exit30

_ZN2cv3Mat2atIfEERT_i.exit30:                     ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %.0.i29 = phi ptr [ %i.v, %bb.g ], [ %i.x, %bb.h ], [ %i.af, %bb.j ], [ %i.aq, %bb.k ]
  store float f0x358637BD, ptr %.0.i29, align 4, !tbaa !33
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
  %min.iters.check83 = icmp ult i64 %i.bc, 4
  br i1 %min.iters.check83, label %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader102, label %vector.ph84

vector.ph84:                                      ; preds = %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader
  %n.vec85 = and i64 %i.bc, -4                    ; 3 uses
  %i.bd = or disjoint i64 %n.vec85, 1
  %broadcast.splatinsert86 = insertelement <4 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat87 = shufflevector <4 x i64> %broadcast.splatinsert86, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat89 = shufflevector <4 x i32> %broadcast.splatinsert88, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph84
  %index91 = phi i64 [ 0, %vector.ph84 ], [ %index.next95, %vector.body90 ] ; 2 uses
  %vec.ind92 = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph84 ], [ %vec.ind.next96, %vector.body90 ] ; 2 uses
  %vec.ind93 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph84 ], [ %vec.ind.next97, %vector.body90 ] ; 2 uses
  %vec.ind94 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph84 ], [ %vec.ind.next98, %vector.body90 ] ; 2 uses
  %i.be = icmp samesign ult <4 x i64> %vec.ind92, %broadcast.splat87
  %4 = uitofp nneg <4 x i32> %vec.ind93 to <4 x float>
  %i.bf = sub <4 x i32> %broadcast.splat89, %vec.ind94
  %5 = sitofp <4 x i32> %i.bf to <4 x float>
  %6 = select <4 x i1> %i.be, <4 x float> %4, <4 x float> %5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index91
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store <4 x float> %6, ptr %i.bh, align 4, !tbaa !33
  %index.next95 = add nuw i64 %index91, 4         ; 2 uses
  %vec.ind.next96 = add nuw nsw <4 x i64> %vec.ind92, splat (i64 4)
  %vec.ind.next97 = add <4 x i32> %vec.ind93, splat (i32 4)
  %vec.ind.next98 = add <4 x i32> %vec.ind94, splat (i32 4)
  %i.bi = icmp eq i64 %index.next95, %n.vec85
  br i1 %i.bi, label %middle.block99, label %vector.body90, !llvm.loop !36

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.bc, %n.vec85
  br i1 %cmp.n100, label %._crit_edge, label %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader102

_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader102:     ; preds = %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader, %middle.block99
  %indvars.iv62.ph = phi i64 [ 1, %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader ], [ %i.bd, %middle.block99 ]
  br label %_ZN2cv3Mat2atIfEERT_i.exit33.us

_ZN2cv3Mat2atIfEERT_i.exit33.us:                  ; preds = %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader102, %_ZN2cv3Mat2atIfEERT_i.exit33.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %_ZN2cv3Mat2atIfEERT_i.exit33.us ], [ %indvars.iv62.ph, %_ZN2cv3Mat2atIfEERT_i.exit33.us.preheader102 ] ; 5 uses
  %i.bj = icmp samesign ult i64 %indvars.iv62, %i.bb
  %i.bk = trunc nuw nsw i64 %indvars.iv62 to i32
  %7 = uitofp nneg i32 %i.bk to float
  %i.bl = trunc i64 %indvars.iv62 to i32
  %i.bm = sub i32 %i.i, %i.bl
  %8 = sitofp i32 %i.bm to float
  %9 = select i1 %i.bj, float %7, float %8
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv62
  store float %9, ptr %i.bn, align 4, !tbaa !33
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge, label %_ZN2cv3Mat2atIfEERT_i.exit33.us, !llvm.loop !39

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bo = load i32, ptr %0, align 8
  %.fr = freeze i32 %i.bo
  %i.bp = and i32 %.fr, 16384
  %.not44 = icmp eq i32 %i.bp, 0
  %i.bq = zext nneg i32 %i.h to i64               ; 6 uses
  %wide.trip.count60 = zext i32 %i.i to i64       ; 4 uses
  br i1 %.not44, label %.lr.ph.split.split, label %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader

_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader:      ; preds = %.lr.ph.split
  %i.br = add nsw i64 %wide.trip.count60, -1      ; 3 uses
  %min.iters.check = icmp ult i64 %i.br, 4
  br i1 %min.iters.check, label %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader105, label %vector.ph

vector.ph:                                        ; preds = %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader
  %n.vec = and i64 %i.br, -4                      ; 3 uses
  %i.bs = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.bq, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert76 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat77 = shufflevector <4 x i32> %broadcast.splatinsert76, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind78 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next80, %vector.body ] ; 2 uses
  %vec.ind79 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next81, %vector.body ] ; 2 uses
  %i.bt = icmp samesign ult <4 x i64> %vec.ind, %broadcast.splat
  %10 = uitofp nneg <4 x i32> %vec.ind78 to <4 x float>
  %i.bu = sub <4 x i32> %broadcast.splat77, %vec.ind79
  %11 = sitofp <4 x i32> %i.bu to <4 x float>
  %12 = select <4 x i1> %i.bt, <4 x float> %10, <4 x float> %11
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store <4 x float> %12, ptr %i.bw, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next80 = add <4 x i32> %vec.ind78, splat (i32 4)
  %vec.ind.next81 = add <4 x i32> %vec.ind79, splat (i32 4)
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader105

_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader105:   ; preds = %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader ], [ %i.bs, %middle.block ]
  br label %_ZN2cv3Mat2atIfEERT_i.exit33.us37

_ZN2cv3Mat2atIfEERT_i.exit33.us37:                ; preds = %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader105, %_ZN2cv3Mat2atIfEERT_i.exit33.us37
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cv3Mat2atIfEERT_i.exit33.us37 ], [ %indvars.iv.ph, %_ZN2cv3Mat2atIfEERT_i.exit33.us37.preheader105 ] ; 5 uses
  %i.by = icmp samesign ult i64 %indvars.iv, %i.bq
  %i.bz = trunc nuw nsw i64 %indvars.iv to i32
  %13 = uitofp nneg i32 %i.bz to float
  %i.ca = trunc i64 %indvars.iv to i32
  %i.cb = sub i32 %i.i, %i.ca
  %14 = sitofp i32 %i.cb to float
  %15 = select i1 %i.by, float %13, float %14
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  store float %15, ptr %i.cc, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count60
  br i1 %exitcond.not, label %._crit_edge, label %_ZN2cv3Mat2atIfEERT_i.exit33.us37, !llvm.loop !41

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.au, label %.lr.ph.split.split.split.us.preheader, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us.preheader:            ; preds = %.lr.ph.split.split
  %i.cd = add nsw i64 %wide.trip.count60, -1      ; 3 uses
  %xtraiter = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.i, 2
  br i1 %i.ce, label %.lr.ph.split.split.split.us.epil.preheader, label %.lr.ph.split.split.split.us.preheader.new

.lr.ph.split.split.split.us.preheader.new:        ; preds = %.lr.ph.split.split.split.us.preheader
  %unroll_iter = and i64 %i.cd, -2
  br label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split.split.us, %.lr.ph.split.split.split.us.preheader.new
  %indvars.iv56 = phi i64 [ 1, %.lr.ph.split.split.split.us.preheader.new ], [ %indvars.iv.next57.1, %.lr.ph.split.split.split.us ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader.new ], [ %niter.next.1, %.lr.ph.split.split.split.us ]
  %i.cf = icmp samesign ult i64 %indvars.iv56, %i.bq
  %i.cg = trunc nuw nsw i64 %indvars.iv56 to i32
  %16 = uitofp nneg i32 %i.cg to float
  %i.ch = trunc i64 %indvars.iv56 to i32
  %i.ci = sub i32 %i.i, %i.ch
  %17 = sitofp i32 %i.ci to float
  %18 = select i1 %i.cf, float %16, float %17
  %i.cj = load i32, ptr %i.ar, align 4
  %i.ck = icmp eq i32 %i.cj, 1
  %i.cl = mul i64 %i.ba, %indvars.iv56
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv56
  %.0.i32.us41 = select i1 %i.ck, ptr %i.cn, ptr %i.cm
  store float %18, ptr %.0.i32.us41, align 4, !tbaa !33
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 5 uses
  %i.co = icmp samesign ult i64 %indvars.iv.next57, %i.bq
  %i.cp = trunc nuw nsw i64 %indvars.iv.next57 to i32
  %19 = uitofp nneg i32 %i.cp to float
  %i.cq = trunc i64 %indvars.iv.next57 to i32
  %i.cr = sub i32 %i.i, %i.cq
  %20 = sitofp i32 %i.cr to float
  %21 = select i1 %i.co, float %19, float %20
  %i.cs = load i32, ptr %i.ar, align 4
  %i.ct = icmp eq i32 %i.cs, 1
  %i.cu = mul i64 %i.ba, %indvars.iv.next57
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next57
  %.0.i32.us41.1 = select i1 %i.ct, ptr %i.cw, ptr %i.cv
  store float %21, ptr %.0.i32.us41.1, align 4, !tbaa !33
  %indvars.iv.next57.1 = add nuw nsw i64 %indvars.iv56, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit103.unr-lcssa, label %.lr.ph.split.split.split.us, !llvm.loop !42

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %_ZN2cv3Mat2atIfEERT_i.exit33
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %_ZN2cv3Mat2atIfEERT_i.exit33 ], [ 1, %.lr.ph.split.split ] ; 5 uses
  %i.cx = icmp samesign ult i64 %indvars.iv50, %i.bq
  %i.cy = trunc nuw nsw i64 %indvars.iv50 to i32  ; 3 uses
  %22 = uitofp nneg i32 %i.cy to float
  %i.cz = trunc i64 %indvars.iv50 to i32
  %i.da = sub i32 %i.i, %i.cz
  %23 = sitofp i32 %i.da to float
  %24 = select i1 %i.cx, float %22, float %23
  %i.db = load i32, ptr %i.ar, align 4
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split.split.split
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv50
  br label %_ZN2cv3Mat2atIfEERT_i.exit33

bb.m:                                             ; preds = %.lr.ph.split.split.split
  %i.de = sdiv i32 %i.cy, %i.aw                   ; 2 uses
  %i.df = mul nsw i32 %i.de, %i.aw                ; 0 uses
  %.recomposed108 = srem i32 %i.cy, %i.aw
  %i.dg = sext i32 %i.de to i64
  %i.dh = mul i64 %i.ba, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.dh
  %i.dj = sext i32 %.recomposed108 to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dj
  br label %_ZN2cv3Mat2atIfEERT_i.exit33

_ZN2cv3Mat2atIfEERT_i.exit33:                     ; preds = %bb.m, %bb.l
  %.0.i32 = phi ptr [ %i.dk, %bb.m ], [ %i.dd, %bb.l ]
  store float %24, ptr %.0.i32, align 4, !tbaa !33
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count60
  br i1 %exitcond55.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !42

._crit_edge.loopexit103.unr-lcssa:                ; preds = %.lr.ph.split.split.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.split.split.us.epil.preheader

.lr.ph.split.split.split.us.epil.preheader:       ; preds = %._crit_edge.loopexit103.unr-lcssa, %.lr.ph.split.split.split.us.preheader
  %indvars.iv56.epil.init = phi i64 [ 1, %.lr.ph.split.split.split.us.preheader ], [ %indvars.iv.next57.1, %._crit_edge.loopexit103.unr-lcssa ] ; 5 uses
  %lcmp.mod107 = trunc i64 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.dl = icmp samesign ult i64 %indvars.iv56.epil.init, %i.bq
  %i.dm = trunc nuw nsw i64 %indvars.iv56.epil.init to i32
  %25 = uitofp nneg i32 %i.dm to float
  %i.dn = trunc i64 %indvars.iv56.epil.init to i32
  %i.do = sub i32 %i.i, %i.dn
  %26 = sitofp i32 %i.do to float
  %27 = select i1 %i.dl, float %25, float %26
  %i.dp = load i32, ptr %i.ar, align 4
  %i.dq = icmp eq i32 %i.dp, 1
  %i.dr = mul i64 %i.ba, %indvars.iv56.epil.init
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv56.epil.init
  %.0.i32.us41.epil = select i1 %i.dq, ptr %i.dt, ptr %i.ds
  store float %27, ptr %.0.i32.us41.epil, align 4, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2cv3Mat2atIfEERT_i.exit33.us37, %_ZN2cv3Mat2atIfEERT_i.exit33, %.lr.ph.split.split.split.us.epil.preheader, %._crit_edge.loopexit103.unr-lcssa, %_ZN2cv3Mat2atIfEERT_i.exit33.us, %middle.block, %middle.block99, %_ZN2cv3Mat2atIfEERT_i.exit30
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
  %i.c = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
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
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float f0x3F82635D, float f0xBC98D752) ; 3 uses
  %i.y = load i32, ptr %i.k, align 4, !tbaa !31
  %i.z = icmp slt i32 %i.y, 2
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %indvars.iv
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %0, align 8, !tbaa !25
  %i.ad = and i32 %i.ac, 16384
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = load i32, ptr %i.l, align 4
  %i.ag = icmp eq i32 %i.af, 1
  %or.cond.i = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %indvars.iv
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %i.m, align 8, !tbaa !35
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.am = load i64, ptr %i.p, align 8, !tbaa !29
  %i.an = mul i64 %i.am, %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit

bb.l:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.n, align 4, !tbaa !17  ; 3 uses
  %i.aq = sdiv i32 %i.q, %i.ap                    ; 2 uses
  %i.ar = mul nsw i32 %i.aq, %i.ap                ; 0 uses
  %.recomposed = srem i32 %i.q, %i.ap
  %i.as = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.at = load i64, ptr %i.p, align 8, !tbaa !29
  %i.au = sext i32 %i.aq to i64
  %i.av = mul i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  %i.ax = sext i32 %.recomposed to i64
  %i.ay = getelementptr inbounds [12 x i8], ptr %i.aw, i64 %i.ax
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit

_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit:         ; preds = %bb.g, %bb.i, %bb.k, %bb.l
  %.0.i = phi ptr [ %i.ab, %bb.g ], [ %i.ai, %bb.i ], [ %i.ao, %bb.k ], [ %i.ay, %bb.l ] ; 3 uses
  store float %i.x, ptr %.0.i, align 4
  %.sroa.5.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store float %i.x, ptr %.sroa.5.0..0.i.sroa_idx, align 4
  %.sroa.6.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store float %i.x, ptr %.sroa.6.0..0.i.sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.m, label %bb.f, !llvm.loop !43

bb.m:                                             ; preds = %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv12mapLuminanceENS_3MatES0_S0_S0_f(ptr noundef align 8 %0, ptr noundef align 8 %1, ptr noundef align 8 %2, ptr noundef align 8 %3, float noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.noexc:
  %5 = alloca %"class.std::vector", align 8       ; 26 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.cv::MatExpr", align 8       ; 20 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 13 uses
  %10 = alloca %"class.cv::MatExpr", align 8      ; 17 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 16 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 15 uses
  %13 = alloca %"class.cv::MatExpr", align 8      ; 20 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 16 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = tail call noalias noundef nonnull dereferenceable(624) ptr @_Znwm(i64 noundef 624) #16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !46
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.a) #13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.e) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store ptr %i.g, ptr %i.b, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !50
  store i32 16842752, ptr %6, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.j, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.l, align 8
  store i32 33882112, ptr %7, align 8, !tbaa !51
  store ptr %5, ptr %i.k, align 8, !tbaa !53
  invoke void @_ZN2cv5splitERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 432 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 224 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 432 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 224 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
end_hunk_0
