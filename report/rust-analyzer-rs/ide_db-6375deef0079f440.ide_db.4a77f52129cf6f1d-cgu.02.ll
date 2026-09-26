Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.02?download=true
inline.NumInlined: 1320
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMs_NtCs6oosyzwIepl_6ide_db9text_editNtB4_8TextEdit5apply:bb.a
  %i.ad = add i32 %.neg.prol, %i.y                ; 3 uses
  %..i.prol = tail call noundef i32 @llvm.umax.i32(i32 %i.ad, i32 %.sroa.6.0.extract.trunc.i.i) ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.ad, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.prol ]
  %..i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %..i.prol, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.prol ]
  %.sroa.0.026.unr = phi i32 [ %.sroa.6.0.extract.trunc.i.i, %.lr.ph.preheader ], [ %..i.prol, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.prol ]
  %.sroa.02.025.unr = phi ptr [ %i.o, %.lr.ph.preheader ], [ %i.x, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.prol ]
  %.unr = phi i32 [ %.sroa.6.0.extract.trunc.i.i, %.lr.ph.preheader ], [ %i.ad, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.prol ]
  %i.ae = icmp eq i64 %i.q, 0
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1660)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !alias.scope !1660, !noalias !1661, !noundef !5
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !alias.scope !1660, !noalias !1661, !noundef !5
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1660, !noalias !1661, !nonnull !5, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1660, !noalias !1661, !noundef !5
  tail call void @_RINvMNtCsbSS6DM8SDEO_5alloc6stringNtB3_6String13replace_rangeINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aj, i64 noundef %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53), !noalias !1660
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.i
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.1
  %.sroa.0.026 = phi i32 [ %..i.1, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.1 ], [ %.sroa.0.026.unr, %.lr.ph.prol.loopexit ]
  %.sroa.02.025 = phi ptr [ %i.bi, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.1 ], [ %.sroa.02.025.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ar = phi i32 [ %i.bo, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.1 ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.02.025, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noundef !5 ; 2 uses
  %i.au = icmp ugt i64 %i.at, 4294967295
  %i.av = shl nuw i64 %i.at, 32
  %.sroa.09.0.insert.insert.i13 = select i1 %i.au, i64 513, i64 %i.av ; 2 uses
  %i.aw = trunc i64 %.sroa.09.0.insert.insert.i13 to i1
  br i1 %i.aw, label %.loopexit, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16, !prof !6

.loopexit:                                        ; preds = %.lr.ph, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16, %.lr.ph.prol
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.b, align 1
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #46
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16: ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.025, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !5 ; 2 uses
  %i.az = icmp ugt i64 %i.ay, 4294967295
  %i.ba = shl nuw i64 %i.ay, 32
  %.sroa.09.0.insert.insert.i13.1 = select i1 %i.az, i64 513, i64 %i.ba ; 2 uses
  %i.bb = trunc i64 %.sroa.09.0.insert.insert.i13.1 to i1
  br i1 %i.bb, label %.loopexit, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.1, !prof !6

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.1: ; preds = %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.02.025, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.02.025, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !noundef !5
  %.neg = sub i32 %i.bd, %i.bf
  %.sroa.6.0.extract.shift.i.i14 = lshr i64 %.sroa.09.0.insert.insert.i13, 32
  %.sroa.6.0.extract.trunc.i.i15 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i14 to i32
  %i.bg = add i32 %i.ar, %.sroa.6.0.extract.trunc.i.i15
  %i.bh = add i32 %.neg, %i.bg                    ; 2 uses
  %..i = tail call noundef i32 @llvm.umax.i32(i32 %i.bh, i32 %.sroa.0.026)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.02.025, i64 64 ; 2 uses
  %.sroa.6.0.extract.shift.i.i14.1 = lshr i64 %.sroa.09.0.insert.insert.i13.1, 32
  %.sroa.6.0.extract.trunc.i.i15.1 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i14.1 to i32
  %i.bj = add i32 %i.bh, %.sroa.6.0.extract.trunc.i.i15.1
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.02.025, i64 56
  %i.bl = load i32, ptr %i.bk, align 8, !noundef !5
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.02.025, i64 60
  %i.bn = load i32, ptr %i.bm, align 4, !noundef !5
  %.neg.1 = sub i32 %i.bl, %i.bn
  %i.bo = add i32 %.neg.1, %i.bj                  ; 3 uses
  %..i.1 = tail call noundef i32 @llvm.umax.i32(i32 %i.bo, i32 %..i) ; 2 uses
  %i.bp = icmp eq ptr %i.bi, %i.p
  br i1 %i.bp, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.1, %.lr.ph.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bo, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.1 ] ; 2 uses
  %..i.lcssa = phi i32 [ %..i.lcssa.unr, %.lr.ph.prol.loopexit ], [ %..i.1, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit16.1 ] ; 2 uses
  store i32 %.lcssa, ptr %i.e, align 4
  %i.bq = icmp ult i32 %..i.lcssa, %.sroa.6.0.extract.trunc.i.i
  br i1 %i.bq, label %.lr.ph31.preheader, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.br = sub nuw i32 %..i.lcssa, %.sroa.6.0.extract.trunc.i.i
  %i.bs = zext i32 %i.br to i64
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bs)
  br label %.lr.ph31.preheader

