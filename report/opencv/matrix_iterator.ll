inline.NumInlined: 101
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK2cv16MatConstIterator3posEPi:bb.a

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.p, %i.s
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.01721 = phi i64 [ %i.t, %.lr.ph.preheader ], [ %.recomposed, %.lr.ph ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8, !tbaa !42   ; 3 uses
  %i.w = udiv i64 %.01721, %i.v                   ; 2 uses
  %i.x = mul i64 %i.w, %i.v                       ; 0 uses
  %.recomposed = urem i64 %.01721, %i.v
  %i.y = trunc i64 %i.w to i32
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.y, ptr %i.z, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.k, align 4, !tbaa !37
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !63
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK2cv16MatConstIterator4lposEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %i.c = and i32 %i.b, 16384
  %.not24 = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !62
  %i.m = udiv i64 %i.j, %i.l
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 4 uses
  %i.q = ptrtoint ptr %i.e to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !37   ; 6 uses
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.w = icmp sgt i32 %i.u, 0
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.y = load i32, ptr %i.x, align 8, !tbaa !38
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.y, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 84 ; 3 uses
  %i.aa = zext nneg i32 %i.u to i64               ; 2 uses
  %i.ab = add nsw i32 %i.u, -1
  %.not33.not = icmp samesign ugt i32 %narrow.i, %i.ab
  br i1 %.not33.not, label %_ZNK2cv8MatShapeixEm.exit.preheader, label %bb.f

_ZNK2cv8MatShapeixEm.exit.preheader:              ; preds = %.lr.ph
  %xtraiter = and i64 %i.aa, 1
  %i.ac = icmp eq i32 %i.u, 1
  br i1 %i.ac, label %_ZNK2cv8MatShapeixEm.exit.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.preheader.new

_ZNK2cv8MatShapeixEm.exit.preheader.new:          ; preds = %_ZNK2cv8MatShapeixEm.exit.preheader
  %unroll_iter = and i64 %i.aa, 2147483646
  br label %_ZNK2cv8MatShapeixEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = load i64, ptr %i.p, align 8, !tbaa !42  ; 3 uses
  %i.ae = udiv i64 %i.s, %i.ad                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !65
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i64 %i.ae, %i.ah
  %i.aj = mul i64 %i.ae, %i.ad                    ; 0 uses
  %.recomposed = urem i64 %i.s, %i.ad
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !62
  %i.am = udiv i64 %.recomposed, %i.al
  %i.an = add i64 %i.ai, %i.am
  br label %.loopexit

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %_ZNK2cv8MatShapeixEm.exit, %_ZNK2cv8MatShapeixEm.exit.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.preheader.new ], [ %indvars.iv.next.1, %_ZNK2cv8MatShapeixEm.exit ] ; 4 uses
  %.01928 = phi i64 [ %i.s, %_ZNK2cv8MatShapeixEm.exit.preheader.new ], [ %.recomposed39, %_ZNK2cv8MatShapeixEm.exit ] ; 2 uses
  %.02027 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.preheader.new ], [ %i.bf, %_ZNK2cv8MatShapeixEm.exit ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.preheader.new ], [ %niter.next.1, %_ZNK2cv8MatShapeixEm.exit ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !42 ; 3 uses
  %i.aq = udiv i64 %.01928, %i.ap                 ; 2 uses
  %i.ar = mul i64 %i.aq, %i.ap                    ; 0 uses
  %.recomposed38 = urem i64 %.01928, %i.ap        ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %.02027, %i.au
  %i.aw = add i64 %i.av, %i.aq
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !42 ; 3 uses
  %i.az = udiv i64 %.recomposed38, %i.ay          ; 2 uses
  %i.ba = mul i64 %i.az, %i.ay                    ; 0 uses
  %.recomposed39 = urem i64 %.recomposed38, %i.ay ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !39
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i64 %i.aw, %i.bd
  %i.bf = add i64 %i.be, %i.az                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit, !llvm.loop !66

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.8, i32 noundef 103) #14
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !20
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  resume { ptr, i32 } %i.bg

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZNK2cv8MatShapeixEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK2cv8MatShapeixEm.exit.epil.preheader

