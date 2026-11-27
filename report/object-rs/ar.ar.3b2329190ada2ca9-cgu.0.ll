Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/ar.ar.3b2329190ada2ca9-cgu.0?download=true
inline.NumInlined: 146
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvCs54MM5Fk6r0b_2ar4main:bb.a
bb.an:                                            ; preds = %.noexc113
  %.not161.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not161.i.i, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dm = icmp ult i64 %i.cf, %i.cq
  %i.dn = sub nuw nsw i64 %i.cf, %i.cq
  %.not.i.i.i.i163.i.i = icmp samesign ult i64 %i.dn, 112
  %or.cond.i.i.i164.i.i = select i1 %i.dm, i1 true, i1 %.not.i.i.i.i163.i.i
  br i1 %or.cond.i.i.i164.i.i, label %.thread237, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.do = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cq ; 2 uses
  %i.dp = add nuw nsw i64 %i.cq, 112              ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 108
  %i.dr = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef 4, i32 noundef 10)
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !208 ; 2 uses

.noexc116:                                        ; preds = %bb.ap
  %i.ds = extractvalue { i64, i64 } %i.dr, 0
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %bb.aq, label %.thread237

bb.aq:                                            ; preds = %.noexc116
  %i.du = extractvalue { i64, i64 } %i.dr, 1      ; 3 uses
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = sub nuw nsw i64 %i.cf, %i.dp
  %.not.i.i.i165.i.i = icmp ugt i64 %i.du, %i.dw
  %or.cond246.i.i = select i1 %i.dv, i1 %.not.i.i.i165.i.i, i1 false
  br i1 %or.cond246.i.i, label %.thread237, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dx = add nuw i64 %i.du, %i.dp                ; 2 uses
  %i.dy = and i64 %i.dx, 1
  %spec.select.i167.i.i = add nuw i64 %i.dy, %i.dx ; 3 uses
  %i.dz = icmp ult i64 %i.cf, %spec.select.i167.i.i
  %i.ea = sub nuw nsw i64 %i.cf, %spec.select.i167.i.i
  %.not.i.i53.i168.i.i = icmp samesign ult i64 %i.ea, 2
  %or.cond.i54.i169.i.i = select i1 %i.dz, i1 true, i1 %.not.i.i53.i168.i.i
  br i1 %or.cond.i54.i169.i.i, label %.thread237, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %spec.select.i167.i.i
  %i.ec = load i16, ptr %i.eb, align 1, !alias.scope !209, !noundef !6
  %.not.i170.i.i = icmp eq i16 %i.ec, 2656
  br i1 %.not.i170.i.i, label %bb.at, label %.thread237

bb.at:                                            ; preds = %bb.as
  %i.ed = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.do, i64 noundef 20, i32 noundef 10)
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !208

.noexc117:                                        ; preds = %bb.at
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  %i.ef = trunc nuw i64 %i.ee to i1
  br i1 %i.ef, label %bb.au, label %.thread237

bb.au:                                            ; preds = %.noexc117, %.noexc115, %bb.an
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.eh = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eg, i64 noundef 20, i32 noundef 10)
          to label %.noexc118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205 ; 2 uses

.noexc118:                                        ; preds = %bb.au
  %i.ei = extractvalue { i64, i64 } %i.eh, 0
  %i.ej = extractvalue { i64, i64 } %i.eh, 1      ; 5 uses
  %i.ek = trunc nuw i64 %i.ei to i1
  br i1 %i.ek, label %bb.av, label %.thread237

bb.av:                                            ; preds = %.noexc118
  %i.el = icmp eq i64 %i.ej, 0
  br i1 %i.el, label %.thread251, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.em = icmp ult i64 %i.cf, %i.ej
  %i.en = sub nuw nsw i64 %i.cf, %i.ej
  %.not.i.i.i.i177.i.i = icmp samesign ult i64 %i.en, 112
  %or.cond.i.i.i178.i.i = select i1 %i.em, i1 true, i1 %.not.i.i.i.i177.i.i
  br i1 %or.cond.i.i.i178.i.i, label %.thread237, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ej ; 2 uses
  %i.ep = add nuw nsw i64 %i.ej, 112              ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 108
  %i.er = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef 4, i32 noundef 10)
          to label %.noexc119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !210 ; 2 uses

.noexc119:                                        ; preds = %bb.ax
  %i.es = extractvalue { i64, i64 } %i.er, 0
  %i.et = trunc nuw i64 %i.es to i1
  br i1 %i.et, label %bb.ay, label %.thread237

bb.ay:                                            ; preds = %.noexc119
  %i.eu = extractvalue { i64, i64 } %i.er, 1      ; 3 uses
  %i.ev = icmp ne i64 %i.eu, 0
  %i.ew = sub nuw nsw i64 %i.cf, %i.ep
  %.not.i.i.i179.i.i = icmp ugt i64 %i.eu, %i.ew
  %or.cond247.i.i = select i1 %i.ev, i1 %.not.i.i.i179.i.i, i1 false
  br i1 %or.cond247.i.i, label %.thread237, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ex = add nuw i64 %i.eu, %i.ep                ; 2 uses
  %i.ey = and i64 %i.ex, 1
  %spec.select.i181.i.i = add nuw i64 %i.ey, %i.ex ; 4 uses
  %i.ez = icmp ult i64 %i.cf, %spec.select.i181.i.i
  %i.fa = sub nuw nsw i64 %i.cf, %spec.select.i181.i.i
  %.not.i.i53.i182.i.i = icmp samesign ult i64 %i.fa, 2
  %or.cond.i54.i183.i.i = select i1 %i.ez, i1 true, i1 %.not.i.i53.i182.i.i
  br i1 %or.cond.i54.i183.i.i, label %.thread237, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %spec.select.i181.i.i
  %i.fc = add nuw nsw i64 %spec.select.i181.i.i, 2 ; 2 uses
  %i.fd = load i16, ptr %i.fb, align 1, !alias.scope !211, !noundef !6
  %.not.i184.i.i = icmp eq i16 %i.fd, 2656
  br i1 %.not.i184.i.i, label %bb.bb, label %.thread237

bb.bb:                                            ; preds = %bb.ba
  %i.fe = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef 20, i32 noundef 10)
          to label %.noexc120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !210 ; 2 uses