.lr.ph31.preheader:                               ; preds = %bb.f, %._crit_edge
  br label %.lr.ph31

.lr.ph31:                                         ; preds = %.lr.ph31.preheader, %.lr.ph31
  %.sroa.46.029 = phi ptr [ %i.bt, %.lr.ph31 ], [ %i.p, %.lr.ph31.preheader ] ; 5 uses
  %i.bt = getelementptr inbounds i8, ptr %.sroa.46.029, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1662)
  %i.bu = getelementptr inbounds i8, ptr %.sroa.46.029, i64 -8
  %i.bv = load i32, ptr %i.bu, align 8, !alias.scope !1662, !noalias !1663, !noundef !5
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %.sroa.46.029, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !alias.scope !1662, !noalias !1663, !noundef !5
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %.sroa.46.029, i64 -24
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !1662, !noalias !1663, !nonnull !5, !noundef !5
  %i.cc = getelementptr inbounds i8, ptr %.sroa.46.029, i64 -16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !1662, !noalias !1663, !noundef !5
  tail call void @_RINvMNtCsbSS6DM8SDEO_5alloc6stringNtB3_6String13replace_rangeINtNtNtCshzWfHUSfYae_4core3ops5range5RangejEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bw, i64 noundef %i.bz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53), !noalias !1662
  %i.ce = icmp eq ptr %i.o, %i.bt
  br i1 %i.ce, label %._crit_edge32, label %.lr.ph31

._crit_edge32:                                    ; preds = %.lr.ph31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cf = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, 4294967295
  %i.ch = shl nuw i64 %i.cf, 32
  %.sroa.09.0.insert.insert.i17 = select i1 %i.cg, i64 513, i64 %i.ch ; 2 uses
  %i.ci = trunc i64 %.sroa.09.0.insert.insert.i17 to i1
  br i1 %i.ci, label %bb.g, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit20, !prof !6

bb.g:                                             ; preds = %._crit_edge32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #46
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit20: ; preds = %._crit_edge32
  %.sroa.6.0.extract.shift.i.i18 = lshr i64 %.sroa.09.0.insert.insert.i17, 32
  %.sroa.6.0.extract.trunc.i.i19 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i18 to i32 ; 2 uses
  store i32 %.sroa.6.0.extract.trunc.i.i19, ptr %i.d, align 4
  %i.cj = icmp eq i32 %.lcssa, %.sroa.6.0.extract.trunc.i.i19
  br i1 %i.cj, label %bb.i, label %bb.h, !prof !17

