Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RNvXs8_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt4time10time_crateINtB5_10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339ENtB7_10FormatTime11format_timeCsat9HgdBb3qc_16shadowsocks_rust:bb.a
  br i1 %spec.select.i.i.i, label %bb.ai, label %_RINvNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt4time10time_crate15format_datetimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339ECsat9HgdBb3qc_16shadowsocks_rust.exit, !prof !20

bb.ai:                                            ; preds = %bb.ah
  %.sroa.8.2.extract.shift.i = lshr i24 %.sroa.13.035, 16
  %.sroa.8.2.extract.trunc.i = trunc nuw i24 %.sroa.8.2.extract.shift.i to i8 ; 4 uses
  %i.dj = icmp sgt i8 %.sroa.8.2.extract.trunc.i, -26
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp slt i8 %.sroa.8.2.extract.trunc.i, 26
  tail call void @llvm.assume(i1 %i.dk)
  %.sroa.0127.0.i.i = tail call i8 @llvm.abs.i8(i8 %.sroa.8.2.extract.trunc.i, i1 true) ; 2 uses
  %i.dl = icmp samesign ugt i8 %.sroa.0127.0.i.i, 23
  br i1 %i.dl, label %_RINvNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt4time10time_crate15format_datetimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339ECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.aj, !prof !23

bb.aj:                                            ; preds = %bb.ai
  %.sroa.8.0.extract.trunc.i = trunc i24 %.sroa.13.035 to i8 ; 3 uses
  %i.dm = icmp sgt i8 %.sroa.8.0.extract.trunc.i, -60
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp slt i8 %.sroa.8.0.extract.trunc.i, 60
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = icmp eq i8 %.sroa.8.0.extract.trunc.i, 0
  br i1 %i.do, label %bb.ak, label %_RINvNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt4time10time_crate15format_datetimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339ECsat9HgdBb3qc_16shadowsocks_rust.exit, !prof !20

bb.ak:                                            ; preds = %bb.aj
  %i.dp = mul nuw nsw i32 %i.dg, 5243
  %i.dq = lshr i32 %i.dp, 19                      ; 2 uses
  %.neg.i.i.i.i = mul nuw nsw i32 %i.dq, 156
  %i.dr = add nuw nsw i32 %.neg.i.i.i.i, %i.dg    ; 2 uses
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = icmp ult i8 %i.ds, 100
  %.sroa.0.0.insert.ext.i.i.i.i = trunc nuw nsw i32 %i.dq to i16 ; 2 uses
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = trunc nuw nsw i32 %i.dr to i16
  %.sroa.2.0.insert.ext.i.i.i.i = shl i16 %i.du, 8 ; 2 uses
  %i.dv = icmp samesign ult i16 %.sroa.2.0.insert.ext.i.i.i.i, 25600
  %.sroa.03.0.extract.trunc.mask.i.i.i = shl nuw nsw i16 %.sroa.0.0.insert.ext.i.i.i.i, 1
  %i.dw = and i16 %.sroa.03.0.extract.trunc.mask.i.i.i, 254
  %i.dx = zext nneg i16 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @_RNvNtCsbPuM0779rnk_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.dx
  tail call void @llvm.assume(i1 %i.dv)
  %i.dz = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dy, i64 noundef 2) #30, !noalias !11709 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not14.i.i.i, label %bb.al, label %bb.bd, !prof !20

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i16 %.sroa.2.0.insert.ext.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.44.0.extract.shift.i.i.i = lshr i16 %.sroa.0.0.insert.insert.i.i.i.i, 7
  %i.ea = zext nneg i16 %.sroa.44.0.extract.shift.i.i.i to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @_RNvNtCsbPuM0779rnk_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.ea
  %i.ec = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef 2) #30, !noalias !11709 ; 2 uses
  %.not14.1.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not14.1.i.i.i, label %bb.am, label %bb.bd, !prof !20

bb.am:                                            ; preds = %bb.al
  %i.ed = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 1) #30, !noalias !11710 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i, label %_RNvXs3_NtNtCsbPuM0779rnk_4time10formatting18component_providerNtNtB9_16offset_date_time14OffsetDateTimeNtB5_17ComponentProvider5month.exit.i.i, label %bb.bd, !prof !20