.noexc120:                                        ; preds = %bb.bb
  %i.ff = extractvalue { i64, i64 } %i.fe, 0
  %i.fg = trunc nuw i64 %i.ff to i1
  br i1 %i.fg, label %bb.bc, label %.thread237

bb.bc:                                            ; preds = %.noexc120
  %i.fh = extractvalue { i64, i64 } %i.fe, 1      ; 4 uses
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %.thread237, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fj = sub nuw nsw i64 %i.cf, %i.fc
  %.not.i191.i.i = icmp ugt i64 %i.fh, %i.fj
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fc ; 2 uses
  br i1 %.not.i191.i.i, label %.thread237, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fl = icmp samesign ult i64 %i.fh, 20
  br i1 %i.fl, label %.thread237, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 20
  %i.fn = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fk, i64 noundef 20, i32 noundef 10)
          to label %.noexc121 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !205 ; 2 uses

.noexc121:                                        ; preds = %bb.bf
  %i.fo = extractvalue { i64, i64 } %i.fn, 0
  %i.fp = trunc nuw i64 %i.fo to i1
  br i1 %i.fp, label %bb.bg, label %.thread237

bb.bg:                                            ; preds = %.noexc121
  %i.fq = add nsw i64 %i.fh, -20
  %i.fr = extractvalue { i64, i64 } %i.fn, 1      ; 2 uses
  %i.fs = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fr, i64 20) ; 2 uses
  %i.ft = extractvalue { i64, i1 } %i.fs, 0
  %i.fu = extractvalue { i64, i1 } %i.fs, 1
  %i.fv = icmp ult i64 %i.fq, %i.ft
  %or.cond.i201.i = select i1 %i.fu, i1 true, i1 %i.fv, !prof !212
  br i1 %or.cond.i201.i, label %.thread237, label %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i, !prof !212

_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i: ; preds = %bb.bg
  %i.fw = ptrtoint ptr %i.fm to i64
  br label %.thread251

bb.bh:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !213
  store i64 8, ptr %i.g, align 8, !alias.scope !214, !noalias !213
  %.not.i202.i = icmp eq i64 %i.cf, 8
  br i1 %.not.i202.i, label %.thread269, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !213
  invoke fastcc void @_RINvMs0_NtNtCseHTIzroA4w0_6object4read7archiveNtB6_13ArchiveMember9parse_zosRShECs54MM5Fk6r0b_2ar(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias nofree noundef align 8 dereferenceable(8) %i.g)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !215

.noexc122:                                        ; preds = %bb.bi
  %i.fx = load i64, ptr %i.f, align 8, !range !11, !noalias !213, !noundef !6
  %i.fy = icmp eq i64 %i.fx, -1
  br i1 %i.fy, label %bb.de, label %bb.bj

bb.bj:                                            ; preds = %.noexc122
  %.sroa.545.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.545.0.copyload.i.i = load i64, ptr %.sroa.545.0..sroa_idx.i.i, align 8, !noalias !213
  %.sroa.646.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.646.0.copyload.i.i = load i64, ptr %.sroa.646.0..sroa_idx.i.i, align 8, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !213
  %i.fz = icmp eq i64 %.sroa.646.0.copyload.i.i, 9
  br i1 %i.fz, label %bb.bk, label %.thread269

bb.bk:                                            ; preds = %bb.bj
  %i.ga = inttoptr i64 %.sroa.545.0.copyload.i.i to ptr
  %i.gb = load i72, ptr %i.ga, align 1, !noalias !215
  %i.gc = icmp eq i72 %i.gb, -1055660407057552806547
  %i.gd = load i64, ptr %i.g, align 8
  %spec.select = select i1 %i.gc, i64 %i.gd, i64 8
  br label %.thread269

bb.bl:                                            ; preds = %bb.ad
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.ad
  %.sroa.020.0.i = phi i8 [ 0, %bb.bl ], [ 1, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !203
  %i.ge = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.ca, ptr %i.ge, align 8, !noalias !203
  %i.gf = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %i.cf, ptr %i.gf, align 8, !noalias !203
  %i.gg = getelementptr inbounds nuw i8, ptr %i.l, i64 73 ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !203
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i8 0, i64 16, i1 false), !noalias !203
  store ptr inttoptr (i64 1 to ptr), ptr %i.gj, align 8, !noalias !203
  %i.gk = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  store i64 0, ptr %i.gk, align 8, !noalias !203
  %i.gl = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %0 = zext nneg i8 %.sroa.020.0.i to i16
  store i16 %0, ptr %i.gl, align 8, !noalias !203
  %.not.i = icmp eq i64 %i.cf, 8
  br i1 %.not.i, label %.thread.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !216
  %i.gm = trunc nuw i8 %.sroa.020.0.i to i1
  invoke fastcc void @_RINvMs0_NtNtCseHTIzroA4w0_6object4read7archiveNtB6_13ArchiveMember5parseRShECs54MM5Fk6r0b_2ar(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ca, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i1 noundef zeroext %i.gm)
          to label %.noexc123 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !217

.noexc123:                                        ; preds = %bb.bn
  %i.gn = load i64, ptr %i.e, align 8, !range !11, !noalias !216, !noundef !6
  %i.go = icmp eq i64 %i.gn, -1
  br i1 %i.go, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.noexc123
  %i.gp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !216, !nonnull !6, !noundef !6
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !noalias !216, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !216
  br label %select.unfold.i

