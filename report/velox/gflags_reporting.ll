inline.NumInlined: 547
inline.NumDeleted: 184
begin_hunk_0_@_ZN6google15DescribeOneFlagB5cxx11ERKNS_19CommandLineFlagInfoE:bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !18
  store i8 0, ptr %i.b, align 8, !tbaa !15
  %i.d = load ptr, ptr %1, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  invoke void (ptr, ptr, ...) @_ZN6google13SStringPrintfEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull %2, ptr noundef nonnull @.str.31, ptr noundef %i.d, ptr noundef %i.f)
          to label %._crit_edge.i.i unwind label %bb.l

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

bb.b:                                             ; preds = %bb.ay, %._crit_edge.i.i
  %i.n = phi i32 [ 0, %._crit_edge.i.i ], [ 6, %bb.ay ] ; 4 uses
  %.063 = phi ptr [ %i.g, %._crit_edge.i.i ], [ %.265, %bb.ay ] ; 19 uses
  %.059 = phi i32 [ %i.k, %._crit_edge.i.i ], [ %.261, %bb.ay ] ; 2 uses
  %i.o = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.063, i32 noundef 10) #23 ; 2 uses
  %cond = icmp eq ptr %i.o, null
  br i1 %cond, label %bb.c, label %bb.m

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
          to label %.noexc92 unwind label %.loopexit.split-lp215

.noexc92:                                         ; preds = %bb.e
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.v = add i64 %i.s, %i.r                       ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i                   ; 2 uses
  br i1 %i.x, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.y = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.y)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.z = load i64, ptr %i.i, align 8
  %i.aa = select i1 %i.x, i64 15, i64 %i.z
  %.not.i.i.i = icmp ugt i64 %i.v, %i.aa
  br i1 %.not.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i114.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.r, 1
  br i1 %cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %.063, align 1, !tbaa !15
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !15
  br label %._crit_edge.i.i114.sink.split

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %.063, i64 %i.r, i1 false)
  br label %._crit_edge.i.i114.sink.split

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef 0, ptr noundef nonnull %.063, i64 noundef %i.r)
          to label %._crit_edge.i.i114.sink.split unwind label %.loopexit.split-lp215

bb.l:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

.loopexit214:                                     ; preds = %bb.ax
  %lpad.loopexit216 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp215:                            ; preds = %bb.e, %bb.k
  %lpad.loopexit.split-lp217 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.m:                                             ; preds = %bb.b
  %magicptr = ptrtoint ptr %i.o to i64
  %i.ae = ptrtoint ptr %.063 to i64
  %i.af = sub i64 %magicptr, %i.ae                ; 3 uses
  %i.ag = sub nuw nsw i32 80, %i.n
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = icmp slt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.n, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  %sext = shl i64 %i.af, 32                       ; 3 uses
  %i.aj = ashr exact i64 %sext, 32                ; 4 uses
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !18  ; 5 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc94 unwind label %.loopexit.split-lp

.noexc94:                                         ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.n
  %i.an = add i64 %i.ak, %i.aj                    ; 3 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.i                 ; 2 uses
  br i1 %i.ap, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aq = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ar = load i64, ptr %i.i, align 8
  %i.as = select i1 %i.ap, i64 15, i64 %i.ar
  %.not.i.i = icmp ugt i64 %i.an, %i.as
  br i1 %.not.i.i, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %sext, 0
  br i1 %.not8.i.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak ; 2 uses
  %cond.i.i = icmp eq i64 %sext, 4294967296
  br i1 %cond.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.au = load i8, ptr %.063, align 1, !tbaa !15
  store i8 %i.au, ptr %i.at, align 1, !tbaa !15
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %.063, i64 %i.aj, i1 false)
  br label %bb.v

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ak, i64 noundef 0, ptr noundef nonnull %.063, i64 noundef %i.aj)
          to label %bb.v unwind label %.loopexit208

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.u
  store i64 %i.an, ptr %i.j, align 8, !tbaa !18
  %i.av = load ptr, ptr %0, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  store i8 0, ptr %i.aw, align 1, !tbaa !15
  %i.ax = trunc i64 %i.af to i32
  %i.ay = add nsw i32 %i.ax, 1                    ; 2 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %.265.phi.trans.insert = getelementptr inbounds i8, ptr %.063, i64 %i.az
  %.pre = load i8, ptr %.265.phi.trans.insert, align 1, !tbaa !15
  br label %bb.aw