_RNvXs3_NtNtCsbPuM0779rnk_4time10formatting18component_providerNtNtB9_16offset_date_time14OffsetDateTimeNtB5_17ComponentProvider5month.exit.i.i: ; preds = %bb.am
  %i.ee = and i32 %.sroa.11.036, 511              ; 2 uses
  %i.ef = lshr i32 %.sroa.11.036, 9
  %.lobit.i.i.i.i.i.i = and i32 %i.ef, 1
  %i.eg = add nuw nsw i32 %.lobit.i.i.i.i.i.i, 59 ; 2 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i32 %i.ee, %i.eg ; 2 uses
  %..i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 2, i32 0
  %.8.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 %i.eg, i32 0
  %i.eh = sub nsw i32 %i.ee, %.8.i.i.i.i.i.i      ; 2 uses
  %i.ei = mul nsw i32 %i.eh, 268
  %i.ej = add nsw i32 %i.ei, 8028
  %i.ek = lshr i32 %i.ej, 13                      ; 2 uses
  %i.el = add nuw nsw i32 %i.ek, %..i.i.i.i.i.i   ; 2 uses
  %i.em = trunc i32 %i.el to i8                   ; 3 uses
  %i.en = icmp ne i8 %i.em, 0
  call void @llvm.assume(i1 %i.en)
  %i.eo = icmp ult i8 %i.em, 100
  call void @llvm.assume(i1 %i.eo)
  %i.ep = shl nuw i8 %i.em, 1
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr @_RNvNtCsbPuM0779rnk_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.eq
  %i.es = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.er, i64 noundef 2) #30, !noalias !11710 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i, label %bb.an, label %bb.bd, !prof !20

bb.an:                                            ; preds = %_RNvXs3_NtNtCsbPuM0779rnk_4time10formatting18component_providerNtNtB9_16offset_date_time14OffsetDateTimeNtB5_17ComponentProvider5month.exit.i.i
  %i.et = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 1) #30, !noalias !11710 ; 2 uses
  %.not179.i.i = icmp eq ptr %i.et, null
  br i1 %.not179.i.i, label %_RNvXs3_NtNtCsbPuM0779rnk_4time10formatting18component_providerNtNtB9_16offset_date_time14OffsetDateTimeNtB5_17ComponentProvider3day.exit.i.i, label %bb.bd, !prof !20

_RNvXs3_NtNtCsbPuM0779rnk_4time10formatting18component_providerNtNtB9_16offset_date_time14OffsetDateTimeNtB5_17ComponentProvider3day.exit.i.i: ; preds = %bb.an
  %i.eu = and i32 %i.el, 127
  %i.ev = icmp ne i32 %i.eu, 0
  call void @llvm.assume(i1 %i.ev)
  %i.ew = mul nuw nsw i32 %i.ek, 3917
  %i.ex = add nuw nsw i32 %i.ew, 28902
  %i.ey = lshr i32 %i.ex, 7
  %i.ez = sub nsw i32 %i.eh, %i.ey                ; 2 uses
  %i.fa = and i32 %i.ez, 31
  %.sroa.514.0.extract.trunc.i.i.i.i = trunc i32 %i.ez to i8 ; 3 uses
  %.not.i.i204.i.i = icmp ne i32 %i.fa, 0
  call void @llvm.assume(i1 %.not.i.i204.i.i)
  %.not180.i.i = icmp ne i8 %.sroa.514.0.extract.trunc.i.i.i.i, 0
  call void @llvm.assume(i1 %.not180.i.i)
  %i.fb = icmp ult i8 %.sroa.514.0.extract.trunc.i.i.i.i, 32
  call void @llvm.assume(i1 %i.fb)
  %i.fc = shl nuw nsw i8 %.sroa.514.0.extract.trunc.i.i.i.i, 1
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr @_RNvNtCsbPuM0779rnk_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.fd
  %i.ff = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef 2) #30, !noalias !11710 ; 2 uses
  %.not.i205.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i205.i.i, label %bb.ao, label %bb.bd, !prof !20

bb.ao:                                            ; preds = %_RNvXs3_NtNtCsbPuM0779rnk_4time10formatting18component_providerNtNtB9_16offset_date_time14OffsetDateTimeNtB5_17ComponentProvider3day.exit.i.i
  %i.fg = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 1) #30, !noalias !11710 ; 2 uses
  %.not181.i.i = icmp eq ptr %i.fg, null
  br i1 %.not181.i.i, label %bb.ap, label %bb.bd, !prof !20