_ZNK2cv8MatShapeixEm.exit.epil.preheader:         ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.01928.epil.init = phi i64 [ %i.s, %_ZNK2cv8MatShapeixEm.exit.preheader ], [ %.recomposed39, %.loopexit.loopexit.unr-lcssa ]
  %.02027.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.preheader ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod35 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.epil.init
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !42
  %i.bo = udiv i64 %.01928.epil.init, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil.init
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !39
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul nsw i64 %.02027.epil.init, %i.br
  %i.bt = add i64 %i.bs, %i.bo
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK2cv8MatShapeixEm.exit.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.e, %bb.a, %bb.c
  %.1 = phi i64 [ %i.m, %bb.c ], [ 0, %bb.a ], [ %i.an, %bb.e ], [ 0, %.preheader ], [ %i.bf, %.loopexit.loopexit.unr-lcssa ], [ %i.bt, %_ZNK2cv8MatShapeixEm.exit.epil.preheader ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv16MatConstIterator4seekElb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %i.c = and i32 %i.b, 16384
  %.not69 = icmp eq i32 %i.c, 0
  br i1 %.not69, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.d, align 8
  %.val70 = load ptr, ptr %i.e, align 8           ; 3 uses
  %i.f = select i1 %2, ptr %.val, ptr %.val70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !62
  %i.i = mul i64 %i.h, %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 3 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !61
  %i.k = icmp ult ptr %i.j, %.val70
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %.val70, ptr %i.d, align 8, !tbaa !61
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67   ; 2 uses
  %i.n = icmp ugt ptr %i.j, %i.m
  br i1 %i.n, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  store ptr %i.m, ptr %i.d, align 8, !tbaa !61
  br label %bb.u

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !37   ; 4 uses
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  br i1 %2, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre75 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !65
  %.pre79 = load i64, ptr %i.t, align 8, !tbaa !42
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8, !tbaa !62
  %.pre82 = sext i32 %.pre75 to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !61
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = load i64, ptr %i.t, align 8, !tbaa !42   ; 4 uses
  %i.aa = udiv i64 %i.y, %i.z                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !65
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = mul nsw i64 %i.aa, %i.ad
  %i.af = mul i64 %i.aa, %i.z                     ; 0 uses
  %.recomposed = urem i64 %i.y, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !62 ; 2 uses
  %i.ai = udiv i64 %.recomposed, %i.ah
  %i.aj = add i64 %i.ai, %1
  %i.ak = add i64 %i.aj, %i.ae
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.pre-phi = phi i64 [ %.pre82, %._crit_edge ], [ %i.ad, %bb.h ] ; 4 uses
  %i.al = phi i64 [ %.pre81, %._crit_edge ], [ %i.ah, %bb.h ] ; 2 uses
  %i.am = phi i64 [ %.pre79, %._crit_edge ], [ %i.z, %bb.h ]
  %.041 = phi i64 [ %1, %._crit_edge ], [ %i.ak, %bb.h ] ; 2 uses
  %i.an = sdiv i64 %.041, %.pre-phi               ; 4 uses
  %.recomposed95 = srem i64 %.041, %.pre-phi
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !68 ; 2 uses
  %i.ar = add nsw i32 %i.aq, -1
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %.sroa.speculated62)
  %i.as = sext i32 %.sroa.speculated to i64
  %i.at = mul i64 %i.am, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.at ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !64
  %i.aw = mul i64 %i.al, %.pre-phi
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !67
  %i.az = icmp slt i64 %i.an, 0
  br i1 %i.az, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = sext i32 %i.aq to i64
  %.not = icmp slt i64 %i.an, %i.ba
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = mul nsw i64 %i.an, %.pre-phi            ; 0 uses
  %i.bc = mul i64 %i.al, %.recomposed95
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bc
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %i.be = phi ptr [ %i.ax, %bb.j ], [ %i.bd, %bb.k ], [ %i.au, %bb.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !61
  br label %bb.u

bb.m:                                             ; preds = %bb.f
  br i1 %2, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call noundef i64 @_ZNK2cv16MatConstIterator4lposEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.bh = add nsw i64 %i.bg, %1
  %.pre = load ptr, ptr %0, align 8, !tbaa !59
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bi = phi ptr [ %.pre, %bb.n ], [ %i.a, %bb.m ] ; 4 uses
  %.1 = phi i64 [ %i.bh, %bb.n ], [ %1, %bb.m ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = add nsw i32 %i.p, -1                    ; 2 uses
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !38
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 1)
  %i.bm = icmp ult i32 %i.bk, %narrow.i
  br i1 %i.bm, label %_ZNK2cv8MatShapeixEm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.8, i32 noundef 103) #14
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !20
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %i.bn

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.o
  %i.bt = zext nneg i32 %i.bk to i64
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.1, i64 0) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 84 ; 4 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !39
  %i.bx = sext i32 %i.bw to i64                   ; 4 uses
  %i.by = sdiv i64 %spec.store.select, %i.bx      ; 5 uses
  %i.bz = mul nsw i64 %i.by, %i.bx                ; 0 uses
  %.recomposed96 = srem i64 %spec.store.select, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !29 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 128 ; 3 uses
  %sext = shl i64 %.recomposed96, 32
  %i.cd = ashr exact i64 %sext, 32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !62 ; 2 uses
  %i.cg = mul i64 %i.cd, %i.cf                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !61
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.cb, ptr %i.cj, align 8, !tbaa !64
  %i.ck = icmp samesign ugt i32 %i.p, 1
  br i1 %i.ck, label %.lr.ph.preheader, label %bb.t