bb.bp:                                            ; preds = %.noexc123
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !218
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !218
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !218 ; 6 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.14.0.copyload.i = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !218 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !216
  %i.gt = inttoptr i64 %.sroa.9.0.copyload.i to ptr ; 8 uses
  switch i64 %.sroa.12.0.copyload.i, label %.thread.i [
    i64 1, label %bb.bq
    i64 7, label %bb.cm
    i64 2, label %bb.cu
    i64 9, label %bb.cy
    i64 16, label %bb.da
    i64 12, label %bb.db
    i64 19, label %bb.dd
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.gu = load i8, ptr %i.gt, align 1, !noalias !219, !noundef !6
  %i.gv = icmp eq i8 %i.gu, 47
  br i1 %i.gv, label %bb.br, label %.thread.i

bb.br:                                            ; preds = %bb.bq
  store i8 1, ptr %i.gg, align 1, !noalias !203
  store i64 %.sroa.13.0.copyload.i, ptr %i.gh, align 8, !noalias !203
  store i64 %.sroa.14.0.copyload.i, ptr %i.gi, align 8, !noalias !203
  %i.gw = load i64, ptr %i.m, align 8, !noalias !203, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !203
  invoke fastcc void @_RNCNvMNtNtCseHTIzroA4w0_6object4read7archiveNtB4_11ArchiveFile5parse0Cs54MM5Fk6r0b_2ar(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.k, ptr nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.l, ptr noalias nofree noundef align 8 dereferenceable(8) %i.m) #18
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !219

.noexc124:                                        ; preds = %bb.br
  %i.gx = load i64, ptr %i.k, align 8, !range !220, !noalias !203, !noundef !6 ; 2 uses
  %i.gy = icmp eq i64 %i.gx, -2
  br i1 %i.gy, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.noexc124
  %i.gz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !noalias !203, !nonnull !6, !noundef !6
  %i.hb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.hc = load i64, ptr %i.hb, align 8, !noalias !203, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !203
  br label %select.unfold.i

bb.bt:                                            ; preds = %.noexc124
  %.sroa.5154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5154.0.copyload.i = load i64, ptr %.sroa.5154.0..sroa_idx.i, align 8, !noalias !203
  %.sroa.6155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.6155.0.copyload.i = load i64, ptr %.sroa.6155.0..sroa_idx.i, align 8, !noalias !203
  %.sroa.7156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.7156.0.copyload.i = load i64, ptr %.sroa.7156.0..sroa_idx.i, align 8, !noalias !203 ; 5 uses
  %.sroa.8157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.8157.0.copyload.i = load i64, ptr %.sroa.8157.0..sroa_idx.i, align 8, !noalias !203 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !203
  %.not193.i = icmp eq i64 %i.gx, -1
  br i1 %.not193.i, label %.thread.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hd = inttoptr i64 %.sroa.5154.0.copyload.i to ptr ; 2 uses
  switch i64 %.sroa.6155.0.copyload.i, label %.thread.i [
    i64 2, label %bb.bv
    i64 1, label %bb.bz
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.he = load i16, ptr %i.hd, align 1, !noalias !219, !noundef !6
  %i.hf = icmp eq i16 %i.he, 12079
  br i1 %i.hf, label %bb.bw, label %.thread.i

bb.bw:                                            ; preds = %bb.bv
  %i.hg = icmp eq i64 %.sroa.7156.0.copyload.i, 0
  %i.hh = icmp eq i64 %.sroa.8157.0.copyload.i, 0
  %or.cond285.i = select i1 %i.hg, i1 true, i1 %i.hh
  br i1 %or.cond285.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hi = icmp ult i64 %i.cf, %.sroa.7156.0.copyload.i
  %i.hj = sub nuw nsw i64 %i.cf, %.sroa.7156.0.copyload.i
  %.not.i207.i = icmp ugt i64 %.sroa.8157.0.copyload.i, %i.hj
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.7156.0.copyload.i
  %or.cond270.i = select i1 %i.hi, i1 true, i1 %.not.i207.i
  br i1 %or.cond270.i, label %select.unfold.i, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sroa.11.0.i = phi i64 [ 0, %bb.bw ], [ %.sroa.8157.0.copyload.i, %bb.bx ]
  %.sroa.662.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.bw ], [ %i.hk, %bb.bx ]
  %i.hl = load i64, ptr %i.m, align 8, !noalias !203, !noundef !6
  br label %.thread.i

bb.bz:                                            ; preds = %bb.bu
  %i.hm = load i8, ptr %i.hd, align 1, !noalias !219, !noundef !6
  %i.hn = icmp eq i8 %i.hm, 47
  br i1 %i.hn, label %bb.ca, label %.thread.i

bb.ca:                                            ; preds = %bb.bz
  store i8 5, ptr %i.gg, align 1, !noalias !203
  store i64 %.sroa.7156.0.copyload.i, ptr %i.gh, align 8, !noalias !203
  store i64 %.sroa.8157.0.copyload.i, ptr %i.gi, align 8, !noalias !203
  %i.ho = load i64, ptr %i.m, align 8, !noalias !203, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !203
  invoke fastcc void @_RNCNvMNtNtCseHTIzroA4w0_6object4read7archiveNtB4_11ArchiveFile5parse0Cs54MM5Fk6r0b_2ar(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.j, ptr nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.l, ptr noalias nofree noundef align 8 dereferenceable(8) %i.m) #18
          to label %.noexc125 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !219

.noexc125:                                        ; preds = %bb.ca
  %i.hp = load i64, ptr %i.j, align 8, !range !220, !noalias !203, !noundef !6 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, -2
  br i1 %i.hq, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.noexc125
  %i.hr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !203, !nonnull !6, !noundef !6
  %i.ht = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !noalias !203, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !203
  br label %select.unfold.i

bb.cc:                                            ; preds = %.noexc125
  %.sroa.5164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5164.0.copyload.i = load i64, ptr %.sroa.5164.0..sroa_idx.i, align 8, !noalias !203 ; 2 uses
  %.sroa.6165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.6165.0.copyload.i = load i64, ptr %.sroa.6165.0..sroa_idx.i, align 8, !noalias !203 ; 2 uses
  %.sroa.7166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.7166.0.copyload.i = load i64, ptr %.sroa.7166.0..sroa_idx.i, align 8, !noalias !203 ; 4 uses
  %.sroa.8167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.8167.0.copyload.i = load i64, ptr %.sroa.8167.0..sroa_idx.i, align 8, !noalias !203 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !203
  %.not194.i = icmp eq i64 %i.hp, -1
  br i1 %.not194.i, label %.thread.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hv = icmp eq i64 %.sroa.6165.0.copyload.i, 2
  br i1 %i.hv, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.ck, %bb.cd
  %i.hw = phi i64 [ %.sroa.1182.0.i, %bb.ck ], [ 0, %bb.cd ] ; 2 uses
  %i.hx = phi ptr [ %.sroa.680.0.i, %bb.ck ], [ inttoptr (i64 1 to ptr), %bb.cd ] ; 2 uses
  %.sroa.1099.0.i = phi i64 [ %.sroa.6175.0.copyload.i, %bb.ck ], [ %.sroa.6165.0.copyload.i, %bb.cd ]
  %.sroa.697.0.i = phi i64 [ %.sroa.5174.0.copyload.i, %bb.ck ], [ %.sroa.5164.0.copyload.i, %bb.cd ]
  %.sroa.094.0.i = phi i1 [ %i.io, %bb.ck ], [ true, %bb.cd ]
  %.sroa.0142.1.i = phi i64 [ %i.ih, %bb.ck ], [ %i.ho, %bb.cd ] ; 2 uses
  %i.hy = icmp eq i64 %.sroa.1099.0.i, 13
  %or.cond.i = select i1 %.sroa.094.0.i, i1 %i.hy, i1 false
  br i1 %or.cond.i, label %bb.cl, label %.thread.i

bb.cf:                                            ; preds = %bb.cd
  %i.hz = inttoptr i64 %.sroa.5164.0.copyload.i to ptr
  %i.ia = load i16, ptr %i.hz, align 1, !noalias !219, !noundef !6
  %i.ib = icmp eq i16 %i.ia, 12079
  br i1 %i.ib, label %bb.cg, label %.thread.i

bb.cg:                                            ; preds = %bb.cf
  %i.ic = icmp eq i64 %.sroa.7166.0.copyload.i, 0
  %i.id = icmp eq i64 %.sroa.8167.0.copyload.i, 0
  %or.cond286.i = select i1 %i.ic, i1 true, i1 %i.id
  br i1 %or.cond286.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ie = icmp ult i64 %i.cf, %.sroa.7166.0.copyload.i
  %i.if = sub nuw nsw i64 %i.cf, %.sroa.7166.0.copyload.i
  %.not.i209.i = icmp ugt i64 %.sroa.8167.0.copyload.i, %i.if
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.7166.0.copyload.i
  %or.cond272.i = select i1 %i.ie, i1 true, i1 %.not.i209.i
  br i1 %or.cond272.i, label %select.unfold.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.sroa.1182.0.i = phi i64 [ 0, %bb.cg ], [ %.sroa.8167.0.copyload.i, %bb.ch ] ; 2 uses
  %.sroa.680.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.cg ], [ %i.ig, %bb.ch ] ; 2 uses
  store ptr %.sroa.680.0.i, ptr %i.gj, align 8, !noalias !203, !captures !221
  store i64 %.sroa.1182.0.i, ptr %i.gk, align 8, !noalias !203
  %i.ih = load i64, ptr %i.m, align 8, !noalias !203, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !203
  invoke fastcc void @_RNCNvMNtNtCseHTIzroA4w0_6object4read7archiveNtB4_11ArchiveFile5parse0Cs54MM5Fk6r0b_2ar(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.i, ptr nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.l, ptr noalias nofree noundef align 8 dereferenceable(8) %i.m) #18
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !219