bb.ap:                                            ; preds = %bb.ao
  %i.fh = icmp ult i8 %.sroa.02.sroa.7.031, 24
  call void @llvm.assume(i1 %i.fh)
  %i.fi = shl nuw nsw i64 %.sroa.02.sroa.7.031.in, 1
  %i.fj = and i64 %i.fi, 62
  %i.fk = getelementptr inbounds nuw i8, ptr @_RNvNtCsbPuM0779rnk_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.fj
  %i.fl = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fk, i64 noundef 2) #30, !noalias !11710 ; 2 uses
  %.not.i209.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i209.i.i, label %bb.aq, label %bb.bd, !prof !20

bb.aq:                                            ; preds = %bb.ap
  %i.fm = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 1) #30, !noalias !11710 ; 2 uses
  %.not182.i.i = icmp eq ptr %i.fm, null
  br i1 %.not182.i.i, label %bb.ar, label %bb.bd, !prof !20

bb.ar:                                            ; preds = %bb.aq
  %i.fn = icmp ult i8 %.sroa.02.sroa.6.032, 60
  call void @llvm.assume(i1 %i.fn)
  %i.fo = shl nuw nsw i64 %.sroa.02.sroa.6.032.in, 1
  %i.fp = and i64 %i.fo, 126
  %i.fq = getelementptr inbounds nuw i8, ptr @_RNvNtCsbPuM0779rnk_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.fp
  %i.fr = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fq, i64 noundef 2) #30, !noalias !11710 ; 2 uses
  %.not.i213.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i213.i.i, label %bb.as, label %bb.bd, !prof !20

bb.as:                                            ; preds = %bb.ar
  %i.fs = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 1) #30, !noalias !11710 ; 2 uses
  %.not183.i.i = icmp eq ptr %i.fs, null
  br i1 %.not183.i.i, label %bb.at, label %bb.bd, !prof !20

bb.at:                                            ; preds = %bb.as
  %i.ft = icmp ult i8 %.sroa.02.sroa.5.033, 60
  call void @llvm.assume(i1 %i.ft)
  %i.fu = shl nuw nsw i8 %.sroa.02.sroa.5.033, 1
  %i.fv = zext nneg i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @_RNvNtCsbPuM0779rnk_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.fv
  %i.fx = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fw, i64 noundef 2) #30, !noalias !11710 ; 2 uses
  %.not.i217.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i217.i.i, label %bb.au, label %bb.bd, !prof !20

