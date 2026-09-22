Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/Method?download=true
inline.NumInlined: 583
inline.NumDeleted: 311
begin_hunk_0_@_ZNK4LIEF3DEX6Method6acceptERNS_7VisitorE:bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(176) %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3DEXlsERSoRKNS0_6MethodE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.LIEF::ref_iterator", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.g, i64 noundef %i.i) #17
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str, i64 noundef 2) #17 ; 0 uses
  br label %bb.ax

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZNK4LIEF3DEX9Prototype15parameters_typeEv(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::ref_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.l, ptr %6, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i64 0, ptr %i.m, align 8, !tbaa !19
  store i8 0, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58   ; 2 uses
  %.not34 = icmp eq ptr %i.o, null
  br i1 %.not34, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4LIEF3DEX5Class8fullnameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(140) %i.o) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #17
  %.pr = load i64, ptr %i.m, align 8, !tbaa !19   ; 3 uses
  %i.q = icmp eq i64 %.pr, 0
  br i1 %i.q, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.r = add i64 %.pr, -2
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.s, ptr %7, align 8, !tbaa !15, !alias.scope !95
  %i.t = load ptr, ptr %6, align 8, !tbaa !18, !noalias !95
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.v = add i64 %.pr, -1
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.v) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17, !noalias !95
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !20, !noalias !95
  %i.w = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.w, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #17 ; 2 uses
  store ptr %i.x, ptr %7, align 8, !tbaa !18, !alias.scope !95
  %i.y = load i64, ptr %i.c, align 8, !tbaa !20, !noalias !95
  store i64 %i.y, ptr %i.s, align 8, !tbaa !21, !alias.scope !95
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.z = phi ptr [ %i.x, %bb.e ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !21
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.u, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !20, !noalias !95 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !19, !alias.scope !95
  %i.ad = load ptr, ptr %7, align 8, !tbaa !18, !alias.scope !95
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17, !noalias !95
  %i.af = load ptr, ptr %6, align 8, !tbaa !18    ; 6 uses
  %i.ag = icmp eq ptr %i.af, %i.l
  %i.ah = load ptr, ptr %7, align 8, !tbaa !18    ; 5 uses
  %i.ai = icmp eq ptr %i.ah, %i.s                 ; 2 uses
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.ai, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !19 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  switch i64 %i.aj, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !21
  store i8 %i.al, ptr %i.af, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.ah, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.am = load i64, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  store i64 %i.am, ptr %i.m, align 8, !tbaa !19
  %i.an = load ptr, ptr %6, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store i8 0, ptr %i.ao, align 1, !tbaa !21
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ah, ptr %6, align 8, !tbaa !18
  %i.ap = load <2 x i64>, ptr %i.ac, align 8, !tbaa !21
  store <2 x i64> %i.ap, ptr %i.m, align 8, !tbaa !21
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aq = load i64, ptr %i.l, align 8, !tbaa !21
  store ptr %i.ah, ptr %6, align 8, !tbaa !18
  %i.ar = load <2 x i64>, ptr %i.ac, align 8, !tbaa !21
  store <2 x i64> %i.ar, ptr %i.m, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.af, ptr %7, align 8, !tbaa !18
  store i64 %i.aq, ptr %i.s, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.s, ptr %7, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.as = phi ptr [ %i.af, %bb.k ], [ %i.s, %bb.l ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ac, align 8, !tbaa !19
  store i8 0, ptr %i.as, align 1, !tbaa !21
  %i.at = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.s
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.av = load i64, ptr %i.s, align 8, !tbaa !21
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ax = load ptr, ptr %6, align 8, !tbaa !18    ; 44 uses
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !19  ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  %.not6.i = icmp samesign eq i64 %i.ay, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %min.iters.check = icmp ult i64 %i.ay, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check135 = icmp ult i64 %i.ay, 32
  br i1 %min.iters.check135, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.ay, 24
  %n.vec = and i64 %i.ay, -32                     ; 4 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue229
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue229 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %index ; 3 uses
  %i.bc = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep136 = getelementptr i8, ptr %i.bc, i64 1
  %i.bd = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep137 = getelementptr i8, ptr %i.bd, i64 2
  %i.be = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep138 = getelementptr i8, ptr %i.be, i64 3
  %i.bf = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep139 = getelementptr i8, ptr %i.bf, i64 4
  %i.bg = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep140 = getelementptr i8, ptr %i.bg, i64 5
  %i.bh = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep141 = getelementptr i8, ptr %i.bh, i64 6
  %i.bi = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep142 = getelementptr i8, ptr %i.bi, i64 7
  %i.bj = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep143 = getelementptr i8, ptr %i.bj, i64 8
  %i.bk = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep144 = getelementptr i8, ptr %i.bk, i64 9
  %i.bl = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep145 = getelementptr i8, ptr %i.bl, i64 10
  %i.bm = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep146 = getelementptr i8, ptr %i.bm, i64 11
  %i.bn = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep147 = getelementptr i8, ptr %i.bn, i64 12
  %i.bo = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep148 = getelementptr i8, ptr %i.bo, i64 13
  %i.bp = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep149 = getelementptr i8, ptr %i.bp, i64 14
  %i.bq = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep150 = getelementptr i8, ptr %i.bq, i64 15
  %i.br = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep151 = getelementptr i8, ptr %i.br, i64 16
  %i.bs = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep152 = getelementptr i8, ptr %i.bs, i64 17
  %i.bt = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep153 = getelementptr i8, ptr %i.bt, i64 18
  %i.bu = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep154 = getelementptr i8, ptr %i.bu, i64 19
  %i.bv = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep155 = getelementptr i8, ptr %i.bv, i64 20
  %i.bw = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep156 = getelementptr i8, ptr %i.bw, i64 21
  %i.bx = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep157 = getelementptr i8, ptr %i.bx, i64 22
  %i.by = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep158 = getelementptr i8, ptr %i.by, i64 23
  %i.bz = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep159 = getelementptr i8, ptr %i.bz, i64 24
  %i.ca = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep160 = getelementptr i8, ptr %i.ca, i64 25
  %i.cb = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep161 = getelementptr i8, ptr %i.cb, i64 26
  %i.cc = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep162 = getelementptr i8, ptr %i.cc, i64 27
  %i.cd = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep163 = getelementptr i8, ptr %i.cd, i64 28
  %i.ce = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep164 = getelementptr i8, ptr %i.ce, i64 29
  %i.cf = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep165 = getelementptr i8, ptr %i.cf, i64 30
  %i.cg = getelementptr i8, ptr %i.ax, i64 %index
  %next.gep166 = getelementptr i8, ptr %i.cg, i64 31
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !21
  %wide.load167 = load <16 x i8>, ptr %i.ch, align 1, !tbaa !21
  %i.ci = icmp eq <16 x i8> %wide.load, splat (i8 47) ; 16 uses
  %i.cj = icmp eq <16 x i8> %wide.load167, splat (i8 47) ; 16 uses
  %i.ck = extractelement <16 x i1> %i.ci, i64 0
  br i1 %i.ck, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 46, ptr %next.gep, align 1, !tbaa !21
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cl = extractelement <16 x i1> %i.ci, i64 1
  br i1 %i.cl, label %pred.store.if168, label %pred.store.continue169

pred.store.if168:                                 ; preds = %pred.store.continue
  store i8 46, ptr %next.gep136, align 1, !tbaa !21
  br label %pred.store.continue169

pred.store.continue169:                           ; preds = %pred.store.if168, %pred.store.continue
  %i.cm = extractelement <16 x i1> %i.ci, i64 2
  br i1 %i.cm, label %pred.store.if170, label %pred.store.continue171

pred.store.if170:                                 ; preds = %pred.store.continue169
  store i8 46, ptr %next.gep137, align 1, !tbaa !21
  br label %pred.store.continue171

pred.store.continue171:                           ; preds = %pred.store.if170, %pred.store.continue169
  %i.cn = extractelement <16 x i1> %i.ci, i64 3
  br i1 %i.cn, label %pred.store.if172, label %pred.store.continue173

pred.store.if172:                                 ; preds = %pred.store.continue171
  store i8 46, ptr %next.gep138, align 1, !tbaa !21
  br label %pred.store.continue173

pred.store.continue173:                           ; preds = %pred.store.if172, %pred.store.continue171
  %i.co = extractelement <16 x i1> %i.ci, i64 4
  br i1 %i.co, label %pred.store.if174, label %pred.store.continue175

pred.store.if174:                                 ; preds = %pred.store.continue173
  store i8 46, ptr %next.gep139, align 1, !tbaa !21
  br label %pred.store.continue175

pred.store.continue175:                           ; preds = %pred.store.if174, %pred.store.continue173
  %i.cp = extractelement <16 x i1> %i.ci, i64 5
  br i1 %i.cp, label %pred.store.if176, label %pred.store.continue177

pred.store.if176:                                 ; preds = %pred.store.continue175
  store i8 46, ptr %next.gep140, align 1, !tbaa !21
  br label %pred.store.continue177

pred.store.continue177:                           ; preds = %pred.store.if176, %pred.store.continue175
  %i.cq = extractelement <16 x i1> %i.ci, i64 6
  br i1 %i.cq, label %pred.store.if178, label %pred.store.continue179

pred.store.if178:                                 ; preds = %pred.store.continue177
  store i8 46, ptr %next.gep141, align 1, !tbaa !21
  br label %pred.store.continue179

pred.store.continue179:                           ; preds = %pred.store.if178, %pred.store.continue177
  %i.cr = extractelement <16 x i1> %i.ci, i64 7
  br i1 %i.cr, label %pred.store.if180, label %pred.store.continue181

pred.store.if180:                                 ; preds = %pred.store.continue179
  store i8 46, ptr %next.gep142, align 1, !tbaa !21
  br label %pred.store.continue181

pred.store.continue181:                           ; preds = %pred.store.if180, %pred.store.continue179
  %i.cs = extractelement <16 x i1> %i.ci, i64 8
  br i1 %i.cs, label %pred.store.if182, label %pred.store.continue183

pred.store.if182:                                 ; preds = %pred.store.continue181
  store i8 46, ptr %next.gep143, align 1, !tbaa !21
  br label %pred.store.continue183

pred.store.continue183:                           ; preds = %pred.store.if182, %pred.store.continue181
  %i.ct = extractelement <16 x i1> %i.ci, i64 9
  br i1 %i.ct, label %pred.store.if184, label %pred.store.continue185

pred.store.if184:                                 ; preds = %pred.store.continue183
  store i8 46, ptr %next.gep144, align 1, !tbaa !21
  br label %pred.store.continue185

pred.store.continue185:                           ; preds = %pred.store.if184, %pred.store.continue183
  %i.cu = extractelement <16 x i1> %i.ci, i64 10
  br i1 %i.cu, label %pred.store.if186, label %pred.store.continue187

pred.store.if186:                                 ; preds = %pred.store.continue185
  store i8 46, ptr %next.gep145, align 1, !tbaa !21
  br label %pred.store.continue187

pred.store.continue187:                           ; preds = %pred.store.if186, %pred.store.continue185
  %i.cv = extractelement <16 x i1> %i.ci, i64 11
  br i1 %i.cv, label %pred.store.if188, label %pred.store.continue189

pred.store.if188:                                 ; preds = %pred.store.continue187
  store i8 46, ptr %next.gep146, align 1, !tbaa !21
  br label %pred.store.continue189

pred.store.continue189:                           ; preds = %pred.store.if188, %pred.store.continue187
  %i.cw = extractelement <16 x i1> %i.ci, i64 12
  br i1 %i.cw, label %pred.store.if190, label %pred.store.continue191

pred.store.if190:                                 ; preds = %pred.store.continue189
  store i8 46, ptr %next.gep147, align 1, !tbaa !21
  br label %pred.store.continue191

pred.store.continue191:                           ; preds = %pred.store.if190, %pred.store.continue189
  %i.cx = extractelement <16 x i1> %i.ci, i64 13
  br i1 %i.cx, label %pred.store.if192, label %pred.store.continue193

pred.store.if192:                                 ; preds = %pred.store.continue191
  store i8 46, ptr %next.gep148, align 1, !tbaa !21
  br label %pred.store.continue193

pred.store.continue193:                           ; preds = %pred.store.if192, %pred.store.continue191
  %i.cy = extractelement <16 x i1> %i.ci, i64 14
  br i1 %i.cy, label %pred.store.if194, label %pred.store.continue195

pred.store.if194:                                 ; preds = %pred.store.continue193
  store i8 46, ptr %next.gep149, align 1, !tbaa !21
  br label %pred.store.continue195

pred.store.continue195:                           ; preds = %pred.store.if194, %pred.store.continue193
  %i.cz = extractelement <16 x i1> %i.ci, i64 15
  br i1 %i.cz, label %pred.store.if196, label %pred.store.continue197

pred.store.if196:                                 ; preds = %pred.store.continue195
  store i8 46, ptr %next.gep150, align 1, !tbaa !21
  br label %pred.store.continue197

pred.store.continue197:                           ; preds = %pred.store.if196, %pred.store.continue195
  %i.da = extractelement <16 x i1> %i.cj, i64 0
  br i1 %i.da, label %pred.store.if198, label %pred.store.continue199

end_hunk_0
