Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rgbe?download=true
inline.NumInlined: 115
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z20RGBE_WritePixels_RLEP8_IO_FILEPfii:bb.a
  %i.dg = add nsw i32 %spec.store.select.i, %.277.i ; 3 uses
  %i.dh = icmp slt i32 %i.dg, %i.bu
  br i1 %i.dh, label %.lr.ph78.i, label %._crit_edge.i, !llvm.loop !38

.lr.ph78.i:                                       ; preds = %bb.t, %bb.u
  %.277.i = phi i32 [ %i.dg, %bb.u ], [ %.05180.i, %bb.t ] ; 3 uses
  %i.di = sub nsw i32 %i.bu, %.277.i
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %i.di, i32 128) ; 3 uses
  %i.dj = trunc nuw i32 %spec.store.select.i to i8
  store i8 %i.dj, ptr %i.d, align 1, !tbaa !19
  %i.dk = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.lr.ph78.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.dm, ptr %5, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 16, ptr %i.b, align 8, !tbaa !16
  %i.dn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc27.i60.i unwind label %bb.x ; 2 uses

.noexc27.i60.i:                                   ; preds = %bb.v
  store ptr %i.dn, ptr %5, align 8, !tbaa !18
  %i.do = load i64, ptr %i.b, align 8, !tbaa !16  ; 3 uses
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.dn, ptr noundef nonnull align 1 dereferenceable(16) @.str.19, i64 16, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !20
  %i.dq = load ptr, ptr %5, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.do
  store i8 0, ptr %i.dr, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZL10rgbe_erroriPKc, ptr noundef nonnull @.str.18, i32 noundef 91) #17
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %.noexc27.i60.i
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i58.i

bb.y:                                             ; preds = %.noexc27.i60.i
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.dm
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i61.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i61.i: ; preds = %bb.y
  %i.dw = load i64, ptr %i.dm, align 8, !tbaa !19
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i58.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i58.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i61.i, %bb.x
  %.pn16.i59.i = phi { ptr, i32 } [ %i.ds, %bb.x ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i61.i ], [ %i.dt, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %common.resume

bb.z:                                             ; preds = %.lr.ph78.i
  %i.dy = sext i32 %.277.i to i64
  %i.dz = getelementptr inbounds i8, ptr %i.bt, i64 %i.dy
  %i.ea = sext i32 %spec.store.select.i to i64
  %i.eb = tail call i64 @fwrite(ptr noundef nonnull readonly %i.dz, i64 noundef %i.ea, i64 noundef 1, ptr noundef %0)
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.aa, label %bb.u

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ed, ptr %4, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 16, ptr %i.a, align 8, !tbaa !16
  %i.ee = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27.i66.i unwind label %bb.ac ; 2 uses

.noexc27.i66.i:                                   ; preds = %bb.aa
  store ptr %i.ee, ptr %4, align 8, !tbaa !18
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !16  ; 3 uses
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ee, ptr noundef nonnull align 1 dereferenceable(16) @.str.19, i64 16, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !20
  %i.eh = load ptr, ptr %4, align 8, !tbaa !18
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef
  store i8 0, ptr %i.ei, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZL10rgbe_erroriPKc, ptr noundef nonnull @.str.18, i32 noundef 91) #17
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %.noexc27.i66.i
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i64.i

