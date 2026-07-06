inline.NumInlined: 549
inline.NumDeleted: 184
begin_hunk_0_@_ZN6google15DescribeOneFlagB5cxx11ERKNS_19CommandLineFlagInfoE:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void (ptr, ptr, ...) @_ZN6google13SStringPrintfEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull %2, ptr noundef nonnull @.str.31, ptr noundef %i.d, ptr noundef %i.f)
          to label %._crit_edge.i.i unwind label %bb.k

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !10
  %i.h = load i64, ptr %i.c, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i64 0, ptr %i.j, align 8, !tbaa !18
  store i8 0, ptr %i.i, align 8, !tbaa !15
  %i.k = trunc i64 %i.h to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.au, %._crit_edge.i.i
  %i.n = phi i32 [ 0, %._crit_edge.i.i ], [ 6, %bb.au ] ; 4 uses
  %.063 = phi ptr [ %i.g, %._crit_edge.i.i ], [ %.265, %bb.au ] ; 19 uses
  %.059 = phi i32 [ %i.k, %._crit_edge.i.i ], [ %.261, %bb.au ] ; 2 uses
  %i.o = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.063, i32 noundef 10) #23 ; 2 uses
  %cond = icmp eq ptr %i.o, null
  br i1 %cond, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %i.n, %.059                  ; 5 uses
  %i.q = icmp slt i32 %i.p, 80
  br i1 %i.q, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.063) #22 ; 6 uses
  %i.s = load i64, ptr %i.j, align 8, !tbaa !18   ; 5 uses
  %i.t = sub i64 9223372036854775807, %i.s
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc92 unwind label %.loopexit.split-lp219

.noexc92:                                         ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.v = add i64 %i.s, %i.r                       ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.y = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.y)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.z = load i64, ptr %i.i, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aa = phi i64 [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.v, %i.aa
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i116.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.r, 1
  br i1 %cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i8, ptr %.063, align 1, !tbaa !15
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !15
  br label %._crit_edge.i.i116.sink.split

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %.063, i64 %i.r, i1 false)
  br label %._crit_edge.i.i116.sink.split

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef 0, ptr noundef nonnull %.063, i64 noundef %i.r)
          to label %._crit_edge.i.i116.sink.split unwind label %.loopexit.split-lp219

bb.k:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

.loopexit218:                                     ; preds = %bb.at
  %lpad.loopexit220 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp219:                            ; preds = %bb.e, %bb.j
  %lpad.loopexit.split-lp221 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.l:                                             ; preds = %bb.b
  %magicptr = ptrtoint ptr %i.o to i64
  %i.ae = ptrtoint ptr %.063 to i64
  %i.af = sub i64 %magicptr, %i.ae                ; 3 uses
  %i.ag = sub nuw nsw i32 80, %i.n
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = icmp slt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.m, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  %sext = shl i64 %i.af, 32                       ; 3 uses
  %i.aj = ashr exact i64 %sext, 32                ; 4 uses
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !18  ; 5 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc94 unwind label %.loopexit.split-lp

.noexc94:                                         ; preds = %bb.n
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.m
  %i.an = add i64 %i.ak, %i.aj                    ; 3 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.i
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aq = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = phi i64 [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.an, %i.as
  br i1 %.not.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %sext, 0
  br i1 %.not8.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak ; 2 uses
  %cond.i.i = icmp eq i64 %sext, 4294967296
  br i1 %cond.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.au = load i8, ptr %.063, align 1, !tbaa !15
  store i8 %i.au, ptr %i.at, align 1, !tbaa !15
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %.063, i64 %i.aj, i1 false)
  br label %bb.t

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ak, i64 noundef 0, ptr noundef nonnull %.063, i64 noundef %i.aj)
          to label %bb.t unwind label %.loopexit212

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.s
  store i64 %i.an, ptr %i.j, align 8, !tbaa !18
  %i.av = load ptr, ptr %0, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  store i8 0, ptr %i.aw, align 1, !tbaa !15
  %i.ax = trunc i64 %i.af to i32
  %i.ay = add nsw i32 %i.ax, 1                    ; 2 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %.265.phi.trans.insert = getelementptr inbounds i8, ptr %.063, i64 %i.az
  %.pre = load i8, ptr %.265.phi.trans.insert, align 1, !tbaa !15
  br label %bb.as