bb.h:                                             ; preds = %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit20
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedNtNtCsuAhG64lL82_9text_size4size8TextSizeBM_ECsjJXvCMGntp8_6syntax(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #46
  unreachable

bb.i:                                             ; preds = %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs6oosyzwIepl_6ide_db9text_editNtB4_8TextEdit5union(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 12 uses
  %i.d = alloca [48 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  invoke void @_RINvNtCscFGNKo4Sl5v_9itertools8adaptors8put_backINtNtNtNtCshzWfHUSfYae_4core4iter8adapters4fuse4FuseINtNtNtBT_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEEB24_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.f, ptr nonnull %i.i)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  invoke void @_RINvNtCscFGNKo4Sl5v_9itertools8adaptors8put_backINtNtNtNtCshzWfHUSfYae_4core4iter8adapters4fuse4FuseINtNtNtBT_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEEB24_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %i.k, ptr nonnull %i.n)
          to label %bb.c unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #42
          to label %common.resume unwind label %bb.ae

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %_RINvNtCs6oosyzwIepl_6ide_db9text_edit14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtB2_5IndelEB1C_NCNvMs_B2_NtB2_8TextEdit5union0EEB4_.exit, %bb.a, %.noexc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1711, !noalias !1712, !align !15, !noundef !5 ; 2 uses
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1711, !noalias !1712, !noundef !5 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1711, !noalias !1712 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null       ; 2 uses
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr undef, ptr %.val1.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !1713, !noalias !1714, !align !15, !noundef !5 ; 2 uses
  %.val.i1.i = load ptr, ptr %i.o, align 8, !alias.scope !1713, !noalias !1714, !noundef !5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i2.i = load ptr, ptr %i.u, align 8, !alias.scope !1713, !noalias !1714 ; 2 uses
  %.not.i.i3.i = icmp eq ptr %.val.i1.i, null     ; 2 uses
  %spec.select.i.i4.i = select i1 %.not.i.i3.i, ptr undef, ptr %.val1.i2.i
  store ptr %.val.i.i, ptr %i.c, align 8, !alias.scope !1709, !noalias !1710
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %spec.select.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1709, !noalias !1710
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1709, !noalias !1710
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %.val.i1.i, ptr %i.v, align 8, !alias.scope !1709, !noalias !1710
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %spec.select.i.i4.i, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !1709, !noalias !1710
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  store ptr %i.t, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !1709, !noalias !1710
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i.backedge, %bb.c
  %.not.i9.i.i.i.i = phi i1 [ false, %bb.c ], [ true, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i.backedge ]
  %i.w = phi i64 [ 1, %bb.c ], [ 0, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i.backedge ]
  %i.x = phi ptr [ %.val.i1.i, %bb.c ], [ %i.ak, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i.backedge ] ; 6 uses
  %.sroa.02.0.i.i.i23.i.i = phi ptr [ %i.t, %bb.c ], [ %.sroa.02.0.i.i.i21.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i.backedge ] ; 2 uses
  %i.y = phi ptr [ %.val.i.i, %bb.c ], [ %i.ab, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i.backedge ] ; 5 uses
  %.sroa.01.0.i.i.i18.i.i = phi ptr [ %i.q, %bb.c ], [ %.sroa.01.0.i.i.i16.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i.backedge ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.01.0.i.i.i18.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  %i.z = icmp eq ptr %.val1.i.i, %i.y
  %i.aa = select i1 %.not.i.i.i, i1 undef, i1 %i.z
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.aa ; 2 uses
  %spec.select.idx.i = select i1 %or.cond.i.i.i.i.i.i, i64 0, i64 32
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.y, i64 %spec.select.idx.i
  %spec.select7.i = select i1 %or.cond.i.i.i.i.i.i, ptr null, ptr %i.y
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit.i.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit.i.i.i.i.i: ; preds = %bb.d, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i
  %i.ab = phi ptr [ %i.y, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i ], [ %spec.select.i, %bb.d ]
  %.sroa.01.0.i.i.i.i.i = phi ptr [ %.sroa.01.0.i.i.i18.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i ], [ %spec.select7.i, %bb.d ] ; 6 uses
  %.not17.i.i.i.i.i = icmp eq ptr %.sroa.02.0.i.i.i23.i.i, null
  br i1 %.not17.i.i.i.i.i, label %bb.e, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit.i.i.i.i.i
  %.not.i22.i.i.i.i.i = icmp eq ptr %i.x, null
  %i.ac = icmp eq ptr %.val1.i2.i, %i.x
  %i.ad = select i1 %.not.i.i3.i, i1 undef, i1 %i.ac
  %or.cond.i23.i.i.i.i.i = select i1 %.not.i22.i.i.i.i.i, i1 true, i1 %i.ad
  br i1 %or.cond.i23.i.i.i.i.i, label %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i: ; preds = %bb.f, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit.i.i.i.i.i
  %i.af = phi ptr [ %i.ae, %bb.f ], [ %i.x, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i = phi ptr [ %i.x, %bb.f ], [ %.sroa.02.0.i.i.i23.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit.i.i.i.i.i ] ; 5 uses
  %.not18.i.i.i.i.i = icmp eq ptr %.sroa.01.0.i.i.i.i.i, null
  br i1 %.not18.i.i.i.i.i, label %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  call void @llvm.experimental.noalias.scope.decl(metadata !1716)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !alias.scope !1715, !noalias !1717, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !alias.scope !1716, !noalias !1718, !noundef !5
  %.not.i26.not.i.i.i.i.i = icmp ugt i32 %i.ah, %i.aj
  br i1 %.not.i26.not.i.i.i.i.i, label %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i.i.i.i) ]
  br label %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.thread.i.i.i.i

_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.i.i.i.i: ; preds = %bb.e
  %.not.i.i.i2.i = icmp eq ptr %.sroa.01.0.i.i.i.i.i, null
  br i1 %.not.i.i.i2.i, label %_RINvNtCs6oosyzwIepl_6ide_db9text_edit14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtB2_5IndelEB1C_NCNvMs_B2_NtB2_8TextEdit5union0EEB4_.exit, label %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.thread.i.i.i.i

_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.thread.i.i.i.i: ; preds = %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.i.i.i.i, %bb.h, %bb.g, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i
  %i.ak = phi ptr [ %i.x, %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.i.i.i.i ], [ %i.af, %bb.h ], [ %i.af, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i ], [ %i.af, %bb.g ]
  %.sroa.02.0.i.i.i21.i.i = phi ptr [ null, %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.i, %bb.h ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i ], [ null, %bb.g ]
  %.sroa.01.0.i.i.i16.i.i = phi ptr [ null, %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.i.i.i.i ], [ null, %bb.h ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i ], [ %.sroa.01.0.i.i.i.i.i, %bb.g ]
  %.sroa.0.0.i13.i.i.i.i = phi ptr [ %.sroa.01.0.i.i.i.i.i, %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.i.i.i.i ], [ %.sroa.01.0.i.i.i.i.i, %bb.h ], [ %.sroa.02.0.i.i.i.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.i, %bb.g ] ; 4 uses
  br i1 %.not.i9.i.i.i.i, label %bb.i, label %bb.s, !prof !17

bb.i:                                             ; preds = %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.thread.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  %i.al = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1720, !noalias !1721, !align !15, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1720, !noalias !1721
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.c, align 8, !alias.scope !1722, !noalias !1721, !noundef !5 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  %i.an = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1722, !noalias !1721, !nonnull !5
  %i.ao = icmp eq ptr %i.am, %i.an
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.ao
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.ap, ptr %i.c, align 8, !alias.scope !1723, !noalias !1721
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit.i.i.i.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01.0.i.i.i.i.i.i.i = phi ptr [ %i.al, %bb.j ], [ null, %bb.k ], [ %i.am, %bb.l ] ; 5 uses
  %i.aq = load ptr, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !1720, !noalias !1721, !align !15, !noundef !5 ; 2 uses
  %.not17.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not17.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit.i.i.i.i.i.i.i
  store ptr null, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !1720, !noalias !1721
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i.i.i

bb.n:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit.i.i.i.i.i.i.i
  %i.ar = load ptr, ptr %i.v, align 8, !alias.scope !1724, !noalias !1721, !noundef !5 ; 4 uses
  %.not.i22.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  %i.as = load ptr, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !1724, !noalias !1721, !nonnull !5
  %i.at = icmp eq ptr %i.ar, %i.as
  %or.cond.i23.i.i.i.i.i.i.i = select i1 %.not.i22.i.i.i.i.i.i.i, i1 true, i1 %i.at
  br i1 %or.cond.i23.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBa_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1L_NCNvMs_B2d_NtB2d_8TextEdit5union0EENtNtNtB8_6traits8iterator8Iterator4nextB2f_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr %i.au, ptr %i.v, align 8, !alias.scope !1725, !noalias !1721
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.m
  %.sroa.02.0.i.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.m ], [ %i.ar, %bb.o ] ; 5 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i.i, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBa_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1L_NCNvMs_B2d_NtB2d_8TextEdit5union0EENtNtNtB8_6traits8iterator8Iterator4nextB2f_.exit.i.i.thread.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i.i, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !alias.scope !1726, !noalias !1728, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i.i.i, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !alias.scope !1727, !noalias !1729, !noundef !5
  %.not.i26.not.i.i.i.i.i.i.i = icmp ugt i32 %i.aw, %i.ay
  br i1 %.not.i26.not.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i.i.i.i.i.i) ]
  store ptr %.sroa.02.0.i.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !1720, !noalias !1721
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBa_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1L_NCNvMs_B2d_NtB2d_8TextEdit5union0EENtNtNtB8_6traits8iterator8Iterator4nextB2f_.exit.i.i.thread.i.i

