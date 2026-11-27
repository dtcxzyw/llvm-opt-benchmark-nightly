Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CallingConvEmitter?download=true
inline.NumInlined: 1589
inline.NumDeleted: 781
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZZN12_GLOBAL__N_118CallingConvEmitter10emitActionEPKN4llvm6RecordENS1_6indentERNS1_11raw_ostreamEENK3$_2clEb":bb.a

bb.z:                                             ; preds = %bb.y
  %i.ec = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.df, ptr noundef nonnull @.str.10, i64 noundef 1) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit35

bb.aa:                                            ; preds = %bb.y
  store i8 10, ptr %i.dj, align 1
  %i.ed = load ptr, ptr %i.di, align 8, !tbaa !174
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store ptr %i.ee, ptr %i.di, align 8, !tbaa !174
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit35

_ZN4llvm11raw_ostreamlsEPKc.exit35:               ; preds = %bb.z, %bb.aa
  %.0.i.i34 = phi ptr [ %i.ec, %bb.z ], [ %i.df, %bb.aa ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !421, !nonnull !150, !align !217 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !203
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !204
  %i.ek = mul i32 %i.ej, %i.eh
  %i.el = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i34, i32 noundef %i.ek) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr @.str.108, ptr %3, align 8, !tbaa !142, !alias.scope !423
  %.sroa.22.0..sroa_idx.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 94, ptr %.sroa.22.0..sroa_idx.i.i.i.i36, align 8, !tbaa !143, !alias.scope !423
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.em, ptr %i.en, align 8, !tbaa !219, !alias.scope !423
  %.sroa.2.0..sroa_idx.i.i.i.i37 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i37, align 8, !tbaa !143, !alias.scope !423
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.eo, align 8, !tbaa !222, !alias.scope !423
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i64 ptrtoint (ptr @.str.112 to i64), ptr %i.ep, align 8, !tbaa !142, !alias.scope !423
  %i.eq = ptrtoint ptr %i.ep to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRA16_KcEEEEvlS2_S3_, ptr %i.em, align 8, !tbaa !21, !alias.scope !423
  %.sroa.4.0..sroa_idx.i.i.i38 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.eq, ptr %.sroa.4.0..sroa_idx.i.i.i38, align 8, !tbaa !21, !alias.scope !423
  %i.er = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48) %i.el, ptr noundef nonnull align 8 dereferenceable(33) %3) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit32

_ZN4llvm11raw_ostreamlsEPKc.exit32:               ; preds = %bb.x, %bb.w, %_ZN4llvm11raw_ostreamlsEPKc.exit35
  %i.es = load ptr, ptr %i.aw, align 8, !tbaa !420, !nonnull !150, !align !151 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !173
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 32 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !174 ; 2 uses
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = icmp ult i64 %i.ez, 3
  br i1 %i.fa, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit32
  %i.fb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.es, ptr noundef nonnull @.str.60, i64 noundef 3) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit41

bb.ac:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ew, ptr noundef nonnull align 1 dereferenceable(3) @.str.60, i64 3, i1 false)
  %i.fc = load ptr, ptr %i.ev, align 8, !tbaa !174
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 3
  store ptr %i.fd, ptr %i.ev, align 8, !tbaa !174
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit41

_ZN4llvm11raw_ostreamlsEPKc.exit41:               ; preds = %bb.ab, %bb.ac
  ret void
}

