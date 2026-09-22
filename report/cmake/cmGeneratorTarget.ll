Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmGeneratorTarget?download=true
inline.NumInlined: 14549
inline.NumDeleted: 4331
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK17cmGeneratorTarget11HasFileSetsEv:bb.a
  %i.d = load i64, ptr %i.c, align 8, !tbaa !266
  %i.e = icmp ne i64 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK17cmGeneratorTarget14GetAllFileSetsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3187) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !283
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK19cmGeneratorFileSets14GetAllFileSetsEv(ptr noundef nonnull align 8 dereferenceable(304) %i.b)
  ret ptr %i.c
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK19cmGeneratorFileSets14GetAllFileSetsEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK19cmGeneratorFileSets11GetFileSetsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(304), i64, ptr) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK19cmGeneratorFileSets20GetInterfaceFileSetsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(304), i64, ptr) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK17cmGeneratorTarget10GetFileSetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3187) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !283
  %i.c = tail call noundef ptr @_ZNK19cmGeneratorFileSets10GetFileSetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret ptr %i.c
}

declare noundef ptr @_ZNK19cmGeneratorFileSets10GetFileSetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare noundef ptr @_ZNK19cmGeneratorFileSets19GetFileSetForSourceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK12cmSourceFile(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK17cmGeneratorTarget18GetSwiftModuleNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3187) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 17, ptr %i.c, align 8, !tbaa !76
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !74
  %i.f = load i64, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.e, ptr noundef nonnull align 1 dereferenceable(17) @.str.403, i64 17, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !75
  %i.h = load ptr, ptr %2, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.j = invoke ptr @_ZNK17cmGeneratorTarget11GetPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3187) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.e       ; 3 uses

bb.a:                                             ; preds = %.noexc.i
  %i.k = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.d
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.m = load i64, ptr %i.d, align 8, !tbaa !77
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !71
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !74   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !75   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.r, ptr %i.b, align 8, !tbaa !76
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i9, label %._crit_edge.i.i8

.noexc.i9:                                        ; preds = %bb.b
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !74
  %i.u = load i64, ptr %i.b, align 8, !tbaa !76
  store i64 %i.u, ptr %i.o, align 8, !tbaa !77
  br label %._crit_edge.i.i8

._crit_edge.i.i8:                                 ; preds = %.noexc.i9, %bb.b
  %i.v = phi ptr [ %i.t, %.noexc.i9 ], [ %i.o, %bb.b ] ; 2 uses
  switch i64 %i.r, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.f
  ]

bb.c:                                             ; preds = %._crit_edge.i.i8
  %i.w = load i8, ptr %i.p, align 1, !tbaa !77
  store i8 %i.w, ptr %i.v, align 1, !tbaa !77
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %.noexc.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.e
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !77
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.x

bb.f:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i8
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !76  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !75
  %i.ae = load ptr, ptr %0, align 8, !tbaa !74
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load ptr, ptr %1, align 8, !tbaa !226
  %i.ah = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8cmTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !71
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !74 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !75 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.al, ptr %i.a, align 8, !tbaa !76
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i14, label %._crit_edge.i.i13

.noexc.i14:                                       ; preds = %bb.g
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !74
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !76
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !77
  br label %._crit_edge.i.i13

._crit_edge.i.i13:                                ; preds = %.noexc.i14, %bb.g
  %i.ap = phi ptr [ %i.an, %.noexc.i14 ], [ %i.ai, %bb.g ] ; 2 uses
  switch i64 %i.al, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit15
  ]

bb.h:                                             ; preds = %._crit_edge.i.i13
  %i.aq = load i8, ptr %i.aj, align 1, !tbaa !77
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit15

