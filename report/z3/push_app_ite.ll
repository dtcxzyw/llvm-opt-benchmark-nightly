Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/push_app_ite?download=true
inline.NumInlined: 55
inline.NumDeleted: 34
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%class.obj_ref = type { ptr, ptr }

$_ZN7obj_refI4expr11ast_managerED2Ev = comdat any

$_ZN16push_app_ite_cfgD0Ev = comdat any

$_ZN16push_app_ite_cfgD2Ev = comdat any

$_ZN19ng_push_app_ite_cfgD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZTI20default_rewriter_cfg = comdat any

$_ZTS20default_rewriter_cfg = comdat any

@_ZTV16push_app_ite_cfg = hidden local_unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI16push_app_ite_cfg, ptr @_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr, ptr @_ZN16push_app_ite_cfgD2Ev, ptr @_ZN16push_app_ite_cfgD0Ev] }, align 8
@_ZTI16push_app_ite_cfg = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16push_app_ite_cfg, ptr @_ZTI20default_rewriter_cfg }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS16push_app_ite_cfg = hidden constant [19 x i8] c"16push_app_ite_cfg\00", align 1
@_ZTI20default_rewriter_cfg = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS20default_rewriter_cfg }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS20default_rewriter_cfg = linkonce_odr hidden constant [23 x i8] c"20default_rewriter_cfg\00", comdat, align 1
@_ZTV19ng_push_app_ite_cfg = hidden local_unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI19ng_push_app_ite_cfg, ptr @_ZN19ng_push_app_ite_cfg9is_targetEP9func_decljPKP4expr, ptr @_ZN16push_app_ite_cfgD2Ev, ptr @_ZN19ng_push_app_ite_cfgD0Ev] }, align 8
@_ZTI19ng_push_app_ite_cfg = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS19ng_push_app_ite_cfg, ptr @_ZTI16push_app_ite_cfg }, align 8
@_ZTS19ng_push_app_ite_cfg = hidden constant [22 x i8] c"19ng_push_app_ite_cfg\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.preheader, label %_ZNK4decl13get_family_idEv.exit.thread.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i:       ; preds = %bb.a
  %i.e = load i32, ptr %i.c, align 8, !tbaa !20
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.split, label %.preheader

.split:                                           ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21
  %.not16.a = icmp eq i32 %i.h, 4
  br i1 %.not16.a, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i, %bb.a, %.split
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not16.old = icmp eq i32 %2, 0
  br i1 %.not16.old, label %._crit_edge, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.preheader
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.a, %_ZNK11ast_manager6is_iteEPK4expr.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.a ], [ %indvars.iv.next, %_ZNK11ast_manager6is_iteEPK4expr.exit.thread ] ; 2 uses
  %.01317 = phi i8 [ 0, %.lr.ph.a ], [ %.1, %_ZNK11ast_manager6is_iteEPK4expr.exit.thread ] ; 5 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 65535
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread, label %_ZNK11ast_manager6is_iteEPK4expr.exit

_ZNK11ast_manager6is_iteEPK4expr.exit:            ; preds = %bb.c
  %i.s = load i32, ptr %i.r, align 8, !tbaa !20
  %i.t = icmp eq i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 4
  %i.x = select i1 %i.t, i1 %i.w, i1 false
  br i1 %i.x, label %bb.d, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread

bb.d:                                             ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !31, !nonnull !32, !align !33
  %i.z = tail call noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.y, ptr noundef nonnull %i.j)
  br i1 %i.z, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = trunc nuw i8 %.01317 to i1
  br i1 %i.aa, label %bb.f, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %4, align 8, !tbaa !34, !range !35, !noundef !32
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %._crit_edge.loopexit, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread

