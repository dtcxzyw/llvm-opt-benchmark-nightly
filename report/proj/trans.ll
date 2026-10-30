Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/trans?download=true
inline.NumInlined: 143
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z26pj_warn_about_missing_gridP8PJconsts:.noexc.i

.invoke:                                          ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #17
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i41: ; preds = %bb.f
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.5, i64 noundef 180)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit44 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i41
  store i8 0, ptr %i.at, align 1, !tbaa !51
  %.pre = load i8, ptr %i.v, align 4, !tbaa !50, !range !23
  %i.ba = trunc nuw i8 %.pre to i1
  %i.bb = select i1 %i.ba, i32 1, i32 2
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit44, %bb.e, %._crit_edge
  %i.bc = phi i32 [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit44 ], [ 2, %bb.e ], [ 1, %._crit_edge ]
  %i.bd = load ptr, ptr %0, align 8, !tbaa !49
  %i.be = load ptr, ptr %1, align 8, !tbaa !28
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.bd, i32 noundef %i.bc, ptr noundef %i.be)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %1, align 8, !tbaa !28    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.d
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !21
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void

bb.i:                                             ; preds = %bb.b, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %i.y, %bb.b ], [ %lpad.loopexit.split-lp58, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bj = load ptr, ptr %1, align 8, !tbaa !28    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.d
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bl = load i64, ptr %i.d, align 8, !tbaa !21
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !26
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.d, ptr %i.a, align 8, !tbaa !27
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !28
  %i.g = load i64, ptr %i.a, align 8, !tbaa !27
  store i64 %i.g, ptr %i.b, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !21
  store i8 %i.i, ptr %i.h, align 1, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !29
  %i.l = load ptr, ptr %0, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare ptr @proj_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

declare i32 @proj_coordoperation_get_grid_used_count(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @proj_coordoperation_get_grid_used(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z6pj_logP6pj_ctxiPKcz(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @proj_trans(ptr dead_on_unwind noalias writable sret(%union.PJ_COORD) align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef byval(%union.PJ_COORD) align 8 %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 15 uses
  %i.b = alloca [2 x i32], align 8                ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 31 uses
  %5 = alloca %union.PJ_COORD, align 8            ; 21 uses
  %6 = alloca %"class.std::shared_ptr.8", align 16 ; 9 uses
  %7 = alloca %"class.dropbox::oxygen::nn", align 16 ; 7 uses
  %8 = alloca %"class.std::set", align 8          ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 4 uses
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq i32 %2, 0
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !22
  br label %bb.dl

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !52
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i32 @_Z21pj_opposite_direction12PJ_DIRECTION(i32 noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0105 = phi i32 [ %i.g, %bb.d ], [ %2, %bb.c ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93
  %.not158 = icmp eq ptr %i.i, null
  br i1 %.not158, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.k = load i8, ptr %i.j, align 8, !tbaa !94, !range !23, !noundef !24
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %1, align 8, !tbaa !49
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str.6)
  %i.n = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027) ; 0 uses
  tail call void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8 %0)
  br label %bb.dl

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 816 ; 8 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53   ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.dd, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 -1, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 846
  %i.u = load i8, ptr %i.t, align 2, !tbaa !95, !range !23, !noundef !24
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.j, label %.peel.begin

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 845
  %i.x = load i8, ptr %i.w, align 1, !tbaa !51, !range !23, !noundef !24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.peel.begin, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 844
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !50, !range !23, !noundef !24 ; 2 uses
  %i.ab = xor i8 %i.aa, 1
  %11 = icmp eq i8 %i.aa, 0
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.k, %bb.j, %bb.i
  %12 = phi i1 [ false, %bb.j ], [ false, %bb.i ], [ %11, %bb.k ]
  %i.ac = phi i8 [ 0, %bb.j ], [ 0, %bb.i ], [ %i.ab, %bb.k ]
  %i.ad = ptrtoint ptr %i.r to i64
  %i.ae = ptrtoint ptr %i.p to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 192               ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 14 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.am = icmp eq i32 %.0105, 1                   ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 844 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 845 ; 6 uses
  %i.ap = call noundef i32 @_Z26pj_get_suggested_operationP6pj_ctxRKSt6vectorI16PJCoordOperationSaIS2_EEPKib12PJ_DIRECTION8PJ_COORD(ptr poison, ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull %i.b, i1 noundef zeroext %12, i32 noundef %.0105, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %3) ; 5 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %.thread149, label %._crit_edge

._crit_edge:                                      ; preds = %.peel.begin
  %.pre198 = load i32, ptr %i.ai, align 8, !tbaa !54
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.ar = zext nneg i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [192 x i8], ptr %.pre, i64 %i.ar ; 3 uses
  %.not113.peel = icmp eq i32 %.pre198, %i.ap
  br i1 %.not113.peel, label %bb.o, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.at = load ptr, ptr %1, align 8, !tbaa !49
  %i.au = tail call i32 @proj_log_level(ptr noundef %i.at, i32 noundef 4)
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %.noexc.i.peel, label %bb.n

.noexc.i.peel:                                    ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.aj, ptr %4, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 27, ptr %i.a, align 8, !tbaa !27
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.peel unwind label %.loopexit.split-lp183.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.peel:                                      ; preds = %.noexc.i.peel
  store ptr %i.aw, ptr %4, align 8, !tbaa !28
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !27  ; 3 uses
  store i64 %i.ax, ptr %i.aj, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.aw, ptr noundef nonnull align 1 dereferenceable(27) @.str.8, i64 27, i1 false)
  store i64 %i.ax, ptr %i.ak, align 8, !tbaa !29
  %i.ay = load ptr, ptr %4, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 0, ptr %i.az, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !29 ; 2 uses
  %i.bc = load i64, ptr %i.ak, align 8, !tbaa !29
  %i.bd = sub i64 4611686018427387903, %i.bc
  %i.be = icmp ult i64 %i.bd, %i.bb
  br i1 %i.be, label %.loopexit187, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %.noexc.peel
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !28
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.bg, i64 noundef %i.bb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.bi = load ptr, ptr %1, align 8, !tbaa !49
  %i.bj = load ptr, ptr %4, align 8, !tbaa !28
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.bi, i32 noundef 2, ptr noundef %i.bj)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.bk = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.aj
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.m
  %i.bm = load i64, ptr %i.aj, align 8, !tbaa !21
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.l
  store i32 %i.ap, ptr %i.ai, align 8, !tbaa !54
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 72 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !55 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 672
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !96, !range !23, !noundef !24
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 664
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !97
  store double %i.bu, ptr %i.al, align 8, !tbaa !21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !55 ; 2 uses
  br i1 %i.am, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = call noundef zeroext i1 @_Z8pj_inv4dR8PJ_COORDP8PJconsts(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.bv) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bx = call noundef zeroext i1 @_Z8pj_fwd4dR8PJ_COORDP8PJconsts(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.bv) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.by = load ptr, ptr %i.bo, align 8, !tbaa !55
  %i.bz = call i32 @proj_errno(ptr noundef %i.by)
  %i.ca = icmp eq i32 %i.bz, 4099
  br i1 %i.ca, label %.loopexit191.a, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = load double, ptr %5, align 8, !tbaa !21
  %i.cc = fcmp une double %i.cb, +inf
  br i1 %i.cc, label %.loopexit192, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = load i8, ptr %i.an, align 4, !tbaa !50, !range !23, !noundef !24
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = load i8, ptr %i.ao, align 1, !tbaa !51, !range !23, !noundef !24
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.x, label %.peel.next

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ch = load ptr, ptr %i.bo, align 8, !tbaa !55
  call void @_Z26pj_warn_about_missing_gridP8PJconsts(ptr noundef %i.ch)
  %i.ci = load i8, ptr %i.an, align 4, !tbaa !50, !range !23, !noundef !24
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.loopexit193, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 0, ptr %i.ao, align 1, !tbaa !51
  br label %.peel.next

.peel.next:                                       ; preds = %bb.y, %bb.w
  %.1102.peel = phi i8 [ 1, %bb.y ], [ %i.ac, %bb.w ] ; 2 uses
  store i32 %i.ap, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cl = trunc nuw i8 %.1102.peel to i1
  %i.cm = call noundef i32 @_Z26pj_get_suggested_operationP6pj_ctxRKSt6vectorI16PJCoordOperationSaIS2_EEPKib12PJ_DIRECTION8PJ_COORD(ptr poison, ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull %i.b, i1 noundef zeroext %i.cl, i32 noundef %.0105, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %3) ; 5 uses
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %.thread149, label %.lr.ph247

.lr.ph247:                                        ; preds = %.peel.next
  %i.co = call i32 @proj_errno_reset(ptr noundef nonnull %1)
  %i.cp = load ptr, ptr %1, align 8, !tbaa !49
  %i.cq = call i32 @proj_log_level(ptr noundef %i.cp, i32 noundef 4)
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph247
  %i.cs = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  %i.ct = call ptr @proj_context_errno_string(ptr noundef %i.cs, i32 noundef %i.co)
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.cs, i32 noundef 2, ptr noundef %i.ct)
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph247, %bb.z
  %i.cu = load ptr, ptr %1, align 8, !tbaa !49
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.cu, i32 noundef 2, ptr noundef nonnull @.str.7)
  %i.cv = zext nneg i32 %i.cm to i64
  %i.cw = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.cx = getelementptr inbounds nuw [192 x i8], ptr %i.cw, i64 %i.cv ; 3 uses
  %i.cy = load i32, ptr %i.ai, align 8, !tbaa !54
  %.not113 = icmp eq i32 %i.cy, %i.cm
  br i1 %.not113, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = load ptr, ptr %1, align 8, !tbaa !49
  %i.da = call i32 @proj_log_level(ptr noundef %i.cz, i32 noundef 4)
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %.noexc.i, label %bb.ad

.noexc.i:                                         ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.aj, ptr %4, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 27, ptr %i.a, align 8, !tbaa !27
  %i.dc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp183.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.dc, ptr %4, align 8, !tbaa !28
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !27  ; 3 uses
  store i64 %i.dd, ptr %i.aj, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.dc, ptr noundef nonnull align 1 dereferenceable(27) @.str.8, i64 27, i1 false)
  store i64 %i.dd, ptr %i.ak, align 8, !tbaa !29
  %i.de = load ptr, ptr %4, align 8, !tbaa !28
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 0, ptr %i.df, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !29 ; 2 uses
  %i.di = load i64, ptr %i.ak, align 8, !tbaa !29
  %i.dj = sub i64 4611686018427387903, %i.di
  %i.dk = icmp ult i64 %i.dj, %i.dh
  br i1 %i.dk, label %.loopexit187, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit187:                                     ; preds = %.noexc, %.noexc.1, %.noexc.peel
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #17
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_0