.noexc126:                                        ; preds = %bb.ci
  %i.ii = load i64, ptr %i.i, align 8, !range !220, !noalias !203, !noundef !6 ; 2 uses
  %i.ij = icmp eq i64 %i.ii, -2
  br i1 %i.ij, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.noexc126
  %i.ik = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !203, !nonnull !6, !noundef !6
  %i.im = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.in = load i64, ptr %i.im, align 8, !noalias !203, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !203
  br label %select.unfold.i

bb.ck:                                            ; preds = %.noexc126
  %.sroa.5174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5174.0.copyload.i = load i64, ptr %.sroa.5174.0..sroa_idx.i, align 8, !noalias !203
  %.sroa.6175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.6175.0.copyload.i = load i64, ptr %.sroa.6175.0..sroa_idx.i, align 8, !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !203
  %i.io = icmp ne i64 %i.ii, -1
  br label %bb.ce

bb.cl:                                            ; preds = %bb.ce
  %i.ip = inttoptr i64 %.sroa.697.0.i to ptr
  %i.iq = load i104, ptr %i.ip, align 1, !noalias !219
  %i.ir = icmp eq i104 %i.iq, 3743012409984298328288949255215
  %i.is = load i64, ptr %i.m, align 8, !noalias !203
  %spec.select.i = select i1 %i.ir, i64 %i.is, i64 %.sroa.0142.1.i
  br label %.thread.i

bb.cm:                                            ; preds = %bb.bp
  %i.it = load i56, ptr %i.gt, align 1, !noalias !219
  %i.iu = icmp eq i56 %i.it, 13286731735978799
  br i1 %i.iu, label %bb.cn, label %.thread.i

bb.cn:                                            ; preds = %bb.cm
  store i8 2, ptr %i.gg, align 1, !noalias !203
  store i64 %.sroa.13.0.copyload.i, ptr %i.gh, align 8, !noalias !203
  store i64 %.sroa.14.0.copyload.i, ptr %i.gi, align 8, !noalias !203
  %i.iv = load i64, ptr %i.m, align 8, !noalias !203, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !203
  invoke fastcc void @_RNCNvMNtNtCseHTIzroA4w0_6object4read7archiveNtB4_11ArchiveFile5parse0Cs54MM5Fk6r0b_2ar(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.h, ptr nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.l, ptr noalias nofree noundef align 8 dereferenceable(8) %i.m) #18
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !219

.noexc127:                                        ; preds = %bb.cn
  %i.iw = load i64, ptr %i.h, align 8, !range !220, !noalias !203, !noundef !6 ; 2 uses
  %i.ix = icmp eq i64 %i.iw, -2
  br i1 %i.ix, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.noexc127
  %i.iy = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !203, !nonnull !6, !noundef !6
  %i.ja = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.jb = load i64, ptr %i.ja, align 8, !noalias !203, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !203
  br label %select.unfold.i

bb.cp:                                            ; preds = %.noexc127
  %.sroa.5180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5180.0.copyload.i = load i64, ptr %.sroa.5180.0..sroa_idx.i, align 8, !noalias !203
  %.sroa.6181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.6181.0.copyload.i = load i64, ptr %.sroa.6181.0..sroa_idx.i, align 8, !noalias !203
  %.sroa.7182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.7182.0.copyload.i = load i64, ptr %.sroa.7182.0..sroa_idx.i, align 8, !noalias !203 ; 4 uses
  %.sroa.8183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.8183.0.copyload.i = load i64, ptr %.sroa.8183.0..sroa_idx.i, align 8, !noalias !203 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !203
  %.not192.i = icmp ne i64 %i.iw, -1
  %i.jc = icmp eq i64 %.sroa.6181.0.copyload.i, 2
  %or.cond195.i = select i1 %.not192.i, i1 %i.jc, i1 false
  br i1 %or.cond195.i, label %bb.cq, label %.thread.i