bb.r:                                             ; preds = %bb.p
  store ptr %.sroa.01.0.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1720, !noalias !1721
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBa_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1L_NCNvMs_B2d_NtB2d_8TextEdit5union0EENtNtNtB8_6traits8iterator8Iterator4nextB2f_.exit.i.i.thread.i.i

bb.s:                                             ; preds = %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.thread.i.i.i.i
  %i.az = invoke fastcc noundef align 8 ptr @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1D_NCNvMs_B25_NtB25_8TextEdit5union0ENtB5_8Iterator3nthB27_(ptr nonnull align 8 dereferenceable(48) %i.c, i64 noundef %i.w)
          to label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBa_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1L_NCNvMs_B2d_NtB2d_8TextEdit5union0EENtNtNtB8_6traits8iterator8Iterator4nextB2f_.exit.i.i.i.i unwind label %.loopexit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBa_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1L_NCNvMs_B2d_NtB2d_8TextEdit5union0EENtNtNtB8_6traits8iterator8Iterator4nextB2f_.exit.i.i.i.i: ; preds = %bb.s, %bb.n
  %.sroa.0.0.i10.i.i.i.i = phi ptr [ %.sroa.01.0.i.i.i.i.i.i.i, %bb.n ], [ %i.az, %bb.s ] ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %.sroa.0.0.i10.i.i.i.i, null
  br i1 %.not7.i.i.i.i, label %_RINvNtCs6oosyzwIepl_6ide_db9text_edit14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtB2_5IndelEB1C_NCNvMs_B2_NtB2_8TextEdit5union0EEB4_.exit, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBa_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1L_NCNvMs_B2d_NtB2d_8TextEdit5union0EENtNtNtB8_6traits8iterator8Iterator4nextB2f_.exit.i.i.thread.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBa_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1L_NCNvMs_B2d_NtB2d_8TextEdit5union0EENtNtNtB8_6traits8iterator8Iterator4nextB2f_.exit.i.i.thread.i.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBa_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1L_NCNvMs_B2d_NtB2d_8TextEdit5union0EENtNtNtB8_6traits8iterator8Iterator4nextB2f_.exit.i.i.i.i, %bb.r, %bb.q, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i.i.i
  %.sroa.4.0.i.i.i.i = phi ptr [ %.sroa.0.0.i10.i.i.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBa_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1L_NCNvMs_B2d_NtB2d_8TextEdit5union0EENtNtNtB8_6traits8iterator8Iterator4nextB2f_.exit.i.i.i.i ], [ %.sroa.01.0.i.i.i.i.i.i.i, %bb.q ], [ %.sroa.02.0.i.i.i.i.i.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEINtB5_8FuseImplBY_E4nextB1s_.exit25.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.i.i.i, %bb.r ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  call void @llvm.experimental.noalias.scope.decl(metadata !1732)
  call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i13.i.i.i.i, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i13.i.i.i.i, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !1734, !noalias !1735, !noundef !5 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i.i.i, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !alias.scope !1736, !noalias !1737, !noundef !5 ; 2 uses
  %.not.i.i6.i.i = icmp ugt i32 %i.bc, %i.be
  br i1 %.not.i.i6.i.i, label %bb.t, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i.backedge

bb.t:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBa_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1L_NCNvMs_B2d_NtB2d_8TextEdit5union0EENtNtNtB8_6traits8iterator8Iterator4nextB2f_.exit.i.i.thread.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i13.i.i.i.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !1734, !noalias !1735, !noundef !5 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i.i.i, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !1736, !noalias !1737, !noundef !5
  %i.bj = icmp eq i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i.i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !1736, !noalias !1737, !nonnull !5, !noundef !5
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i13.i.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !1734, !noalias !1735, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bn, ptr nonnull %i.bl, i64 %i.bg), !noalias !1738
  %i.bo = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.bp = load i32, ptr %i.ba, align 8, !alias.scope !1734, !noalias !1735
  %i.bq = icmp eq i32 %i.bp, %i.be
  %or.cond.i.i.i.i = select i1 %i.bo, i1 %i.bq, i1 false
  br i1 %or.cond.i.i.i.i, label %.split.i.i, label %bb.v

