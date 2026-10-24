Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/util?download=true
inline.NumInlined: 456
inline.NumDeleted: 142
begin_hunk_0_@_ZN11flatbuffers23ReadEnvironmentVariableEPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.r, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = load i64, ptr %i.k, align 8, !tbaa !16   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %.not21.i = icmp eq ptr %2, %1
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  switch i64 %i.s, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.u = load i8, ptr %i.q, align 1, !tbaa !18
  store i8 %i.u, ptr %i.n, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.v = load i64, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !16
  %i.x = load ptr, ptr %1, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !18
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.q, ptr %1, align 8, !tbaa !15
  %i.aa = load <2 x i64>, ptr %i.k, align 8, !tbaa !18
  store <2 x i64> %i.aa, ptr %i.z, align 8, !tbaa !18
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !18
  store ptr %i.q, ptr %1, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load <2 x i64>, ptr %i.k, align 8, !tbaa !18
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.n, ptr %2, align 8, !tbaa !15
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.c, ptr %2, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ae = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.n, %bb.j ], [ %i.c, %bb.k ], [ %i.q, %bb.f ]
  store i64 0, ptr %i.k, align 8, !tbaa !16
  store i8 0, ptr %i.ae, align 1, !tbaa !18
  %i.af = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !18
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret i1 %.not
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flatbuffers11ConvertCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4CaseES8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::function", align 8     ; 9 uses
  %7 = alloca %"class.std::function", align 8     ; 9 uses
  %i.d = icmp eq i32 %2, 8
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !17
  %i.f = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 %i.h, ptr %i.c, align 8, !tbaa !31
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !15
  %i.k = load i64, ptr %i.c, align 8, !tbaa !31
  store i64 %i.k, ptr %i.e, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !18
  store i8 %i.m, ptr %i.l, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !16
  %i.p = load ptr, ptr %0, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

bb.e:                                             ; preds = %bb.a
  switch i32 %3, label %bb.ae [
    i32 2, label %bb.f
    i32 1, label %bb.f
    i32 7, label %bb.w
    i32 8, label %bb.ad
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 17 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !17, !alias.scope !128
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i64 0, ptr %i.s, align 8, !tbaa !16, !alias.scope !128
  store i8 0, ptr %i.r, align 8, !tbaa !18, !alias.scope !128
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !128 ; 2 uses
  %.not50.i = icmp eq i64 %i.u, 0
  br i1 %.not50.i, label %_ZN11flatbuffers12_GLOBAL__N_112CamelToSnakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %1, align 8, !tbaa !15, !noalias !128
  %i.w = load i8, ptr %i.v, align 1, !tbaa !18
  %i.x = zext i8 %i.w to i32
  %i.y = call i32 @tolower(i32 noundef %i.x) #23
  %i.z = trunc i32 %i.y to i8
  store i8 %i.z, ptr %i.r, align 8, !tbaa !18
  store i64 1, ptr %i.s, align 8, !tbaa !16, !alias.scope !128
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.aa, align 1, !tbaa !18
  %.not = icmp eq i64 %i.u, 1
  br i1 %.not, label %_ZN11flatbuffers12_GLOBAL__N_112CamelToSnakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.peel.next

bb.h:                                             ; preds = %bb.s, %bb.q, %bb.o, %bb.j
  %lpad.loopexit113 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128 ; 2 uses
  %i.ab = icmp eq ptr %.pre, %i.r
  br i1 %i.ab, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !18, !alias.scope !128
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ad) #24
  br label %common.resume

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.am, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %bb.bd, %bb.be, %bb.bk, %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp185, %.loopexit.split-lp.loopexit.split-lp.i75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.in, %bb.bl ], [ %lpad.loopexit113, %bb.h ], [ %lpad.loopexit.split-lp191, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit119, %bb.am ], [ %lpad.loopexit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %lpad.loopexit.split-lp191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30 ], [ %lpad.loopexit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48 ], [ %lpad.loopexit.split-lp185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76 ], [ %lpad.loopexit.split-lp188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.ib, %bb.be ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.ib, %bb.bd ], [ %i.in, %bb.bk ], [ %lpad.loopexit.split-lp188, %.loopexit.split-lp.loopexit.split-lp.i84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

.lr.ph.i.peel.next:                               ; preds = %bb.g, %bb.t
  %.049.i = phi i64 [ %i.ck, %bb.t ], [ 1, %bb.g ] ; 3 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !15, !noalias !128
  %i.af = getelementptr i8, ptr %i.ae, i64 %.049.i ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18  ; 4 uses
  %i.ah = icmp eq i8 %i.ag, 95
  br i1 %i.ah, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.peel.next
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !16, !alias.scope !128 ; 4 uses
  %i.aj = add i64 %i.ai, 1                        ; 2 uses
  %i.ak = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.r
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28.i: ; preds = %bb.i
  %i.am = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25.i: ; preds = %bb.i
  %i.an = load i64, ptr %i.r, align 8, !tbaa !18, !alias.scope !128
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28.i
  %i.ao = phi i64 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28.i ]
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit30.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ai, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc29.i unwind label %bb.h

