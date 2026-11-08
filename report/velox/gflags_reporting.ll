Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/gflags_reporting?download=true
inline.NumInlined: 549
inline.NumDeleted: 184
begin_hunk_0_@_ZN3fLS20StringFlagDestructorD2Ev:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = load i64, ptr %i.j, align 8, !tbaa !111
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6google15DescribeOneFlagB5cxx11ERKNS_19CommandLineFlagInfoE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 !guid !144 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !113
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !114
  store i8 0, ptr %i.b, align 8, !tbaa !111
  %i.d = load ptr, ptr %1, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !110
  invoke void (ptr, ptr, ...) @_ZN6google13SStringPrintfEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull %2, ptr noundef nonnull @.str.31, ptr noundef %i.d, ptr noundef %i.f)
          to label %._crit_edge.i.i unwind label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !110
  %i.h = load i64, ptr %i.c, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i64 0, ptr %i.j, align 8, !tbaa !114
  store i8 0, ptr %i.i, align 8, !tbaa !111
  %i.k = trunc i64 %i.h to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !115
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ap, %._crit_edge.i.i
  %i.n = phi i32 [ 0, %._crit_edge.i.i ], [ 6, %bb.ap ] ; 4 uses
  %.047 = phi ptr [ %i.g, %._crit_edge.i.i ], [ %.249, %bb.ap ] ; 19 uses
  %.045 = phi i32 [ %i.k, %._crit_edge.i.i ], [ %.2, %bb.ap ] ; 2 uses
  %i.o = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.047, i32 noundef 10) #23 ; 2 uses
  %cond = icmp eq ptr %i.o, null
  br i1 %cond, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %i.n, %.045                  ; 5 uses
  %i.q = icmp slt i32 %i.p, 80
  br i1 %i.q, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.047) #22 ; 6 uses
  %i.s = load i64, ptr %i.j, align 8, !tbaa !114  ; 5 uses
  %i.t = sub i64 9223372036854775807, %i.s
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.v = add i64 %i.s, %i.r                       ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !110    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.y = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.y)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.z = load i64, ptr %i.i, align 8, !tbaa !111
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aa = phi i64 [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.v, %i.aa
  br i1 %.not.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i116.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.r, 1
  br i1 %cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %.047, align 1, !tbaa !111
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !111
  br label %._crit_edge.i.i116.sink.split

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %.047, i64 %i.r, i1 false)
  br label %._crit_edge.i.i116.sink.split

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef 0, ptr noundef nonnull %.047, i64 noundef %i.r)
          to label %._crit_edge.i.i116.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

bb.k:                                             ; preds = %bb.b
  %magicptr = ptrtoint ptr %i.o to i64
  %i.ae = ptrtoint ptr %.047 to i64
  %i.af = sub i64 %magicptr, %i.ae                ; 3 uses
  %i.ag = sub nuw nsw i32 80, %i.n
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = icmp slt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.l, label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %sext = shl i64 %i.af, 32                       ; 3 uses
  %i.aj = ashr exact i64 %sext, 32                ; 4 uses
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !114 ; 5 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.l
  %i.an = add i64 %i.ak, %i.aj                    ; 3 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !110   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.i
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aq = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !111
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = phi i64 [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.an, %i.as
  br i1 %.not.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %sext, 0
  br i1 %.not8.i.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak ; 2 uses
  %cond.i.i = icmp eq i64 %sext, 4294967296
  br i1 %cond.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = load i8, ptr %.047, align 1, !tbaa !111
  store i8 %i.au, ptr %i.at, align 1, !tbaa !111
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %.047, i64 %i.aj, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ak, i64 noundef 0, ptr noundef nonnull %.047, i64 noundef %i.aj)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.q
  store i64 %i.an, ptr %i.j, align 8, !tbaa !114
  %i.av = load ptr, ptr %0, align 8, !tbaa !110
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  store i8 0, ptr %i.aw, align 1, !tbaa !111
  %i.ax = trunc i64 %i.af to i32
  %i.ay = add nsw i32 %i.ax, 1                    ; 2 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %.249.phi.trans.insert = getelementptr inbounds i8, ptr %.047, i64 %i.az
  %.pre = load i8, ptr %.249.phi.trans.insert, align 1, !tbaa !111
  br label %bb.an