_ZNK11ast_manager6is_iteEPK4expr.exit.thread:     ; preds = %bb.c, %bb.b, %bb.e, %_ZNK11ast_manager6is_iteEPK4expr.exit, %bb.d, %bb.f
  %.1 = phi i8 [ %.01317, %bb.d ], [ 1, %bb.f ], [ %.01317, %_ZNK11ast_manager6is_iteEPK4expr.exit ], [ 1, %bb.e ], [ %.01317, %bb.b ], [ %.01317, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !0

._crit_edge.loopexit:                             ; preds = %bb.f, %_ZNK11ast_manager6is_iteEPK4expr.exit.thread
  %.013.lcssa.ph = phi i8 [ %.1, %_ZNK11ast_manager6is_iteEPK4expr.exit.thread ], [ 1, %bb.f ]
  %.not.lcssa.ph = phi i1 [ true, %_ZNK11ast_manager6is_iteEPK4expr.exit.thread ], [ false, %bb.f ]
  %i.ad = trunc nuw i8 %.013.lcssa.ph to i1
  %i.ae = select i1 %.not.lcssa.ph, i1 %i.ad, i1 false
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit, %.split
  %.2 = phi i1 [ false, %.split ], [ false, %.preheader ], [ %i.ae, %._crit_edge.loopexit ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 1, 6) i32 @_ZN16push_app_ite_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.obj_ref, align 8             ; 6 uses
  %7 = alloca %class.obj_ref, align 8             ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br i1 %i.c, label %bb.b, label %_ZL11has_ite_argR11ast_managerjPKP4expr.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZL11has_ite_argR11ast_managerjPKP4expr.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 65535
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i, label %_ZNK11ast_manager6is_iteEPK4expr.exit.i

_ZNK11ast_manager6is_iteEPK4expr.exit.i:          ; preds = %bb.c
  %i.o = load i32, ptr %i.n, align 8, !tbaa !20
  %i.p = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 4
  %i.t = select i1 %i.p, i1 %i.s, i1 false
  br i1 %i.t, label %_ZL11has_ite_argR11ast_managerjPKP4expr.exit, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i

_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i:   ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit.i, %bb.c, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL11has_ite_argR11ast_managerjPKP4expr.exit.thread, label %.lr.ph.i, !llvm.loop !41

_ZL11has_ite_argR11ast_managerjPKP4expr.exit:     ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i ; 3 uses
  %i.v = and i64 %indvars.iv.i, 2147483648
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.d, label %_ZL11has_ite_argR11ast_managerjPKP4expr.exit.thread

bb.d:                                             ; preds = %_ZL11has_ite_argR11ast_managerjPKP4expr.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.ac = tail call noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %.pre, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3) ; 6 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !31, !nonnull !32, !align !33 ; 3 uses
  store ptr %i.ac, ptr %6, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !44
  %.not.i.i = icmp eq ptr %i.ac, null             ; 2 uses
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !39
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %bb.d, %_ZN11ast_manager7inc_refEP3ast.exit.i.i
  store ptr %i.z, ptr %i.u, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.ai = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ad, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3)
          to label %bb.e unwind label %bb.p       ; 6 uses

bb.e:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !31, !nonnull !32, !align !33 ; 3 uses
  store ptr %i.ai, ptr %7, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !44
  %.not.i.i41 = icmp eq ptr %i.ai, null           ; 2 uses
  br i1 %.not.i.i41, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit43, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i42

_ZN11ast_manager7inc_refEP3ast.exit.i.i42:        ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !39
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !39
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit43

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit43: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i42, %bb.e
  store ptr %i.f, ptr %i.u, align 8, !tbaa !23
  %i.ao = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_S1_(ptr noundef nonnull align 8 dereferenceable(952) %i.aj, i32 noundef 0, i32 noundef 4, ptr noundef %i.x, ptr noundef %i.ac, ptr noundef %i.ai)
          to label %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit unwind label %bb.q ; 3 uses