.noexc29.i:                                       ; preds = %bb.j
  %.pre.i.i27.i = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit30.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit30.i: ; preds = %.noexc29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i
  %i.aq = phi ptr [ %.pre.i.i27.i, %.noexc29.i ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 95, ptr %i.ar, align 1, !tbaa !18
  br label %bb.t

bb.k:                                             ; preds = %.lr.ph.i.peel.next
  %i.as = sext i8 %i.ag to i32                    ; 2 uses
  %i.at = call i32 @islower(i32 noundef %i.as) #23
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr i8, ptr %i.af, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !18
  %i.aw = sext i8 %i.av to i32                    ; 2 uses
  %i.ax = call i32 @islower(i32 noundef %i.aw) #23
  %.not22.i = icmp eq i32 %i.ax, 0
  br i1 %.not22.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %8 = add nsw i32 %i.aw, -58
  %isdigit.i = icmp ult i32 %8, -10
  %isdigittmp23.i = add nsw i32 %i.as, -48
  %isdigit24.i = icmp ult i32 %isdigittmp23.i, 10
  %or.cond.i = select i1 %isdigit.i, i1 true, i1 %isdigit24.i
  br i1 %or.cond.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = load i64, ptr %i.s, align 8, !tbaa !16, !alias.scope !128 ; 4 uses
  %i.az = add i64 %i.ay, 1                        ; 3 uses
  %i.ba = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.r
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34.i: ; preds = %bb.n
  %i.bc = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.bc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.i: ; preds = %bb.n
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !18, !alias.scope !128
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34.i
  %i.be = phi i64 [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34.i ]
  %i.bf = icmp ugt i64 %i.az, %i.be
  br i1 %i.bf, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ay, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc35.i unwind label %bb.h

.noexc35.i:                                       ; preds = %bb.o
  %.pre.i.i33.i = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36.i: ; preds = %.noexc35.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32.i
  %i.bg = phi ptr [ %.pre.i.i33.i, %.noexc35.i ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store i8 95, ptr %i.bh, align 1, !tbaa !18
  store i64 %i.az, ptr %i.s, align 8, !tbaa !16, !alias.scope !128
  %i.bi = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az
  store i8 0, ptr %i.bj, align 1, !tbaa !18
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !15, !noalias !128
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.049.i
  %.pre51.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36.i, %bb.m
  %i.bk = phi i8 [ %.pre51.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36.i ], [ %i.ag, %bb.m ]
  %i.bl = zext i8 %i.bk to i32
  %i.bm = call i32 @tolower(i32 noundef %i.bl) #23
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = load i64, ptr %i.s, align 8, !tbaa !16, !alias.scope !128 ; 4 uses
  %i.bp = add i64 %i.bo, 1                        ; 2 uses
  %i.bq = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.r
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40.i: ; preds = %bb.p
  %i.bs = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37.i: ; preds = %bb.p
  %i.bt = load i64, ptr %i.r, align 8, !tbaa !18, !alias.scope !128
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40.i
  %i.bu = phi i64 [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40.i ]
  %i.bv = icmp ugt i64 %i.bp, %i.bu
  br i1 %i.bv, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit42.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bo, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc41.i unwind label %bb.h

.noexc41.i:                                       ; preds = %bb.q
  %.pre.i.i39.i = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit42.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit42.i: ; preds = %.noexc41.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.i
  %i.bw = phi ptr [ %.pre.i.i39.i, %.noexc41.i ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store i8 %i.bn, ptr %i.bx, align 1, !tbaa !18
  br label %bb.t

bb.r:                                             ; preds = %bb.k
  %i.by = load i64, ptr %i.s, align 8, !tbaa !16, !alias.scope !128 ; 4 uses
  %i.bz = add i64 %i.by, 1                        ; 2 uses
  %i.ca = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.r
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i46.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i46.i: ; preds = %bb.r
  %i.cc = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.cc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.i: ; preds = %bb.r
  %i.cd = load i64, ptr %i.r, align 8, !tbaa !18, !alias.scope !128
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i46.i
  %i.ce = phi i64 [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i46.i ]
  %i.cf = icmp ugt i64 %i.bz, %i.ce
  br i1 %i.cf, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit48.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.by, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc47.i unwind label %bb.h

.noexc47.i:                                       ; preds = %bb.s
  %.pre.i.i45.i = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit48.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit48.i: ; preds = %.noexc47.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44.i
  %i.cg = phi ptr [ %.pre.i.i45.i, %.noexc47.i ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  store i8 %i.ag, ptr %i.ch, align 1, !tbaa !18
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit48.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit42.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit30.i
  %.sink.i = phi i64 [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit48.i ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit42.i ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit30.i ] ; 2 uses
  store i64 %.sink.i, ptr %i.s, align 8, !tbaa !16, !alias.scope !128
  %i.ci = load ptr, ptr %4, align 8, !tbaa !15, !alias.scope !128
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sink.i
  store i8 0, ptr %i.cj, align 1, !tbaa !18
  %i.ck = add nuw i64 %.049.i, 1                  ; 2 uses
  %i.cl = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !128
  %i.cm = icmp ult i64 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph.i.peel.next, label %_ZN11flatbuffers12_GLOBAL__N_112CamelToSnakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !115

_ZN11flatbuffers12_GLOBAL__N_112CamelToSnakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.t, %bb.g, %bb.f
  invoke void @_ZN11flatbuffers11ConvertCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4CaseES8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %2, i32 noundef 3)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_112CamelToSnakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cn = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.r
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.cp = load i64, ptr %i.r, align 8, !tbaa !18
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

bb.v:                                             ; preds = %_ZN11flatbuffers12_GLOBAL__N_112CamelToSnakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.r
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.v
  %i.cu = load i64, ptr %i.r, align 8, !tbaa !18
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

bb.w:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.cw, ptr %5, align 8, !tbaa !17, !alias.scope !130
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.cx, align 8, !tbaa !16, !alias.scope !130
  store i8 0, ptr %i.cw, align 8, !tbaa !18, !alias.scope !130
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !16, !noalias !130
  %.not.i25 = icmp eq i64 %i.cz, 0
  br i1 %.not.i25, label %_ZN11flatbuffers12_GLOBAL__N_113DasherToSnakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i26

.lr.ph.i26thread-pre-split:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %.pr = load i64, ptr %i.cx, align 8, !tbaa !16, !alias.scope !130
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.w, %.lr.ph.i26thread-pre-split
  %i.da = phi i64 [ %.pr, %.lr.ph.i26thread-pre-split ], [ 0, %bb.w ] ; 5 uses
  %.011.i = phi i64 [ %i.dw, %.lr.ph.i26thread-pre-split ], [ 0, %bb.w ] ; 2 uses
  %i.db = load ptr, ptr %1, align 8, !tbaa !15, !noalias !130
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.011.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !18  ; 2 uses
  %i.de = icmp eq i8 %i.dd, 45
  br i1 %i.de, label %bb.x, label %bb.z

bb.x:                                             ; preds = %.lr.ph.i26
  %i.df = icmp eq i64 %i.da, 4611686018427387903
  br i1 %i.df, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25
          to label %.noexc.i35 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i35:                                       ; preds = %bb.y
end_hunk_0
begin_hunk_1_@_ZN11flatbuffers11ConvertCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4CaseES8_:bb.a
  %i.dh = load ptr, ptr %5, align 8, !tbaa !15, !alias.scope !130 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cw
  br i1 %i.di, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dj = load i64, ptr %i.cw, align 8, !tbaa !18, !alias.scope !130
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #24
  br label %common.resume

bb.z:                                             ; preds = %.lr.ph.i26
  %i.dl = add i64 %i.da, 1                        ; 3 uses
  %i.dm = load ptr, ptr %5, align 8, !tbaa !15, !alias.scope !130 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cw
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i34: ; preds = %bb.z
  %i.do = icmp ult i64 %i.da, 16
  call void @llvm.assume(i1 %i.do)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i27: ; preds = %bb.z
  %i.dp = load i64, ptr %i.cw, align 8, !tbaa !18, !alias.scope !130
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i34
  %i.dq = phi i64 [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i27 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i34 ]
  %i.dr = icmp ugt i64 %i.dl, %i.dq
  br i1 %i.dr, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i29

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.da, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc10.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10.i:                                       ; preds = %bb.aa
  %.pre.i.i.i33 = load ptr, ptr %5, align 8, !tbaa !15, !alias.scope !130
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i29: ; preds = %.noexc10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28
  %i.ds = phi ptr [ %.pre.i.i.i33, %.noexc10.i ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i28 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.da
  store i8 %i.dd, ptr %i.dt, align 1, !tbaa !18
  store i64 %i.dl, ptr %i.cx, align 8, !tbaa !16, !alias.scope !130
  %i.du = load ptr, ptr %5, align 8, !tbaa !15, !alias.scope !130
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dl
  store i8 0, ptr %i.dv, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.dw = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.dx = load i64, ptr %i.cy, align 8, !tbaa !16, !noalias !130
  %i.dy = icmp ult i64 %i.dw, %i.dx
  br i1 %i.dy, label %.lr.ph.i26thread-pre-split, label %_ZN11flatbuffers12_GLOBAL__N_113DasherToSnakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !118

_ZN11flatbuffers12_GLOBAL__N_113DasherToSnakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i, %bb.w
  invoke void @_ZN11flatbuffers11ConvertCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4CaseES8_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %2, i32 noundef 3)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZN11flatbuffers12_GLOBAL__N_113DasherToSnakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dz = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.cw
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.ab
  %i.eb = load i64, ptr %i.cw, align 8, !tbaa !18
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

bb.ac:                                            ; preds = %_ZN11flatbuffers12_GLOBAL__N_113DasherToSnakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.cw
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.ac
  %i.eg = load i64, ptr %i.cw, align 8, !tbaa !18
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

bb.ad:                                            ; preds = %bb.e
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.e, %bb.ad
  switch i32 %2, label %bb.ch [
    i32 1, label %bb.af
    i32 2, label %bb.ag
    i32 3, label %bb.ah
    i32 4, label %bb.ak
    i32 5, label %bb.az
    i32 6, label %bb.bg
    i32 7, label %bb.bn
    i32 9, label %bb.bu
  ]

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @_ZN11flatbuffers12_GLOBAL__N_111ToCamelCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext true)
  br label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

bb.ag:                                            ; preds = %bb.ae
  tail call fastcc void @_ZN11flatbuffers12_GLOBAL__N_111ToCamelCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext false)
  br label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

bb.ah:                                            ; preds = %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ei, ptr %0, align 8, !tbaa !17
  %i.ej = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.el, ptr %i.b, align 8, !tbaa !31
  %i.em = icmp ugt i64 %i.el, 15
  br i1 %i.em, label %.noexc.i43, label %._crit_edge.i.i42

.noexc.i43:                                       ; preds = %bb.ah
  %i.en = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.en, ptr %0, align 8, !tbaa !15
  %i.eo = load i64, ptr %i.b, align 8, !tbaa !31
  store i64 %i.eo, ptr %i.ei, align 8, !tbaa !18
  br label %._crit_edge.i.i42

._crit_edge.i.i42:                                ; preds = %.noexc.i43, %bb.ah
  %i.ep = phi ptr [ %i.en, %.noexc.i43 ], [ %i.ei, %bb.ah ] ; 2 uses
  switch i64 %i.el, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit44
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i42
  %i.eq = load i8, ptr %i.ej, align 1, !tbaa !18
  store i8 %i.eq, ptr %i.ep, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit44

bb.aj:                                            ; preds = %._crit_edge.i.i42
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr align 1 %i.ej, i64 %i.el, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit44: ; preds = %._crit_edge.i.i42, %bb.ai, %bb.aj
  %i.er = load i64, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.er, ptr %i.es, align 8, !tbaa !16
  %i.et = load ptr, ptr %0, align 8, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er
  store i8 0, ptr %i.eu, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

bb.ak:                                            ; preds = %bb.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  store ptr %i.ev, ptr %0, align 8, !tbaa !17, !alias.scope !131
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i64 0, ptr %i.ew, align 8, !tbaa !16, !alias.scope !131
  store i8 0, ptr %i.ev, align 8, !tbaa !18, !alias.scope !131
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !16, !noalias !131 ; 2 uses
  %.not59.i = icmp eq i64 %i.ey, 0
  br i1 %.not59.i, label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ez = load ptr, ptr %1, align 8, !tbaa !15, !noalias !131
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !18
  %i.fb = zext i8 %i.fa to i32
  %i.fc = tail call i32 @toupper(i32 noundef %i.fb) #23
  %i.fd = trunc i32 %i.fc to i8
  store i8 %i.fd, ptr %i.ev, align 8, !tbaa !18
  store i64 1, ptr %i.ew, align 8, !tbaa !16, !alias.scope !131
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.fe, align 1, !tbaa !18
  %.not176 = icmp eq i64 %i.ey, 1
  br i1 %.not176, label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, label %.lr.ph.i45.peel.next

bb.am:                                            ; preds = %bb.ax, %bb.av, %bb.at, %bb.ao
  %lpad.loopexit119 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre122 = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !131 ; 2 uses
  %i.ff = icmp eq ptr %.pre122, %i.ev
  br i1 %i.ff, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.am
  %i.fg = load i64, ptr %i.ev, align 8, !tbaa !18, !alias.scope !131
  %i.fh = add i64 %i.fg, 1
  tail call void @_ZdlPvm(ptr noundef %.pre122, i64 noundef %i.fh) #24
  br label %common.resume

.lr.ph.i45.peel.next:                             ; preds = %bb.al, %bb.ay
  %.058.i = phi i64 [ %i.hr, %bb.ay ], [ 1, %bb.al ] ; 3 uses
  %i.fi = load ptr, ptr %1, align 8, !tbaa !15, !noalias !131
  %i.fj = getelementptr i8, ptr %i.fi, i64 %.058.i ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !18  ; 4 uses
  %i.fl = icmp eq i8 %i.fk, 95
  br i1 %i.fl, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.lr.ph.i45.peel.next
  %i.fm = load i64, ptr %i.ew, align 8, !tbaa !16, !alias.scope !131 ; 4 uses
  %i.fn = add i64 %i.fm, 1                        ; 2 uses
  %i.fo = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !131 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ev
  br i1 %i.fp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37.i: ; preds = %bb.an
  %i.fq = icmp ult i64 %i.fm, 16
  tail call void @llvm.assume(i1 %i.fq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i: ; preds = %bb.an
  %i.fr = load i64, ptr %i.ev, align 8, !tbaa !18, !alias.scope !131
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37.i
  %i.fs = phi i64 [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37.i ]
  %i.ft = icmp ugt i64 %i.fn, %i.fs
  br i1 %i.ft, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit39.i

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fm, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc38.i unwind label %bb.am

.noexc38.i:                                       ; preds = %bb.ao
  %.pre.i.i36.i = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !131
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit39.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit39.i: ; preds = %.noexc38.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35.i
  %i.fu = phi ptr [ %.pre.i.i36.i, %.noexc38.i ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35.i ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fm
  store i8 95, ptr %i.fv, align 1, !tbaa !18
  br label %bb.ay

bb.ap:                                            ; preds = %.lr.ph.i45.peel.next
  %i.fw = sext i8 %i.fk to i32                    ; 2 uses
  %i.fx = tail call i32 @islower(i32 noundef %i.fw) #23
  %.not.i46 = icmp eq i32 %i.fx, 0
  br i1 %.not.i46, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.fy = getelementptr i8, ptr %i.fj, i64 -1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !18
  %i.ga = sext i8 %i.fz to i32                    ; 2 uses
  %i.gb = tail call i32 @islower(i32 noundef %i.ga) #23
  %.not31.i = icmp eq i32 %i.gb, 0
  br i1 %.not31.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %9 = add nsw i32 %i.ga, -58
  %isdigit.i53 = icmp ult i32 %9, -10
  %isdigittmp32.i = add nsw i32 %i.fw, -48
  %isdigit33.i = icmp ult i32 %isdigittmp32.i, 10
  %or.cond.i54 = select i1 %isdigit.i53, i1 true, i1 %isdigit33.i
  br i1 %or.cond.i54, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gc = load i64, ptr %i.ew, align 8, !tbaa !16, !alias.scope !131 ; 4 uses
  %i.gd = add i64 %i.gc, 1                        ; 3 uses
  %i.ge = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !131 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.ev
  br i1 %i.gf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i43.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i43.i: ; preds = %bb.as
  %i.gg = icmp ult i64 %i.gc, 16
  tail call void @llvm.assume(i1 %i.gg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i: ; preds = %bb.as
  %i.gh = load i64, ptr %i.ev, align 8, !tbaa !18, !alias.scope !131
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i41.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i43.i
  %i.gi = phi i64 [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i43.i ]
  %i.gj = icmp ugt i64 %i.gd, %i.gi
  br i1 %i.gj, label %bb.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit45.i

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i41.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.gc, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc44.i unwind label %bb.am

.noexc44.i:                                       ; preds = %bb.at
  %.pre.i.i42.i = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !131
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit45.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit45.i: ; preds = %.noexc44.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i41.i
  %i.gk = phi ptr [ %.pre.i.i42.i, %.noexc44.i ], [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i41.i ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gc
  store i8 95, ptr %i.gl, align 1, !tbaa !18
  store i64 %i.gd, ptr %i.ew, align 8, !tbaa !16, !alias.scope !131
  %i.gm = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !131
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gd
  store i8 0, ptr %i.gn, align 1, !tbaa !18
  %.pre.i51 = load ptr, ptr %1, align 8, !tbaa !15, !noalias !131
  %.phi.trans.insert.i52 = getelementptr inbounds nuw i8, ptr %.pre.i51, i64 %.058.i
  %.pre60.i = load i8, ptr %.phi.trans.insert.i52, align 1, !tbaa !18
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit45.i, %bb.ar
  %i.go = phi i8 [ %.pre60.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit45.i ], [ %i.fk, %bb.ar ]
  %i.gp = zext i8 %i.go to i32
  %i.gq = tail call i32 @toupper(i32 noundef %i.gp) #23
  %i.gr = trunc i32 %i.gq to i8
  %i.gs = load i64, ptr %i.ew, align 8, !tbaa !16, !alias.scope !131 ; 4 uses
  %i.gt = add i64 %i.gs, 1                        ; 2 uses
  %i.gu = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !131 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.ev
  br i1 %i.gv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49.i: ; preds = %bb.au
  %i.gw = icmp ult i64 %i.gs, 16
  tail call void @llvm.assume(i1 %i.gw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46.i: ; preds = %bb.au
  %i.gx = load i64, ptr %i.ev, align 8, !tbaa !18, !alias.scope !131
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49.i
  %i.gy = phi i64 [ %i.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i49.i ]
  %i.gz = icmp ugt i64 %i.gt, %i.gy
  br i1 %i.gz, label %bb.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit51.i

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.gs, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc50.i unwind label %bb.am

.noexc50.i:                                       ; preds = %bb.av
  %.pre.i.i48.i = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !131
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit51.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit51.i: ; preds = %.noexc50.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47.i
  %i.ha = phi ptr [ %.pre.i.i48.i, %.noexc50.i ], [ %i.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i47.i ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gs
  store i8 %i.gr, ptr %i.hb, align 1, !tbaa !18
  br label %bb.ay

bb.aw:                                            ; preds = %bb.ap
  %i.hc = zext i8 %i.fk to i32
  %i.hd = tail call i32 @toupper(i32 noundef %i.hc) #23
  %i.he = trunc i32 %i.hd to i8
  %i.hf = load i64, ptr %i.ew, align 8, !tbaa !16, !alias.scope !131 ; 4 uses
  %i.hg = add i64 %i.hf, 1                        ; 2 uses
  %i.hh = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !131 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.ev
  br i1 %i.hi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i55.i: ; preds = %bb.aw
  %i.hj = icmp ult i64 %i.hf, 16
  tail call void @llvm.assume(i1 %i.hj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52.i: ; preds = %bb.aw
  %i.hk = load i64, ptr %i.ev, align 8, !tbaa !18, !alias.scope !131
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i53.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i55.i
  %i.hl = phi i64 [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i55.i ]
  %i.hm = icmp ugt i64 %i.hg, %i.hl
  br i1 %i.hm, label %bb.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit57.i

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i53.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.hf, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc56.i unwind label %bb.am

.noexc56.i:                                       ; preds = %bb.ax
  %.pre.i.i54.i = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !131
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit57.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit57.i: ; preds = %.noexc56.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i53.i
  %i.hn = phi ptr [ %.pre.i.i54.i, %.noexc56.i ], [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i53.i ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hf
  store i8 %i.he, ptr %i.ho, align 1, !tbaa !18
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit57.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit51.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit39.i
  %.sink.i47 = phi i64 [ %i.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit57.i ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit51.i ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit39.i ] ; 2 uses
  store i64 %.sink.i47, ptr %i.ew, align 8, !tbaa !16, !alias.scope !131
  %i.hp = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !131
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.sink.i47
  store i8 0, ptr %i.hq, align 1, !tbaa !18
  %i.hr = add nuw i64 %.058.i, 1                  ; 2 uses
  %i.hs = load i64, ptr %i.ex, align 8, !tbaa !16, !noalias !131
  %i.ht = icmp ult i64 %i.hr, %i.hs
  br i1 %i.ht, label %.lr.ph.i45.peel.next, label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, !llvm.loop !121

bb.az:                                            ; preds = %bb.ae
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.hw, align 8
  store ptr @_ZN11flatbuffers11CharToUpperEc, ptr %6, align 8, !tbaa !10
  store ptr @_ZNSt17_Function_handlerIFccEPS0_E9_M_invokeERKSt9_Any_dataOc, ptr %i.hv, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFccEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.hu, align 8, !tbaa !42
  invoke fastcc void @_ZN11flatbuffers12_GLOBAL__N_15ToAllERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFccEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofreeobj noundef align 8 dereferenceable(32) %6)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.hx = load ptr, ptr %i.hu, align 8, !tbaa !42 ; 2 uses
  %.not.i61 = icmp eq ptr %i.hx, null
  br i1 %.not.i61, label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hy = invoke noundef zeroext i1 %i.hx(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %bb.bc ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #26
  unreachable

bb.bd:                                            ; preds = %bb.az
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ic = load ptr, ptr %i.hu, align 8, !tbaa !42 ; 2 uses
  %.not.i62 = icmp eq ptr %i.ic, null
  br i1 %.not.i62, label %common.resume, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.id = invoke noundef zeroext i1 %i.ic(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %common.resume unwind label %bb.bf ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #26
  unreachable

bb.bg:                                            ; preds = %bb.ae
  %i.ig = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ii = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ii, align 8
  store ptr @_ZN11flatbuffers11CharToLowerEc, ptr %7, align 8, !tbaa !10
  store ptr @_ZNSt17_Function_handlerIFccEPS0_E9_M_invokeERKSt9_Any_dataOc, ptr %i.ih, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFccEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.ig, align 8, !tbaa !42
  invoke fastcc void @_ZN11flatbuffers12_GLOBAL__N_15ToAllERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFccEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofreeobj noundef align 8 dereferenceable(32) %7)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.ij = load ptr, ptr %i.ig, align 8, !tbaa !42 ; 2 uses
  %.not.i64 = icmp eq ptr %i.ij, null
  br i1 %.not.i64, label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ik = invoke noundef zeroext i1 %i.ij(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %bb.bj ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #26
  unreachable

bb.bk:                                            ; preds = %bb.bg
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = load ptr, ptr %i.ig, align 8, !tbaa !42 ; 2 uses
  %.not.i66 = icmp eq ptr %i.io, null
  br i1 %.not.i66, label %common.resume, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ip = invoke noundef zeroext i1 %i.io(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %common.resume unwind label %bb.bm ; 0 uses

bb.bm:                                            ; preds = %bb.bl
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #26
  unreachable

bb.bn:                                            ; preds = %bb.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.is, ptr %0, align 8, !tbaa !17, !alias.scope !132
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.it, align 8, !tbaa !16, !alias.scope !132
  store i8 0, ptr %i.is, align 8, !tbaa !18, !alias.scope !132
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !16, !noalias !132 ; 3 uses
  %.not.i68 = icmp eq i64 %i.iv, 0
  br i1 %.not.i68, label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bn
  %i.iw = load ptr, ptr %1, align 8, !tbaa !15, !noalias !132 ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !18  ; 2 uses
  %i.iy = icmp eq i8 %i.ix, 95
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.peel.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.peel.i: ; preds = %.lr.ph.preheader.i
  store i8 %i.ix, ptr %i.is, align 8, !tbaa !18, !alias.scope !132
  store i64 1, ptr %i.it, align 8, !tbaa !16, !alias.scope !132
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.iz, align 1, !tbaa !18, !alias.scope !132
  %.pre.i69 = load i8, ptr %i.iw, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.peel.i, %.lr.ph.preheader.i
  %i.ja = phi i8 [ %.pre.i69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.peel.i ], [ 95, %.lr.ph.preheader.i ]
  %.not37.i = icmp eq i64 %i.iv, 1
  br i1 %.not37.i, label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i74
  %i.jb = phi i64 [ %i.kf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i74 ], [ %i.iv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i ]
  %.023.i = phi i8 [ %i.kd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i74 ], [ %i.ja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i ]
  %.01822.i = phi i64 [ %i.ke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i74 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i ] ; 3 uses
  %i.jc = load ptr, ptr %1, align 8, !tbaa !15, !noalias !132 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.01822.i ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !18  ; 2 uses
  %i.jf = icmp eq i8 %i.je, 95
  br i1 %i.jf, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %.lr.ph.i70
  %.not38.i = icmp eq i8 %.023.i, 47
  br i1 %.not38.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i74, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jg = add nuw i64 %.01822.i, 1                ; 2 uses
  %i.jh = icmp ult i64 %i.jg, %i.jb
  br i1 %i.jh, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jg
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !18
  %10 = sext i8 %i.jj to i32
  %isdigittmp.i = add nsw i32 %10, -48
  %isdigit.i83 = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i83, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i74, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.jk = load i64, ptr %i.it, align 8, !tbaa !16, !alias.scope !132
  %i.jl = icmp eq i64 %i.jk, 4611686018427387903
  br i1 %i.jl, label %.loopexit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i81

.loopexit.i:                                      ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25
          to label %.noexc.i82 unwind label %.loopexit.split-lp.loopexit.split-lp.i75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i82:                                       ; preds = %.loopexit.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i81: ; preds = %bb.br
  %i.jm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i74 unwind label %.loopexit.split-lp.loopexit.split-lp.i75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.i75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i81, %.loopexit.i
  %lpad.loopexit.split-lp185 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jn = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !132 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.is
  br i1 %i.jo, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76: ; preds = %.loopexit.split-lp.loopexit.split-lp.i75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.jp = load i64, ptr %i.is, align 8, !tbaa !18, !alias.scope !132
  %i.jq = add i64 %i.jp, 1
  tail call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #24
  br label %common.resume

bb.bs:                                            ; preds = %.lr.ph.i70
  %i.jr = load i64, ptr %i.it, align 8, !tbaa !16, !alias.scope !132 ; 4 uses
  %i.js = add i64 %i.jr, 1                        ; 3 uses
  %i.jt = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !132 ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.is
  br i1 %i.ju, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i80: ; preds = %bb.bs
  %i.jv = icmp ult i64 %i.jr, 16
  tail call void @llvm.assume(i1 %i.jv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i71: ; preds = %bb.bs
  %i.jw = load i64, ptr %i.is, align 8, !tbaa !18, !alias.scope !132
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i72: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i80
  %i.jx = phi i64 [ %i.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i71 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i80 ]
  %i.jy = icmp ugt i64 %i.js, %i.jx
  br i1 %i.jy, label %bb.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i73

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i72
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.jr, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc21.i unwind label %.loopexit.split-lp.loopexit.split-lp.i75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21.i:                                       ; preds = %bb.bt
  %.pre.i.i.i79 = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !132
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i73: ; preds = %.noexc21.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i72
  %i.jz = phi ptr [ %.pre.i.i.i79, %.noexc21.i ], [ %i.jt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i72 ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jr
  store i8 %i.je, ptr %i.ka, align 1, !tbaa !18
  store i64 %i.js, ptr %i.it, align 8, !tbaa !16, !alias.scope !132
  %i.kb = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !132
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.js
  store i8 0, ptr %i.kc, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i81, %bb.bq, %bb.bo
  %i.kd = load i8, ptr %i.jd, align 1, !tbaa !18
  %i.ke = add nuw i64 %.01822.i, 1                ; 2 uses
  %i.kf = load i64, ptr %i.iu, align 8, !tbaa !16, !noalias !132 ; 2 uses
  %i.kg = icmp ult i64 %i.ke, %i.kf
  br i1 %i.kg, label %.lr.ph.i70, label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, !llvm.loop !124

bb.bu:                                            ; preds = %bb.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !16, !noalias !133 ; 5 uses
  %i.kj = icmp ult i64 %i.ki, 2
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store ptr %i.kk, ptr %0, align 8, !tbaa !17, !alias.scope !133
  br i1 %i.kj, label %._crit_edge.i.i.i, label %bb.bw

._crit_edge.i.i.i:                                ; preds = %bb.bu
  %i.kl = icmp eq i64 %i.ki, 1
  br i1 %i.kl, label %bb.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.bv:                                            ; preds = %._crit_edge.i.i.i
  %i.km = load ptr, ptr %1, align 8, !tbaa !15, !noalias !133
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !18
  store i8 %i.kn, ptr %i.kk, align 8, !tbaa !18, !alias.scope !133
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.bv, %._crit_edge.i.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ki, ptr %i.ko, align 8, !tbaa !16, !alias.scope !133
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.ki
  store i8 0, ptr %i.kp, align 1, !tbaa !18, !alias.scope !133
  br label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

bb.bw:                                            ; preds = %bb.bu
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.kq, align 8, !tbaa !16, !alias.scope !133
  store i8 0, ptr %i.kk, align 8, !tbaa !18, !alias.scope !133
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ki)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i:                                     ; preds = %bb.bw
  %i.kr = load i64, ptr %i.kh, align 8, !tbaa !16, !noalias !133
  %.not43.i = icmp eq i64 %i.kr, 1
  br i1 %.not43.i, label %._crit_edge.i, label %.lr.ph.i86

._crit_edge.i:                                    ; preds = %bb.cg, %.preheader.i
  %.lcssa.i = phi i64 [ 1, %.preheader.i ], [ %i.mz, %bb.cg ]
  %i.ks = load ptr, ptr %1, align 8, !tbaa !15, !noalias !133
  %i.kt = getelementptr i8, ptr %i.ks, i64 %.lcssa.i
  %i.ku = getelementptr i8, ptr %i.kt, i64 -1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !18
  %i.kw = load i64, ptr %i.kq, align 8, !tbaa !16, !alias.scope !133 ; 4 uses
  %i.kx = add i64 %i.kw, 1                        ; 3 uses
  %i.ky = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !133 ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.kk
  br i1 %i.kz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i91: ; preds = %._crit_edge.i
  %i.la = icmp ult i64 %i.kw, 16
  tail call void @llvm.assume(i1 %i.la)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89: ; preds = %._crit_edge.i
  %i.lb = load i64, ptr %i.kk, align 8, !tbaa !18, !alias.scope !133
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i91
  %i.lc = phi i64 [ %i.lb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i91 ]
  %i.ld = icmp ugt i64 %i.kx, %i.lc
  br i1 %i.ld, label %bb.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.kw, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i90 unwind label %.loopexit.split-lp.loopexit.split-lp.i84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i90:                                       ; preds = %bb.bx
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !133
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i: ; preds = %.noexc.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.le = phi ptr [ %.pre.i.i, %.noexc.i90 ], [ %i.ky, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.kw
  store i8 %i.kv, ptr %i.lf, align 1, !tbaa !18
  store i64 %i.kx, ptr %i.kq, align 8, !tbaa !16, !alias.scope !133
  %i.lg = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !133
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.kx
  store i8 0, ptr %i.lh, align 1, !tbaa !18
  br label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

.lr.ph.i86:                                       ; preds = %.preheader.i, %bb.cg
  %.042.i = phi i64 [ %i.my, %bb.cg ], [ 0, %.preheader.i ] ; 3 uses
  %i.li = load ptr, ptr %1, align 8, !tbaa !15, !noalias !133
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %.042.i ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !18  ; 2 uses
  %i.ll = icmp eq i8 %i.lk, 95
  br i1 %i.ll, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph.i86
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !18
  %11 = sext i8 %i.ln to i32
  %isdigittmp.i93 = add nsw i32 %11, -48
  %isdigit.i94 = icmp ult i32 %isdigittmp.i93, 10
  br i1 %isdigit.i94, label %bb.cg, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.lr.ph.i86
  %i.lo = load i64, ptr %i.kq, align 8, !tbaa !16, !alias.scope !133 ; 4 uses
  %i.lp = add i64 %i.lo, 1                        ; 3 uses
  %i.lq = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !133 ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.kk
  br i1 %i.lr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i30.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i30.i: ; preds = %bb.bz
  %i.ls = icmp ult i64 %i.lo, 16
  tail call void @llvm.assume(i1 %i.ls)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i: ; preds = %bb.bz
  %i.lt = load i64, ptr %i.kk, align 8, !tbaa !18, !alias.scope !133
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i28.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i30.i
  %i.lu = phi i64 [ %i.lt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i30.i ]
  %i.lv = icmp ugt i64 %i.lp, %i.lu
  br i1 %i.lv, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i28.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.lo, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.split-lp.i84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31.i:                                       ; preds = %bb.ca
  %.pre.i29.i = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !133
  br label %bb.cb

bb.cb:                                            ; preds = %.noexc31.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i28.i
  %i.lw = phi ptr [ %.pre.i29.i, %.noexc31.i ], [ %i.lq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i28.i ]
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lo
  store i8 %i.lk, ptr %i.lx, align 1, !tbaa !18
  store i64 %i.lp, ptr %i.kq, align 8, !tbaa !16, !alias.scope !133
  %i.ly = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !133
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lp
  store i8 0, ptr %i.lz, align 1, !tbaa !18
  %i.ma = load ptr, ptr %1, align 8, !tbaa !15, !noalias !133
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 %.042.i ; 2 uses
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !18
  %12 = sext i8 %i.mc to i32
  %isdigittmp23.i87 = add nsw i32 %12, -48
  %isdigit24.i88 = icmp ult i32 %isdigittmp23.i87, 10
  br i1 %isdigit24.i88, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 1
  %i.me = load i8, ptr %i.md, align 1, !tbaa !18
  %i.mf = sext i8 %i.me to i32                    ; 2 uses
  %i.mg = tail call i32 @isalpha(i32 noundef %i.mf) #23
  %.not.i92 = icmp eq i32 %i.mg, 0
  br i1 %.not.i92, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mh = tail call i32 @islower(i32 noundef %i.mf) #23
  %.not25.i = icmp eq i32 %i.mh, 0
  br i1 %.not25.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mi = load i64, ptr %i.kq, align 8, !tbaa !16, !alias.scope !133 ; 4 uses
  %i.mj = add i64 %i.mi, 1                        ; 3 uses
  %i.mk = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !133 ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.kk
  br i1 %i.ml, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36.i: ; preds = %bb.ce
  %i.mm = icmp ult i64 %i.mi, 16
  tail call void @llvm.assume(i1 %i.mm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i: ; preds = %bb.ce
  %i.mn = load i64, ptr %i.kk, align 8, !tbaa !18, !alias.scope !133
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36.i
  %i.mo = phi i64 [ %i.mn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36.i ]
  %i.mp = icmp ugt i64 %i.mj, %i.mo
  br i1 %i.mp, label %bb.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit38.i

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.mi, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc37.i unwind label %.loopexit.split-lp.loopexit.split-lp.i84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc37.i:                                       ; preds = %bb.cf
  %.pre.i35.i = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !133
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit38.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit38.i: ; preds = %.noexc37.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34.i
  %i.mq = phi ptr [ %.pre.i35.i, %.noexc37.i ], [ %i.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i34.i ]
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mi
  store i8 95, ptr %i.mr, align 1, !tbaa !18
  store i64 %i.mj, ptr %i.kq, align 8, !tbaa !16, !alias.scope !133
  %i.ms = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !133
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mj
  store i8 0, ptr %i.mt, align 1, !tbaa !18
  br label %bb.cg

.loopexit.split-lp.loopexit.split-lp.i84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cf, %bb.ca, %bb.bx, %bb.bw
  %lpad.loopexit.split-lp188 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mu = load ptr, ptr %0, align 8, !tbaa !15, !alias.scope !133 ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.kk
  br i1 %i.mv, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.mw = load i64, ptr %i.kk, align 8, !tbaa !18, !alias.scope !133
  %i.mx = add i64 %i.mw, 1
  tail call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.mx) #24
  br label %common.resume

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit38.i, %bb.cd, %bb.cc, %bb.cb, %bb.by
  %i.my = add nuw i64 %.042.i, 1                  ; 2 uses
  %i.mz = load i64, ptr %i.kh, align 8, !tbaa !16, !noalias !133 ; 2 uses
  %i.na = add i64 %i.mz, -1
  %i.nb = icmp ult i64 %i.my, %i.na
  br i1 %i.nb, label %.lr.ph.i86, label %._crit_edge.i, !llvm.loop !127

bb.ch:                                            ; preds = %bb.ae
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.nc, ptr %0, align 8, !tbaa !17
  %i.nd = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.nf, ptr %i.a, align 8, !tbaa !31
  %i.ng = icmp ugt i64 %i.nf, 15
  br i1 %i.ng, label %.noexc.i96, label %._crit_edge.i.i95

.noexc.i96:                                       ; preds = %bb.ch
  %i.nh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.nh, ptr %0, align 8, !tbaa !15
  %i.ni = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.ni, ptr %i.nc, align 8, !tbaa !18
  br label %._crit_edge.i.i95

._crit_edge.i.i95:                                ; preds = %.noexc.i96, %bb.ch
  %i.nj = phi ptr [ %i.nh, %.noexc.i96 ], [ %i.nc, %bb.ch ] ; 2 uses
  switch i64 %i.nf, label %bb.cj [
    i64 1, label %bb.ci
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit97
  ]

bb.ci:                                            ; preds = %._crit_edge.i.i95
  %i.nk = load i8, ptr %i.nd, align 1, !tbaa !18
  store i8 %i.nk, ptr %i.nj, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit97

bb.cj:                                            ; preds = %._crit_edge.i.i95
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nj, ptr align 1 %i.nd, i64 %i.nf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit97: ; preds = %._crit_edge.i.i95, %bb.ci, %bb.cj
  %i.nl = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.nl, ptr %i.nm, align 8, !tbaa !16
  %i.nn = load ptr, ptr %0, align 8, !tbaa !15
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nl
  store i8 0, ptr %i.no, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit

_ZN11flatbuffers12_GLOBAL__N_111ToSnakeCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i74, %bb.ay, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel.i, %bb.bn, %bb.bi, %bb.bh, %bb.bb, %bb.ba, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit44, %bb.ag, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11flatbuffers12_GLOBAL__N_111ToCamelCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i64 0, ptr %i.b, align 8, !tbaa !16
  store i8 0, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not57 = icmp eq i64 %i.d, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.t
  %i.e = phi i64 [ %i.cm, %bb.t ], [ %i.d, %bb.a ]
  %.056 = phi i64 [ %.1, %bb.t ], [ 0, %bb.a ]    ; 4 uses
  %.not = icmp eq i64 %.056, 0
  %i.f = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18    ; 2 uses
  %i.h = icmp eq i8 %i.g, 95
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c
  %i.m = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.o = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.p = icmp ugt i64 %i.j, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.q = phi ptr [ %.pre.i.i, %.noexc ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.i
  store i8 95, ptr %i.r, align 1, !tbaa !18
  store i64 %i.j, ptr %i.b, align 8, !tbaa !16
  %i.s = load ptr, ptr %0, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.j
  store i8 0, ptr %i.t, align 1, !tbaa !18
  %i.u = load i64, ptr %i.c, align 8, !tbaa !16
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %1, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18    ; 2 uses
  %i.z = and i8 %i.y, -33
  %3 = sext i8 %i.z to i32
  %4 = add nsw i32 %3, -65
  %i.aa = icmp ult i32 %4, 26
  br i1 %i.aa, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.ab = zext i8 %i.y to i32
  %i.ac = tail call i32 @toupper(i32 noundef %i.ab) #23
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !16  ; 4 uses
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35: ; preds = %bb.g
  %i.ai = icmp ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.ai)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32: ; preds = %bb.g
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35
  %i.ak = phi i64 [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35 ]
  %i.al = icmp ugt i64 %i.af, %i.ak
  br i1 %i.al, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit37

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ae, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc36 unwind label %bb.i

.noexc36:                                         ; preds = %bb.h
  %.pre.i.i34 = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33, %.noexc36
  %i.am = phi ptr [ %.pre.i.i34, %.noexc36 ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33 ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  store i8 %i.ad, ptr %i.an, align 1, !tbaa !18
  br label %.sink.split

bb.i:                                             ; preds = %bb.s, %bb.q, %bb.n, %bb.h, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !18
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ao

bb.j:                                             ; preds = %bb.b
  %i.at = zext i8 %i.g to i32                     ; 2 uses
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = tail call i32 @toupper(i32 noundef %i.at) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.av = tail call i32 @tolower(i32 noundef %i.at) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.in = phi i32 [ %i.au, %bb.k ], [ %i.av, %bb.l ]
  %i.aw = trunc i32 %.in to i8
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !16  ; 4 uses
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.a
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i41: ; preds = %bb.m
  %i.bb = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.bb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38: ; preds = %bb.m
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i41
  %i.bd = phi i64 [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i41 ]
  %i.be = icmp ugt i64 %i.ay, %i.bd
  br i1 %i.be, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit43

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ax, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc42 unwind label %bb.i

.noexc42:                                         ; preds = %bb.n
  %.pre.i.i40 = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i39, %.noexc42
  %i.bf = phi ptr [ %.pre.i.i40, %.noexc42 ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i39 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  store i8 %i.aw, ptr %i.bg, align 1, !tbaa !18
  br label %.sink.split

.critedge:                                        ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 %.056
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !18  ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 95
  br i1 %i.bj, label %bb.o, label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre = load i64, ptr %i.b, align 8, !tbaa !16
  %.pre59 = load ptr, ptr %0, align 8, !tbaa !15
  br label %bb.r

bb.o:                                             ; preds = %.critedge
  %i.bk = add nuw i64 %.056, 1                    ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %i.e
  %.pre58 = load i64, ptr %i.b, align 8, !tbaa !16 ; 5 uses
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !15  ; 3 uses
  br i1 %i.bl, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bk
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18
  %i.bo = zext i8 %i.bn to i32
  %i.bp = tail call i32 @toupper(i32 noundef %i.bo) #23
  %i.bq = trunc i32 %i.bp to i8
  %i.br = add i64 %.pre58, 1                      ; 2 uses
  %i.bs = icmp eq ptr %.pre60, %i.a
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i47: ; preds = %bb.p
  %i.bt = icmp ult i64 %.pre58, 16
  tail call void @llvm.assume(i1 %i.bt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %bb.p
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i45: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i47
  %i.bv = phi i64 [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i47 ]
  %i.bw = icmp ugt i64 %i.br, %i.bv
  br i1 %i.bw, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit49

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i45
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre58, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc48 unwind label %bb.i

.noexc48:                                         ; preds = %bb.q
  %.pre.i.i46 = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit49: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i45, %.noexc48
  %i.bx = phi ptr [ %.pre.i.i46, %.noexc48 ], [ %.pre60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i45 ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.pre58
  store i8 %i.bq, ptr %i.by, align 1, !tbaa !18
  br label %.sink.split

bb.r:                                             ; preds = %.critedge._crit_edge, %bb.o
  %i.bz = phi ptr [ %.pre59, %.critedge._crit_edge ], [ %.pre60, %bb.o ] ; 2 uses
  %i.ca = phi i64 [ %.pre, %.critedge._crit_edge ], [ %.pre58, %bb.o ] ; 4 uses
  %i.cb = add i64 %i.ca, 1                        ; 2 uses
  %i.cc = icmp eq ptr %i.bz, %i.a
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53: ; preds = %bb.r
  %i.cd = icmp ult i64 %i.ca, 16
  tail call void @llvm.assume(i1 %i.cd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50: ; preds = %bb.r
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53
  %i.cf = phi i64 [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53 ]
  %i.cg = icmp ugt i64 %i.cb, %i.cf
  br i1 %i.cg, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit55

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ca, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc54 unwind label %bb.i

.noexc54:                                         ; preds = %bb.s
  %.pre.i.i52 = load ptr, ptr %0, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51, %.noexc54
  %i.ch = phi ptr [ %.pre.i.i52, %.noexc54 ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ca
  store i8 %i.bi, ptr %i.ci, align 1, !tbaa !18
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit55
  %.sink = phi i64 [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit55 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit49 ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit43 ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit37 ] ; 2 uses
  %.1.ph = phi i64 [ %.056, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit55 ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit49 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit43 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit37 ]
  store i64 %.sink, ptr %i.b, align 8, !tbaa !16
end_hunk_1