.lr.ph:                                           ; preds = %bb.k, %bb.c
  %i.ba = sub nuw nsw i32 79, %i.n                ; 2 uses
  %i.bb = tail call ptr @__ctype_b_loc() #24      ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !146
  %i.bd = zext nneg i32 %i.ba to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv264 = phi i32 [ %i.ba, %.lr.ph ], [ %indvars.iv.next265, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 11 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.047, i64 %indvars.iv
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !111
  %i.bg = sext i8 %i.bf to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !148
  %i.bj = and i16 %i.bi, 8192
  %.not69 = icmp eq i16 %i.bj, 0
  br i1 %.not69, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bk = icmp sgt i64 %indvars.iv, 1
  %indvars.iv.next265 = add i32 %indvars.iv264, -1
  br i1 %i.bk, label %bb.s, label %.critedge, !llvm.loop !136

.critedge:                                        ; preds = %bb.t
  %i.bl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.047) #22 ; 6 uses
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !114 ; 5 uses
  %i.bn = sub i64 9223372036854775807, %i.bm
  %i.bo = icmp ult i64 %i.bn, %i.bl
  br i1 %i.bo, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96

.invoke:                                          ; preds = %bb.l, %.critedge, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96: ; preds = %.critedge
  %i.bp = add i64 %i.bm, %i.bl                    ; 5 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !110   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.i
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96
  %i.bs = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !111
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102
  %i.bu = phi i64 [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102 ]
  %.not.i.i.i99 = icmp ugt i64 %i.bp, %i.bu
  br i1 %.not.i.i.i99, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98
  %.not8.i.i.i100 = icmp eq i64 %i.bl, 0
  br i1 %.not8.i.i.i100, label %._crit_edge.i.i116.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bm ; 2 uses
  %cond.i.i.i101 = icmp eq i64 %i.bl, 1
  br i1 %cond.i.i.i101, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bw = load i8, ptr %.047, align 1, !tbaa !111
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !111
  br label %._crit_edge.i.i116.sink.split

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %.047, i64 %i.bl, i1 false)
  br label %._crit_edge.i.i116.sink.split

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bm, i64 noundef 0, ptr noundef nonnull %.047, i64 noundef %i.bl)
          to label %._crit_edge.i.i116.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.ao, %.invoke, %bb.y, %bb.i, %bb.bh
  %lpad.loopexit.split-lp343 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.s
  %i.bx = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.l, ptr %3, align 8, !tbaa !113
  %i.by = icmp samesign ugt i64 %indvars.iv, 15
  br i1 %i.by, label %bb.aa, label %._crit_edge.i.i106

bb.aa:                                            ; preds = %bb.z
  %i.bz = add nuw nsw i64 %indvars.iv, 1
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #26
          to label %._crit_edge.i.i106.thread unwind label %bb.am ; 2 uses

._crit_edge.i.i106.thread:                        ; preds = %bb.aa
  store ptr %i.ca, ptr %3, align 8, !tbaa !110
  store i64 %indvars.iv, ptr %i.l, align 8, !tbaa !111
  br label %bb.ac