bb.au:                                            ; preds = %bb.at
  %i.fy = icmp ult i32 %.sroa.02.sroa.0.034, 1000000000
  call void @llvm.assume(i1 %i.fy)
  %i.fz = icmp eq i32 %.sroa.02.sroa.0.034, 0
  br i1 %i.fz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.ax, %bb.au
  %.sroa.01.1.extract.shift.i.i.i.i = lshr exact i24 %.sroa.13.035, 8
  %.sroa.01.1.extract.trunc.i.i.i.i = trunc i24 %.sroa.01.1.extract.shift.i.i.i.i to i8 ; 4 uses
  %i.ga = icmp sgt i8 %.sroa.01.1.extract.trunc.i.i.i.i, -60
  call void @llvm.assume(i1 %i.ga)
  %i.gb = icmp slt i8 %.sroa.01.1.extract.trunc.i.i.i.i, 60
  call void @llvm.assume(i1 %i.gb)
  %i.gc = icmp eq i24 %.sroa.13.035, 0
  br i1 %i.gc, label %bb.az, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.gd = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 1) #30, !noalias !11710 ; 2 uses
  %.not184.i.i = icmp eq ptr %i.gd, null
  br i1 %.not184.i.i, label %bb.ax, label %bb.bd, !prof !20

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11711
  call void @llvm.experimental.noalias.scope.decl(metadata !11712)
  %i.ge = udiv i32 %.sroa.02.sroa.0.034, 10000
  %i.gf = urem i32 %i.ge, 10000                   ; 2 uses
  %i.gg = mul nuw nsw i32 %i.gf, 5243
  %i.gh = lshr i32 %i.gg, 19                      ; 2 uses
  %.neg.i.i.i.i.i.i = mul nuw nsw i32 %i.gh, 156
  %i.gi = add nuw nsw i32 %.neg.i.i.i.i.i.i, %i.gf ; 2 uses
  %i.gj = trunc i32 %i.gi to i8
  %i.gk = icmp ult i8 %i.gj, 100
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = trunc nuw nsw i32 %i.gh to i16 ; 2 uses
  call void @llvm.assume(i1 %i.gk)
  %i.gl = trunc nuw nsw i32 %i.gi to i16
  %.sroa.2.0.insert.ext.i.i.i.i.i.i = shl i16 %i.gl, 8 ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i16 %.sroa.2.0.insert.ext.i.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i.i
  %i.gm = icmp samesign ult i16 %.sroa.2.0.insert.ext.i.i.i.i.i.i, 25600
  %.sroa.44.0.extract.shift.i.i.i.i.i = lshr i16 %.sroa.0.0.insert.insert.i.i.i.i.i.i, 7
  %.sroa.03.0.extract.trunc.mask.i.i.i.i.i = shl nuw nsw i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i, 1
  %i.gn = and i16 %.sroa.03.0.extract.trunc.mask.i.i.i.i.i, 254
  %i.go = zext nneg i16 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr @_RNvNtCsbPuM0779rnk_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.go
  call void @llvm.assume(i1 %i.gm)
  %i.gq = zext nneg i16 %.sroa.44.0.extract.shift.i.i.i.i.i to i64
  %i.gr = getelementptr inbounds nuw i8, ptr @_RNvNtCsbPuM0779rnk_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.gq
  %i.gs = urem i32 %.sroa.02.sroa.0.034, 10000    ; 2 uses
  %i.gt = udiv i32 %.sroa.02.sroa.0.034, 100000000
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr @_RNvNtCsbPuM0779rnk_4time7num_fmt13SINGLE_DIGITS, i64 %i.gu
  %i.gw = mul nuw nsw i32 %i.gs, 5243
  %i.gx = lshr i32 %i.gw, 19                      ; 2 uses
  %.neg.i.i5.i.i.i.i = mul nuw nsw i32 %i.gx, 156
  %i.gy = add nuw nsw i32 %.neg.i.i5.i.i.i.i, %i.gs ; 2 uses
  %i.gz = trunc i32 %i.gy to i8
  %i.ha = icmp ult i8 %i.gz, 100
  %.sroa.0.0.insert.ext.i.i6.i.i.i.i = trunc nuw nsw i32 %i.gx to i16 ; 2 uses
  call void @llvm.assume(i1 %i.ha)
  %i.hb = trunc nuw nsw i32 %i.gy to i16
  %.sroa.2.0.insert.ext.i.i7.i.i.i.i = shl i16 %i.hb, 8 ; 2 uses
  %.sroa.0.0.insert.insert.i.i8.i.i.i.i = or disjoint i16 %.sroa.2.0.insert.ext.i.i7.i.i.i.i, %.sroa.0.0.insert.ext.i.i6.i.i.i.i
  %i.hc = icmp samesign ult i16 %.sroa.2.0.insert.ext.i.i7.i.i.i.i, 25600
  %.sroa.44.0.extract.shift.i9.i.i.i.i = lshr i16 %.sroa.0.0.insert.insert.i.i8.i.i.i.i, 7
  %.sroa.03.0.extract.trunc.mask.i10.i.i.i.i = shl nuw nsw i16 %.sroa.0.0.insert.ext.i.i6.i.i.i.i, 1
  %i.hd = and i16 %.sroa.03.0.extract.trunc.mask.i10.i.i.i.i, 254
  %i.he = zext nneg i16 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr @_RNvNtCsbPuM0779rnk_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.he
  call void @llvm.assume(i1 %i.hc)
  %i.hg = zext nneg i16 %.sroa.44.0.extract.shift.i9.i.i.i.i to i64
  %i.hh = getelementptr inbounds nuw i8, ptr @_RNvNtCsbPuM0779rnk_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.hg
  %i.hi = load i8, ptr %i.gv, align 1, !noalias !11713, !noundef !14
  %i.hj = load i16, ptr %i.gp, align 1, !noalias !11713
  %i.hk = zext i16 %i.hj to i64
  %i.hl = load i16, ptr %i.gr, align 1, !noalias !11713
  %i.hm = zext i16 %i.hl to i64
  %i.hn = shl nuw nsw i64 %i.hm, 16
  %1 = load i16, ptr %i.hf, align 1, !noalias !11713
  %.sroa.7.0.insert.ext.i.i.i = zext i16 %1 to i64
  %.sroa.7.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i.i.i, 32
  %2 = load i16, ptr %i.hh, align 1, !noalias !11713
  %.sroa.5.0.insert.ext.i.i.i = zext i16 %2 to i64
  %.sroa.5.0.insert.shift.i.i.i = shl nuw i64 %.sroa.5.0.insert.ext.i.i.i, 48
  %.sroa.43.0.insert.mask.i.i.i = or disjoint i64 %i.hn, %i.hk
  %.sroa.02.0.insert.mask.i.i.i = or disjoint i64 %.sroa.43.0.insert.mask.i.i.i, %.sroa.7.0.insert.shift.i.i.i
  %.sroa.02.0.insert.insert.i.i.i = or disjoint i64 %.sroa.02.0.insert.mask.i.i.i, %.sroa.5.0.insert.shift.i.i.i ; 2 uses
  %i.ho = xor i64 %.sroa.02.0.insert.insert.i.i.i, 3472328296227680304
  %i.hp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ho, i1 false)
  %i.hq = lshr i64 %i.hp, 3
  %i.hr = sub nuw nsw i64 9, %i.hq                ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i8 %i.hi, ptr %i.hs, align 8, !alias.scope !11712, !noalias !11711
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i64 %.sroa.02.0.insert.insert.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i.i, align 1, !alias.scope !11712, !noalias !11711
  store i64 %i.hr, ptr %i.b, align 8, !alias.scope !11712, !noalias !11711
  %i.ht = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hs, i64 noundef %i.hr) #30, !noalias !11710 ; 2 uses
  %.not185.i.i = icmp eq ptr %i.ht, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11711
  br i1 %.not185.i.i, label %bb.av, label %bb.bd, !prof !20