.lr.ph.preheader:                                 ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.cl = add nsw i32 %i.p, -2                    ; 2 uses
  %i.cm = zext i32 %i.cl to i64                   ; 5 uses
  %5 = and i64 %i.cm, 1
  %lcmp.mod.not.not = icmp eq i64 %5, 0
  br i1 %lcmp.mod.not.not, label %_ZNK2cv8MatShapeixEm.exit54.a, label %.lr.ph

_ZNK2cv8MatShapeixEm.exit54.a:                    ; preds = %.lr.ph.preheader
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cm
  %7 = load i32, ptr %6, align 4, !tbaa !39
  %8 = sext i32 %7 to i64                         ; 3 uses
  %9 = sdiv i64 %i.by, %8                         ; 3 uses
  %i.cn = mul nsw i64 %9, %8                      ; 0 uses
  %.recomposed98 = srem i64 %i.by, %8
  %sext47.prol = shl i64 %.recomposed98, 32
  %10 = ashr exact i64 %sext47.prol, 32
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cm
  %12 = load i64, ptr %11, align 8, !tbaa !42
  %13 = mul i64 %10, %12
  %14 = getelementptr inbounds nuw i8, ptr %i.cb, i64 %13 ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.cm, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2cv8MatShapeixEm.exit54.a, %.lr.ph.preheader
  %.lcssa93.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %9, %_ZNK2cv8MatShapeixEm.exit54.a ]
  %i.co = phi ptr [ poison, %.lr.ph.preheader ], [ %14, %_ZNK2cv8MatShapeixEm.exit54.a ]
  %indvars.iv.a = phi i64 [ %i.cm, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %_ZNK2cv8MatShapeixEm.exit54.a ]
  %.unr = phi ptr [ %i.cb, %.lr.ph.preheader ], [ %14, %_ZNK2cv8MatShapeixEm.exit54.a ]
  %.272.a = phi i64 [ %i.by, %.lr.ph.preheader ], [ %9, %_ZNK2cv8MatShapeixEm.exit54.a ]
  %15 = icmp eq i32 %i.cl, 0
  br i1 %15, label %bb.s, label %_ZNK2cv8MatShapeixEm.exit60