bb.cq:                                            ; preds = %bb.cp
  %i.jd = inttoptr i64 %.sroa.5180.0.copyload.i to ptr
  %i.je = load i16, ptr %i.jd, align 1, !noalias !219, !noundef !6
  %i.jf = icmp eq i16 %i.je, 12079
  br i1 %i.jf, label %bb.cr, label %.thread.i

bb.cr:                                            ; preds = %bb.cq
  %i.jg = icmp eq i64 %.sroa.7182.0.copyload.i, 0
  %i.jh = icmp eq i64 %.sroa.8183.0.copyload.i, 0
  %or.cond287.i = select i1 %i.jg, i1 true, i1 %i.jh
  br i1 %or.cond287.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ji = icmp ult i64 %i.cf, %.sroa.7182.0.copyload.i
  %i.jj = sub nuw nsw i64 %i.cf, %.sroa.7182.0.copyload.i
  %.not.i214.i = icmp ugt i64 %.sroa.8183.0.copyload.i, %i.jj
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.7182.0.copyload.i
  %or.cond274.i = select i1 %i.ji, i1 true, i1 %.not.i214.i
  br i1 %or.cond274.i, label %select.unfold.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.sroa.6128.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.cr ], [ %i.jk, %bb.cs ]
  %.sroa.11130.0.i = phi i64 [ 0, %bb.cr ], [ %.sroa.8183.0.copyload.i, %bb.cs ]
  %i.jl = load i64, ptr %i.m, align 8, !noalias !203, !noundef !6
  br label %.thread.i

bb.cu:                                            ; preds = %bb.bp
  %i.jm = load i16, ptr %i.gt, align 1, !noalias !219, !noundef !6
  %i.jn = icmp eq i16 %i.jm, 12079
  br i1 %i.jn, label %bb.cv, label %.thread.i

bb.cv:                                            ; preds = %bb.cu
  store i8 1, ptr %i.gg, align 1, !noalias !203
  %i.jo = icmp eq i64 %.sroa.13.0.copyload.i, 0
  %i.jp = icmp eq i64 %.sroa.14.0.copyload.i, 0
  %or.cond291.i = select i1 %i.jo, i1 true, i1 %i.jp
  br i1 %or.cond291.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jq = icmp ult i64 %i.cf, %.sroa.13.0.copyload.i
  %i.jr = sub nuw nsw i64 %i.cf, %.sroa.13.0.copyload.i
  %.not.i219.i = icmp ugt i64 %.sroa.14.0.copyload.i, %i.jr
  %i.js = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.13.0.copyload.i
  %or.cond276.i = select i1 %i.jq, i1 true, i1 %.not.i219.i
  br i1 %or.cond276.i, label %select.unfold.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.sroa.6138.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.cv ], [ %i.js, %bb.cw ]
  %.sroa.11140.0.i = phi i64 [ 0, %bb.cv ], [ %.sroa.14.0.copyload.i, %bb.cw ]
  %i.jt = load i64, ptr %i.m, align 8, !noalias !203, !noundef !6
  br label %.thread.i

