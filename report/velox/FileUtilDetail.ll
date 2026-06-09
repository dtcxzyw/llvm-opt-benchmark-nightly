inline.NumInlined: 114
inline.NumDeleted: 51
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

@.str = private unnamed_addr constant [8 x i8] c".XXXXXX\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"tempForAtomicWrite.XXXXXX\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"/tempForAtomicWrite.XXXXXX\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15fileutil_detail26getTemporaryFilePathStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9, !noalias !17
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !20, !noalias !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.e, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false), !noalias !17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 7, ptr %i.f, align 8, !tbaa !11, !noalias !17
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 23
  store i8 0, ptr %i.g, align 1, !tbaa !21, !noalias !17
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %.val, i64 noundef %.val3)
          to label %.noexc6.i unwind label %bb.e, !noalias !17 ; 6 uses

.noexc6.i:                                        ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !20, !alias.scope !22
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %.noexc6.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc6.i
  store ptr %i.j, ptr %0, align 8, !tbaa !25, !alias.scope !22
  %i.q = load i64, ptr %i.k, align 8, !tbaa !21
  store i64 %i.q, ptr %i.i, align 8, !tbaa !21, !alias.scope !22
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !11, !alias.scope !22
  store ptr %i.k, ptr %i.h, align 8, !tbaa !25
  store i64 0, ptr %i.s, align 8, !tbaa !11
  store i8 0, ptr %i.k, align 8, !tbaa !21
  %i.u = load ptr, ptr %5, align 8, !tbaa !25, !noalias !17 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %_ZN5folly15fileutil_detail12_GLOBAL__N_146getTemporaryFilePathStringWithoutTempDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.d
  %i.w = load i64, ptr %i.e, align 8, !tbaa !21, !noalias !17
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #10
  br label %_ZN5folly15fileutil_detail12_GLOBAL__N_146getTemporaryFilePathStringWithoutTempDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.e:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %5, align 8, !tbaa !25, !noalias !17 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.e
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i: ; preds = %bb.e
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !21, !noalias !17
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #10, !noalias !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i, %.critedge50.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i
  %common.resume.op = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i ], [ %.pn39.pn.ph.i, %.critedge50.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9, !noalias !17
  br label %common.resume

_ZN5folly15fileutil_detail12_GLOBAL__N_146getTemporaryFilePathStringWithoutTempDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9, !noalias !17
  br label %_ZN5folly15fileutil_detail12_GLOBAL__N_148getTemporaryFilePathStringWithTemporaryDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.f:                                             ; preds = %bb.a
  %.val4 = load ptr, ptr %2, align 8, !tbaa !25   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.ad = getelementptr i8, ptr %.val4, i64 %i.b
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !21, !noalias !26
  %.not.i = icmp eq i8 %i.af, 47
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i56.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9, !noalias !26
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ah = invoke noalias noundef nonnull dereferenceable(26) ptr @_Znwm(i64 noundef 26) #11
          to label %.noexc53.i unwind label %bb.i, !noalias !26 ; 3 uses

.noexc53.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.ah, ptr %3, align 8, !tbaa !25, !noalias !26
  store i64 25, ptr %i.ag, align 8, !tbaa !21, !noalias !26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ah, ptr noundef nonnull align 1 dereferenceable(25) @.str.6, i64 25, i1 false), !noalias !26
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 25, ptr %i.ai, align 8, !tbaa !11, !noalias !26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 25
  store i8 0, ptr %i.aj, align 1, !tbaa !21, !noalias !26
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %.val4, i64 noundef %i.b)
          to label %.noexc54.i unwind label %bb.l, !noalias !26 ; 6 uses

.noexc54.i:                                       ; preds = %.noexc53.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !20, !alias.scope !29
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !25 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

bb.g:                                             ; preds = %.noexc54.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false)
  br label %.critedge47.critedge.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %.noexc54.i
  store ptr %i.am, ptr %0, align 8, !tbaa !25, !alias.scope !29
  %i.at = load i64, ptr %i.an, align 8, !tbaa !21
  store i64 %i.at, ptr %i.al, align 8, !tbaa !21, !alias.scope !29
  %.phi.trans.insert.i.i8 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre.i.i9 = load i64, ptr %.phi.trans.insert.i.i8, align 8, !tbaa !11
  br label %.critedge47.critedge.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i56.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9, !noalias !26
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.av = invoke noalias noundef nonnull dereferenceable(27) ptr @_Znwm(i64 noundef 27) #11
          to label %.noexc61.i unwind label %bb.j, !noalias !26 ; 3 uses

