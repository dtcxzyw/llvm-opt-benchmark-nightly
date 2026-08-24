Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/trans?download=true
inline.NumInlined: 143
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z26pj_warn_about_missing_gridP8PJconsts:.noexc.i
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.5, i64 noundef 180)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit44 unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i41
  store i8 0, ptr %i.au, align 1, !tbaa !74
  %.pre = load i8, ptr %i.v, align 4, !tbaa !71, !range !30
  %i.bb = trunc nuw i8 %.pre to i1
  %i.bc = select i1 %i.bb, i32 1, i32 2
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit44, %bb.g, %._crit_edge
  %i.bd = phi i32 [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit44 ], [ 2, %bb.g ], [ 1, %._crit_edge ]
  %i.be = load ptr, ptr %0, align 8, !tbaa !51
  %i.bf = load ptr, ptr %1, align 8, !tbaa !49
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.be, i32 noundef %i.bd, ptr noundef %i.bf)
          to label %bb.k unwind label %bb.c

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.d
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bi = load i64, ptr %i.d, align 8, !tbaa !28
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void

bb.l:                                             ; preds = %bb.c, %bb.f, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.y, %bb.b ], [ %lpad.phi, %bb.f ], [ %i.z, %bb.c ]
  %i.bk = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.d
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.l
  %i.bm = load i64, ptr %i.d, align 8, !tbaa !28
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !47
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.d, ptr %i.a, align 8, !tbaa !48
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !49
  %i.g = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.g, ptr %i.b, align 8, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.i, ptr %i.h, align 1, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !50
  %i.l = load ptr, ptr %0, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !28
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !27
  br label %bb.dn

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !75
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i32 @_Z21pj_opposite_direction12PJ_DIRECTION(i32 noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0105 = phi i32 [ %i.g, %bb.d ], [ %2, %bb.c ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76
  %.not158 = icmp eq ptr %i.i, null
  br i1 %.not158, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.k = load i8, ptr %i.j, align 8, !tbaa !77, !range !30, !noundef !31
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %1, align 8, !tbaa !51
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str.6)
  %i.n = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 1027) ; 0 uses
  tail call void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8 %0)
  br label %bb.dn

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 816 ; 8 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !78   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !78   ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.df, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 -1, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 846
  %i.u = load i8, ptr %i.t, align 2, !tbaa !79, !range !30, !noundef !31
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.j, label %.peel.begin

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 845
  %i.x = load i8, ptr %i.w, align 1, !tbaa !74, !range !30, !noundef !31
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.peel.begin, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 844
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !71, !range !30, !noundef !31
  %i.ab = xor i8 %i.aa, 1
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.k, %bb.j, %bb.i
  %i.ac = phi i8 [ 0, %bb.j ], [ 0, %bb.i ], [ %i.ab, %bb.k ] ; 2 uses
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
  %i.ap = trunc nuw i8 %i.ac to i1
  %i.aq = call noundef i32 @_Z26pj_get_suggested_operationP6pj_ctxRKSt6vectorI16PJCoordOperationSaIS2_EEPKib12PJ_DIRECTION8PJ_COORD(ptr poison, ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull %i.b, i1 noundef zeroext %i.ap, i32 noundef %.0105, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %3) ; 5 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.thread149, label %._crit_edge

._crit_edge:                                      ; preds = %.peel.begin
  %.pre198 = load i32, ptr %i.ai, align 8, !tbaa !80
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [192 x i8], ptr %.pre, i64 %i.as ; 3 uses
  %.not113.peel = icmp eq i32 %.pre198, %i.aq
  br i1 %.not113.peel, label %bb.o, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.au = load ptr, ptr %1, align 8, !tbaa !51
  %i.av = tail call i32 @proj_log_level(ptr noundef %i.au, i32 noundef 4)
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %.noexc.i.peel, label %bb.n

.noexc.i.peel:                                    ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.aj, ptr %4, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 27, ptr %i.a, align 8, !tbaa !48
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.peel unwind label %.loopexit.split-lp183 ; 2 uses