.split.i.i:                                       ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i.i.i, i64 28
  %i.bs = load i32, ptr %i.br, align 4, !alias.scope !1736, !noalias !1737, !noundef !5
  %.not.i.i = icmp eq i32 %i.bc, %i.bs
  br i1 %.not.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i.backedge, label %bb.v

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i.backedge: ; preds = %.split.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBa_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1L_NCNvMs_B2d_NtB2d_8TextEdit5union0EENtNtNtB8_6traits8iterator8Iterator4nextB2f_.exit.i.i.thread.i.i
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelB1c_ENCINvB1f_14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBe_5slice4iter4IterB1d_EB39_NCNvMs_B1f_NtB1f_8TextEdit5union0EE0E0B1h_.exit.i.i

bb.v:                                             ; preds = %.split.i.i, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

_RINvNtCs6oosyzwIepl_6ide_db9text_edit14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtB2_5IndelEB1C_NCNvMs_B2_NtB2_8TextEdit5union0EEB4_.exit: ; preds = %_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEBV_NCNvMs_B1D_NtB1D_8TextEdit5union0ENtNtNtNtB12_4iter6traits8iterator8Iterator4nextB1F_.exit.i.i.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipQINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtBa_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEB1L_NCNvMs_B2d_NtB2d_8TextEdit5union0EENtNtNtB8_6traits8iterator8Iterator4nextB2f_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  store i64 0, ptr %i.a, align 8
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters6cloned6ClonedINtNtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesce10CoalesceByINtNtB3c_10merge_join7MergeByINtNtNtB2k_5slice4iter4IterB11_EB4x_NCNvMs_B13_NtB13_8TextEdit5union0EINtB38_22DedupPred2CoalescePredNCB59_s_0ENtB38_7NoCountEEE9from_iterB15_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.x unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEBF_.exit, %bb.v
  ret void

bb.x:                                             ; preds = %_RINvNtCs6oosyzwIepl_6ide_db9text_edit14check_disjointINtNtCscFGNKo4Sl5v_9itertools10merge_join7MergeByINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtB2_5IndelEB1C_NCNvMs_B2_NtB2_8TextEdit5union0EEB4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body unwind label %bb.aa

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEEB1c_.exit unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
end_hunk_0