bb.ay:                                            ; preds = %bb.av
  %i.hu = or i8 %.sroa.01.1.extract.trunc.i.i.i.i, %.sroa.8.2.extract.trunc.i
  %i.hv = icmp slt i8 %i.hu, 0
  %..i.i = select i1 %i.hv, ptr @186, ptr @190
  %i.hw = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %..i.i, i64 noundef 1) #30, !noalias !11710 ; 2 uses
  %.not186.i.i = icmp eq ptr %i.hw, null
  br i1 %.not186.i.i, label %bb.ba, label %bb.bd, !prof !20

bb.az:                                            ; preds = %bb.av
  %i.hx = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 1) #30, !noalias !11710 ; 2 uses
  %.not188.i.i = icmp eq ptr %i.hx, null
  br i1 %.not188.i.i, label %_RINvNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt4time10time_crate15format_datetimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339ECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.bd, !prof !20

bb.ba:                                            ; preds = %bb.ay
  %i.hy = shl nuw nsw i8 %.sroa.0127.0.i.i, 1
  %i.hz = zext nneg i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr @_RNvNtCsbPuM0779rnk_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.hz
  %i.ib = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ia, i64 noundef 2) #30, !noalias !11710 ; 2 uses
  %.not.i226.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i226.i.i, label %bb.bb, label %bb.bd, !prof !20

bb.bb:                                            ; preds = %bb.ba
  %i.ic = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 1) #30, !noalias !11710 ; 2 uses
  %.not187.i.i = icmp eq ptr %i.ic, null
  br i1 %.not187.i.i, label %bb.bc, label %bb.bd, !prof !20