._crit_edge.i.i106:                               ; preds = %bb.z
  %cond210 = icmp eq i64 %indvars.iv, 1
  br i1 %cond210, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i106
  %i.cb = load i8, ptr %.047, align 1, !tbaa !111
  store i8 %i.cb, ptr %i.l, align 8, !tbaa !111
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i106.thread, %._crit_edge.i.i106
  %i.cc = phi ptr [ %i.ca, %._crit_edge.i.i106.thread ], [ %i.l, %._crit_edge.i.i106 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull align 1 %.047, i64 %indvars.iv, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cd = phi ptr [ %i.cc, %bb.ac ], [ %i.l, %bb.ab ]
  store i64 %indvars.iv, ptr %i.m, align 8, !tbaa !114
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv
  store i8 0, ptr %i.ce, align 1, !tbaa !111
  %i.cf = load ptr, ptr %3, align 8, !tbaa !110   ; 3 uses
  %i.cg = load i64, ptr %i.m, align 8, !tbaa !114 ; 6 uses
  %i.ch = load i64, ptr %i.j, align 8, !tbaa !114 ; 5 uses
  %i.ci = sub i64 9223372036854775807, %i.ch
  %i.cj = icmp ult i64 %i.ci, %i.cg
  br i1 %i.cj, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
          to label %.noexc111 unwind label %.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %bb.ae
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.ck = add i64 %i.ch, %i.cg                    ; 3 uses
  %i.cl = load ptr, ptr %0, align 8, !tbaa !110   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.i
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cn = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.cn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.co = load i64, ptr %i.i, align 8, !tbaa !111
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cp = phi i64 [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.ck, %i.cp
  br i1 %.not.i.i.i.i, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not8.i.i.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ch ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.cg, 1
  br i1 %cond.i.i.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cr = load i8, ptr %i.cf, align 1, !tbaa !111
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !111
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cf, i64 %i.cg, i1 false)
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ch, i64 noundef 0, ptr noundef %i.cf, i64 noundef %i.cg)
          to label %bb.ak unwind label %.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.af, %bb.aj
  store i64 %i.ck, ptr %i.j, align 8, !tbaa !114
  %i.cs = load ptr, ptr %0, align 8, !tbaa !110
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck
  store i8 0, ptr %i.ct, align 1, !tbaa !111
  %i.cu = load ptr, ptr %3, align 8, !tbaa !110   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.l
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.cw = load i64, ptr %i.l, align 8, !tbaa !111
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.cy = add nsw i32 %i.n, %i.bx
  store i32 %i.cy, ptr %i.a, align 4, !tbaa !115
  %i.cz = load ptr, ptr %i.bb, align 8, !tbaa !146
  %10 = zext i32 %indvars.iv264 to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %bb.al ], [ %10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.047, i64 %indvars.iv267
  %i.db = load i8, ptr %i.da, align 1, !tbaa !111 ; 2 uses
  %i.dc = sext i8 %i.db to i64
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !148
  %i.df = and i16 %i.de, 8192
  %.not71 = icmp eq i16 %i.df, 0
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1
  br i1 %.not71, label %.loopexit, label %bb.al, !llvm.loop !137

bb.am:                                            ; preds = %bb.aa
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %3, align 8, !tbaa !110   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.l
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp
  %i.dj = load i64, ptr %i.l, align 8, !tbaa !111
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.am
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.am ], [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.al
  %i.dl = trunc nuw i64 %indvars.iv267 to i32
  br label %bb.an

bb.an:                                            ; preds = %.loopexit, %bb.r
  %i.dm = phi i8 [ %.pre, %bb.r ], [ %i.db, %.loopexit ]
  %.pn242 = phi i64 [ %i.az, %bb.r ], [ %indvars.iv267, %.loopexit ]
  %.pn211 = phi i32 [ %i.ay, %bb.r ], [ %i.dl, %.loopexit ]
  %.249 = getelementptr inbounds i8, ptr %.047, i64 %.pn242
  %.2 = sub nsw i32 %.045, %.pn211
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %._crit_edge.i.i116, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke void (ptr, ptr, ...) @_ZN6google13StringAppendFEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  store i32 6, ptr %i.a, align 4, !tbaa !115
  br label %bb.b

._crit_edge.i.i116.sink.split:                    ; preds = %bb.x, %bb.w, %bb.u, %bb.y, %bb.i, %bb.e, %bb.g, %bb.h
  %.sink = phi i64 [ %i.v, %bb.i ], [ %i.v, %bb.h ], [ %i.v, %bb.g ], [ %i.v, %bb.e ], [ %i.bp, %bb.y ], [ %i.bp, %bb.u ], [ %i.bp, %bb.w ], [ %i.bp, %bb.x ] ; 2 uses
  %.lcssa320.sink = phi i32 [ %i.p, %bb.i ], [ %i.p, %bb.h ], [ %i.p, %bb.g ], [ %i.p, %bb.e ], [ 80, %bb.y ], [ 80, %bb.u ], [ 80, %bb.w ], [ 80, %bb.x ]
  store i64 %.sink, ptr %i.j, align 8, !tbaa !114
  %i.do = load ptr, ptr %0, align 8, !tbaa !110
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sink
  store i8 0, ptr %i.dp, align 1, !tbaa !111
  store i32 %.lcssa320.sink, ptr %i.a, align 4, !tbaa !115
  br label %._crit_edge.i.i116

._crit_edge.i.i116:                               ; preds = %bb.an, %._crit_edge.i.i116.sink.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 14 uses
  store ptr %i.dq, ptr %5, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dq, ptr noundef nonnull align 1 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 6, ptr %i.dr, align 8, !tbaa !114
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i8 0, ptr %i.ds, align 2, !tbaa !111
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !110, !noalias !149 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !114, !noalias !149 ; 7 uses
  %i.dx = icmp ugt i64 %i.dw, 9223372036854775801
  br i1 %i.dx, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i126

bb.aq:                                            ; preds = %._crit_edge.i.i116
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
          to label %.noexc132 unwind label %bb.bb

.noexc132:                                        ; preds = %bb.aq
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i126: ; preds = %._crit_edge.i.i116
  %i.dy = add nuw nsw i64 %i.dw, 6                ; 2 uses
  %.not.i.i.i.i127 = icmp samesign ugt i64 %i.dw, 9
  br i1 %.not.i.i.i.i127, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i126
  %.not8.i.i.i.i128 = icmp eq i64 %i.dw, 0
  br i1 %.not8.i.i.i.i128, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 22 ; 2 uses
  %cond.i.i.i.i129 = icmp eq i64 %i.dw, 1
  br i1 %cond.i.i.i.i129, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ea = load i8, ptr %i.du, align 1, !tbaa !111, !noalias !149
  store i8 %i.ea, ptr %i.dz, align 2, !tbaa !111, !noalias !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dz, ptr align 1 %i.du, i64 %i.dw, i1 false), !noalias !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i126
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 6, i64 noundef 0, ptr noundef %i.du, i64 noundef %i.dw)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i_crit_edge unwind label %bb.bb

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i_crit_edge: ; preds = %bb.av
  %.pre270 = load ptr, ptr %5, align 8, !tbaa !110, !noalias !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i_crit_edge, %bb.au, %bb.at, %bb.ar
  %i.eb = phi ptr [ %.pre270, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i_crit_edge ], [ %i.dq, %bb.au ], [ %i.dq, %bb.at ], [ %i.dq, %bb.ar ]
  store i64 %i.dy, ptr %i.dr, align 8, !tbaa !114, !noalias !149
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dy
  store i8 0, ptr %i.ec, align 1, !tbaa !111, !noalias !149
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ed, ptr %4, align 8, !tbaa !113, !alias.scope !149
  %i.ee = load ptr, ptr %5, align 8, !tbaa !110, !noalias !149 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.dq
  br i1 %i.ef, label %bb.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.eg = load i64, ptr %i.dr, align 8, !tbaa !114, !noalias !149 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, 16
  call void @llvm.assume(i1 %i.eh)
  %i.ei = add nuw nsw i64 %i.eg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ed, ptr noundef nonnull align 8 dereferenceable(1) %i.dq, i64 %i.ei, i1 false)
  br label %bb.ax

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.ee, ptr %4, align 8, !tbaa !110, !alias.scope !149
  %i.ej = load i64, ptr %i.dq, align 8, !tbaa !111, !noalias !149
  store i64 %i.ej, ptr %i.ed, align 8, !tbaa !111, !alias.scope !149
  %.pre.i = load i64, ptr %i.dr, align 8, !tbaa !114, !noalias !149
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.aw
  %i.ek = phi i64 [ %i.eg, %bb.aw ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ]
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !114, !alias.scope !149
  store ptr %i.dq, ptr %5, align 8, !tbaa !110, !noalias !149
  store i64 0, ptr %i.dr, align 8, !tbaa !114, !noalias !149
  store i8 0, ptr %i.dq, align 8, !tbaa !111, !noalias !149
  invoke fastcc void @_ZN6googleL9AddStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_Pi(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %0, ptr noundef %i.a)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.em = load ptr, ptr %4, align 8, !tbaa !110   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ed
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.ay
  %i.eo = load i64, ptr %i.ed, align 8, !tbaa !111
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  %i.eq = load ptr, ptr %5, align 8, !tbaa !110   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.dq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.es = load i64, ptr %i.dq, align 8, !tbaa !111
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.eu, ptr %7, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.eu, ptr noundef nonnull align 1 dereferenceable(7) @.str.34, i64 7, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 7, ptr %i.ev, align 8, !tbaa !114
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 23
  store i8 0, ptr %i.ew, align 1, !tbaa !111
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !150
  %i.fa = load ptr, ptr %i.dt, align 8, !tbaa !110, !noalias !150
  %i.fb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fa, ptr noundef nonnull dereferenceable(7) @.str.44) #23, !noalias !150
  %i.fc = icmp eq i32 %i.fb, 0
  %.str.45..str.46.i = select i1 %i.fc, ptr @.str.45, ptr @.str.46
  invoke void (ptr, ptr, ...) @_ZN6google12StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %.str.45..str.46.i, ptr noundef nonnull %i.eu, ptr noundef %i.ez)
          to label %_ZN6googleL26PrintStringFlagsWithQuotesERKNS_19CommandLineFlagInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %bb.bd

end_hunk_0