_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit:        ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit43
  %.not.i44 = icmp eq ptr %i.ao, null
  br i1 %.not.i44, label %bb.f, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !39
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN11ast_manager6mk_iteEP4exprS1_S1_.exit
  %i.as = load ptr, ptr %4, align 8, !tbaa !38    ; 3 uses
  %.not.i4.i = icmp eq ptr %i.as, null
  br i1 %.not.i4.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !40, !nonnull !32, !align !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !39
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !39
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.au, ptr noundef nonnull %i.as)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  store ptr %i.ao, ptr %4, align 8, !tbaa !38
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !31, !nonnull !32, !align !33 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 712
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !105
  %.not65 = icmp eq i32 %i.bb, 0
  br i1 %.not65, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.az, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %4, align 8, !tbaa !38
  %i.be = invoke noundef ptr @_ZN11ast_manager10mk_rewriteEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.az, ptr noundef %i.bc, ptr noundef %i.bd)
          to label %bb.l unwind label %bb.q       ; 3 uses

bb.l:                                             ; preds = %bb.k
  %.not.i45 = icmp eq ptr %i.be, null
  br i1 %.not.i45, label %bb.m, label %_ZN11ast_manager7inc_refEP3ast.exit.i46

_ZN11ast_manager7inc_refEP3ast.exit.i46:          ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !39
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i46, %bb.l
  %i.bi = load ptr, ptr %5, align 8, !tbaa !107   ; 3 uses
  %.not.i4.i47 = icmp eq ptr %i.bi, null
  br i1 %.not.i4.i47, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !108, !nonnull !32, !align !33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !39
  %i.bn = add i32 %i.bm, -1                       ; 2 uses
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !39
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.o, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bk, ptr noundef nonnull %i.bi)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit unwind label %bb.q

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit:       ; preds = %bb.o, %bb.m, %bb.n
  store ptr %i.be, ptr %5, align 8, !tbaa !107
  br label %bb.r

bb.p:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.q:                                             ; preds = %bb.o, %bb.h, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit43, %bb.k, %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #8
  br label %bb.y

bb.r:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit, %bb.i
  br i1 %.not.i.i41, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !39
  %i.bt = add i32 %i.bs, -1                       ; 2 uses
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !39
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.t, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aj, ptr noundef nonnull %i.ai)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  tail call void @__clang_call_terminate(ptr %i.bw) #9
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit51, label %bb.v

bb.v:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !39
  %i.bz = add i32 %i.by, -1                       ; 2 uses
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !39
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.w, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit51

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ad, ptr noundef nonnull %i.ac)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit51 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #9
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit51:       ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %_ZL11has_ite_argR11ast_managerjPKP4expr.exit.thread

bb.y:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.q ], [ %i.bp, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  resume { ptr, i32 } %.pn

_ZL11has_ite_argR11ast_managerjPKP4expr.exit.thread: ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i, %bb.b, %_ZN7obj_refI4expr11ast_managerED2Ev.exit51, %_ZL11has_ite_argR11ast_managerjPKP4expr.exit, %bb.a
  %.1 = phi i32 [ 5, %bb.a ], [ 1, %_ZN7obj_refI4expr11ast_managerED2Ev.exit51 ], [ 5, %_ZL11has_ite_argR11ast_managerjPKP4expr.exit ], [ 5, %bb.b ], [ 5, %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i ]
  ret i32 %.1
}

declare noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN11ast_manager10mk_rewriteEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40, !nonnull !32, !align !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !39
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !39
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit unwind label %bb.d

_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit:   ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #9
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN19ng_push_app_ite_cfg9is_targetEP9func_decljPKP4expr(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.preheader.i, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i:     ; preds = %bb.a
  %i.e = load i32, ptr %i.c, align 8, !tbaa !20
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.split.i, label %.preheader.i

.split.i:                                         ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21
  %.not16.i.a = icmp eq i32 %i.h, 4
  br i1 %.not16.i.a, label %_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr.exit.thread14, label %.preheader.i

.preheader.i:                                     ; preds = %.split.i, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i, %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not16.old.i = icmp eq i32 %2, 0
  br i1 %.not16.old.i, label %_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr.exit.thread14, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.preheader.i
  %wide.trip.count.i = zext i32 %2 to i64         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i, %.lr.ph.i.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.a ], [ %indvars.iv.next.i, %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i ] ; 2 uses
  %.01317.i = phi i8 [ 0, %.lr.ph.i.a ], [ %.1.i, %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i ] ; 5 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 65535
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i, label %_ZNK11ast_manager6is_iteEPK4expr.exit.i

