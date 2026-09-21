Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_edit?download=true
inline.NumInlined: 2265
inline.NumDeleted: 806
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb11VersionEditD2Ev:bb.a

_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb16BlobFileAdditionEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.al, align 8, !tbaa !139
  br label %_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EED2Ev.exit
  %i.bc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.am, %_ZNSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb16BlobFileAdditionESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !141
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #29
  br label %_ZNSt6vectorIN7rocksdb16BlobFileAdditionESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb16BlobFileAdditionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb16BlobFileAdditionES1_EvT_S3_RSaIT0_E.exit.i, %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !135 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !136 ; 2 uses
  %.not4.i.i.i6 = icmp eq ptr %i.bj, %i.bl
  br i1 %.not4.i.i.i6, label %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZNSt6vectorIN7rocksdb16BlobFileAdditionESaIS1_EED2Ev.exit, %.lr.ph.i.i.i7
  %.05.i.i.i8 = phi ptr [ %i.bn, %.lr.ph.i.i.i7 ], [ %i.bj, %_ZNSt6vectorIN7rocksdb16BlobFileAdditionESaIS1_EED2Ev.exit ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 8
  tail call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %i.bm) #30
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 432 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.bn, %i.bl
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i7, !llvm.loop !1

_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i7
  %.pr.i10 = load ptr, ptr %i.bi, align 8, !tbaa !135
  br label %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7rocksdb16BlobFileAdditionESaIS1_EED2Ev.exit
  %i.bo = phi ptr [ %.pr.i10, %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.bj, %_ZNSt6vectorIN7rocksdb16BlobFileAdditionESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i11 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i11, label %_ZNSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !137
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #29
  br label %_ZNSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIiN7rocksdb12FileMetaDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !75
  invoke void @_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noundef %i.bw)
          to label %_ZNSt3setISt4pairIimESt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EED2Ev.exit
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  tail call void @__clang_call_terminate(ptr %i.by) #31
  unreachable