.loopexit212:                                     ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.lr.ph:                                           ; preds = %bb.l, %bb.c
  %i.ba = sub nuw nsw i32 79, %i.n                ; 2 uses
  %i.bb = tail call ptr @__ctype_b_loc() #25      ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !19
  %i.bd = zext nneg i32 %i.ba to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv272 = phi i32 [ %i.ba, %.lr.ph ], [ %indvars.iv.next273, %bb.v ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.063, i64 %indvars.iv
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !15
  %i.bg = sext i8 %i.bf to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !21
  %i.bj = and i16 %i.bi, 8192
  %.not69 = icmp eq i16 %i.bj, 0
  br i1 %.not69, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bk = icmp sgt i64 %indvars.iv, 1
  %indvars.iv.next273 = add i32 %indvars.iv272, -1
  br i1 %i.bk, label %bb.u, label %.critedge, !llvm.loop !23

.critedge:                                        ; preds = %bb.v
  %i.bl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.063) #22 ; 6 uses
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !18  ; 5 uses
  %i.bn = sub i64 9223372036854775807, %i.bm
  %i.bo = icmp ult i64 %i.bn, %i.bl
  br i1 %i.bo, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96

bb.w:                                             ; preds = %.critedge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc103 unwind label %bb.ac

.noexc103:                                        ; preds = %bb.w
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96: ; preds = %.critedge
  %i.bp = add i64 %i.bm, %i.bl                    ; 5 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.i
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96
  %i.bs = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102
  %i.bu = phi i64 [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102 ]
  %.not.i.i.i99 = icmp ugt i64 %i.bp, %i.bu
  br i1 %.not.i.i.i99, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98
  %.not8.i.i.i100 = icmp eq i64 %i.bl, 0
  br i1 %.not8.i.i.i100, label %._crit_edge.i.i116.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bm ; 2 uses
  %cond.i.i.i101 = icmp eq i64 %i.bl, 1
  br i1 %cond.i.i.i101, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bw = load i8, ptr %.063, align 1, !tbaa !15
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !15
  br label %._crit_edge.i.i116.sink.split

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %.063, i64 %i.bl, i1 false)
  br label %._crit_edge.i.i116.sink.split

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bm, i64 noundef 0, ptr noundef nonnull %.063, i64 noundef %i.bl)
          to label %._crit_edge.i.i116.sink.split unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ad:                                            ; preds = %bb.u
  %i.by = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %10 = and i64 %indvars.iv, 4294967295           ; 5 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !17
  %i.bz = icmp samesign ugt i64 %indvars.iv, 15
  br i1 %i.bz, label %bb.ae, label %._crit_edge.i.i106

bb.ae:                                            ; preds = %bb.ad
  %i.ca = add nuw nsw i64 %10, 1
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #26
          to label %._crit_edge.i.i106.thread unwind label %bb.aq ; 2 uses

._crit_edge.i.i106.thread:                        ; preds = %bb.ae
  store ptr %i.cb, ptr %3, align 8, !tbaa !10
  store i64 %10, ptr %i.l, align 8, !tbaa !15
  br label %bb.ag

._crit_edge.i.i106:                               ; preds = %bb.ad
  %cond210 = icmp eq i64 %indvars.iv, 1
  br i1 %cond210, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i106
  %i.cc = load i8, ptr %.063, align 1, !tbaa !15
  store i8 %i.cc, ptr %i.l, align 8, !tbaa !15
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i106.thread, %._crit_edge.i.i106
  %i.cd = phi ptr [ %i.cb, %._crit_edge.i.i106.thread ], [ %i.l, %._crit_edge.i.i106 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr nonnull align 1 %.063, i64 %10, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ce = phi ptr [ %i.cd, %bb.ag ], [ %i.l, %bb.af ]
  store i64 %10, ptr %i.m, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %10
  store i8 0, ptr %i.cf, align 1, !tbaa !15
  %i.cg = load ptr, ptr %3, align 8, !tbaa !10    ; 3 uses
  %i.ch = load i64, ptr %i.m, align 8, !tbaa !18  ; 6 uses
  %i.ci = load i64, ptr %i.j, align 8, !tbaa !18  ; 5 uses
  %i.cj = sub i64 9223372036854775807, %i.ci
  %i.ck = icmp ult i64 %i.cj, %i.ch
  br i1 %i.ck, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc111 unwind label %.loopexit.split-lp214

.noexc111:                                        ; preds = %bb.ai
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.cl = add i64 %i.ci, %i.ch                    ; 3 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.i
  br i1 %i.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.co = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.co)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cp = load i64, ptr %i.i, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cq = phi i64 [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.cl, %i.cq
  br i1 %.not.i.i.i.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not8.i.i.i.i, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ci ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.ch, 1
  br i1 %cond.i.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cs = load i8, ptr %i.cg, align 1, !tbaa !15
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !15
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %i.cg, i64 %i.ch, i1 false)
  br label %bb.ao

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ci, i64 noundef 0, ptr noundef %i.cg, i64 noundef %i.ch)
          to label %bb.ao unwind label %.loopexit213

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.aj, %bb.an
  store i64 %i.cl, ptr %i.j, align 8, !tbaa !18
  %i.ct = load ptr, ptr %0, align 8, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl
  store i8 0, ptr %i.cu, align 1, !tbaa !15
  %i.cv = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.l
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ao
  %i.cx = load i64, ptr %i.l, align 8, !tbaa !15
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.cz = add nsw i32 %i.n, %i.by
  store i32 %i.cz, ptr %i.a, align 4, !tbaa !3
  %i.da = load ptr, ptr %i.bb, align 8, !tbaa !19
  %i.db = zext i32 %indvars.iv272 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %bb.ap ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.063, i64 %indvars.iv275
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !15  ; 2 uses
  %i.de = sext i8 %i.dd to i64
  %i.df = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !21
  %i.dh = and i16 %i.dg, 8192
  %.not71 = icmp eq i16 %i.dh, 0
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1
  br i1 %.not71, label %.loopexit, label %bb.ap, !llvm.loop !25