bb.i:                                             ; preds = %._crit_edge.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.aj, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit15: ; preds = %._crit_edge.i.i13, %bb.h, %bb.i
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !75
  %i.at = load ptr, ptr %0, align 8, !tbaa !74
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.av = load ptr, ptr %0, align 8, !tbaa !74    ; 44 uses
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !75 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %.not6.i = icmp samesign eq i64 %i.aw, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit15
  %min.iters.check = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %i.aw, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.aw, 24
  %n.vec = and i64 %i.aw, -32                     ; 4 uses
  %i.az = getelementptr i8, ptr %i.av, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue118
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue118 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %index ; 3 uses
  %i.ba = getelementptr i8, ptr %i.av, i64 %index
  %next.gep25 = getelementptr i8, ptr %i.ba, i64 1
  %i.bb = getelementptr i8, ptr %i.av, i64 %index
  %next.gep26 = getelementptr i8, ptr %i.bb, i64 2
  %i.bc = getelementptr i8, ptr %i.av, i64 %index
  %next.gep27 = getelementptr i8, ptr %i.bc, i64 3
  %i.bd = getelementptr i8, ptr %i.av, i64 %index
  %next.gep28 = getelementptr i8, ptr %i.bd, i64 4
  %i.be = getelementptr i8, ptr %i.av, i64 %index
  %next.gep29 = getelementptr i8, ptr %i.be, i64 5
  %i.bf = getelementptr i8, ptr %i.av, i64 %index
  %next.gep30 = getelementptr i8, ptr %i.bf, i64 6
  %i.bg = getelementptr i8, ptr %i.av, i64 %index
  %next.gep31 = getelementptr i8, ptr %i.bg, i64 7
  %i.bh = getelementptr i8, ptr %i.av, i64 %index
  %next.gep32 = getelementptr i8, ptr %i.bh, i64 8
  %i.bi = getelementptr i8, ptr %i.av, i64 %index
  %next.gep33 = getelementptr i8, ptr %i.bi, i64 9
  %i.bj = getelementptr i8, ptr %i.av, i64 %index
  %next.gep34 = getelementptr i8, ptr %i.bj, i64 10
  %i.bk = getelementptr i8, ptr %i.av, i64 %index
  %next.gep35 = getelementptr i8, ptr %i.bk, i64 11
  %i.bl = getelementptr i8, ptr %i.av, i64 %index
  %next.gep36 = getelementptr i8, ptr %i.bl, i64 12
  %i.bm = getelementptr i8, ptr %i.av, i64 %index
  %next.gep37 = getelementptr i8, ptr %i.bm, i64 13
  %i.bn = getelementptr i8, ptr %i.av, i64 %index
  %next.gep38 = getelementptr i8, ptr %i.bn, i64 14
  %i.bo = getelementptr i8, ptr %i.av, i64 %index
  %next.gep39 = getelementptr i8, ptr %i.bo, i64 15
  %i.bp = getelementptr i8, ptr %i.av, i64 %index
  %next.gep40 = getelementptr i8, ptr %i.bp, i64 16
  %i.bq = getelementptr i8, ptr %i.av, i64 %index
  %next.gep41 = getelementptr i8, ptr %i.bq, i64 17
  %i.br = getelementptr i8, ptr %i.av, i64 %index
  %next.gep42 = getelementptr i8, ptr %i.br, i64 18
  %i.bs = getelementptr i8, ptr %i.av, i64 %index
  %next.gep43 = getelementptr i8, ptr %i.bs, i64 19
  %i.bt = getelementptr i8, ptr %i.av, i64 %index
  %next.gep44 = getelementptr i8, ptr %i.bt, i64 20
  %i.bu = getelementptr i8, ptr %i.av, i64 %index
  %next.gep45 = getelementptr i8, ptr %i.bu, i64 21
  %i.bv = getelementptr i8, ptr %i.av, i64 %index
  %next.gep46 = getelementptr i8, ptr %i.bv, i64 22
  %i.bw = getelementptr i8, ptr %i.av, i64 %index
  %next.gep47 = getelementptr i8, ptr %i.bw, i64 23
  %i.bx = getelementptr i8, ptr %i.av, i64 %index
  %next.gep48 = getelementptr i8, ptr %i.bx, i64 24
  %i.by = getelementptr i8, ptr %i.av, i64 %index
  %next.gep49 = getelementptr i8, ptr %i.by, i64 25
  %i.bz = getelementptr i8, ptr %i.av, i64 %index
  %next.gep50 = getelementptr i8, ptr %i.bz, i64 26
  %i.ca = getelementptr i8, ptr %i.av, i64 %index
  %next.gep51 = getelementptr i8, ptr %i.ca, i64 27
  %i.cb = getelementptr i8, ptr %i.av, i64 %index
  %next.gep52 = getelementptr i8, ptr %i.cb, i64 28
  %i.cc = getelementptr i8, ptr %i.av, i64 %index
  %next.gep53 = getelementptr i8, ptr %i.cc, i64 29
  %i.cd = getelementptr i8, ptr %i.av, i64 %index
  %next.gep54 = getelementptr i8, ptr %i.cd, i64 30
  %i.ce = getelementptr i8, ptr %i.av, i64 %index
  %next.gep55 = getelementptr i8, ptr %i.ce, i64 31
  %i.cf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !77
  %wide.load56 = load <16 x i8>, ptr %i.cf, align 1, !tbaa !77
  %i.cg = icmp eq <16 x i8> %wide.load, splat (i8 45) ; 16 uses
  %i.ch = icmp eq <16 x i8> %wide.load56, splat (i8 45) ; 16 uses
  %i.ci = extractelement <16 x i1> %i.cg, i64 0
  br i1 %i.ci, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 95, ptr %next.gep, align 1, !tbaa !77
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cj = extractelement <16 x i1> %i.cg, i64 1
  br i1 %i.cj, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue
  store i8 95, ptr %next.gep25, align 1, !tbaa !77
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue
  %i.ck = extractelement <16 x i1> %i.cg, i64 2
  br i1 %i.ck, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue58
  store i8 95, ptr %next.gep26, align 1, !tbaa !77
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.cl = extractelement <16 x i1> %i.cg, i64 3
  br i1 %i.cl, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue60
  store i8 95, ptr %next.gep27, align 1, !tbaa !77
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.cm = extractelement <16 x i1> %i.cg, i64 4
  br i1 %i.cm, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  store i8 95, ptr %next.gep28, align 1, !tbaa !77
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.cn = extractelement <16 x i1> %i.cg, i64 5
  br i1 %i.cn, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  store i8 95, ptr %next.gep29, align 1, !tbaa !77
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %i.co = extractelement <16 x i1> %i.cg, i64 6
  br i1 %i.co, label %pred.store.if67, label %pred.store.continue68