bb.s:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit60, %.lr.ph
  %.lcssa93 = phi i64 [ %.lcssa93.unr, %.lr.ph ], [ %25, %_ZNK2cv8MatShapeixEm.exit60 ]
  %.lcssa = phi ptr [ %i.co, %.lr.ph ], [ %31, %_ZNK2cv8MatShapeixEm.exit60 ] ; 2 uses
  store ptr %.lcssa, ptr %i.cj, align 8, !tbaa !64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK2cv8MatShapeixEm.exit
  %16 = phi ptr [ %.lcssa, %bb.s ], [ %i.cb, %_ZNK2cv8MatShapeixEm.exit ] ; 2 uses
  %.2.lcssa = phi i64 [ %.lcssa93, %bb.s ], [ %i.by, %_ZNK2cv8MatShapeixEm.exit ]
  %17 = mul i64 %i.cf, %i.bx
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 %17 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %18, ptr %19, align 8, !tbaa !67
  %20 = icmp sgt i64 %.2.lcssa, 0
  %i.cp = getelementptr inbounds i8, ptr %16, i64 %i.cg
  %storemerge = select i1 %20, ptr %18, ptr %i.cp
  store ptr %storemerge, ptr %i.ci, align 8, !tbaa !61
  br label %bb.u

_ZNK2cv8MatShapeixEm.exit60:                      ; preds = %.lr.ph, %_ZNK2cv8MatShapeixEm.exit60
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %_ZNK2cv8MatShapeixEm.exit60 ], [ %indvars.iv.a, %.lr.ph ] ; 4 uses
  %21 = phi ptr [ %31, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.unr, %.lr.ph ]
  %.272 = phi i64 [ %25, %_ZNK2cv8MatShapeixEm.exit60 ], [ %.272.a, %.lr.ph ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !39
  %i.cs = sext i32 %i.cr to i64                   ; 3 uses
  %i.ct = sdiv i64 %.272, %i.cs                   ; 3 uses
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 0 uses
  %.recomposed97 = srem i64 %.272, %i.cs
  %sext47 = shl i64 %.recomposed97, 32
  %i.cv = ashr exact i64 %sext47, 32
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !42
  %i.cy = mul i64 %i.cv, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %21, i64 %i.cy
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %22 = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next
  %23 = load i32, ptr %22, align 4, !tbaa !39
  %24 = sext i32 %23 to i64                       ; 3 uses
  %25 = sdiv i64 %i.ct, %24                       ; 3 uses
  %26 = mul nsw i64 %25, %24                      ; 0 uses
  %.recomposed100 = srem i64 %i.ct, %24
  %sext47.1 = shl i64 %.recomposed100, 32
  %27 = ashr exact i64 %sext47.1, 32
  %28 = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.next
  %29 = load i64, ptr %28, align 8, !tbaa !42
  %30 = mul i64 %27, %29
  %31 = getelementptr inbounds nuw i8, ptr %i.cz, i64 %30 ; 2 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv, -2
  %.not91.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not91.1, label %bb.s, label %_ZNK2cv8MatShapeixEm.exit60, !llvm.loop !69

bb.u:                                             ; preds = %bb.l, %bb.t, %bb.c, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv16MatConstIterator4seekEPKib(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly captures(address_is_null) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !37   ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38
  %narrow.i16 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 84 ; 5 uses
  %i.i = zext nneg i32 %i.c to i64                ; 2 uses
  %i.j = add nsw i32 %i.c, -1
  %.not31.not = icmp samesign ugt i32 %narrow.i16, %i.j
  br i1 %.not31.not, label %_ZNK2cv8MatShapeixEm.exit21.preheader, label %bb.g

_ZNK2cv8MatShapeixEm.exit21.preheader:            ; preds = %.lr.ph
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.k = icmp ult i32 %i.c, 4
  br i1 %i.k, label %_ZNK2cv8MatShapeixEm.exit21.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit21.preheader.new

_ZNK2cv8MatShapeixEm.exit21.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit21.preheader
  %unroll_iter = and i64 %i.i, 2147483644
  br label %_ZNK2cv8MatShapeixEm.exit21

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.m = load i32, ptr %i.l, align 4, !tbaa !38
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %_ZNK2cv8MatShapeixEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.8, i32 noundef 103) #14
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.q, align 8, !tbaa !20
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.c
  %i.u = load i32, ptr %1, align 4, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.w = load i32, ptr %i.v, align 4, !tbaa !39
  %i.x = mul nsw i32 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !39
  %i.aa = add nsw i32 %i.x, %i.z
  %i.ab = sext i32 %i.aa to i64
  br label %.loopexit

_ZNK2cv8MatShapeixEm.exit21:                      ; preds = %_ZNK2cv8MatShapeixEm.exit21, %_ZNK2cv8MatShapeixEm.exit21.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit21.preheader.new ], [ %indvars.iv.next.3, %_ZNK2cv8MatShapeixEm.exit21 ] ; 6 uses
  %.01323 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit21.preheader.new ], [ %i.bh, %_ZNK2cv8MatShapeixEm.exit21 ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit21.preheader.new ], [ %niter.next.3, %_ZNK2cv8MatShapeixEm.exit21 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %.01323, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !39
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i64 %i.af, %i.ai
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !39
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.aj, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !39
  %i.aq = sext i32 %i.ap to i64
  %i.ar = add nsw i64 %i.an, %i.aq
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  %i.at = load i32, ptr %i.as, align 4, !tbaa !39
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.ar, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !39
  %i.ay = sext i32 %i.ax to i64
  %i.az = add nsw i64 %i.av, %i.ay
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !39
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %i.az, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !39
  %i.bg = sext i32 %i.bf to i64
  %i.bh = add nsw i64 %i.bd, %i.bg                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit21, !llvm.loop !70

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.8, i32 noundef 103) #14
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !20
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %common.resume

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZNK2cv8MatShapeixEm.exit21
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK2cv8MatShapeixEm.exit21.epil.preheader