bb.ad:                                            ; preds = %.noexc27.i66.i
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ed
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i64.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i67.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i67.i: ; preds = %bb.ad
  %i.en = load i64, ptr %i.ed, align 8, !tbaa !19
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i64.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i64.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i67.i, %bb.ac
  %.pn16.i65.i = phi { ptr, i32 } [ %i.ej, %bb.ac ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i67.i ], [ %i.ek, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %common.resume

._crit_edge.i:                                    ; preds = %bb.u, %bb.t, %bb.o
  %.2.lcssa.i = phi i32 [ %.05180.i, %bb.t ], [ %i.bu, %bb.o ], [ %i.dg, %bb.u ] ; 2 uses
  %i.ep = icmp samesign ugt i32 %.1.lcssa.i, 3
  br i1 %i.ep, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %._crit_edge.i
  %i.eq = trunc i32 %.1.lcssa.i to i8
  %i.er = xor i8 %i.eq, -128
  store i8 %i.er, ptr %i.d, align 1, !tbaa !19
  %i.es = sext i32 %i.bu to i64
  %i.et = getelementptr inbounds i8, ptr %i.bt, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !19
  store i8 %i.eu, ptr %i.w, align 1, !tbaa !19
  %i.ev = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @_ZL10rgbe_erroriPKc(i32 noundef 1, ptr noundef null)
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ex = add nsw i32 %.2.lcssa.i, %.1.lcssa.i
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i
  %.3.i = phi i32 [ %i.ex, %bb.ag ], [ %.2.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ey = icmp slt i32 %.3.i, %2
  br i1 %i.ey, label %.preheader.i, label %_ZL19RGBE_WriteBytes_RLEP8_IO_FILEPhi.exit, !llvm.loop !39

_ZL19RGBE_WriteBytes_RLEP8_IO_FILEPhi.exit:       ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next64, 4
  br i1 %exitcond66.not, label %.loopexit, label %.preheader, !llvm.loop !40

._crit_edge:                                      ; preds = %.loopexit, %.preheader53
  tail call void @free(ptr noundef %i.l) #16
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_Z19RGBE_ReadPixels_RLEP8_IO_FILEPfii(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  %i.b = alloca [2 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = add i32 %2, -32768
  %or.cond = icmp ult i32 %i.c, -32760
  br i1 %or.cond, label %bb.b, label %.preheader108

.preheader108:                                    ; preds = %bb.a
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph168, label %._crit_edge169

.lr.ph168:                                        ; preds = %.preheader108
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 3 uses
  %i.h = shl nuw nsw i32 %2, 2
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 8 uses
  %i.k = shl nuw nsw i32 %2, 1
  %i.l = mul nuw nsw i32 %2, 3
  %i.m = zext nneg i32 %2 to i64                  ; 6 uses
  %i.n = zext nneg i32 %i.k to i64
  %i.o = zext nneg i32 %i.l to i64
  %.not272 = icmp eq i32 %2, 0
  %i.p = shl nuw nsw i64 %i.m, 1
  %i.q = mul nuw nsw i64 %i.m, 3
  %i.r = shl nuw nsw i64 %i.m, 2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = mul nsw i32 %3, %2
  %i.t = tail call noundef i32 @_Z15RGBE_ReadPixelsP8_IO_FILEPfi(ptr noundef %0, ptr noundef %1, i32 noundef %i.s) ; 0 uses
  br label %bb.au

bb.c:                                             ; preds = %.lr.ph168, %._crit_edge
  %.081167 = phi ptr [ null, %.lr.ph168 ], [ %.182274, %._crit_edge ] ; 5 uses
  %.083166 = phi i32 [ %3, %.lr.ph168 ], [ %i.ip, %._crit_edge ] ; 3 uses
  %.085165 = phi ptr [ %1, %.lr.ph168 ], [ %i.io, %._crit_edge ] ; 4 uses
  %i.u = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef %0)
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %.081167) #16
  tail call fastcc void @_ZL10rgbe_erroriPKc(i32 noundef 0, ptr noundef null)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.a, align 1, !tbaa !19    ; 2 uses
  %i.x = icmp ne i8 %i.w, 2
  %i.y = load i8, ptr %i.e, align 1               ; 2 uses
  %i.z = icmp ne i8 %i.y, 2
  %or.cond5 = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.f, align 1, !tbaa !19   ; 2 uses
  %.not = icmp sgt i8 %i.aa, -1
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.lcssa196 = phi i8 [ 2, %bb.f ], [ %i.y, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.085165, i64 8
  %i.ac = load i8, ptr %i.g, align 1, !tbaa !19   ; 2 uses
  %.not.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i, label %_ZL10rgbe2floatPfS_S_Ph.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -136
  %i.af = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.ae) #16
  %i.ag = fptrunc double %i.af to float           ; 2 uses
  %i.ah = uitofp i8 %i.w to float
  %i.ai = fmul float %i.ah, %i.ag
  %i.aj = load i8, ptr %i.f, align 1, !tbaa !19
  %i.ak = insertelement <2 x i8> poison, i8 %i.aj, i64 0
  %i.al = insertelement <2 x i8> %i.ak, i8 %.lcssa196, i64 1
  %i.am = uitofp <2 x i8> %i.al to <2 x float>
  %i.an = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ao, %i.am
  br label %_ZL10rgbe2floatPfS_S_Ph.exit

_ZL10rgbe2floatPfS_S_Ph.exit:                     ; preds = %bb.g, %bb.h
  %.sink = phi float [ %i.ai, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.aq = phi <2 x float> [ %i.ap, %bb.h ], [ zeroinitializer, %bb.g ]
  store <2 x float> %i.aq, ptr %.085165, align 4, !tbaa !21
  store float %.sink, ptr %i.ab, align 4, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.085165, i64 12
  tail call void @free(ptr noundef %.081167) #16
  %i.as = mul nuw nsw i32 %.083166, %2
  %i.at = add nsw i32 %i.as, -1
  %i.au = tail call noundef i32 @_Z15RGBE_ReadPixelsP8_IO_FILEPfi(ptr noundef %0, ptr noundef nonnull %i.ar, i32 noundef %i.at) ; 0 uses
  br label %bb.au

bb.i:                                             ; preds = %bb.f
  %i.av = zext nneg i8 %i.aa to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = load i8, ptr %i.g, align 1, !tbaa !19
  %i.ay = zext i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %.not92 = icmp eq i32 %i.az, %2
  br i1 %.not92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef %.081167) #16
  tail call fastcc void @_ZL10rgbe_erroriPKc(i32 noundef 2, ptr noundef nonnull @.str.14)
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ba = icmp eq ptr %.081167, null
  br i1 %i.ba, label %bb.l, label %.preheader107.preheader

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.i) #20 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.m, label %.preheader107.preheader

.preheader107.preheader:                          ; preds = %bb.k, %bb.l
  %.182274 = phi ptr [ %i.bb, %bb.l ], [ %.081167, %bb.k ] ; 16 uses
  %6 = getelementptr inbounds nuw i8, ptr %.182274, i64 %i.m ; 2 uses
  br i1 %.not272, label %.loopexit105, label %.lr.ph157

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZL10rgbe_erroriPKc(i32 noundef 3, ptr noundef nonnull @.str.15)
  unreachable

.loopexit105:                                     ; preds = %.loopexit, %.preheader107.preheader
  %.180.lcssa = phi ptr [ %.182274, %.preheader107.preheader ], [ %.3, %.loopexit ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.182274, i64 %i.p ; 3 uses
  %i.be = icmp ult ptr %.180.lcssa, %i.bd
  br i1 %i.be, label %.lr.ph157.1, label %.loopexit105.1

.lr.ph157.1:                                      ; preds = %.loopexit105
  %i.bf = ptrtoint ptr %i.bd to i64
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.1, %.lr.ph157.1
  %.180156.1 = phi ptr [ %.180.lcssa, %.lr.ph157.1 ], [ %.3.1, %.loopexit.1 ] ; 13 uses
  %i.bg = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.loopexit218, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = load i8, ptr %i.b, align 1, !tbaa !19   ; 5 uses
  %i.bj = zext i8 %i.bi to i32                    ; 2 uses
  %i.bk = icmp ugt i8 %i.bi, -128
  %i.bl = ptrtoint ptr %.180156.1 to i64
  %i.bm = sub i64 %i.bf, %i.bl                    ; 2 uses
  br i1 %i.bk, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = icmp eq i8 %i.bi, 0
  %i.bo = zext i8 %i.bi to i64
  %i.bp = icmp slt i64 %i.bm, %i.bo
  %or.cond98.1 = or i1 %i.bn, %i.bp
  br i1 %or.cond98.1, label %.loopexit219, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = load i8, ptr %i.j, align 1, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %.180156.1, i64 1 ; 3 uses
  store i8 %i.bq, ptr %.180156.1, align 1, !tbaa !19
  %.not93.1 = icmp eq i8 %i.bi, 1
  br i1 %.not93.1, label %.loopexit.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = add nsw i32 %i.bj, -1
  %i.bt = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bu = tail call i64 @fread(ptr noundef nonnull %i.br, i64 noundef %i.bt, i64 noundef 1, ptr noundef %0)
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.loopexit220, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bt
  br label %.loopexit.1

bb.t:                                             ; preds = %bb.o
  %i.bx = add nsw i32 %i.bj, -128                 ; 6 uses
  %i.by = zext nneg i32 %i.bx to i64              ; 6 uses
  %i.bz = icmp slt i64 %i.bm, %i.by
  br i1 %i.bz, label %.loopexit221, label %iter.check568

iter.check568:                                    ; preds = %bb.t
  %.pre252 = load i8, ptr %i.j, align 1, !tbaa !19 ; 3 uses
  %min.iters.check553 = icmp ult i32 %i.bx, 4
  br i1 %min.iters.check553, label %.lr.ph.1.preheader, label %vector.main.loop.iter.check554

vector.main.loop.iter.check554:                   ; preds = %iter.check568
  %min.iters.check555 = icmp ult i32 %i.bx, 32
  br i1 %min.iters.check555, label %vec.epilog.ph572, label %vector.ph556

vector.ph556:                                     ; preds = %vector.main.loop.iter.check554
  %i.ca = and i64 %i.by, 28
  %n.vec557 = and i64 %i.by, 96                   ; 6 uses
  %i.cb = trunc nuw nsw i64 %n.vec557 to i32
  %i.cc = sub nsw i32 %i.bx, %i.cb
  %i.cd = getelementptr i8, ptr %.180156.1, i64 %n.vec557 ; 2 uses
  %broadcast.splatinsert558 = insertelement <16 x i8> poison, i8 %.pre252, i64 0
  %broadcast.splat559 = shufflevector <16 x i8> %broadcast.splatinsert558, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ce = getelementptr i8, ptr %.180156.1, i64 16
  store <16 x i8> %broadcast.splat559, ptr %.180156.1, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat559, ptr %i.ce, align 1, !tbaa !19
  %i.cf = icmp eq i64 %n.vec557, 32
  br i1 %i.cf, label %middle.block564, label %vector.body560.1

vector.body560.1:                                 ; preds = %vector.ph556
  %next.gep562.1 = getelementptr i8, ptr %.180156.1, i64 32
  %i.cg = getelementptr i8, ptr %.180156.1, i64 48
  store <16 x i8> %broadcast.splat559, ptr %next.gep562.1, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat559, ptr %i.cg, align 1, !tbaa !19
  %i.ch = icmp eq i64 %n.vec557, 64
  br i1 %i.ch, label %middle.block564, label %vector.body560.2

vector.body560.2:                                 ; preds = %vector.body560.1
  %next.gep562.2 = getelementptr i8, ptr %.180156.1, i64 64
  %i.ci = getelementptr i8, ptr %.180156.1, i64 80
  store <16 x i8> %broadcast.splat559, ptr %next.gep562.2, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat559, ptr %i.ci, align 1, !tbaa !19
  br label %middle.block564

middle.block564:                                  ; preds = %vector.body560.2, %vector.body560.1, %vector.ph556
  %cmp.n565 = icmp eq i64 %n.vec557, %i.by
  br i1 %cmp.n565, label %.loopexit.1, label %vec.epilog.iter.check570

vec.epilog.iter.check570:                         ; preds = %middle.block564
  %min.epilog.iters.check571 = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check571, label %.lr.ph.1.preheader, label %vec.epilog.ph572, !prof !52

vec.epilog.ph572:                                 ; preds = %vector.main.loop.iter.check554, %vec.epilog.iter.check570
  %vec.epilog.resume.val566 = phi i64 [ %n.vec557, %vec.epilog.iter.check570 ], [ 0, %vector.main.loop.iter.check554 ]
  %n.vec573 = and i64 %i.by, 124                  ; 4 uses
  %i.cj = trunc nuw nsw i64 %n.vec573 to i32
  %i.ck = sub nsw i32 %i.bx, %i.cj
  %i.cl = getelementptr i8, ptr %.180156.1, i64 %n.vec573 ; 2 uses
  %broadcast.splatinsert574 = insertelement <4 x i8> poison, i8 %.pre252, i64 0
  %broadcast.splat575 = shufflevector <4 x i8> %broadcast.splatinsert574, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body576

vec.epilog.vector.body576:                        ; preds = %vec.epilog.vector.body576, %vec.epilog.ph572
  %index577 = phi i64 [ %vec.epilog.resume.val566, %vec.epilog.ph572 ], [ %index.next579, %vec.epilog.vector.body576 ] ; 2 uses
  %next.gep578 = getelementptr i8, ptr %.180156.1, i64 %index577
  store <4 x i8> %broadcast.splat575, ptr %next.gep578, align 1, !tbaa !19
  %index.next579 = add nuw i64 %index577, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next579, %n.vec573
  br i1 %i.cm, label %vec.epilog.middle.block580, label %vec.epilog.vector.body576, !llvm.loop !41

vec.epilog.middle.block580:                       ; preds = %vec.epilog.vector.body576
  %cmp.n581 = icmp eq i64 %n.vec573, %i.by
  br i1 %cmp.n581, label %.loopexit.1, label %.lr.ph.1.preheader

.lr.ph.1.preheader:                               ; preds = %iter.check568, %vec.epilog.iter.check570, %vec.epilog.middle.block580
  %.0155.1.ph = phi i32 [ %i.bx, %iter.check568 ], [ %i.cc, %vec.epilog.iter.check570 ], [ %i.ck, %vec.epilog.middle.block580 ]
  %.2154.1.ph = phi ptr [ %.180156.1, %iter.check568 ], [ %i.cd, %vec.epilog.iter.check570 ], [ %i.cl, %vec.epilog.middle.block580 ]
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1.preheader, %.lr.ph.1
  %.0155.1 = phi i32 [ %i.cn, %.lr.ph.1 ], [ %.0155.1.ph, %.lr.ph.1.preheader ] ; 2 uses
  %.2154.1 = phi ptr [ %i.co, %.lr.ph.1 ], [ %.2154.1.ph, %.lr.ph.1.preheader ] ; 2 uses
  %i.cn = add nsw i32 %.0155.1, -1
  %i.co = getelementptr inbounds nuw i8, ptr %.2154.1, i64 1 ; 2 uses
  store i8 %.pre252, ptr %.2154.1, align 1, !tbaa !19
  %i.cp = icmp samesign ugt i32 %.0155.1, 1
  br i1 %i.cp, label %.lr.ph.1, label %.loopexit.1, !llvm.loop !42

.loopexit.1:                                      ; preds = %.lr.ph.1, %middle.block564, %vec.epilog.middle.block580, %bb.s, %bb.q
  %.3.1 = phi ptr [ %i.br, %bb.q ], [ %i.bw, %bb.s ], [ %i.cl, %vec.epilog.middle.block580 ], [ %i.cd, %middle.block564 ], [ %i.co, %.lr.ph.1 ] ; 3 uses
  %i.cq = icmp ult ptr %.3.1, %i.bd
  br i1 %i.cq, label %bb.n, label %.loopexit105.1, !llvm.loop !43

.loopexit105.1:                                   ; preds = %.loopexit.1, %.loopexit105
  %.180.lcssa.1 = phi ptr [ %.180.lcssa, %.loopexit105 ], [ %.3.1, %.loopexit.1 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.182274, i64 %i.q ; 3 uses
  %i.cs = icmp ult ptr %.180.lcssa.1, %i.cr
  br i1 %i.cs, label %.lr.ph157.2, label %.loopexit105.2

.lr.ph157.2:                                      ; preds = %.loopexit105.1
  %i.ct = ptrtoint ptr %i.cr to i64
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.2, %.lr.ph157.2
  %.180156.2 = phi ptr [ %.180.lcssa.1, %.lr.ph157.2 ], [ %.3.2, %.loopexit.2 ] ; 13 uses
  %i.cu = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.loopexit218, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = load i8, ptr %i.b, align 1, !tbaa !19   ; 5 uses
  %i.cx = zext i8 %i.cw to i32                    ; 2 uses
  %i.cy = icmp ugt i8 %i.cw, -128
  %i.cz = ptrtoint ptr %.180156.2 to i64
  %i.da = sub i64 %i.ct, %i.cz                    ; 2 uses
  br i1 %i.cy, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = icmp eq i8 %i.cw, 0
  %i.dc = zext i8 %i.cw to i64
  %i.dd = icmp slt i64 %i.da, %i.dc
  %or.cond98.2 = or i1 %i.db, %i.dd
  br i1 %or.cond98.2, label %.loopexit219, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = load i8, ptr %i.j, align 1, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %.180156.2, i64 1 ; 3 uses
  store i8 %i.de, ptr %.180156.2, align 1, !tbaa !19
  %.not93.2 = icmp eq i8 %i.cw, 1
  br i1 %.not93.2, label %.loopexit.2, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = add nsw i32 %i.cx, -1
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = tail call i64 @fread(ptr noundef nonnull %i.df, i64 noundef %i.dh, i64 noundef 1, ptr noundef %0)
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %.loopexit220, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dh
  br label %.loopexit.2

bb.aa:                                            ; preds = %bb.v
  %i.dl = add nsw i32 %i.cx, -128                 ; 6 uses
  %i.dm = zext nneg i32 %i.dl to i64              ; 6 uses
  %i.dn = icmp slt i64 %i.da, %i.dm
  br i1 %i.dn, label %.loopexit221, label %iter.check537

iter.check537:                                    ; preds = %bb.aa
  %.pre253 = load i8, ptr %i.j, align 1, !tbaa !19 ; 3 uses
  %min.iters.check522 = icmp ult i32 %i.dl, 4
  br i1 %min.iters.check522, label %.lr.ph.2.preheader, label %vector.main.loop.iter.check523

vector.main.loop.iter.check523:                   ; preds = %iter.check537
  %min.iters.check524 = icmp ult i32 %i.dl, 32
  br i1 %min.iters.check524, label %vec.epilog.ph541, label %vector.ph525

vector.ph525:                                     ; preds = %vector.main.loop.iter.check523
  %i.do = and i64 %i.dm, 28
  %n.vec526 = and i64 %i.dm, 96                   ; 6 uses
  %i.dp = trunc nuw nsw i64 %n.vec526 to i32
  %i.dq = sub nsw i32 %i.dl, %i.dp
  %i.dr = getelementptr i8, ptr %.180156.2, i64 %n.vec526 ; 2 uses
  %broadcast.splatinsert527 = insertelement <16 x i8> poison, i8 %.pre253, i64 0
  %broadcast.splat528 = shufflevector <16 x i8> %broadcast.splatinsert527, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ds = getelementptr i8, ptr %.180156.2, i64 16
  store <16 x i8> %broadcast.splat528, ptr %.180156.2, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat528, ptr %i.ds, align 1, !tbaa !19
  %i.dt = icmp eq i64 %n.vec526, 32
  br i1 %i.dt, label %middle.block533, label %vector.body529.1

vector.body529.1:                                 ; preds = %vector.ph525
  %next.gep531.1 = getelementptr i8, ptr %.180156.2, i64 32
  %i.du = getelementptr i8, ptr %.180156.2, i64 48
  store <16 x i8> %broadcast.splat528, ptr %next.gep531.1, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat528, ptr %i.du, align 1, !tbaa !19
  %i.dv = icmp eq i64 %n.vec526, 64
  br i1 %i.dv, label %middle.block533, label %vector.body529.2

vector.body529.2:                                 ; preds = %vector.body529.1
  %next.gep531.2 = getelementptr i8, ptr %.180156.2, i64 64
  %i.dw = getelementptr i8, ptr %.180156.2, i64 80
  store <16 x i8> %broadcast.splat528, ptr %next.gep531.2, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat528, ptr %i.dw, align 1, !tbaa !19
  br label %middle.block533

middle.block533:                                  ; preds = %vector.body529.2, %vector.body529.1, %vector.ph525
  %cmp.n534 = icmp eq i64 %n.vec526, %i.dm
  br i1 %cmp.n534, label %.loopexit.2, label %vec.epilog.iter.check539

vec.epilog.iter.check539:                         ; preds = %middle.block533
  %min.epilog.iters.check540 = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check540, label %.lr.ph.2.preheader, label %vec.epilog.ph541, !prof !52

vec.epilog.ph541:                                 ; preds = %vector.main.loop.iter.check523, %vec.epilog.iter.check539
  %vec.epilog.resume.val535 = phi i64 [ %n.vec526, %vec.epilog.iter.check539 ], [ 0, %vector.main.loop.iter.check523 ]
  %n.vec542 = and i64 %i.dm, 124                  ; 4 uses
  %i.dx = trunc nuw nsw i64 %n.vec542 to i32
  %i.dy = sub nsw i32 %i.dl, %i.dx
  %i.dz = getelementptr i8, ptr %.180156.2, i64 %n.vec542 ; 2 uses
  %broadcast.splatinsert543 = insertelement <4 x i8> poison, i8 %.pre253, i64 0
  %broadcast.splat544 = shufflevector <4 x i8> %broadcast.splatinsert543, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body545

vec.epilog.vector.body545:                        ; preds = %vec.epilog.vector.body545, %vec.epilog.ph541
  %index546 = phi i64 [ %vec.epilog.resume.val535, %vec.epilog.ph541 ], [ %index.next548, %vec.epilog.vector.body545 ] ; 2 uses
  %next.gep547 = getelementptr i8, ptr %.180156.2, i64 %index546
  store <4 x i8> %broadcast.splat544, ptr %next.gep547, align 1, !tbaa !19
  %index.next548 = add nuw i64 %index546, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next548, %n.vec542
  br i1 %i.ea, label %vec.epilog.middle.block549, label %vec.epilog.vector.body545, !llvm.loop !44

vec.epilog.middle.block549:                       ; preds = %vec.epilog.vector.body545
  %cmp.n550 = icmp eq i64 %n.vec542, %i.dm
  br i1 %cmp.n550, label %.loopexit.2, label %.lr.ph.2.preheader

.lr.ph.2.preheader:                               ; preds = %iter.check537, %vec.epilog.iter.check539, %vec.epilog.middle.block549
  %.0155.2.ph = phi i32 [ %i.dl, %iter.check537 ], [ %i.dq, %vec.epilog.iter.check539 ], [ %i.dy, %vec.epilog.middle.block549 ]
  %.2154.2.ph = phi ptr [ %.180156.2, %iter.check537 ], [ %i.dr, %vec.epilog.iter.check539 ], [ %i.dz, %vec.epilog.middle.block549 ]
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.2.preheader, %.lr.ph.2
  %.0155.2 = phi i32 [ %i.eb, %.lr.ph.2 ], [ %.0155.2.ph, %.lr.ph.2.preheader ] ; 2 uses
  %.2154.2 = phi ptr [ %i.ec, %.lr.ph.2 ], [ %.2154.2.ph, %.lr.ph.2.preheader ] ; 2 uses
  %i.eb = add nsw i32 %.0155.2, -1
  %i.ec = getelementptr inbounds nuw i8, ptr %.2154.2, i64 1 ; 2 uses
  store i8 %.pre253, ptr %.2154.2, align 1, !tbaa !19
  %i.ed = icmp samesign ugt i32 %.0155.2, 1
  br i1 %i.ed, label %.lr.ph.2, label %.loopexit.2, !llvm.loop !45

.loopexit.2:                                      ; preds = %.lr.ph.2, %middle.block533, %vec.epilog.middle.block549, %bb.z, %bb.x
  %.3.2 = phi ptr [ %i.df, %bb.x ], [ %i.dk, %bb.z ], [ %i.dz, %vec.epilog.middle.block549 ], [ %i.dr, %middle.block533 ], [ %i.ec, %.lr.ph.2 ] ; 3 uses
  %i.ee = icmp ult ptr %.3.2, %i.cr
  br i1 %i.ee, label %bb.u, label %.loopexit105.2, !llvm.loop !43

.loopexit105.2:                                   ; preds = %.loopexit.2, %.loopexit105.1
  %.180.lcssa.2 = phi ptr [ %.180.lcssa.1, %.loopexit105.1 ], [ %.3.2, %.loopexit.2 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.182274, i64 %i.r ; 3 uses
  %i.eg = icmp ult ptr %.180.lcssa.2, %i.ef
  br i1 %i.eg, label %.lr.ph157.3, label %.lr.ph163.preheader

.lr.ph157.3:                                      ; preds = %.loopexit105.2
  %i.eh = ptrtoint ptr %i.ef to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.3, %.lr.ph157.3
  %.180156.3 = phi ptr [ %.180.lcssa.2, %.lr.ph157.3 ], [ %.3.3, %.loopexit.3 ] ; 13 uses
  %i.ei = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %.loopexit218, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ek = load i8, ptr %i.b, align 1, !tbaa !19   ; 5 uses
  %i.el = zext i8 %i.ek to i32                    ; 2 uses
  %i.em = icmp ugt i8 %i.ek, -128
  %i.en = ptrtoint ptr %.180156.3 to i64
  %i.eo = sub i64 %i.eh, %i.en                    ; 2 uses
  br i1 %i.em, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = icmp eq i8 %i.ek, 0
  %i.eq = zext i8 %i.ek to i64
  %i.er = icmp slt i64 %i.eo, %i.eq
  %or.cond98.3 = or i1 %i.ep, %i.er
  br i1 %or.cond98.3, label %.loopexit219, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.es = load i8, ptr %i.j, align 1, !tbaa !19
  %i.et = getelementptr inbounds nuw i8, ptr %.180156.3, i64 1 ; 3 uses
  store i8 %i.es, ptr %.180156.3, align 1, !tbaa !19
  %.not93.3 = icmp eq i8 %i.ek, 1
  br i1 %.not93.3, label %.loopexit.3, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eu = add nsw i32 %i.el, -1
  %i.ev = zext nneg i32 %i.eu to i64              ; 2 uses
  %i.ew = tail call i64 @fread(ptr noundef nonnull %i.et, i64 noundef %i.ev, i64 noundef 1, ptr noundef %0)
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.loopexit220, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ev
  br label %.loopexit.3

bb.ah:                                            ; preds = %bb.ac
  %i.ez = add nsw i32 %i.el, -128                 ; 6 uses
  %i.fa = zext nneg i32 %i.ez to i64              ; 6 uses
  %i.fb = icmp slt i64 %i.eo, %i.fa
  br i1 %i.fb, label %.loopexit221, label %iter.check

iter.check:                                       ; preds = %bb.ah
  %.pre254 = load i8, ptr %i.j, align 1, !tbaa !19 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ez, 4
  br i1 %min.iters.check, label %.lr.ph.3.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check511 = icmp ult i32 %i.ez, 32
  br i1 %min.iters.check511, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fc = and i64 %i.fa, 28
  %n.vec = and i64 %i.fa, 96                      ; 6 uses
  %i.fd = trunc nuw nsw i64 %n.vec to i32
  %i.fe = sub nsw i32 %i.ez, %i.fd
  %i.ff = getelementptr i8, ptr %.180156.3, i64 %n.vec ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.pre254, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.fg = getelementptr i8, ptr %.180156.3, i64 16
  store <16 x i8> %broadcast.splat, ptr %.180156.3, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat, ptr %i.fg, align 1, !tbaa !19
  %i.fh = icmp eq i64 %n.vec, 32
  br i1 %i.fh, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %.180156.3, i64 32
  %i.fi = getelementptr i8, ptr %.180156.3, i64 48
  store <16 x i8> %broadcast.splat, ptr %next.gep.1, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat, ptr %i.fi, align 1, !tbaa !19
  %i.fj = icmp eq i64 %n.vec, 64
  br i1 %i.fj, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %.180156.3, i64 64
  %i.fk = getelementptr i8, ptr %.180156.3, i64 80
  store <16 x i8> %broadcast.splat, ptr %next.gep.2, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat, ptr %i.fk, align 1, !tbaa !19
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.fa
  br i1 %cmp.n, label %.loopexit.3, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.3.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec513 = and i64 %i.fa, 124                  ; 4 uses
  %i.fl = trunc nuw nsw i64 %n.vec513 to i32
  %i.fm = sub nsw i32 %i.ez, %i.fl
  %i.fn = getelementptr i8, ptr %.180156.3, i64 %n.vec513 ; 2 uses
  %broadcast.splatinsert514 = insertelement <4 x i8> poison, i8 %.pre254, i64 0
  %broadcast.splat515 = shufflevector <4 x i8> %broadcast.splatinsert514, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index516 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next518, %vec.epilog.vector.body ] ; 2 uses
  %next.gep517 = getelementptr i8, ptr %.180156.3, i64 %index516
  store <4 x i8> %broadcast.splat515, ptr %next.gep517, align 1, !tbaa !19
  %index.next518 = add nuw i64 %index516, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next518, %n.vec513
  br i1 %i.fo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n519 = icmp eq i64 %n.vec513, %i.fa
  br i1 %cmp.n519, label %.loopexit.3, label %.lr.ph.3.preheader

.lr.ph.3.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0155.3.ph = phi i32 [ %i.ez, %iter.check ], [ %i.fe, %vec.epilog.iter.check ], [ %i.fm, %vec.epilog.middle.block ]
  %.2154.3.ph = phi ptr [ %.180156.3, %iter.check ], [ %i.ff, %vec.epilog.iter.check ], [ %i.fn, %vec.epilog.middle.block ]
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.3.preheader, %.lr.ph.3
  %.0155.3 = phi i32 [ %i.fp, %.lr.ph.3 ], [ %.0155.3.ph, %.lr.ph.3.preheader ] ; 2 uses
  %.2154.3 = phi ptr [ %i.fq, %.lr.ph.3 ], [ %.2154.3.ph, %.lr.ph.3.preheader ] ; 2 uses
  %i.fp = add nsw i32 %.0155.3, -1
  %i.fq = getelementptr inbounds nuw i8, ptr %.2154.3, i64 1 ; 2 uses
  store i8 %.pre254, ptr %.2154.3, align 1, !tbaa !19
  %i.fr = icmp samesign ugt i32 %.0155.3, 1
  br i1 %i.fr, label %.lr.ph.3, label %.loopexit.3, !llvm.loop !47

.loopexit.3:                                      ; preds = %.lr.ph.3, %middle.block, %vec.epilog.middle.block, %bb.ag, %bb.ae
  %.3.3 = phi ptr [ %i.et, %bb.ae ], [ %i.ey, %bb.ag ], [ %i.fn, %vec.epilog.middle.block ], [ %i.ff, %middle.block ], [ %i.fq, %.lr.ph.3 ] ; 2 uses
  %i.fs = icmp ult ptr %.3.3, %i.ef
  br i1 %i.fs, label %bb.ab, label %.lr.ph163.preheader, !llvm.loop !43

.lr.ph163.preheader:                              ; preds = %.loopexit.3, %.loopexit105.2
  %invariant.gep = getelementptr inbounds nuw i8, ptr %.182274, i64 %i.m
  %invariant.gep391 = getelementptr inbounds nuw i8, ptr %.182274, i64 %i.n
  %invariant.gep393 = getelementptr inbounds nuw i8, ptr %.182274, i64 %i.o
  br label %.lr.ph163

.lr.ph157:                                        ; preds = %.preheader107.preheader
  %i.ft = ptrtoint ptr %6 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph157, %.loopexit
  %.180156 = phi ptr [ %.182274, %.lr.ph157 ], [ %.3, %.loopexit ] ; 13 uses
  %i.fu = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %.loopexit218, label %bb.al

.loopexit218:                                     ; preds = %bb.ai, %bb.n, %bb.u, %bb.ab
  tail call void @free(ptr noundef nonnull %.182274) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.fw, ptr %5, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.fw, ptr noundef nonnull align 1 dereferenceable(15) @.str.17, i64 15, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 15, ptr %i.fx, align 8, !tbaa !20
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 31
  store i8 0, ptr %i.fy, align 1, !tbaa !19
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZL10rgbe_erroriPKc, ptr noundef nonnull @.str.18, i32 noundef 88) #17
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.loopexit218
  unreachable

bb.ak:                                            ; preds = %.loopexit218
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.fw
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  %i.gc = load i64, ptr %i.fw, align 8, !tbaa !19
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %common.resume

bb.al:                                            ; preds = %bb.ai
  %i.ge = load i8, ptr %i.b, align 1, !tbaa !19   ; 5 uses
  %i.gf = zext i8 %i.ge to i32                    ; 2 uses
  %i.gg = icmp ugt i8 %i.ge, -128
  %i.gh = ptrtoint ptr %.180156 to i64
  %i.gi = sub i64 %i.ft, %i.gh                    ; 2 uses
  br i1 %i.gg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gj = add nsw i32 %i.gf, -128                 ; 6 uses
  %i.gk = zext nneg i32 %i.gj to i64              ; 6 uses
  %i.gl = icmp slt i64 %i.gi, %i.gk
  br i1 %i.gl, label %.loopexit221, label %iter.check599

iter.check599:                                    ; preds = %bb.am
  %.pre = load i8, ptr %i.j, align 1, !tbaa !19   ; 3 uses
  %min.iters.check584 = icmp ult i32 %i.gj, 4
  br i1 %min.iters.check584, label %.lr.ph.preheader, label %vector.main.loop.iter.check585

vector.main.loop.iter.check585:                   ; preds = %iter.check599
  %min.iters.check586 = icmp ult i32 %i.gj, 32
  br i1 %min.iters.check586, label %vec.epilog.ph603, label %vector.ph587

vector.ph587:                                     ; preds = %vector.main.loop.iter.check585
  %i.gm = and i64 %i.gk, 28
  %n.vec588 = and i64 %i.gk, 96                   ; 6 uses
  %i.gn = trunc nuw nsw i64 %n.vec588 to i32
  %i.go = sub nsw i32 %i.gj, %i.gn
  %i.gp = getelementptr i8, ptr %.180156, i64 %n.vec588 ; 2 uses
  %broadcast.splatinsert589 = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat590 = shufflevector <16 x i8> %broadcast.splatinsert589, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.gq = getelementptr i8, ptr %.180156, i64 16
  store <16 x i8> %broadcast.splat590, ptr %.180156, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat590, ptr %i.gq, align 1, !tbaa !19
  %i.gr = icmp eq i64 %n.vec588, 32
  br i1 %i.gr, label %middle.block595, label %vector.body591.1

vector.body591.1:                                 ; preds = %vector.ph587
  %next.gep593.1 = getelementptr i8, ptr %.180156, i64 32
  %i.gs = getelementptr i8, ptr %.180156, i64 48
  store <16 x i8> %broadcast.splat590, ptr %next.gep593.1, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat590, ptr %i.gs, align 1, !tbaa !19
  %i.gt = icmp eq i64 %n.vec588, 64
  br i1 %i.gt, label %middle.block595, label %vector.body591.2

vector.body591.2:                                 ; preds = %vector.body591.1
  %next.gep593.2 = getelementptr i8, ptr %.180156, i64 64
  %i.gu = getelementptr i8, ptr %.180156, i64 80
  store <16 x i8> %broadcast.splat590, ptr %next.gep593.2, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat590, ptr %i.gu, align 1, !tbaa !19
  br label %middle.block595

middle.block595:                                  ; preds = %vector.body591.2, %vector.body591.1, %vector.ph587
  %cmp.n596 = icmp eq i64 %n.vec588, %i.gk
  br i1 %cmp.n596, label %.loopexit, label %vec.epilog.iter.check601

vec.epilog.iter.check601:                         ; preds = %middle.block595
  %min.epilog.iters.check602 = icmp eq i64 %i.gm, 0
  br i1 %min.epilog.iters.check602, label %.lr.ph.preheader, label %vec.epilog.ph603, !prof !52

vec.epilog.ph603:                                 ; preds = %vector.main.loop.iter.check585, %vec.epilog.iter.check601
  %vec.epilog.resume.val597 = phi i64 [ %n.vec588, %vec.epilog.iter.check601 ], [ 0, %vector.main.loop.iter.check585 ]
  %n.vec604 = and i64 %i.gk, 124                  ; 4 uses
  %i.gv = trunc nuw nsw i64 %n.vec604 to i32
  %i.gw = sub nsw i32 %i.gj, %i.gv
  %i.gx = getelementptr i8, ptr %.180156, i64 %n.vec604 ; 2 uses
  %broadcast.splatinsert605 = insertelement <4 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat606 = shufflevector <4 x i8> %broadcast.splatinsert605, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body607

vec.epilog.vector.body607:                        ; preds = %vec.epilog.vector.body607, %vec.epilog.ph603
  %index608 = phi i64 [ %vec.epilog.resume.val597, %vec.epilog.ph603 ], [ %index.next610, %vec.epilog.vector.body607 ] ; 2 uses
  %next.gep609 = getelementptr i8, ptr %.180156, i64 %index608
  store <4 x i8> %broadcast.splat606, ptr %next.gep609, align 1, !tbaa !19
  %index.next610 = add nuw i64 %index608, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next610, %n.vec604
  br i1 %i.gy, label %vec.epilog.middle.block611, label %vec.epilog.vector.body607, !llvm.loop !48

vec.epilog.middle.block611:                       ; preds = %vec.epilog.vector.body607
  %cmp.n612 = icmp eq i64 %n.vec604, %i.gk
  br i1 %cmp.n612, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check599, %vec.epilog.iter.check601, %vec.epilog.middle.block611
  %.0155.ph = phi i32 [ %i.gj, %iter.check599 ], [ %i.go, %vec.epilog.iter.check601 ], [ %i.gw, %vec.epilog.middle.block611 ]
  %.2154.ph = phi ptr [ %.180156, %iter.check599 ], [ %i.gp, %vec.epilog.iter.check601 ], [ %i.gx, %vec.epilog.middle.block611 ]
  br label %.lr.ph

.loopexit221:                                     ; preds = %bb.am, %bb.t, %bb.aa, %bb.ah
  tail call void @free(ptr noundef nonnull %.182274) #16
  tail call fastcc void @_ZL10rgbe_erroriPKc(i32 noundef 2, ptr noundef nonnull @.str.16)
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0155 = phi i32 [ %i.gz, %.lr.ph ], [ %.0155.ph, %.lr.ph.preheader ] ; 2 uses
  %.2154 = phi ptr [ %i.ha, %.lr.ph ], [ %.2154.ph, %.lr.ph.preheader ] ; 2 uses
  %i.gz = add nsw i32 %.0155, -1
  %i.ha = getelementptr inbounds nuw i8, ptr %.2154, i64 1 ; 2 uses
  store i8 %.pre, ptr %.2154, align 1, !tbaa !19
  %i.hb = icmp samesign ugt i32 %.0155, 1
  br i1 %i.hb, label %.lr.ph, label %.loopexit, !llvm.loop !49

bb.an:                                            ; preds = %bb.al
  %i.hc = icmp eq i8 %i.ge, 0
  %i.hd = zext i8 %i.ge to i64
  %i.he = icmp slt i64 %i.gi, %i.hd
  %or.cond98 = or i1 %i.hc, %i.he
  br i1 %or.cond98, label %.loopexit219, label %bb.ao

.loopexit219:                                     ; preds = %bb.an, %bb.p, %bb.w, %bb.ad
  tail call void @free(ptr noundef nonnull %.182274) #16
  tail call fastcc void @_ZL10rgbe_erroriPKc(i32 noundef 2, ptr noundef nonnull @.str.16)
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.hf = load i8, ptr %i.j, align 1, !tbaa !19
  %i.hg = getelementptr inbounds nuw i8, ptr %.180156, i64 1 ; 3 uses
  store i8 %i.hf, ptr %.180156, align 1, !tbaa !19
  %.not93 = icmp eq i8 %i.ge, 1
  br i1 %.not93, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hh = add nsw i32 %i.gf, -1
  %i.hi = zext nneg i32 %i.hh to i64              ; 2 uses
  %i.hj = tail call i64 @fread(ptr noundef nonnull %i.hg, i64 noundef %i.hi, i64 noundef 1, ptr noundef %0)
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %.loopexit220, label %bb.as

.loopexit220:                                     ; preds = %bb.ap, %bb.r, %bb.y, %bb.af
  tail call void @free(ptr noundef nonnull %.182274) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.hl, ptr %4, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.hl, ptr noundef nonnull align 1 dereferenceable(15) @.str.17, i64 15, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 15, ptr %i.hm, align 8, !tbaa !20
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 31
  store i8 0, ptr %i.hn, align 1, !tbaa !19
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZL10rgbe_erroriPKc, ptr noundef nonnull @.str.18, i32 noundef 88) #17
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.loopexit220
  unreachable

bb.ar:                                            ; preds = %.loopexit220
  %i.ho = landingpad { ptr, i32 }
          cleanup
  %i.hp = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.hl
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99: ; preds = %bb.ar
  %i.hr = load i64, ptr %i.hl, align 8, !tbaa !19
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %common.resume

bb.as:                                            ; preds = %bb.ap
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hi
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %middle.block595, %vec.epilog.middle.block611, %bb.ao, %bb.as
  %.3 = phi ptr [ %i.hg, %bb.ao ], [ %i.ht, %bb.as ], [ %i.gx, %vec.epilog.middle.block611 ], [ %i.gp, %middle.block595 ], [ %i.ha, %.lr.ph ] ; 3 uses
  %i.hu = icmp ult ptr %.3, %6
  br i1 %i.hu, label %bb.ai, label %.loopexit105, !llvm.loop !43

.lr.ph163:                                        ; preds = %.lr.ph163.preheader, %_ZL10rgbe2floatPfS_S_Ph.exit104
  %indvars.iv = phi i64 [ 0, %.lr.ph163.preheader ], [ %indvars.iv.next, %_ZL10rgbe2floatPfS_S_Ph.exit104 ] ; 5 uses
  %.186161 = phi ptr [ %.085165, %.lr.ph163.preheader ], [ %i.io, %_ZL10rgbe2floatPfS_S_Ph.exit104 ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.182274, i64 %indvars.iv
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !19  ; 2 uses
  store i8 %i.hw, ptr %i.a, align 1, !tbaa !19
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.hx = load i8, ptr %gep, align 1, !tbaa !19   ; 2 uses
  store i8 %i.hx, ptr %i.e, align 1, !tbaa !19
  %gep392 = getelementptr inbounds nuw i8, ptr %invariant.gep391, i64 %indvars.iv
  %i.hy = load i8, ptr %gep392, align 1, !tbaa !19 ; 2 uses
  store i8 %i.hy, ptr %i.f, align 1, !tbaa !19
  %gep394 = getelementptr inbounds nuw i8, ptr %invariant.gep393, i64 %indvars.iv
  %i.hz = load i8, ptr %gep394, align 1, !tbaa !19 ; 3 uses
  store i8 %i.hz, ptr %i.g, align 1, !tbaa !19
  %i.ia = getelementptr inbounds nuw i8, ptr %.186161, i64 8
  %.not.i103 = icmp eq i8 %i.hz, 0
  br i1 %.not.i103, label %_ZL10rgbe2floatPfS_S_Ph.exit104, label %bb.at

bb.at:                                            ; preds = %.lr.ph163
  %i.ib = zext i8 %i.hz to i32
  %i.ic = add nsw i32 %i.ib, -136
  %i.id = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.ic) #16
  %i.ie = fptrunc double %i.id to float           ; 2 uses
  %i.if = uitofp i8 %i.hw to float
  %i.ig = fmul float %i.if, %i.ie
  %i.ih = insertelement <2 x i8> poison, i8 %i.hy, i64 0
  %i.ii = insertelement <2 x i8> %i.ih, i8 %i.hx, i64 1
  %i.ij = uitofp <2 x i8> %i.ii to <2 x float>
  %i.ik = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = fmul <2 x float> %i.il, %i.ij
  br label %_ZL10rgbe2floatPfS_S_Ph.exit104

_ZL10rgbe2floatPfS_S_Ph.exit104:                  ; preds = %.lr.ph163, %bb.at
  %.sink249 = phi float [ %i.ig, %bb.at ], [ 0.000000e+00, %.lr.ph163 ]
  %i.in = phi <2 x float> [ %i.im, %bb.at ], [ zeroinitializer, %.lr.ph163 ]
  store <2 x float> %i.in, ptr %.186161, align 4, !tbaa !21
  store float %.sink249, ptr %i.ia, align 4, !tbaa !21
  %i.io = getelementptr inbounds nuw i8, ptr %.186161, i64 12 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph163, !llvm.loop !50

._crit_edge:                                      ; preds = %_ZL10rgbe2floatPfS_S_Ph.exit104
  %i.ip = add nsw i32 %.083166, -1
  %i.iq = icmp sgt i32 %.083166, 1
  br i1 %i.iq, label %bb.c, label %._crit_edge169, !llvm.loop !51

._crit_edge169:                                   ; preds = %._crit_edge, %.preheader108
  %.081.lcssa = phi ptr [ null, %.preheader108 ], [ %.182274, %._crit_edge ]
  tail call void @free(ptr noundef %.081.lcssa) #16
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge169, %_ZL10rgbe2floatPfS_S_Ph.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 0
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { float, i32 } @llvm.frexp.f32.i32(float) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!"_ZTS16rgbe_header_info", !5, i64 0, !4, i64 4, !8, i64 20, !8, i64 24}
!10 = !{!9, !5, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !15, i64 8, !4, i64 16}
!18 = !{!17, !12, i64 0}
!19 = !{!4, !4, i64 0}
!20 = !{!17, !15, i64 8}
!21 = !{!8, !8, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!9, !8, i64 20}
!24 = !{!9, !8, i64 24}
!25 = distinct !{!25, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!26 = distinct !{!26, !25, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!27 = distinct !{!27, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!28 = distinct !{!28, !27, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!29 = !{!26}
!30 = !{!28}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22, !53, !54}
!42 = distinct !{!42, !22, !54, !53}
!43 = distinct !{!43, !22}
!44 = distinct !{!44, !22, !53, !54}
!45 = distinct !{!45, !22, !54, !53}
!46 = distinct !{!46, !22, !53, !54}
!47 = distinct !{!47, !22, !54, !53}
!48 = distinct !{!48, !22, !53, !54}
!49 = distinct !{!49, !22, !54, !53}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22}
!52 = !{!"branch_weights", i32 4, i32 28}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