_ZNK11ast_manager6is_iteEPK4expr.exit.i:          ; preds = %bb.c
  %i.s = load i32, ptr %i.r, align 8, !tbaa !20
  %i.t = icmp eq i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 4
  %i.x = select i1 %i.t, i1 %i.w, i1 false
  br i1 %i.x, label %bb.d, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i

bb.d:                                             ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit.i
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !31, !nonnull !32, !align !33
  %i.z = tail call noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.y, ptr noundef nonnull %i.j)
  br i1 %i.z, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = trunc nuw i8 %.01317.i to i1
  br i1 %i.aa, label %bb.f, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ab = load i8, ptr %4, align 8, !tbaa !34, !range !35, !noundef !32
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr.exit.thread14, label %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i

_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i:   ; preds = %bb.f, %bb.e, %bb.d, %_ZNK11ast_manager6is_iteEPK4expr.exit.i, %bb.c, %bb.b
  %.1.i = phi i8 [ %.01317.i, %bb.d ], [ 1, %bb.f ], [ %.01317.i, %_ZNK11ast_manager6is_iteEPK4expr.exit.i ], [ 1, %bb.e ], [ %.01317.i, %bb.b ], [ %.01317.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr.exit, label %bb.b, !llvm.loop !0

_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr.exit: ; preds = %_ZNK11ast_manager6is_iteEPK4expr.exit.thread.i
  %i.ad = trunc nuw i8 %.1.i to i1
  br i1 %i.ad, label %.lr.ph, label %_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr.exit.thread14

bb.g:                                             ; preds = %_Z9is_groundPK4expr.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr.exit.thread14, label %.lr.ph, !llvm.loop !109

.lr.ph:                                           ; preds = %_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr.exit, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !23 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, 65535
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_Z9is_groundPK4expr.exit, label %_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr.exit.thread14

_Z9is_groundPK4expr.exit:                         ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 30
  %i.al = load i8, ptr %i.ak, align 2
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr.exit.thread14

_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr.exit.thread14: ; preds = %bb.f, %.lr.ph, %bb.g, %_Z9is_groundPK4expr.exit, %.preheader.i, %.split.i, %_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr.exit
  %.1 = phi i1 [ false, %_ZN16push_app_ite_cfg9is_targetEP9func_decljPKP4expr.exit ], [ false, %.split.i ], [ false, %bb.g ], [ false, %.preheader.i ], [ true, %.lr.ph ], [ true, %_Z9is_groundPK4expr.exit ], [ false, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16push_app_ite_cfgD0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16push_app_ite_cfgD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN19ng_push_app_ite_cfgD0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #10
  ret void
}

declare noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_S1_(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #8 ; 0 uses
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !36}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTS3ast", !6, i64 0, !6, i64 4, !6, i64 6, !6, i64 6, !6, i64 6, !6, i64 8, !6, i64 12}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTS6symbol", !11, i64 0}
!13 = !{!"p1 _ZTS9decl_info", !10, i64 0}
!14 = !{!"_ZTS4decl", !9, i64 0, !12, i64 16, !13, i64 24}
!15 = !{!14, !13, i64 24}
!16 = !{!"p1 _ZTS9parameter", !10, i64 0}
!17 = !{!"_ZTS6vectorI9parameterLb1EjE", !16, i64 0}
!18 = !{!"bool", !5, i64 0}
!19 = !{!"_ZTS9decl_info", !6, i64 0, !6, i64 4, !17, i64 8, !18, i64 16}
!20 = !{!19, !6, i64 0}
!21 = !{!19, !6, i64 4}
!22 = !{!"p1 _ZTS4expr", !10, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTS4expr", !9, i64 0}
!25 = !{!"p1 _ZTS9func_decl", !10, i64 0}
!26 = !{!"_ZTS9app_flags", !6, i64 0, !6, i64 2, !6, i64 2, !6, i64 2}
!27 = !{!"_ZTS3app", !24, i64 0, !25, i64 16, !6, i64 24, !26, i64 28, !5, i64 32}
!28 = !{!27, !25, i64 16}
!29 = !{!"p1 _ZTS11ast_manager", !10, i64 0}
!30 = !{!"_ZTS16push_app_ite_cfg", !29, i64 8, !18, i64 16}
!31 = !{!30, !29, i64 8}
!32 = !{}
!33 = !{i64 8}
!34 = !{!30, !18, i64 16}
!35 = !{i8 0, i8 2}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"_ZTS7obj_refI4expr11ast_managerE", !22, i64 0, !29, i64 8}
!38 = !{!37, !22, i64 0}
!39 = !{!9, !6, i64 8}
!40 = !{!37, !29, i64 8}
!41 = distinct !{!41, !36}
!42 = !{!"vtable pointer", !4, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!29, !29, i64 0}
!45 = !{!"_ZTSSt13__atomic_baseIjE", !6, i64 0}
!46 = !{!"_ZTSSt6atomicIjE", !45, i64 0}
!47 = !{!"long", !5, i64 0}
!48 = !{!"p1 long", !10, i64 0}
!49 = !{!"_ZTS6vectorImLb0EjE", !48, i64 0}
!50 = !{!"_ZTS7svectorImjE", !49, i64 0}
!51 = !{!"any p2 pointer", !10, i64 0}
!52 = !{!"p2 _ZTS8reslimit", !51, i64 0}
!53 = !{!"_ZTS6vectorIP8reslimitLb0EjE", !52, i64 0}
!54 = !{!"_ZTS10ptr_vectorI8reslimitE", !53, i64 0}
!55 = !{!"_ZTS8reslimit", !46, i64 0, !18, i64 4, !47, i64 8, !47, i64 16, !50, i64 24, !54, i64 32}
!56 = !{!"_ZTS22small_object_allocator", !5, i64 0, !5, i64 256, !47, i64 512}
!57 = !{!"p1 _ZTSN12symbol_tableIiE10hash_entryE", !10, i64 0}
!58 = !{!"_ZTS14core_hashtableIN12symbol_tableIiE10hash_entryENS1_18key_data_hash_procENS1_16key_data_eq_procEE", !57, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!59 = !{!"p1 _ZTSN12symbol_tableIiE8key_dataE", !10, i64 0}
!60 = !{!"_ZTS6vectorIN12symbol_tableIiE8key_dataELb1EjE", !59, i64 0}
!61 = !{!"p1 int", !10, i64 0}
!62 = !{!"_ZTS6vectorIiLb0EjE", !61, i64 0}
!63 = !{!"_ZTS7svectorIijE", !62, i64 0}
!64 = !{!"_ZTS12symbol_tableIiE", !58, i64 0, !60, i64 24, !63, i64 32}
!65 = !{!"p1 _ZTS6symbol", !10, i64 0}
!66 = !{!"_ZTS6vectorI6symbolLb0EjE", !65, i64 0}
!67 = !{!"_ZTS7svectorI6symboljE", !66, i64 0}
!68 = !{!"_ZTS14family_manager", !6, i64 0, !64, i64 8, !67, i64 48}
!69 = !{!"p1 _ZTS22small_object_allocator", !10, i64 0}
!70 = !{!"p2 _ZTSN14parray_managerIN11ast_manager17expr_array_configEE4cellE", !51, i64 0}
!71 = !{!"_ZTS6vectorIPN14parray_managerIN11ast_manager17expr_array_configEE4cellELb0EjE", !70, i64 0}
!72 = !{!"_ZTS10ptr_vectorIN14parray_managerIN11ast_manager17expr_array_configEE4cellEE", !71, i64 0}
!73 = !{!"_ZTS14parray_managerIN11ast_manager17expr_array_configEE", !29, i64 0, !69, i64 8, !72, i64 16, !72, i64 24}
!74 = !{!"p2 _ZTSN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE", !51, i64 0}
!75 = !{!"_ZTS6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE", !74, i64 0}
!76 = !{!"_ZTS10ptr_vectorIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE", !75, i64 0}
!77 = !{!"_ZTS18dependency_managerIN11ast_manager22expr_dependency_configEE", !29, i64 0, !69, i64 8, !76, i64 16}
!78 = !{!"p2 _ZTSN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellE", !51, i64 0}
!79 = !{!"_ZTS6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE", !78, i64 0}
!80 = !{!"_ZTS10ptr_vectorIN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellEE", !79, i64 0}
!81 = !{!"_ZTS14parray_managerIN11ast_manager28expr_dependency_array_configEE", !29, i64 0, !69, i64 8, !80, i64 16, !80, i64 24}
!82 = !{!"p2 _ZTS11decl_plugin", !51, i64 0}
!83 = !{!"_ZTS6vectorIP11decl_pluginLb0EjE", !82, i64 0}
!84 = !{!"_ZTS10ptr_vectorI11decl_pluginE", !83, i64 0}
!85 = !{!"_ZTS14proof_gen_mode", !5, i64 0}
!86 = !{!"p1 _ZTSN10chashtableIP3ast12obj_ptr_hashIS0_E11ast_eq_procE4cellE", !10, i64 0}
!87 = !{!"_ZTS10chashtableIP3ast12obj_ptr_hashIS0_E11ast_eq_procE", !86, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !86, i64 40, !86, i64 48, !86, i64 56}
!88 = !{!"_ZTS9ast_table", !87, i64 0}
!89 = !{!"_ZTS6vectorIjLb0EjE", !61, i64 0}
!90 = !{!"_ZTS7svectorIjjE", !89, i64 0}
!91 = !{!"_ZTS6id_gen", !6, i64 0, !90, i64 8}
!92 = !{!"p1 _ZTS4sort", !10, i64 0}
!93 = !{!"p1 _ZTS3app", !10, i64 0}
!94 = !{!"p1 _ZTS17default_map_entryIjjE", !10, i64 0}
!95 = !{!"_ZTS14core_hashtableI17default_map_entryIjjEN9table2mapIS1_6u_hash4u_eqE15entry_hash_procENS5_13entry_eq_procEE", !94, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!96 = !{!"_ZTS9table2mapI17default_map_entryIjjE6u_hash4u_eqE", !95, i64 0}
!97 = !{!"_ZTS3mapIjj6u_hash4u_eqE", !96, i64 0}
!98 = !{!"_ZTS5u_mapIjE", !97, i64 0}
!99 = !{!"p1 _ZTSSt13basic_fstreamIcSt11char_traitsIcEE", !10, i64 0}
!100 = !{!"p1 _ZTSN7obj_mapI9func_declPS0_E13obj_map_entryE", !10, i64 0}
!101 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE", !100, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!102 = !{!"_ZTS7obj_mapI9func_declPS0_E", !101, i64 0}
!103 = !{!"p1 _ZTS15some_value_proc", !10, i64 0}
!104 = !{!"_ZTS11ast_manager", !55, i64 0, !56, i64 40, !68, i64 560, !73, i64 616, !77, i64 648, !81, i64 672, !84, i64 704, !85, i64 712, !18, i64 716, !88, i64 720, !91, i64 784, !91, i64 800, !92, i64 816, !92, i64 824, !93, i64 832, !93, i64 840, !93, i64 848, !6, i64 856, !18, i64 860, !98, i64 864, !99, i64 888, !18, i64 896, !18, i64 897, !29, i64 904, !12, i64 912, !102, i64 920, !103, i64 944}
!105 = !{!104, !85, i64 712}
!106 = !{!"_ZTS7obj_refI3app11ast_managerE", !93, i64 0, !29, i64 8}
!107 = !{!106, !93, i64 0}
!108 = !{!106, !29, i64 8}
!109 = distinct !{!109, !36}
end_hunk_0