.loopexit208:                                     ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.lr.ph:                                           ; preds = %bb.m, %bb.c
  %i.ba = sub nuw nsw i32 79, %i.n                ; 2 uses
  %i.bb = tail call ptr @__ctype_b_loc() #25      ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !19
  %i.bd = zext nneg i32 %i.ba to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv268 = phi i32 [ %i.ba, %.lr.ph ], [ %indvars.iv.next269, %bb.x ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 11 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.063, i64 %indvars.iv
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !15
  %i.bg = sext i8 %i.bf to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !21
  %i.bj = and i16 %i.bi, 8192
  %.not69 = icmp eq i16 %i.bj, 0
  br i1 %.not69, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bk = icmp sgt i64 %indvars.iv, 1
  %indvars.iv.next269 = add i32 %indvars.iv268, -1
  br i1 %i.bk, label %bb.w, label %.critedge, !llvm.loop !23

.critedge:                                        ; preds = %bb.x
  %i.bl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.063) #22 ; 6 uses
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !18  ; 5 uses
  %i.bn = sub i64 9223372036854775807, %i.bm
  %i.bo = icmp ult i64 %i.bn, %i.bl
  br i1 %i.bo, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96

bb.y:                                             ; preds = %.critedge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc101 unwind label %bb.af

.noexc101:                                        ; preds = %bb.y
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96: ; preds = %.critedge
  %i.bp = add i64 %i.bm, %i.bl                    ; 5 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.i                 ; 2 uses
  br i1 %i.br, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i97

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96
  %i.bs = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i97: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96
  %i.bt = load i64, ptr %i.i, align 8
  %i.bu = select i1 %i.br, i64 15, i64 %i.bt
  %.not.i.i.i98 = icmp ugt i64 %i.bp, %i.bu
  br i1 %.not.i.i.i98, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i97
  %.not8.i.i.i99 = icmp eq i64 %i.bl, 0
  br i1 %.not8.i.i.i99, label %._crit_edge.i.i114.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bm ; 2 uses
  %cond.i.i.i100 = icmp eq i64 %i.bl, 1
  br i1 %cond.i.i.i100, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bw = load i8, ptr %.063, align 1, !tbaa !15
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !15
  br label %._crit_edge.i.i114.sink.split

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %.063, i64 %i.bl, i1 false)
  br label %._crit_edge.i.i114.sink.split

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i97
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bm, i64 noundef 0, ptr noundef nonnull %.063, i64 noundef %i.bl)
          to label %._crit_edge.i.i114.sink.split unwind label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.y
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.ag:                                            ; preds = %bb.w
  %i.by = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.l, ptr %3, align 8, !tbaa !17
  %i.bz = icmp samesign ugt i64 %indvars.iv, 15
  br i1 %i.bz, label %bb.ah, label %._crit_edge.i.i104

bb.ah:                                            ; preds = %bb.ag
  %i.ca = add nuw nsw i64 %indvars.iv, 1
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #26
          to label %._crit_edge.i.i104.thread unwind label %bb.au ; 2 uses

._crit_edge.i.i104.thread:                        ; preds = %bb.ah
  store ptr %i.cb, ptr %3, align 8, !tbaa !10
  store i64 %indvars.iv, ptr %i.l, align 8, !tbaa !15
  br label %bb.aj

._crit_edge.i.i104:                               ; preds = %bb.ag
  %cond206 = icmp eq i64 %indvars.iv, 1
  br i1 %cond206, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i104
  %i.cc = load i8, ptr %.063, align 1, !tbaa !15
  store i8 %i.cc, ptr %i.l, align 8, !tbaa !15
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i104.thread, %._crit_edge.i.i104
  %i.cd = phi ptr [ %i.cb, %._crit_edge.i.i104.thread ], [ %i.l, %._crit_edge.i.i104 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr nonnull align 1 %.063, i64 %indvars.iv, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ce = phi ptr [ %i.cd, %bb.aj ], [ %i.l, %bb.ai ]
  store i64 %indvars.iv, ptr %i.m, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %indvars.iv
  store i8 0, ptr %i.cf, align 1, !tbaa !15
  %i.cg = load ptr, ptr %3, align 8, !tbaa !10    ; 3 uses
  %i.ch = load i64, ptr %i.m, align 8, !tbaa !18  ; 6 uses
  %i.ci = load i64, ptr %i.j, align 8, !tbaa !18  ; 5 uses
  %i.cj = sub i64 9223372036854775807, %i.ci
  %i.ck = icmp ult i64 %i.cj, %i.ch
  br i1 %i.ck, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc109 unwind label %.loopexit.split-lp210

.noexc109:                                        ; preds = %bb.al
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ak
  %i.cl = add i64 %i.ci, %i.ch                    ; 3 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.i                 ; 2 uses
  br i1 %i.cn, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.co = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.co)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cp = load i64, ptr %i.i, align 8
  %i.cq = select i1 %i.cn, i64 15, i64 %i.cp
  %.not.i.i.i.i = icmp ugt i64 %i.cl, %i.cq
  br i1 %.not.i.i.i.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not8.i.i.i.i, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ci ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.ch, 1
  br i1 %cond.i.i.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cs = load i8, ptr %i.cg, align 1, !tbaa !15
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !15
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %i.cg, i64 %i.ch, i1 false)
  br label %bb.as

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ci, i64 noundef 0, ptr noundef %i.cg, i64 noundef %i.ch)
          to label %bb.as unwind label %.loopexit209

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.an, %bb.ar
  store i64 %i.cl, ptr %i.j, align 8, !tbaa !18
  %i.ct = load ptr, ptr %0, align 8, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl
  store i8 0, ptr %i.cu, align 1, !tbaa !15
  %i.cv = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.l
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  %i.cx = load i64, ptr %i.l, align 8, !tbaa !15
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.cz = add nsw i32 %i.n, %i.by
  store i32 %i.cz, ptr %i.a, align 4, !tbaa !3
  %i.da = load ptr, ptr %i.bb, align 8, !tbaa !19
  %i.db = zext i32 %indvars.iv268 to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %bb.at ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.063, i64 %indvars.iv271
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !15  ; 2 uses
  %i.de = sext i8 %i.dd to i64
  %i.df = getelementptr inbounds [2 x i8], ptr %i.da, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !21
  %i.dh = and i16 %i.dg, 8192
  %.not71 = icmp eq i16 %i.dh, 0
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1
  br i1 %.not71, label %.loopexit, label %bb.at, !llvm.loop !25