declare noundef i64 @_ZNK4llvm6Record13getValueAsIntENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN12_GLOBAL__N_118CallingConvEmitter10emitActionEPKN4llvm6RecordENS1_6indentERNS1_11raw_ostreamEENK3$_0clEPKNS1_8ListInitENS1_9StringRefE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(address) %1, ptr %2, i64 %3) unnamed_addr #10 align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !425, !nonnull !150, !align !151
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !426, !nonnull !150, !align !217 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !203
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !204
  %i.i = mul i32 %i.h, %i.f
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef %i.i) #17 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !173
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !174  ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ult i64 %i.q, 23
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull @.str.113, i64 noundef 23) #17 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !174
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.n, ptr noundef nonnull align 1 dereferenceable(23) @.str.113, i64 23, i1 false)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !174
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 23 ; 2 uses
  store ptr %i.u, ptr %i.m, align 8, !tbaa !174
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %.pre, %bb.b ], [ %i.u, %bb.c ] ; 3 uses
  %.0.i.i = phi ptr [ %i.s, %bb.b ], [ %i.j, %bb.c ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !173
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ugt i64 %3, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ad = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %2, i64 noundef %3) #17 ; 2 uses
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8, !tbaa !174
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %2, i64 %3, i1 false)
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !174
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %3 ; 2 uses
  store ptr %i.af, ptr %i.y, align 8, !tbaa !174
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.d, %bb.e, %bb.f
  %i.ag = phi ptr [ %.pre58, %bb.d ], [ %i.af, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.ad, %bb.d ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %bb.e ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !173
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 7
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.an = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.114, i64 noundef 7) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ag, ptr noundef nonnull align 1 dereferenceable(7) @.str.114, i64 7, i1 false)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !174
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 7
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !174
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

_ZN4llvm11raw_ostreamlsEPKc.exit15:               ; preds = %bb.g, %bb.h
  %i.ar = load ptr, ptr %0, align 8, !tbaa !425, !nonnull !150, !align !151
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !426, !nonnull !150, !align !217 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !203
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !204
  %i.aw = mul i32 %i.av, %i.at
  %i.ax = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i32 noundef %i.aw) #17 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !173
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !174 ; 2 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ult i64 %i.be, 2
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15
  %i.bg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull @.str.115, i64 noundef 2) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15
  store i16 8224, ptr %i.bb, align 1
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !174
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store ptr %i.bi, ptr %i.ba, align 8, !tbaa !174
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

_ZN4llvm11raw_ostreamlsEPKc.exit18:               ; preds = %bb.i, %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !183 ; 3 uses
  %i.bm = zext i32 %i.bl to i64
  %.idx = shl nuw nsw i64 %i.bm, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx
  %.not53 = icmp eq i32 %i.bl, 0
  br i1 %.not53, label %._crit_edge, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit29.peel

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit29.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !425, !nonnull !150, !align !151
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call fastcc void @_ZN12_GLOBAL__N_118CallingConvEmitter24getQualifiedRegisterNameB5cxx11EPKN4llvm4InitE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(1048) %i.b, ptr noundef %i.br)
  %i.bs = load ptr, ptr %4, align 8, !tbaa !157
  %i.bt = load i64, ptr %i.bo, align 8, !tbaa !20
  %i.bu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef %i.bs, i64 noundef %i.bt) #17 ; 0 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !157   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bp
  br i1 %i.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit29.peel
  %i.bx = load i64, ptr %i.bp, align 8, !tbaa !21
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit29.peel
  %5 = load i64, ptr %i.bo, align 8, !tbaa !20
  %6 = icmp ult i64 %5, 16
  call void @llvm.assume(i1 %6)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.not.peel = icmp eq i32 %i.bl, 1
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZN4llvm11raw_ostreamlsEPKc.exit18
  %i.ca = load ptr, ptr %0, align 8, !tbaa !425, !nonnull !150, !align !151 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !173
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !174 ; 2 uses
  %i.cf = icmp eq ptr %i.cc, %i.ce
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.cg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull @.str.10, i64 noundef 1) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.l:                                             ; preds = %._crit_edge
  store i8 10, ptr %i.ce, align 1
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !174
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.ci, ptr %i.cd, align 8, !tbaa !174
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

