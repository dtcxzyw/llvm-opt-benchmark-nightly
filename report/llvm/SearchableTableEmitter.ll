Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SearchableTableEmitter?download=true
inline.NumInlined: 4079
inline.NumDeleted: 1746
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_:bb.a

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !69
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !69
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #24 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_122SearchableTableEmitter21emitLookupDeclarationERKNS_12GenericTableERKNS_11SearchIndexERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(305) %0, ptr noundef nonnull align 8 dereferenceable(114) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.b = load i8, ptr %i.a, align 1, !tbaa !236, !range !170, !noundef !90
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !202
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !203  ; 3 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.j, 27
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.123, i64 noundef 27) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.g, ptr noundef nonnull align 1 dereferenceable(27) @.str.123, i64 27, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !203
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 27
  store ptr %i.n, ptr %i.f, align 8, !tbaa !203
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.l, %bb.c ], [ %2, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36
  %i.s = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.p, i64 noundef %i.r) #24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !202
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !203  ; 2 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, 4
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ab = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull @.str.124, i64 noundef 4) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit25

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i32 540944928, ptr %i.w, align 1
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !203
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !203
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit25

bb.g:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %i.j, 6
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.125, i64 noundef 6) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit28

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.g, ptr noundef nonnull align 1 dereferenceable(6) @.str.125, i64 6, i1 false)
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !203
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !203
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit28

_ZN4llvm11raw_ostreamlsEPKc.exit28:               ; preds = %bb.h, %bb.i
  %.0.i.i27 = phi ptr [ %i.af, %bb.h ], [ %2, %bb.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !36
  %i.am = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i27, ptr noundef %i.aj, i64 noundef %i.al) #24 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !202
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !203 ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ult i64 %i.at, 2
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit28
  %i.av = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull @.str.126, i64 noundef 2) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit25

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit28
  store i16 10784, ptr %i.aq, align 1
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !203
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store ptr %i.ax, ptr %i.ap, align 8, !tbaa !203
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit25

_ZN4llvm11raw_ostreamlsEPKc.exit25:               ; preds = %bb.k, %bb.j, %bb.f, %bb.e
  %i.ay = load ptr, ptr %1, align 8, !tbaa !69
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !36
  %i.bb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.ay, i64 noundef %i.ba) #24 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !202
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !203 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit25
  %i.bh = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull @.str.127, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit25
  store i8 40, ptr %i.bf, align 1
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !203
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !203
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit34

_ZN4llvm11raw_ostreamlsEPKc.exit34:               ; preds = %bb.l, %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.bk, align 8, !tbaa !71 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val22 = load i32, ptr %i.bl, align 8, !tbaa !72 ; 3 uses
  %i.bm = zext i32 %.val22 to i64
  %.idx = mul nuw nsw i64 %i.bm, 56
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %.not21 = icmp eq i32 %.val22, 0
  br i1 %.not21, label %._crit_edge, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.peel

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit34
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call fastcc void @_ZN12_GLOBAL__N_122SearchableTableEmitter19searchableFieldTypeB5cxx11ERKNS_12GenericTableERKNS_11SearchIndexERKNS_12GenericFieldENS0_11TypeContextE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(305) %0, ptr noundef nonnull align 8 dereferenceable(114) %1, ptr noundef nonnull align 8 dereferenceable(56) %.val, i32 noundef 2)
  %i.bs = load ptr, ptr %3, align 8, !tbaa !69
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !36
  %i.bu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.bs, i64 noundef %i.bt) #24 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !202
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !203 ; 2 uses
  %i.bz = icmp eq ptr %i.bw, %i.by
  br i1 %i.bz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.peel
  store i8 32, ptr %i.by, align 1
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !203
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store ptr %i.cb, ptr %i.bx, align 8, !tbaa !203
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40.peel

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.peel
  %i.cc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noundef nonnull @.str.98, i64 noundef 1) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40.peel

_ZN4llvm11raw_ostreamlsEPKc.exit40.peel:          ; preds = %bb.o, %bb.n
  %.0.i.i39.peel = phi ptr [ %i.cc, %bb.o ], [ %i.bu, %bb.n ]
  %i.cd = load ptr, ptr %.val, align 8, !tbaa !69
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !36
  %i.cg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i39.peel, ptr noundef %i.cd, i64 noundef %i.cf) #24 ; 0 uses
  %i.ch = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.br
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit40.peel
  %i.cj = load i64, ptr %i.br, align 8, !tbaa !37
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit40.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.not.peel = icmp eq i32 %.val22, 1
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 56
  br label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZN4llvm11raw_ostreamlsEPKc.exit34
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !202
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !203 ; 2 uses
  %i.cq = icmp eq ptr %i.cn, %i.cp
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.cr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.128, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit37