bb.au:                                            ; preds = %bb.ah
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

.loopexit209:                                     ; preds = %bb.ar
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp210:                            ; preds = %bb.al
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.split-lp210, %.loopexit209
  %lpad.phi213 = phi { ptr, i32 } [ %lpad.loopexit211, %.loopexit209 ], [ %lpad.loopexit.split-lp212, %.loopexit.split-lp210 ] ; 2 uses
  %i.dj = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.l
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.av
  %i.dl = load i64, ptr %i.l, align 8, !tbaa !15
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.au
  %.pn = phi { ptr, i32 } [ %i.di, %bb.au ], [ %lpad.phi213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %lpad.phi213, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.bt

.loopexit:                                        ; preds = %bb.at
  %i.dn = trunc nuw i64 %indvars.iv271 to i32
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit, %bb.v
  %i.do = phi i8 [ %.pre, %bb.v ], [ %i.dd, %.loopexit ]
  %.pn245 = phi i64 [ %i.az, %bb.v ], [ %indvars.iv271, %.loopexit ]
  %.pn207 = phi i32 [ %i.ay, %bb.v ], [ %i.dn, %.loopexit ]
  %.265 = getelementptr inbounds i8, ptr %.063, i64 %.pn245
  %.261 = sub nsw i32 %.059, %.pn207
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %._crit_edge.i.i114, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void (ptr, ptr, ...) @_ZN6google13StringAppendFEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
          to label %bb.ay unwind label %.loopexit214

bb.ay:                                            ; preds = %bb.ax
  store i32 6, ptr %i.a, align 4, !tbaa !3
  br label %bb.b

._crit_edge.i.i114.sink.split:                    ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.ae, %bb.k, %bb.g, %bb.i, %bb.j
  %.sink = phi i64 [ %i.v, %bb.k ], [ %i.v, %bb.j ], [ %i.v, %bb.i ], [ %i.v, %bb.g ], [ %i.bp, %bb.ae ], [ %i.bp, %bb.aa ], [ %i.bp, %bb.ac ], [ %i.bp, %bb.ad ] ; 2 uses
  %.lcssa319.sink = phi i32 [ %i.p, %bb.k ], [ %i.p, %bb.j ], [ %i.p, %bb.i ], [ %i.p, %bb.g ], [ 80, %bb.ae ], [ 80, %bb.aa ], [ 80, %bb.ac ], [ 80, %bb.ad ]
  store i64 %.sink, ptr %i.j, align 8, !tbaa !18
  %i.dq = load ptr, ptr %0, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink
  store i8 0, ptr %i.dr, align 1, !tbaa !15
  store i32 %.lcssa319.sink, ptr %i.a, align 4, !tbaa !3
  br label %._crit_edge.i.i114

._crit_edge.i.i114:                               ; preds = %bb.aw, %._crit_edge.i.i114.sink.split
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
  br i1 %i.dz, label %bb.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i123

bb.az:                                            ; preds = %._crit_edge.i.i114
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc128 unwind label %bb.bk

.noexc128:                                        ; preds = %bb.az
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i123: ; preds = %._crit_edge.i.i114
  %i.ea = add nuw nsw i64 %i.dy, 6                ; 2 uses
  %.not.i.i.i.i124 = icmp samesign ugt i64 %i.dy, 9
  br i1 %.not.i.i.i.i124, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i123
  %.not8.i.i.i.i125 = icmp eq i64 %i.dy, 0
  br i1 %.not8.i.i.i.i125, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 22 ; 2 uses
  %cond.i.i.i.i126 = icmp eq i64 %i.dy, 1
  br i1 %cond.i.i.i.i126, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ec = load i8, ptr %i.dw, align 1, !tbaa !15, !noalias !26
  store i8 %i.ec, ptr %i.eb, align 2, !tbaa !15, !noalias !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.eb, ptr align 1 %i.dw, i64 %i.dy, i1 false), !noalias !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

end_hunk_0