select.unfold.i:                                  ; preds = %bb.cw, %bb.cs, %bb.co, %bb.cj, %bb.ch, %bb.cb, %bb.bx, %bb.bs, %bb.bo
  %.sink294.i = phi ptr [ %i.ha, %bb.bs ], [ %i.gq, %bb.bo ], [ @8, %bb.bx ], [ %i.il, %bb.cj ], [ %i.hs, %bb.cb ], [ @8, %bb.ch ], [ @8, %bb.cs ], [ %i.iz, %bb.co ], [ @8, %bb.cw ]
  %.sink292.i = phi i64 [ %i.hc, %bb.bs ], [ %i.gs, %bb.bo ], [ 32, %bb.bx ], [ %i.in, %bb.cj ], [ %i.hu, %bb.cb ], [ 32, %bb.ch ], [ 32, %bb.cs ], [ %i.jb, %bb.co ], [ 32, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !203
  br label %.thread237

bb.cy:                                            ; preds = %bb.bp
  %i.ju = load i72, ptr %i.gt, align 1, !noalias !219
  %i.jv = icmp eq i72 %i.ju, 1296263284492744941407
  br i1 %i.jv, label %bb.cz, label %.thread.i

bb.cz:                                            ; preds = %bb.da, %bb.cy
  store i8 3, ptr %i.gg, align 1, !noalias !203
  %i.jw = load i64, ptr %i.m, align 8, !noalias !203, !noundef !6
  br label %.thread.i

bb.da:                                            ; preds = %bb.bp
  %i.jx = load i128, ptr %i.gt, align 1, !noalias !219, !noundef !6
  %i.jy = icmp eq i128 %i.jx, 90747482440279024404723789557641666399
  br i1 %i.jy, label %bb.cz, label %.thread.i

bb.db:                                            ; preds = %bb.bp
  %i.jz = load i96, ptr %i.gt, align 1, !noalias !219
  %i.ka = icmp eq i96 %i.jz, 16158952426048290658162990943
  br i1 %i.ka, label %bb.dc, label %.thread.i

bb.dc:                                            ; preds = %bb.dd, %bb.db
  store i8 4, ptr %i.gg, align 1, !noalias !203
  %i.kb = load i64, ptr %i.m, align 8, !noalias !203, !noundef !6
  br label %.thread.i

bb.dd:                                            ; preds = %bb.bp
  %i.kc = load i128, ptr %i.gt, align 1
  %i.kd = xor i128 %i.kc, 109408573097644608931918369426422783839
  %i.ke = getelementptr i8, ptr %i.gt, i64 3
  %i.kf = load i128, ptr %i.ke, align 1
  %i.kg = xor i128 %i.kf, 90747482440279024071609124361941637459
  %i.kh = or i128 %i.kd, %i.kg
  %i.ki = icmp ne i128 %i.kh, 0
  %i.kj = zext i1 %i.ki to i32
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %bb.dc, label %.thread.i

.thread.i:                                        ; preds = %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cu, %bb.ct, %bb.cq, %bb.cp, %bb.cm, %bb.cl, %bb.cf, %bb.ce, %bb.cc, %bb.bz, %bb.by, %bb.bv, %bb.bu, %bb.bt, %bb.bq, %bb.bp, %bb.bm
  %i.kl = phi i64 [ 0, %bb.db ], [ 0, %bb.bp ], [ 0, %bb.bt ], [ 0, %bb.bq ], [ 0, %bb.da ], [ 0, %bb.cp ], [ 0, %bb.cq ], [ 0, %bb.bm ], [ %.sroa.11140.0.i, %bb.cx ], [ 0, %bb.cm ], [ 0, %bb.cz ], [ 0, %bb.cu ], [ 0, %bb.cy ], [ 0, %bb.dc ], [ 0, %bb.dd ], [ 0, %bb.bu ], [ %.sroa.11.0.i, %bb.by ], [ 0, %bb.bz ], [ %i.hw, %bb.cl ], [ 0, %bb.bv ], [ %i.hw, %bb.ce ], [ %.sroa.11130.0.i, %bb.ct ], [ 0, %bb.cc ], [ 0, %bb.cf ]
  %i.km = phi ptr [ inttoptr (i64 1 to ptr), %bb.db ], [ inttoptr (i64 1 to ptr), %bb.bp ], [ inttoptr (i64 1 to ptr), %bb.bt ], [ inttoptr (i64 1 to ptr), %bb.bq ], [ inttoptr (i64 1 to ptr), %bb.da ], [ inttoptr (i64 1 to ptr), %bb.cp ], [ inttoptr (i64 1 to ptr), %bb.cq ], [ inttoptr (i64 1 to ptr), %bb.bm ], [ %.sroa.6138.0.i, %bb.cx ], [ inttoptr (i64 1 to ptr), %bb.cm ], [ inttoptr (i64 1 to ptr), %bb.cz ], [ inttoptr (i64 1 to ptr), %bb.cu ], [ inttoptr (i64 1 to ptr), %bb.cy ], [ inttoptr (i64 1 to ptr), %bb.dc ], [ inttoptr (i64 1 to ptr), %bb.dd ], [ inttoptr (i64 1 to ptr), %bb.bu ], [ %.sroa.662.0.i, %bb.by ], [ inttoptr (i64 1 to ptr), %bb.bz ], [ %i.hx, %bb.cl ], [ inttoptr (i64 1 to ptr), %bb.bv ], [ %i.hx, %bb.ce ], [ %.sroa.6128.0.i, %bb.ct ], [ inttoptr (i64 1 to ptr), %bb.cc ], [ inttoptr (i64 1 to ptr), %bb.cf ]
  %.sroa.0142.4.i = phi i64 [ 8, %bb.db ], [ 8, %bb.bp ], [ %i.gw, %bb.bt ], [ 8, %bb.bq ], [ 8, %bb.da ], [ %i.iv, %bb.cp ], [ %i.iv, %bb.cq ], [ 8, %bb.bm ], [ %i.jt, %bb.cx ], [ 8, %bb.cm ], [ %i.jw, %bb.cz ], [ 8, %bb.cu ], [ 8, %bb.cy ], [ %i.kb, %bb.dc ], [ 8, %bb.dd ], [ %i.gw, %bb.bu ], [ %i.hl, %bb.by ], [ %i.gw, %bb.bz ], [ %spec.select.i, %bb.cl ], [ %i.gw, %bb.bv ], [ %.sroa.0142.1.i, %bb.ce ], [ %i.jl, %bb.ct ], [ %i.ho, %bb.cc ], [ %i.ho, %bb.cf ]
  %.sroa.84.0.copyload = load i16, ptr %i.gl, align 8, !noalias !202
  %.sroa.84.sroa.0.0.extract.trunc = trunc i16 %.sroa.84.0.copyload to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !203
  br label %.thread251

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eh, %bb.eg
  %.pn = phi { ptr, i32 } [ %i.of, %bb.eh ], [ %i.of, %bb.eg ], [ %lpad.loopexit.split-lp324, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs54MM5Fk6r0b_2ar.exit unwind label %bb.ek

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ea, %bb.dz, %bb.du, %bb.ds, %bb.dp, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtNtCseHTIzroA4w0_6object4read7archive13ArchiveMemberNtBL_5ErrorE6unwrapCs54MM5Fk6r0b_2ar.exit, %bb.cn, %bb.ci, %bb.ca, %bb.br, %bb.bn, %bb.bi, %bb.bf, %bb.bb, %bb.ax, %bb.au, %bb.at, %bb.ap, %bb.am, %bb.ai, %bb.ag, %_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_7archive13AixFileHeaderECs54MM5Fk6r0b_2ar.exit.i.i, %.loopexit300, %bb.dk, %bb.di, %.thread237
  %lpad.loopexit.split-lp324 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit

.thread269:                                       ; preds = %bb.bk, %bb.bj, %bb.bh
  %.sroa.24.0.ph = phi i64 [ 8, %bb.bh ], [ 8, %bb.bj ], [ %spec.select, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !213
  br label %.thread251

bb.de:                                            ; preds = %.noexc122
  %i.kn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !213, !nonnull !6, !noundef !6
  %i.kp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.kq = load i64, ptr %i.kp, align 8, !noalias !213, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !213
  br label %.thread237

.thread237:                                       ; preds = %bb.ad, %bb.be, %bb.ae, %.noexc112, %.noexc113, %bb.bc, %.noexc121, %bb.bd, %.noexc118, %bb.ac, %bb.bg, %select.unfold.i, %.noexc117, %bb.as, %bb.ar, %bb.aq, %.noexc116, %bb.ao, %.noexc115, %bb.al, %bb.ak, %bb.aj, %.noexc114, %bb.ah, %.noexc120, %bb.ba, %bb.az, %bb.ay, %.noexc119, %bb.aw, %bb.de
  %.sroa.24.1247 = phi ptr [ %i.ko, %bb.de ], [ @36, %bb.ad ], [ @34, %bb.be ], [ @35, %bb.ae ], [ @4, %bb.ao ], [ @29, %.noexc112 ], [ %.sink294.i, %select.unfold.i ], [ @30, %.noexc113 ], [ @34, %bb.bc ], [ @32, %.noexc121 ], [ @8, %bb.bd ], [ @4, %bb.ah ], [ @31, %.noexc118 ], [ @37, %bb.ac ], [ @33, %bb.bg ], [ @1, %.noexc117 ], [ @0, %.noexc116 ], [ @2, %bb.ar ], [ @2, %bb.as ], [ @3, %bb.aq ], [ @1, %.noexc115 ], [ @0, %.noexc114 ], [ @2, %bb.ak ], [ @2, %bb.al ], [ @3, %bb.aj ], [ @1, %.noexc120 ], [ @0, %.noexc119 ], [ @2, %bb.az ], [ @2, %bb.ba ], [ @3, %bb.ay ], [ @4, %bb.aw ]
  %.sroa.43.1246 = phi i64 [ %i.kq, %bb.de ], [ 30, %bb.ad ], [ 39, %bb.be ], [ 35, %bb.ae ], [ 37, %bb.ao ], [ 56, %.noexc112 ], [ %.sink292.i, %select.unfold.i ], [ 49, %.noexc113 ], [ 39, %bb.bc ], [ 39, %.noexc121 ], [ 32, %bb.bd ], [ 37, %bb.ah ], [ 50, %.noexc118 ], [ 20, %bb.ac ], [ 40, %bb.bg ], [ 46, %.noexc117 ], [ 42, %.noexc116 ], [ 34, %bb.ar ], [ 34, %bb.as ], [ 35, %bb.aq ], [ 46, %.noexc115 ], [ 42, %.noexc114 ], [ 34, %bb.ak ], [ 34, %bb.al ], [ 35, %bb.aj ], [ 46, %.noexc120 ], [ 42, %.noexc119 ], [ 34, %bb.az ], [ 34, %bb.ba ], [ 35, %bb.ay ], [ 37, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %.sroa.24.1247, ptr %i.x, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.43.1246, ptr %i.kr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.439.0..sroa_idx, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.x, ptr %i.ks, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @_RNvXNtCseHTIzroA4w0_6object4readNtB2_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @22, ptr noundef nonnull %i.w)
          to label %bb.eq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread251:                                       ; preds = %.thread.i, %bb.av, %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i, %.thread269
  %.sroa.0175.1267 = phi i64 [ 2, %.thread269 ], [ 0, %.thread.i ], [ 1, %bb.av ], [ 1, %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i ] ; 2 uses
  %.sroa.24.1266 = phi i64 [ %.sroa.24.0.ph, %.thread269 ], [ %.sroa.0142.4.i, %.thread.i ], [ 1, %bb.av ], [ %i.fw, %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i ]
  %.sroa.43.1265 = phi i64 [ %i.cf, %.thread269 ], [ %i.cf, %.thread.i ], [ 0, %bb.av ], [ %i.fr, %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i ]
  %.sroa.70.1263 = phi ptr [ inttoptr (i64 1 to ptr), %.thread269 ], [ %i.km, %.thread.i ], [ inttoptr (i64 1 to ptr), %bb.av ], [ inttoptr (i64 1 to ptr), %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i ] ; 2 uses
  %.sroa.74.1262 = phi i64 [ 0, %.thread269 ], [ %i.kl, %.thread.i ], [ 0, %bb.av ], [ 0, %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i ]
  %.sroa.84.1261 = phi i8 [ 0, %.thread269 ], [ %.sroa.84.sroa.0.0.extract.trunc, %.thread.i ], [ 0, %bb.av ], [ 0, %_RINvNtCseHTIzroA4w0_6object3pod16slice_from_bytesNtNtB4_7archive15AixMemberOffsetECs54MM5Fk6r0b_2ar.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !203
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.70.1263), "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.kt = icmp samesign eq i64 %.sroa.11.0.copyload, 0
  br i1 %i.kt, label %bb.di, label %bb.df

bb.df:                                            ; preds = %.thread251
  %i.ku = load i8, ptr %.sroa.7.0.copyload, align 1, !noalias !222, !noundef !6 ; 5 uses
  %i.kv = icmp sgt i8 %i.ku, -1
  br i1 %i.kv, label %bb.dg, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit12.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit12.i: ; preds = %bb.df
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 1
  %i.kx = and i8 %i.ku, 31
  %i.ky = zext nneg i8 %i.kx to i32               ; 3 uses
  %i.kz = icmp samesign ne i64 %.sroa.11.0.copyload, 1
  call void @llvm.assume(i1 %i.kz)
  %i.la = load i8, ptr %i.kw, align 1, !noalias !222, !noundef !6
  %i.lb = shl nuw nsw i32 %i.ky, 6
  %i.lc = and i8 %i.la, 63
  %i.ld = zext nneg i8 %i.lc to i32               ; 2 uses
  %i.le = or disjoint i32 %i.lb, %i.ld
  %i.lf = icmp samesign ugt i8 %i.ku, -33
  br i1 %i.lf, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit14.i, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.lg = zext nneg i8 %i.ku to i32
  br label %bb.dh

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit14.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit12.i
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 2
  %i.li = icmp samesign ne i64 %.sroa.11.0.copyload, 2
  call void @llvm.assume(i1 %i.li)
  %i.lj = load i8, ptr %i.lh, align 1, !noalias !222, !noundef !6
  %i.lk = shl nuw nsw i32 %i.ld, 6
  %i.ll = and i8 %i.lj, 63
  %i.lm = zext nneg i8 %i.ll to i32
  %i.ln = or disjoint i32 %i.lk, %i.lm            ; 2 uses
  %i.lo = shl nuw nsw i32 %i.ky, 12
  %i.lp = or disjoint i32 %i.ln, %i.lo
  %i.lq = icmp samesign ugt i8 %i.ku, -17
  br i1 %i.lq, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit16.i, label %bb.dh

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit16.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit14.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 3
  %i.ls = icmp samesign ne i64 %.sroa.11.0.copyload, 3
  call void @llvm.assume(i1 %i.ls)
  %i.lt = load i8, ptr %i.lr, align 1, !noalias !222, !noundef !6
  %i.lu = shl nuw nsw i32 %i.ky, 18
  %i.lv = and i32 %i.lu, 1835008
  %i.lw = shl nuw nsw i32 %i.ln, 6
  %i.lx = and i8 %i.lt, 63
  %i.ly = zext nneg i8 %i.lx to i32
  %i.lz = or disjoint i32 %i.lw, %i.ly
  %i.ma = or disjoint i32 %i.lz, %i.lv
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit12.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit16.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.lp, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit14.i ], [ %i.ma, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit16.i ], [ %i.le, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit12.i ], [ %i.lg, %bb.dg ] ; 3 uses
  %i.mb = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %i.mb)
  %i.mc = icmp eq i32 %.sroa.4.0.i.ph, 116
  br i1 %i.mc, label %bb.dj, label %bb.dk

bb.di:                                            ; preds = %.thread251
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #17
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %.sroa.0175.1267, ptr %i.v, align 8
  %.sroa.01.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 9 uses
  store i64 %.sroa.24.1266, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8
  %.sroa.01.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 7 uses
  store i64 %.sroa.43.1265, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 4 uses
  store ptr %i.ca, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 4 uses
  store i64 %i.cf, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  store ptr %.sroa.70.1263, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  store i64 %.sroa.74.1262, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 2 uses
  store i8 %.sroa.84.1261, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.11186.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.12.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.13.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.11186.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.12.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.13.0..sroa_idx197 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  br label %bb.dl

bb.dk:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i32 %.sroa.4.0.i.ph, ptr %i.s, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsk_NtCskKLDkoKarTP_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @21, ptr noundef nonnull %i.r)
          to label %bb.el unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit147, %bb.dj
  %i.me = phi i64 [ %.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs54MM5Fk6r0b_2ar.exit147 ], [ %.sroa.0175.1267, %bb.dj ]
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  switch i64 %i.me, label %default.unreachable [
    i64 0, label %bb.dm
    i64 1, label %bb.dn
    i64 2, label %bb.do
  ]