bb.aq:                                            ; preds = %bb.ae
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

.loopexit213:                                     ; preds = %bb.an
  %lpad.loopexit215 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp214:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp216 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp214, %.loopexit213
  %lpad.phi217 = phi { ptr, i32 } [ %lpad.loopexit215, %.loopexit213 ], [ %lpad.loopexit.split-lp216, %.loopexit.split-lp214 ] ; 2 uses
  %i.dj = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.l
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.ar
  %i.dl = load i64, ptr %i.l, align 8, !tbaa !15
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.di, %bb.aq ], [ %lpad.phi217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %lpad.phi217, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.bp

.loopexit:                                        ; preds = %bb.ap
  %i.dn = trunc nuw i64 %indvars.iv275 to i32
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %bb.t
  %i.do = phi i8 [ %.pre, %bb.t ], [ %i.dd, %.loopexit ]
  %.pn249 = phi i64 [ %i.az, %bb.t ], [ %indvars.iv275, %.loopexit ]
  %.pn211 = phi i32 [ %i.ay, %bb.t ], [ %i.dn, %.loopexit ]
  %.265 = getelementptr inbounds i8, ptr %.063, i64 %.pn249
  %.261 = sub nsw i32 %.059, %.pn211
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %._crit_edge.i.i116, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke void (ptr, ptr, ...) @_ZN6google13StringAppendFEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
          to label %bb.au unwind label %.loopexit218

bb.au:                                            ; preds = %bb.at
  store i32 6, ptr %i.a, align 4, !tbaa !3
  br label %bb.b

._crit_edge.i.i116.sink.split:                    ; preds = %bb.aa, %bb.z, %bb.x, %bb.ab, %bb.j, %bb.f, %bb.h, %bb.i
  %.sink = phi i64 [ %i.v, %bb.j ], [ %i.v, %bb.i ], [ %i.v, %bb.h ], [ %i.v, %bb.f ], [ %i.bp, %bb.ab ], [ %i.bp, %bb.x ], [ %i.bp, %bb.z ], [ %i.bp, %bb.aa ] ; 2 uses
  %.lcssa326.sink = phi i32 [ %i.p, %bb.j ], [ %i.p, %bb.i ], [ %i.p, %bb.h ], [ %i.p, %bb.f ], [ 80, %bb.ab ], [ 80, %bb.x ], [ 80, %bb.z ], [ 80, %bb.aa ]
  store i64 %.sink, ptr %i.j, align 8, !tbaa !18
  %i.dq = load ptr, ptr %0, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink
  store i8 0, ptr %i.dr, align 1, !tbaa !15
  store i32 %.lcssa326.sink, ptr %i.a, align 4, !tbaa !3
  br label %._crit_edge.i.i116

._crit_edge.i.i116:                               ; preds = %bb.as, %._crit_edge.i.i116.sink.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 14 uses
  store ptr %i.ds, ptr %5, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ds, ptr noundef nonnull align 1 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 6, ptr %i.dt, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i8 0, ptr %i.du, align 2, !tbaa !15
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !10, !noalias !26 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !18, !noalias !26 ; 7 uses
  %i.dz = icmp ugt i64 %i.dy, 9223372036854775801
  br i1 %i.dz, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i126

bb.av:                                            ; preds = %._crit_edge.i.i116
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc132 unwind label %bb.bg

.noexc132:                                        ; preds = %bb.av
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i126: ; preds = %._crit_edge.i.i116
  %i.ea = add nuw nsw i64 %i.dy, 6                ; 2 uses
  %.not.i.i.i.i127 = icmp samesign ugt i64 %i.dy, 9
  br i1 %.not.i.i.i.i127, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i126
  %.not8.i.i.i.i128 = icmp eq i64 %i.dy, 0
  br i1 %.not8.i.i.i.i128, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 22 ; 2 uses
  %cond.i.i.i.i129 = icmp eq i64 %i.dy, 1
  br i1 %cond.i.i.i.i129, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ec = load i8, ptr %i.dw, align 1, !tbaa !15, !noalias !26
  store i8 %i.ec, ptr %i.eb, align 2, !tbaa !15, !noalias !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.az:                                            ; preds = %bb.ax
end_hunk_0