bb.bc:                                            ; preds = %bb.bb
  %.sroa.0168.0.i.i = call i8 @llvm.abs.i8(i8 %.sroa.01.1.extract.trunc.i.i.i.i, i1 true)
  %i.id = shl nuw nsw i8 %.sroa.0168.0.i.i, 1
  %i.ie = zext nneg i8 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr @_RNvNtCsbPuM0779rnk_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.ie
  %i.ig = call fastcc noundef ptr @_RNvYNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.if, i64 noundef 2) #30, !noalias !11710 ; 2 uses
  %.not.i230.i.i = icmp eq ptr %i.ig, null
  br i1 %.not.i230.i.i, label %_RINvNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt4time10time_crate15format_datetimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339ECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.bd, !prof !20

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %_RNvXs3_NtNtCsbPuM0779rnk_4time10formatting18component_providerNtNtB9_16offset_date_time14OffsetDateTimeNtB5_17ComponentProvider3day.exit.i.i, %bb.an, %_RNvXs3_NtNtCsbPuM0779rnk_4time10formatting18component_providerNtNtB9_16offset_date_time14OffsetDateTimeNtB5_17ComponentProvider5month.exit.i.i, %bb.am, %bb.al, %bb.ak
  %.sroa.28.0.ph.ph.in.i = phi ptr [ %i.ig, %bb.bc ], [ %i.ic, %bb.bb ], [ %i.ib, %bb.ba ], [ %i.hw, %bb.ay ], [ %i.gd, %bb.aw ], [ %i.hx, %bb.az ], [ %i.fx, %bb.at ], [ %i.fs, %bb.as ], [ %i.fr, %bb.ar ], [ %i.fm, %bb.aq ], [ %i.fl, %bb.ap ], [ %i.fg, %bb.ao ], [ %i.ff, %_RNvXs3_NtNtCsbPuM0779rnk_4time10formatting18component_providerNtNtB9_16offset_date_time14OffsetDateTimeNtB5_17ComponentProvider3day.exit.i.i ], [ %i.et, %bb.an ], [ %i.es, %_RNvXs3_NtNtCsbPuM0779rnk_4time10formatting18component_providerNtNtB9_16offset_date_time14OffsetDateTimeNtB5_17ComponentProvider5month.exit.i.i ], [ %i.ed, %bb.am ], [ %i.dz, %bb.ak ], [ %i.ec, %bb.al ], [ %i.ht, %bb.ax ] ; 3 uses
  %.sroa.28.0.ph.ph.i = ptrtoint ptr %.sroa.28.0.ph.ph.in.i to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11714
  %i.ih = and i64 %.sroa.28.0.ph.ph.i, 3
  switch i64 %i.ih, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 3, label %bb.be
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 1, label %bb.bf
  ], !prof !29

default.unreachable:                              ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.ii = icmp ult ptr %.sroa.28.0.ph.ph.in.i, inttoptr (i64 188978561024 to ptr)
  %i.ij = and i64 %.sroa.28.0.ph.ph.i, 1095216660480
  %i.ik = icmp ne i64 %i.ij, 1095216660480
  call void @llvm.assume(i1 %i.ii)
  call void @llvm.assume(i1 %i.ik)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.il = getelementptr i8, ptr %.sroa.28.0.ph.ph.in.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.il) ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.il, ptr %i.im, align 8, !alias.scope !11715, !noalias !11714
  store i8 3, ptr %i.a, align 8, !alias.scope !11715, !noalias !11714
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.im) #30, !noalias !11716
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11714
  br label %_RINvNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt4time10time_crate15format_datetimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339ECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt4time10time_crate15format_datetimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339ECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.az, %bb.bc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  %.not19.i = phi i1 [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ], [ false, %bb.bc ], [ false, %bb.az ], [ true, %bb.ah ], [ true, %bb.aj ], [ true, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11708
  ret i1 %.not19.i

_RNvMs2_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTime17checked_to_offset.exit.thread: ; preds = %_RNvMs2_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTime13to_offset_raw.exit.i, %_RNvMs2_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTime17checked_to_offset.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @732, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @734) #37
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB5_9LogConfigNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @735, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @736, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @177, i64 noundef 7, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @737, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @738) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCsfS4ZeCxwza6_6anyhow5errorINtB5_9ErrorImplNtCsJovr8ELaM0_3log14SetLoggerErrorENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCsfS4ZeCxwza6_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull %0) #30 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !14, !nonnull !14
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #35
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtNtCsat9HgdBb3qc_16shadowsocks_rust9daemonize9daemonize5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @744, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @745, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @743) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsD_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_12AddressErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @752, i64 noundef 12) #30
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsf3Ta7LF998c_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @744, i64 noundef 5) #30
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !24, !noundef !14
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @757, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @758) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @755, i64 noundef 4) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !31, !noundef !14
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @757, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @760) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @755, i64 noundef 4) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsf3Ta7LF998c_4core6optionINtB5_6OptionmENtNtB7_3fmt5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !13, !noundef !14
end_hunk_0