_ZN4llvm11raw_ostreamlsEPKc.exit21:               ; preds = %bb.k, %bb.l
  %.0.i.i20 = phi ptr [ %i.cg, %bb.k ], [ %i.ca, %bb.l ]
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !426, !nonnull !150, !align !217 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !203
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !204
  %i.cn = mul i32 %i.cm, %i.ck
  %i.co = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i20, i32 noundef %i.cn) #17 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !173
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !174 ; 2 uses
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = icmp ult i64 %i.cv, 3
  br i1 %i.cw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  %i.cx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr noundef nonnull @.str.116, i64 noundef 3) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cs, ptr noundef nonnull align 1 dereferenceable(3) @.str.116, i64 3, i1 false)
  %i.cy = load ptr, ptr %i.cr, align 8, !tbaa !174
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 3
  store ptr %i.cz, ptr %i.cr, align 8, !tbaa !174
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24

_ZN4llvm11raw_ostreamlsEPKc.exit24:               ; preds = %bb.m, %bb.n
  ret void

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.peel.next
  %.055 = phi ptr [ %i.bz, %.peel.next ], [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.da = load ptr, ptr %.055, align 8, !tbaa !214
  %i.db = load ptr, ptr %0, align 8, !tbaa !425, !nonnull !150, !align !151 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !173
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 32 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !174 ; 2 uses
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = icmp ult i64 %i.di, 2
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  %i.dk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.db, ptr noundef nonnull @.str.100, i64 noundef 2) #17
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit29

bb.p:                                             ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  store i16 8236, ptr %i.df, align 1
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !174
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store ptr %i.dm, ptr %i.de, align 8, !tbaa !174
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit29

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit29:    ; preds = %bb.o, %bb.p
  %.0.i28 = phi ptr [ %i.dk, %bb.o ], [ %i.db, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call fastcc void @_ZN12_GLOBAL__N_118CallingConvEmitter24getQualifiedRegisterNameB5cxx11EPKN4llvm4InitE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(1048) %i.b, ptr noundef %i.da)
  %i.dn = load ptr, ptr %4, align 8, !tbaa !157
  %i.do = load i64, ptr %i.bo, align 8, !tbaa !20
  %i.dp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i28, ptr noundef %i.dn, i64 noundef %i.do) #17 ; 0 uses
  %i.dq = load ptr, ptr %4, align 8, !tbaa !157   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.bp
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit29
  %i.ds = load i64, ptr %i.bp, align 8, !tbaa !21
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.du = getelementptr inbounds nuw i8, ptr %.055, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.du, %i.bn
  br i1 %.not, label %._crit_edge, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit, !llvm.loop !424
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) #17 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !157  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !157
  %i.k = load i64, ptr %i.e, align 8, !tbaa !21
  store i64 %i.k, ptr %i.c, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !20
  store ptr %i.e, ptr %i.b, align 8, !tbaa !157
  store i64 0, ptr %i.m, align 8, !tbaa !20
  store i8 0, ptr %i.e, align 8, !tbaa !21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6utostrB5cxx11Emb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [21 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 21 ; 2 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  store i8 48, ptr %i.e, align 4, !tbaa !21
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.111 = phi ptr [ %i.i, %.lr.ph ], [ %i.c, %bb.a ]
  %.0810 = phi i64 [ %i.j, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.f = urem i64 %.0810, 10
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = or disjoint i8 %i.g, 48
  %i.i = getelementptr inbounds i8, ptr %.111, i64 -1 ; 3 uses
  store i8 %i.h, ptr %i.i, align 1, !tbaa !21
  %i.j = udiv i64 %.0810, 10
  %.not = icmp ult i64 %.0810, 10
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4

._crit_edge:                                      ; preds = %.lr.ph, %.thread
  %.1.lcssa = phi ptr [ %i.e, %.thread ], [ %i.i, %.lr.ph ] ; 2 uses
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds i8, ptr %.1.lcssa, i64 -1 ; 2 uses
  store i8 45, ptr %i.k, align 1, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.2 = phi ptr [ %i.k, %bb.b ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = ptrtoint ptr %.2 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !143
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
end_hunk_0