_ZNSt3setISt4pairIimESt4lessIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EED2Ev.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !128 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !129 ; 2 uses
  %.not4.i.i.i12 = icmp eq ptr %i.ca, %i.cc
  br i1 %.not4.i.i.i12, label %_ZSt8_DestroyIPSt4pairIiN7rocksdb11InternalKeyEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %_ZNSt3setISt4pairIimESt4lessIS1_ESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt4pairIiN7rocksdb11InternalKeyEEEvPT_.exit.i.i.i
  %.05.i.i.i14 = phi ptr [ %i.cj, %_ZSt8_DestroyISt4pairIiN7rocksdb11InternalKeyEEEvPT_.exit.i.i.i ], [ %i.ca, %_ZNSt3setISt4pairIimESt4lessIS1_ESaIS1_EED2Ev.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 24 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZSt8_DestroyISt4pairIiN7rocksdb11InternalKeyEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i13
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !25
  %i.ci = add i64 %i.ch, 1
  tail call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #29
  br label %_ZSt8_DestroyISt4pairIiN7rocksdb11InternalKeyEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIiN7rocksdb11InternalKeyEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 40 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.cj, %i.cc
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPSt4pairIiN7rocksdb11InternalKeyEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i13, !llvm.loop !0

_ZSt8_DestroyIPSt4pairIiN7rocksdb11InternalKeyEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIiN7rocksdb11InternalKeyEEEvPT_.exit.i.i.i
  %.pr.i16 = load ptr, ptr %i.bz, align 8, !tbaa !128
  br label %_ZSt8_DestroyIPSt4pairIiN7rocksdb11InternalKeyEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIiN7rocksdb11InternalKeyEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIiN7rocksdb11InternalKeyEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt3setISt4pairIimESt4lessIS1_ESaIS1_EED2Ev.exit
  %i.ck = phi ptr [ %.pr.i16, %_ZSt8_DestroyIPSt4pairIiN7rocksdb11InternalKeyEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ca, %_ZNSt3setISt4pairIimESt4lessIS1_ESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i17 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i1.i17, label %_ZNSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt4pairIiN7rocksdb11InternalKeyEES3_EvT_S5_RSaIT0_E.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !130
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #29
  br label %_ZNSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIiN7rocksdb11InternalKeyEES3_EvT_S5_RSaIT0_E.exit.i, %bb.i
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !24 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EED2Ev.exit
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !25
  %i.cv = add i64 %i.cu, 1
  tail call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !25
  %i.db = add i64 %i.da, 1
  tail call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7rocksdb11VersionEdit37ShouldEmitPerColumnFamilyRecoveryEditEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7456) %0, i64 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.b = load i8, ptr %i.a, align 2, !tbaa !154, !range !155, !noundef !156
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ugt i64 %i.e, %1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !135
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 432
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.p = load i64, ptr %i.o, align 8, !tbaa !133
  %i.q = add i64 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !140
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !139
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 88
  %i.z = add i64 %i.q, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !157
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !143
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 24
  %i.ai = add i64 %i.z, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !158
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !146
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 4
  %i.ar = add i64 %i.ai, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.at = load i64, ptr %i.as, align 8, !tbaa !159
  %i.au = icmp ne i64 %i.at, 0
  %.neg = sext i1 %i.au to i64
  %.not = icmp ne i64 %i.ar, %.neg
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.aw = load i8, ptr %i.av, align 1, !range !155
  %.fr36 = freeze i8 %i.aw
  %i.ax = trunc i8 %.fr36 to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 123
  %2 = load <4 x i8>, ptr %i.ay, align 1
  %.fr = freeze <4 x i8> %2
  %3 = trunc <4 x i8> %.fr to <4 x i1>
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.ba = load i8, ptr %i.az, align 1, !range !155
  %i.bb = trunc nuw i8 %i.ba to i1
  %4 = bitcast <4 x i1> %3 to i4
  %5 = icmp ne i4 %4, 0
  %op.rdx = or i1 %5, %i.ax
  %or.cond18 = select i1 %op.rdx, i1 true, i1 %.not
  %or.cond21 = select i1 %or.cond18, i1 true, i1 %i.bb
  br i1 %or.cond21, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !131
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !131
  %i.bg = icmp ne ptr %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bi = load i8, ptr %i.bh, align 8, !range !155
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond24 = select i1 %i.bg, i1 true, i1 %i.bj
  br i1 %or.cond24, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 317
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !160, !range !155, !noundef !156
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.bo = load i8, ptr %i.bn, align 4, !range !155
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = select i1 %i.bm, i1 true, i1 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.bs = load i8, ptr %i.br, align 4, !range !155
  %i.bt = trunc nuw i8 %i.bs to i1
  %or.cond27 = select i1 %i.bq, i1 true, i1 %i.bt
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bv = load i64, ptr %i.bu, align 8
  %.not3 = icmp ne i64 %i.bv, 0
  %or.cond29.not33 = select i1 %or.cond27, i1 true, i1 %.not3
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bx = load i8, ptr %i.bw, align 8, !range !155
  %i.by = trunc nuw i8 %i.bx to i1
  %or.cond32 = select i1 %or.cond29.not33, i1 true, i1 %i.by
  br i1 %or.cond32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 393
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !161, !range !155, !noundef !156
  %i.cb = trunc nuw i8 %i.ca to i1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.cc = phi i1 [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.d ], [ %i.cb, %bb.e ]
  ret i1 %i.cc
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7rocksdb11VersionEdit8EncodeToEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(7456) %0, ptr noundef %1, i64 %2, i8 %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 9 uses
  %i.b = alloca [5 x i8], align 1                 ; 8 uses
  %i.c = alloca [5 x i8], align 1                 ; 8 uses
  %i.d = alloca [5 x i8], align 1                 ; 8 uses
  %i.e = alloca [5 x i8], align 1                 ; 8 uses
  %i.f = alloca [5 x i8], align 1                 ; 8 uses
  %i.g = alloca [5 x i8], align 1                 ; 8 uses
  %i.h = alloca [5 x i8], align 1                 ; 8 uses
  %i.i = alloca [5 x i8], align 1                 ; 8 uses
  %i.j = alloca [10 x i8], align 1                ; 8 uses
  %i.k = alloca [5 x i8], align 1                 ; 8 uses
  %i.l = alloca [5 x i8], align 1                 ; 8 uses
  %i.m = alloca [5 x i8], align 1                 ; 8 uses
  %i.n = alloca [5 x i8], align 1                 ; 8 uses
  %4 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 11 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 9 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 9 uses
  %7 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 11 uses
  %8 = alloca %"class.rocksdb::Status", align 8   ; 9 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 9 uses
  %i.o = alloca [20 x i8], align 16               ; 8 uses
  %i.p = alloca [5 x i8], align 1                 ; 8 uses
  %i.q = alloca [5 x i8], align 1                 ; 8 uses
  %10 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 7 uses
  %11 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %i.r = alloca [15 x i8], align 1                ; 8 uses
  %i.s = alloca [15 x i8], align 1                ; 8 uses
  %i.t = alloca [10 x i8], align 1                ; 8 uses
  %i.u = alloca [15 x i8], align 1                ; 8 uses
  %i.v = alloca [15 x i8], align 1                ; 8 uses
  %i.w = alloca [15 x i8], align 1                ; 8 uses
  %i.x = alloca [5 x i8], align 1                 ; 8 uses
  %i.y = alloca [5 x i8], align 1                 ; 8 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %i.z = alloca i8, align 1                       ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %21 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %i.aa = alloca i8, align 1                      ; 4 uses
  %22 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %26 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !162, !range !155, !noundef !156
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #30
  %i.ae = call noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef nonnull %i.y, i32 noundef 8193) ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.y to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !67 ; 5 uses
  %i.ak = sub i64 9223372036854775807, %i.aj
  %i.al = icmp ult i64 %i.ak, %i.ah
  br i1 %i.al, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.185) #32
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.am = add i64 %i.ah, %i.aj                    ; 3 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.aq = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.as = phi i64 [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.am, %i.as
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq ptr %i.ae, %i.y
  br i1 %.not8.i.i.i, label %_ZN7rocksdb11PutVarint32IJNS_3TagEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.ah, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = load i8, ptr %i.y, align 1, !tbaa !25
  store i8 %i.au, ptr %i.at, align 1, !tbaa !25
  br label %_ZN7rocksdb11PutVarint32IJNS_3TagEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %i.y, i64 %i.ah, i1 false)
  br label %_ZN7rocksdb11PutVarint32IJNS_3TagEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aj, i64 noundef 0, ptr noundef nonnull %i.y, i64 noundef %i.ah)
  br label %_ZN7rocksdb11PutVarint32IJNS_3TagEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

_ZN7rocksdb11PutVarint32IJNS_3TagEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !67
  %i.av = load ptr, ptr %1, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.am
  store i8 0, ptr %i.aw, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !24
  store ptr %i.ay, ptr %13, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !67
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !64
  call void @_ZN7rocksdb22PutLengthPrefixedSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb11PutVarint32IJNS_3TagEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !163, !range !155, !noundef !156
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #30
  %i.bf = call noundef ptr @_ZN7rocksdb14EncodeVarint32EPcj(ptr noundef nonnull %i.x, i32 noundef 1) ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.x to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !67 ; 5 uses
  %i.bl = sub i64 9223372036854775807, %i.bk
  %i.bm = icmp ult i64 %i.bl, %i.bi
  br i1 %i.bm, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i94

end_hunk_0