default.unreachable:                              ; preds = %bb.dl, %bb.ez, %bb.es
  unreachable

bb.dm:                                            ; preds = %bb.dl
  %i.mf = load i64, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8, !alias.scope !223, !noundef !6
  %i.mg = load i64, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !alias.scope !223, !noundef !6
  %.not3.i = icmp ult i64 %i.mf, %i.mg
  br i1 %.not3.i, label %bb.dp, label %_RNvXs_NtNtCseHTIzroA4w0_6object4read7archiveNtB4_21ArchiveMemberIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit

bb.dn:                                            ; preds = %bb.dl
  %i.mh = load i64, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !alias.scope !223, !noundef !6 ; 2 uses
  %i.mi = icmp eq i64 %i.mh, 0
  br i1 %i.mi, label %_RNvXs_NtNtCseHTIzroA4w0_6object4read7archiveNtB4_21ArchiveMemberIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit, label %bb.ds

bb.do:                                            ; preds = %bb.dl
  %i.mj = load i64, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8, !alias.scope !223, !noundef !6
  %i.mk = load i64, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !alias.scope !223, !noundef !6
  %.not.i129 = icmp ult i64 %i.mj, %i.mk
  br i1 %.not.i129, label %bb.ea, label %_RNvXs_NtNtCseHTIzroA4w0_6object4read7archiveNtB4_21ArchiveMemberIteratorNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs54MM5Fk6r0b_2ar.exit