bb.q:                                             ; preds = %._crit_edge
  store i8 41, ptr %i.cp, align 1
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !203
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store ptr %i.ct, ptr %i.co, align 8, !tbaa !203
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit37

_ZN4llvm11raw_ostreamlsEPKc.exit37:               ; preds = %bb.p, %bb.q
  ret void

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.peel.next
  %.023 = phi ptr [ %i.cl, %.peel.next ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %i.cu = load ptr, ptr %i.bo, align 8, !tbaa !202
  %i.cv = load ptr, ptr %i.bp, align 8, !tbaa !203 ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = icmp ult i64 %i.cy, 2
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  %i.da = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.101, i64 noundef 2) #24
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.s:                                             ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  store i16 8236, ptr %i.cv, align 1
  %i.db = load ptr, ptr %i.bp, align 8, !tbaa !203
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  store ptr %i.dc, ptr %i.bp, align 8, !tbaa !203
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.r, %bb.s
  %.0.i = phi ptr [ %i.da, %bb.r ], [ %2, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call fastcc void @_ZN12_GLOBAL__N_122SearchableTableEmitter19searchableFieldTypeB5cxx11ERKNS_12GenericTableERKNS_11SearchIndexERKNS_12GenericFieldENS0_11TypeContextE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(305) %0, ptr noundef nonnull align 8 dereferenceable(114) %1, ptr noundef nonnull align 8 dereferenceable(56) %.023, i32 noundef 2)
  %i.dd = load ptr, ptr %3, align 8, !tbaa !69
  %i.de = load i64, ptr %i.bq, align 8, !tbaa !36
  %i.df = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef %i.dd, i64 noundef %i.de) #24 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !202
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !203 ; 2 uses
  %i.dk = icmp eq ptr %i.dh, %i.dj
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.dl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.df, ptr noundef nonnull @.str.98, i64 noundef 1) #24
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  store i8 32, ptr %i.dj, align 1
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !203
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  store ptr %i.dn, ptr %i.di, align 8, !tbaa !203
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit40

_ZN4llvm11raw_ostreamlsEPKc.exit40:               ; preds = %bb.t, %bb.u
  %.0.i.i39 = phi ptr [ %i.dl, %bb.t ], [ %i.df, %bb.u ]
  %i.do = load ptr, ptr %.023, align 8, !tbaa !69
  %i.dp = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !36
  %i.dr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i39, ptr noundef %i.do, i64 noundef %i.dq) #24 ; 0 uses
  %i.ds = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.br
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit40
  %i.du = load i64, ptr %i.br, align 8, !tbaa !37
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.dw = getelementptr inbounds nuw i8, ptr %.023, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.dw, %i.bn
  br i1 %.not, label %._crit_edge, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit, !llvm.loop !671
}

declare noundef i32 @_ZN4llvm19StringToOffsetTable20GetOrAddStringOffsetENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(74), ptr, i64) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNS_12GenericTableERKNS_11SearchIndexEbRN4llvm19StringToOffsetTableERNS7_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(305) %1, ptr noundef nonnull align 8 dereferenceable(114) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(74) %4, ptr noundef nonnull align 8 dereferenceable(48) %5) unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.391", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 3 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 3 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 3 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 3 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %27 = alloca %class.anon.390, align 8           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 44 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 140 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !203  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.40, i64 noundef 1) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 10, ptr %i.d, align 1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !203
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.c, align 8, !tbaa !203
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  tail call fastcc void @_ZN12_GLOBAL__N_122SearchableTableEmitter21emitLookupDeclarationERKNS_12GenericTableERKNS_11SearchIndexERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(305) %1, ptr noundef nonnull align 8 dereferenceable(114) %2, ptr noundef nonnull align 8 dereferenceable(48) %5)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !202
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !203  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.m, 3
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.84, i64 noundef 3) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit231

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.j, ptr noundef nonnull align 1 dereferenceable(3) @.str.84, i64 3, i1 false)
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !203
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  store ptr %i.q, ptr %i.c, align 8, !tbaa !203
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit231

_ZN4llvm11raw_ostreamlsEPKc.exit231:              ; preds = %bb.d, %bb.e
  br i1 %3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit231
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  %i.v = load ptr, ptr %1, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !212  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !213
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  br label %_ZNSt6vectorISt4pairIPKN4llvm6RecordEjESaIS5_EED2Ev.exit

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit231
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !202
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !203 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ult i64 %i.aj, 21
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.141, i64 noundef 21) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit234

end_hunk_0
