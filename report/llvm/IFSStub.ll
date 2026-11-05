Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IFSStub?download=true
inline.NumInlined: 402
inline.NumDeleted: 235
begin_hunk_0_@_ZN4llvm3ifs13IFSStubTripleC2ERKNS0_7IFSStubE:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.q = load i32, ptr %i.p, align 8
  store i32 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.y = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.x) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ab = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4llvm3ifs9IFSSymbolESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3ifs13IFSStubTripleC2EOS1_(ptr noundef nonnull align 8 dereferenceable(256) initializes((0, 24), (56, 57), (96, 97), (136, 137), (146, 147), (184, 185), (196, 197), (204, 205), (208, 256)) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 0, ptr %i.e, align 2, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i8 0, ptr %i.g, align 4, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i8 0, ptr %i.h, align 4, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i8 0, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm3ifs13IFSStubTripleE, i64 16), ptr %0, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(144) %i.l, ptr noundef nonnull align 8 dereferenceable(144) %i.k) #12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.n) #12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.q = load i32, ptr %i.p, align 8
  store i32 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.s) #12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %i.v) #12
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !27   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28
  %i.ad = load <2 x ptr>, ptr %i.x, align 8, !tbaa !35
  store <2 x ptr> %i.ad, ptr %i.i, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !28
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !28
  %.not4.i.i.i.i.i = icmp eq ptr %i.y, %i.aa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.al, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.y, %bb.a ] ; 3 uses
  %i.ag = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !21
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #11
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i
  %i.am = ptrtoint ptr %i.ac to i64
  %i.an = ptrtoint ptr %i.y to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ao) #11
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !41 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !43
  %i.aw = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !47
  store <2 x ptr> %i.aw, ptr %i.aq, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !43
  %.not4.i.i.i.i.i6 = icmp eq ptr %i.ar, %i.at
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i6, label %_ZSt8_DestroyIPN4llvm3ifs9IFSSymbolEEvT_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i7

.lr.ph.i.i.i.i.i7:                                ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyIN4llvm3ifs9IFSSymbolEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i8 = phi ptr [ %i.bn, %_ZSt8_DestroyIN4llvm3ifs9IFSSymbolEEvPT_.exit.i.i.i.i.i ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i8, i64 88 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !14, !range !45, !noundef !46
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i7
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i8, i64 56
  store i8 0, ptr %i.az, align 8, !tbaa !14
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !33 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i8, i64 72 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !21
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #11
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i7
  %i.bi = load ptr, ptr %.05.i.i.i.i.i8, align 8, !tbaa !33 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i8, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyIN4llvm3ifs9IFSSymbolEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !21
  %i.bm = add i64 %i.bl, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #11
  br label %_ZSt8_DestroyIN4llvm3ifs9IFSSymbolEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN4llvm3ifs9IFSSymbolEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i8, i64 96 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.bn, %i.at
  br i1 %.not.i.i.i.i.i9, label %_ZSt8_DestroyIPN4llvm3ifs9IFSSymbolEEvT_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i7, !llvm.loop !1

_ZSt8_DestroyIPN4llvm3ifs9IFSSymbolEEvT_S4_.exit.i.i.i: ; preds = %_ZSt8_DestroyIN4llvm3ifs9IFSSymbolEEvPT_.exit.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %.not.i.i1.i.i.i10 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i.i.i10, label %_ZNSt6vectorIN4llvm3ifs9IFSSymbolESaIS2_EEaSEOS4_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4llvm3ifs9IFSSymbolEEvT_S4_.exit.i.i.i
  %i.bo = ptrtoint ptr %i.av to i64
  %i.bp = ptrtoint ptr %i.ar to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.bq) #11
  br label %_ZNSt6vectorIN4llvm3ifs9IFSSymbolESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN4llvm3ifs9IFSSymbolESaIS2_EEaSEOS4_.exit: ; preds = %_ZSt8_DestroyIPN4llvm3ifs9IFSSymbolEEvT_S4_.exit.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm3ifs9IFSTarget5emptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i8, ptr %i.d, align 8, !range !45
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.h = load i8, ptr %i.g, align 2, !range !45
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond7 = select i1 %or.cond, i1 true, i1 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i8, ptr %i.j, align 8, !range !45
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond11 = select i1 %or.cond7, i1 true, i1 %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 132
  %1 = load i8, ptr %i.m, align 4, !range !45
  %2 = trunc nuw i8 %1 to i1
  %or.cond15 = select i1 %or.cond11, i1 true, i1 %2
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.n = load i8, ptr %3, align 4, !range !45
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %or.cond15, i1 true, i1 %i.o
  %4 = xor i1 %i.p, true
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext range(i8 1, 3) i8 @_ZN4llvm3ifs23convertIFSBitWidthToELFENS0_15IFSBitWidthTypeE(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  %. = select i1 %i.a, i8 1, i8 2
  ret i8 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext range(i8 1, 3) i8 @_ZN4llvm3ifs25convertIFSEndiannessToELFENS0_17IFSEndiannessTypeE(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  %. = select i1 %i.a, i8 1, i8 2
  ret i8 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext range(i8 0, 7) i8 @_ZN4llvm3ifs25convertIFSSymbolTypeToELFENS0_13IFSSymbolTypeE(i32 noundef %0) local_unnamed_addr #4 {
switch.lookup:
  %switch.shiftamt = shl nuw nsw i32 %0, 3
  %switch.downshift = lshr i32 100794624, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  ret i8 %switch.masked
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 257) i32 @_ZN4llvm3ifs23convertELFBitWidthToIFSEh(i8 noundef zeroext %0) local_unnamed_addr #4 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 2
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 256
  %switch.selectcmp2 = icmp eq i8 %0, 1
  %switch.select3 = select i1 %switch.selectcmp2, i32 0, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 257) i32 @_ZN4llvm3ifs25convertELFEndiannessToIFSEh(i8 noundef zeroext %0) local_unnamed_addr #4 {