.noexc61.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i56.i
  store ptr %i.av, ptr %4, align 8, !tbaa !25, !noalias !26
  store i64 26, ptr %i.au, align 8, !tbaa !21, !noalias !26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.av, ptr noundef nonnull align 1 dereferenceable(26) @.str.7, i64 26, i1 false), !noalias !26
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 26, ptr %i.aw, align 8, !tbaa !11, !noalias !26
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 26
  store i8 0, ptr %i.ax, align 1, !tbaa !21, !noalias !26
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %.val4, i64 noundef %i.b)
          to label %.noexc66.i unwind label %bb.k, !noalias !26 ; 6 uses

.noexc66.i:                                       ; preds = %.noexc61.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !20, !alias.scope !32
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i

bb.h:                                             ; preds = %.noexc66.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false)
  br label %.critedge.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i: ; preds = %.noexc66.i
  store ptr %i.ba, ptr %0, align 8, !tbaa !25, !alias.scope !32
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !21
  store i64 %i.bh, ptr %i.az, align 8, !tbaa !21, !alias.scope !32
  %.phi.trans.insert.i64.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.pre.i65.i = load i64, ptr %.phi.trans.insert.i64.i, align 8, !tbaa !11
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i, %bb.h
  %i.bi = phi i64 [ %i.be, %bb.h ], [ %.pre.i65.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !11, !alias.scope !32
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !25
  store i64 0, ptr %i.bj, align 8, !tbaa !11
  store i8 0, ptr %i.bb, align 8, !tbaa !21
  %i.bl = load ptr, ptr %4, align 8, !tbaa !25, !noalias !26 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.au
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i: ; preds = %.critedge.i
  %i.bn = load i64, ptr %i.au, align 8, !tbaa !21, !noalias !26
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9, !noalias !26
  br label %_ZN5folly15fileutil_detail12_GLOBAL__N_148getTemporaryFilePathStringWithTemporaryDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.critedge47.critedge.i:                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7, %bb.g
  %i.bp = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !11, !alias.scope !29
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !25
  store i64 0, ptr %i.bq, align 8, !tbaa !11
  store i8 0, ptr %i.an, align 8, !tbaa !21
  %i.bs = load ptr, ptr %3, align 8, !tbaa !25, !noalias !26 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ag
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i: ; preds = %.critedge47.critedge.i
  %i.bu = load i64, ptr %i.ag, align 8, !tbaa !21, !noalias !26
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i: ; preds = %.critedge47.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9, !noalias !26
  br label %_ZN5folly15fileutil_detail12_GLOBAL__N_148getTemporaryFilePathStringWithTemporaryDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge50.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i56.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i

bb.k:                                             ; preds = %.noexc61.i
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %4, align 8, !tbaa !25, !noalias !26 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.au
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i: ; preds = %bb.k
  %i.cb = load i64, ptr %i.au, align 8, !tbaa !21, !noalias !26
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #10, !noalias !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i

bb.l:                                             ; preds = %.noexc53.i
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %3, align 8, !tbaa !25, !noalias !26 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ag
  br i1 %i.cf, label %.critedge50.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i: ; preds = %bb.l
  %i.cg = load i64, ptr %i.ag, align 8, !tbaa !21, !noalias !26
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #10, !noalias !26
  br label %.critedge50.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.i ], [ %i.by, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9, !noalias !26
  br label %common.resume

.critedge50.i:                                    ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i, %bb.i
  %.pn39.pn.ph.i = phi { ptr, i32 } [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i ], [ %i.bw, %bb.i ], [ %i.cd, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9, !noalias !26
  br label %common.resume

_ZN5folly15fileutil_detail12_GLOBAL__N_148getTemporaryFilePathStringWithTemporaryDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZN5folly15fileutil_detail12_GLOBAL__N_146getTemporaryFilePathStringWithoutTempDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

end_hunk_0