bb.dp:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !224
  %i.ml = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !223, !nonnull !6, !noundef !6
  %i.mm = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !223, !noundef !6
  %i.mn = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !223, !nonnull !6, !noundef !6
  %i.mo = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !223, !noundef !6
  %i.mp = load i8, ptr %.sroa.6.0..sroa_idx, align 8, !range !10, !alias.scope !223, !noundef !6
  %i.mq = trunc nuw i8 %i.mp to i1
  invoke fastcc void @_RINvMs0_NtNtCseHTIzroA4w0_6object4read7archiveNtB6_13ArchiveMember5parseRShECs54MM5Fk6r0b_2ar(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ml, i64 noundef %i.mm, ptr noalias nofree noundef align 8 dereferenceable(8) %.sroa.01.sroa.2.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mn, i64 noundef %i.mo, i1 noundef zeroext %i.mq)
          to label %.noexc138 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !225

.noexc138:                                        ; preds = %bb.dp
  %i.mr = load i64, ptr %i.d, align 8, !range !11, !noalias !224, !noundef !6 ; 2 uses
  %.not4.i = icmp eq i64 %i.mr, -1
  br i1 %.not4.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dr, %.noexc138
  %.sroa.11186.0.copyload190 = load ptr, ptr %.sroa.11186.0..sroa_idx189, align 8, !noalias !223
  %.sroa.12.0.copyload194 = load i64, ptr %.sroa.12.0..sroa_idx193, align 8, !noalias !223
  %.sroa.13.0.copyload198 = load i64, ptr %.sroa.13.0..sroa_idx197, align 8, !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !224
  br label %bb.ed

bb.dr:                                            ; preds = %.noexc138
  %i.ms = load i64, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !alias.scope !223, !noundef !6
  store i64 %i.ms, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8, !alias.scope !223
  br label %bb.dq

bb.ds:                                            ; preds = %bb.dn
  %i.mt = load ptr, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8, !alias.scope !223, !nonnull !6, !noundef !6 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 20
  %i.mv = add i64 %i.mh, -1
  store ptr %i.mu, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8, !alias.scope !223, !captures !221
  store i64 %i.mv, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !alias.scope !223
  %i.mw = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !223, !nonnull !6, !noundef !6 ; 3 uses
  %i.mx = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !223, !noundef !6 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.my = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.mt, i64 noundef 20, i32 noundef 10)
          to label %.noexc139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !227 ; 2 uses

.noexc139:                                        ; preds = %bb.ds
  %i.mz = extractvalue { i64, i64 } %i.my, 0
  %i.na = trunc nuw i64 %i.mz to i1
  br i1 %i.na, label %bb.dt, label %.loopexit300

bb.dt:                                            ; preds = %.noexc139
  %i.nb = extractvalue { i64, i64 } %i.my, 1      ; 4 uses
  %i.nc = icmp ult i64 %i.mx, %i.nb
  %i.nd = sub nuw nsw i64 %i.mx, %i.nb
  %.not.i.i.i.i.i.i131 = icmp samesign ult i64 %i.nd, 112
  %or.cond.i.i.i.i.i132 = select i1 %i.nc, i1 true, i1 %.not.i.i.i.i.i.i131
  br i1 %or.cond.i.i.i.i.i132, label %.loopexit300, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.nb ; 2 uses
  %i.nf = add nuw nsw i64 %i.nb, 112              ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 108
  %i.nh = invoke { i64, i64 } @_RNvNtNtCseHTIzroA4w0_6object4read7archive16parse_u64_digits(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ng, i64 noundef 4, i32 noundef 10)
          to label %.noexc140 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !228 ; 2 uses

.noexc140:                                        ; preds = %bb.du
  %i.ni = extractvalue { i64, i64 } %i.nh, 0
  %i.nj = trunc nuw i64 %i.ni to i1
  br i1 %i.nj, label %bb.dv, label %.loopexit300

bb.dv:                                            ; preds = %.noexc140
end_hunk_0