.noexc.peel:                                      ; preds = %.noexc.i.peel
  store ptr %i.ax, ptr %4, align 8, !tbaa !49
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !48  ; 3 uses
  store i64 %i.ay, ptr %i.aj, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ax, ptr noundef nonnull align 1 dereferenceable(27) @.str.8, i64 27, i1 false)
  store i64 %i.ay, ptr %i.ak, align 8, !tbaa !50
  %i.az = load ptr, ptr %4, align 8, !tbaa !49
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 0, ptr %i.ba, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !50 ; 2 uses
  %i.bd = load i64, ptr %i.ak, align 8, !tbaa !50
  %i.be = sub i64 4611686018427387903, %i.bd
  %i.bf = icmp ult i64 %i.be, %i.bc
  br i1 %i.bf, label %.loopexit187, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %.noexc.peel
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !49
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.bh, i64 noundef %i.bc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.bj = load ptr, ptr %1, align 8, !tbaa !51
  %i.bk = load ptr, ptr %4, align 8, !tbaa !49
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.bj, i32 noundef 2, ptr noundef %i.bk)
          to label %bb.m unwind label %.loopexit.loopexit.split-lp

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.bl = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.aj
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.m
  %i.bn = load i64, ptr %i.aj, align 8, !tbaa !28
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.l
  store i32 %i.aq, ptr %i.ai, align 8, !tbaa !80
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !27
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 72 ; 4 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !81 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 672
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !82, !range !30, !noundef !31
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 664
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !83
  store double %i.bv, ptr %i.al, align 8, !tbaa !28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !81 ; 2 uses
  br i1 %i.am, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = call noundef zeroext i1 @_Z8pj_inv4dR8PJ_COORDP8PJconsts(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.bw) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.by = call noundef zeroext i1 @_Z8pj_fwd4dR8PJ_COORDP8PJconsts(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.bw) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bz = load ptr, ptr %i.bp, align 8, !tbaa !81
  %i.ca = call i32 @proj_errno(ptr noundef %i.bz)
  %i.cb = icmp eq i32 %i.ca, 4099
  br i1 %i.cb, label %.loopexit191, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = load double, ptr %5, align 8, !tbaa !28
  %i.cd = fcmp une double %i.cc, +inf
  br i1 %i.cd, label %.loopexit192, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = load i8, ptr %i.an, align 4, !tbaa !71, !range !30, !noundef !31
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = load i8, ptr %i.ao, align 1, !tbaa !74, !range !30, !noundef !31
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.x, label %.peel.next

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ci = load ptr, ptr %i.bp, align 8, !tbaa !81
  call void @_Z26pj_warn_about_missing_gridP8PJconsts(ptr noundef %i.ci)
  %i.cj = load i8, ptr %i.an, align 4, !tbaa !71, !range !30, !noundef !31
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %.loopexit193, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 0, ptr %i.ao, align 1, !tbaa !74
  br label %.peel.next

.peel.next:                                       ; preds = %bb.y, %bb.w
  %.1102.peel = phi i8 [ 1, %bb.y ], [ %i.ac, %bb.w ] ; 2 uses
  store i32 %i.aq, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cm = trunc nuw i8 %.1102.peel to i1
  %i.cn = call noundef i32 @_Z26pj_get_suggested_operationP6pj_ctxRKSt6vectorI16PJCoordOperationSaIS2_EEPKib12PJ_DIRECTION8PJ_COORD(ptr poison, ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull %i.b, i1 noundef zeroext %i.cm, i32 noundef %.0105, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %3) ; 5 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %.thread149, label %.lr.ph243

.lr.ph243:                                        ; preds = %.peel.next
  %i.cp = call i32 @proj_errno_reset(ptr noundef nonnull %1)
  %i.cq = load ptr, ptr %1, align 8, !tbaa !51
  %i.cr = call i32 @proj_log_level(ptr noundef %i.cq, i32 noundef 4)
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph243
  %i.ct = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.cu = call ptr @proj_context_errno_string(ptr noundef %i.ct, i32 noundef %i.cp)
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.ct, i32 noundef 2, ptr noundef %i.cu)
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph243, %bb.z
  %i.cv = load ptr, ptr %1, align 8, !tbaa !51
  call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.cv, i32 noundef 2, ptr noundef nonnull @.str.7)
  %i.cw = zext nneg i32 %i.cn to i64
  %i.cx = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.cy = getelementptr inbounds nuw [192 x i8], ptr %i.cx, i64 %i.cw ; 3 uses
  %i.cz = load i32, ptr %i.ai, align 8, !tbaa !80
  %.not113 = icmp eq i32 %i.cz, %i.cn
  br i1 %.not113, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %1, align 8, !tbaa !51
  %i.db = call i32 @proj_log_level(ptr noundef %i.da, i32 noundef 4)
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %.noexc.i, label %bb.ad

.noexc.i:                                         ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.aj, ptr %4, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 27, ptr %i.a, align 8, !tbaa !48
  %i.dd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.loopexit182 ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.dd, ptr %4, align 8, !tbaa !49
  %i.de = load i64, ptr %i.a, align 8, !tbaa !48  ; 3 uses
  store i64 %i.de, ptr %i.aj, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.dd, ptr noundef nonnull align 1 dereferenceable(27) @.str.8, i64 27, i1 false)
  store i64 %i.de, ptr %i.ak, align 8, !tbaa !50
  %i.df = load ptr, ptr %4, align 8, !tbaa !49
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store i8 0, ptr %i.dg, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
end_hunk_0