bb.a:
  %switch.selectcmp = icmp eq i8 %0, 2
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 256
  %switch.selectcmp2 = icmp eq i8 %0, 1
  %switch.select3 = select i1 %switch.selectcmp2, i32 0, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 17) i32 @_ZN4llvm3ifs25convertELFSymbolTypeToIFSEh(i8 noundef zeroext %0) local_unnamed_addr #4 {
bb.a:
  %i.a = and i8 %0, 15                            ; 2 uses
  %i.b = icmp samesign ult i8 %i.a, 7
  br i1 %i.b, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm3ifs25convertELFSymbolTypeToIFSEh, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 16, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3ifs7IFSStubD0Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm3ifs7IFSStubD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 256) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3ifs7IFSStubD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm3ifs7IFSStubE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvm3ifs9IFSSymbolEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4llvm3ifs9IFSSymbolEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyIN4llvm3ifs9IFSSymbolEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14, !range !45, !noundef !46
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  store i8 0, ptr %i.e, align 8, !tbaa !14
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #11
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.n = load ptr, ptr %.05.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyIN4llvm3ifs9IFSSymbolEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !21
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #11
  br label %_ZSt8_DestroyIN4llvm3ifs9IFSSymbolEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm3ifs9IFSSymbolEEvPT_.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvm3ifs9IFSSymbolEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN4llvm3ifs9IFSSymbolEEvT_S4_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvm3ifs9IFSSymbolEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPN4llvm3ifs9IFSSymbolEEvT_S4_.exit.i

_ZSt8_DestroyIPN4llvm3ifs9IFSSymbolEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvm3ifs9IFSSymbolEEvT_S4_.exitthread-pre-split.i, %bb.a
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvm3ifs9IFSSymbolEEvT_S4_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm3ifs9IFSSymbolESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvm3ifs9IFSSymbolEEvT_S4_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #11
  br label %_ZNSt6vectorIN4llvm3ifs9IFSSymbolESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm3ifs9IFSSymbolESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvm3ifs9IFSSymbolEEvT_S4_.exit.i, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN4llvm3ifs9IFSSymbolESaIS2_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ai, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aa, %_ZNSt6vectorIN4llvm3ifs9IFSSymbolESaIS2_EED2Ev.exit ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !33 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !21
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #11
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ai, %i.ac
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.z, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %_ZNSt6vectorIN4llvm3ifs9IFSSymbolESaIS2_EED2Ev.exit
  %i.aj = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.aa, %_ZNSt6vectorIN4llvm3ifs9IFSSymbolESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !28
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #11
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !14, !range !45, !noundef !46
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.e, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.aq, align 8, !tbaa !14
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i7

end_hunk_0