_ZNK2cv8MatShapeixEm.exit21.epil.preheader:       ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit21.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit21.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %.01323.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit21.preheader ], [ %i.bh, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod33 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod33)
  br label %_ZNK2cv8MatShapeixEm.exit21.epil

_ZNK2cv8MatShapeixEm.exit21.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit21.epil, %_ZNK2cv8MatShapeixEm.exit21.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZNK2cv8MatShapeixEm.exit21.epil ], [ %indvars.iv.epil.init, %_ZNK2cv8MatShapeixEm.exit21.epil.preheader ] ; 3 uses
  %.01323.epil = phi i64 [ %i.bv, %_ZNK2cv8MatShapeixEm.exit21.epil ], [ %.01323.epil.init, %_ZNK2cv8MatShapeixEm.exit21.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit21.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit21.epil.preheader ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !39
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul nsw i64 %.01323.epil, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !39
  %i.bu = sext i32 %i.bt to i64
  %i.bv = add nsw i64 %i.br, %i.bu                ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %_ZNK2cv8MatShapeixEm.exit21.epil, !llvm.loop !71

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit21.epil, %.preheader, %_ZNK2cv8MatShapeixEm.exit, %bb.a
  %.1 = phi i64 [ %i.ab, %_ZNK2cv8MatShapeixEm.exit ], [ 0, %bb.a ], [ 0, %.preheader ], [ %i.bh, %.loopexit.loopexit.unr-lcssa ], [ %i.bv, %_ZNK2cv8MatShapeixEm.exit21.epil ]
  tail call void @_ZN2cv16MatConstIterator4seekElb(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %.1, i1 noundef zeroext %2)
  ret void
}

end_hunk_0