pred.store.if67:                                  ; preds = %pred.store.continue66
  store i8 95, ptr %next.gep30, align 1, !tbaa !77
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %pred.store.if67, %pred.store.continue66
  %i.cp = extractelement <16 x i1> %i.cg, i64 7
  br i1 %i.cp, label %pred.store.if69, label %pred.store.continue70

pred.store.if69:                                  ; preds = %pred.store.continue68
  store i8 95, ptr %next.gep31, align 1, !tbaa !77
  br label %pred.store.continue70

pred.store.continue70:                            ; preds = %pred.store.if69, %pred.store.continue68
  %i.cq = extractelement <16 x i1> %i.cg, i64 8
  br i1 %i.cq, label %pred.store.if71, label %pred.store.continue72

pred.store.if71:                                  ; preds = %pred.store.continue70
  store i8 95, ptr %next.gep32, align 1, !tbaa !77
  br label %pred.store.continue72

pred.store.continue72:                            ; preds = %pred.store.if71, %pred.store.continue70
  %i.cr = extractelement <16 x i1> %i.cg, i64 9
  br i1 %i.cr, label %pred.store.if73, label %pred.store.continue74

pred.store.if73:                                  ; preds = %pred.store.continue72
  store i8 95, ptr %next.gep33, align 1, !tbaa !77
  br label %pred.store.continue74

pred.store.continue74:                            ; preds = %pred.store.if73, %pred.store.continue72
  %i.cs = extractelement <16 x i1> %i.cg, i64 10
  br i1 %i.cs, label %pred.store.if75, label %pred.store.continue76

pred.store.if75:                                  ; preds = %pred.store.continue74
  store i8 95, ptr %next.gep34, align 1, !tbaa !77
  br label %pred.store.continue76

pred.store.continue76:                            ; preds = %pred.store.if75, %pred.store.continue74
  %i.ct = extractelement <16 x i1> %i.cg, i64 11
  br i1 %i.ct, label %pred.store.if77, label %pred.store.continue78

pred.store.if77:                                  ; preds = %pred.store.continue76
  store i8 95, ptr %next.gep35, align 1, !tbaa !77
  br label %pred.store.continue78

pred.store.continue78:                            ; preds = %pred.store.if77, %pred.store.continue76
  %i.cu = extractelement <16 x i1> %i.cg, i64 12
  br i1 %i.cu, label %pred.store.if79, label %pred.store.continue80

pred.store.if79:                                  ; preds = %pred.store.continue78
  store i8 95, ptr %next.gep36, align 1, !tbaa !77
  br label %pred.store.continue80

pred.store.continue80:                            ; preds = %pred.store.if79, %pred.store.continue78
  %i.cv = extractelement <16 x i1> %i.cg, i64 13
  br i1 %i.cv, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue80
  store i8 95, ptr %next.gep37, align 1, !tbaa !77
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue80
  %i.cw = extractelement <16 x i1> %i.cg, i64 14
  br i1 %i.cw, label %pred.store.if83, label %pred.store.continue84

pred.store.if83:                                  ; preds = %pred.store.continue82
  store i8 95, ptr %next.gep38, align 1, !tbaa !77
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.if83, %pred.store.continue82
  %i.cx = extractelement <16 x i1> %i.cg, i64 15
  br i1 %i.cx, label %pred.store.if85, label %pred.store.continue86

pred.store.if85:                                  ; preds = %pred.store.continue84
  store i8 95, ptr %next.gep39, align 1, !tbaa !77
  br label %pred.store.continue86

pred.store.continue86:                            ; preds = %pred.store.if85, %pred.store.continue84
  %i.cy = extractelement <16 x i1> %i.ch, i64 0
  br i1 %i.cy, label %pred.store.if87, label %pred.store.continue88

end_hunk_0
