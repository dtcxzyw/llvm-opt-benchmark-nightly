Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_mount-62935f02ee7d47fb.deltalake_mount.5a283505b379d850-cgu.11?download=true
inline.NumInlined: 123
inline.NumDeleted: 81
begin_hunk_0_@_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path20from_filesystem_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7JU2D1aBbVY_15deltalake_mount:bb.a
bb.at:                                            ; preds = %bb.as
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !91
  unreachable

bb.au:                                            ; preds = %bb.ap
  %i.cr = sext i1 %i.cm to i64
  %spec.select.i.i.i = add i64 %.sroa.7.0.i.i.i, %i.cr ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !93
  invoke void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef %spec.select.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
          to label %bb.av unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

bb.av:                                            ; preds = %bb.au
  %.sroa.036.sroa.0.0.copyload.i.i.i = load i64, ptr %i.e, align 8, !noalias !93
  %.sroa.036.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.036.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.036.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !93 ; 33 uses
  %.sroa.036.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.036.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.036.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !93 ; 5 uses
  %.sroa.036.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.036.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.036.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !93 ; 2 uses
  %.sroa.036.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.036.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.036.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !93
  %.sroa.036.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.036.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.036.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !93
  %.sroa.036.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.036.sroa.12.0.copyload.i.i.i = load ptr, ptr %.sroa.036.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !93, !nonnull !3, !noundef !3 ; 23 uses
  %.sroa.036.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.036.sroa.13.0.copyload.i.i.i = load i64, ptr %.sroa.036.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !93 ; 69 uses
  %.sroa.036.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.036.sroa.14.0.copyload.i.i.i = load ptr, ptr %.sroa.036.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !93 ; 5 uses
  %.sroa.036.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.036.sroa.15.0.copyload.i.i.i = load i64, ptr %.sroa.036.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !93 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !93
  %i.cs = trunc nuw i64 %.sroa.036.sroa.0.0.copyload.i.i.i to i1
  %i.ct = add nsw i64 %.sroa.036.sroa.15.0.copyload.i.i.i, -1 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  %.sroa.5148.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %.sroa.4159.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  br i1 %i.cs, label %.split.us.i.i.i, label %.preheader.i.i.preheader.i.i.i

.preheader.i.i.preheader.i.i.i:                   ; preds = %bb.av
  %i.cv = and i64 %.sroa.036.sroa.6.0.copyload.i.i.i, 65536
  %.sroa.9110.sroa.10127.0.extract.trunc.i.not.i.i = icmp eq i64 %i.cv, 0
  %.sroa.9110.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.036.sroa.6.0.copyload.i.i.i to i1 ; 3 uses
  br i1 %.sroa.9110.sroa.10127.0.extract.trunc.i.not.i.i, label %.lr.ph.i.i.i.peel.i.i, label %.sink.split.i.i.peel.i.i

.lr.ph.i.i.i.peel.i.i:                            ; preds = %.preheader.i.i.preheader.i.i.i
  %i.cw = icmp eq i64 %.sroa.036.sroa.4.0.copyload.i.i.i, 0
  br i1 %i.cw, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i.peel.i.i
  %.not.i.i.i.peel.i.i.peel.i.i = icmp ult i64 %.sroa.036.sroa.4.0.copyload.i.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %.not.i.i.i.peel.i.i.peel.i.i, label %bb.ax, label %.split.i.i.i.peel.i.i.peel.i.i

.split.i.i.i.peel.i.i.peel.i.i:                   ; preds = %bb.aw
  %i.cx = icmp eq i64 %.sroa.036.sroa.4.0.copyload.i.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.cx, label %bb.ay, label %.loopexit.i.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.036.sroa.4.0.copyload.i.i.i
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !94, !noalias !95, !noundef !3
  %i.da = icmp sgt i8 %i.cz, -65
  br i1 %i.da, label %bb.ay, label %.loopexit.i.i.i.i

bb.ay:                                            ; preds = %bb.ax, %.split.i.i.i.peel.i.i.peel.i.i, %.lr.ph.i.i.i.peel.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.036.sroa.4.0.copyload.i.i.i ; 4 uses
  %i.dc = icmp samesign eq i64 %.sroa.036.sroa.4.0.copyload.i.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.dc, label %.loopexit19.i.i.peel.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dd = load i8, ptr %i.db, align 1, !noalias !96, !noundef !3 ; 5 uses
  %i.de = icmp sgt i8 %i.dd, -1
  br i1 %i.de, label %bb.ba, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.peel.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.peel.i.i: ; preds = %bb.az
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.dg = and i8 %i.dd, 31
  %i.dh = zext nneg i8 %i.dg to i32               ; 3 uses
  %i.di = add nuw nsw i64 %.sroa.036.sroa.4.0.copyload.i.i.i, 1
  %i.dj = icmp samesign ne i64 %i.di, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.dj)
  %i.dk = load i8, ptr %i.df, align 1, !noalias !96, !noundef !3
  %i.dl = shl nuw nsw i32 %i.dh, 6
  %i.dm = and i8 %i.dk, 63
  %i.dn = zext nneg i8 %i.dm to i32               ; 2 uses
  %i.do = or disjoint i32 %i.dl, %i.dn
  %i.dp = icmp samesign ugt i8 %i.dd, -33
  br i1 %i.dp, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.peel.i.i, label %bb.bb

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.peel.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dr = add nuw nsw i64 %.sroa.036.sroa.4.0.copyload.i.i.i, 2
  %i.ds = icmp samesign ne i64 %i.dr, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.ds)
  %i.dt = load i8, ptr %i.dq, align 1, !noalias !96, !noundef !3
  %i.du = shl nuw nsw i32 %i.dn, 6
  %i.dv = and i8 %i.dt, 63
  %i.dw = zext nneg i8 %i.dv to i32
  %i.dx = or disjoint i32 %i.du, %i.dw            ; 2 uses
  %i.dy = shl nuw nsw i32 %i.dh, 12
  %i.dz = or disjoint i32 %i.dx, %i.dy
  %i.ea = icmp samesign ugt i8 %i.dd, -17
  br i1 %i.ea, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.peel.i.i, label %bb.bb

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.peel.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  %i.ec = add nuw nsw i64 %.sroa.036.sroa.4.0.copyload.i.i.i, 3
  %i.ed = icmp samesign ne i64 %i.ec, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.ed)
  %i.ee = load i8, ptr %i.eb, align 1, !noalias !96, !noundef !3
  %i.ef = shl nuw nsw i32 %i.dh, 18
  %i.eg = and i32 %i.ef, 1835008
  %i.eh = shl nuw nsw i32 %i.dx, 6
  %i.ei = and i8 %i.ee, 63
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = or disjoint i32 %i.eh, %i.ej
  %i.el = or disjoint i32 %i.ek, %i.eg
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.em = zext nneg i8 %i.dd to i32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.peel.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.peel.i.i = phi i32 [ %i.dz, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.peel.i.i ], [ %i.el, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.peel.i.i ], [ %i.do, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.peel.i.i ], [ %i.em, %bb.ba ] ; 4 uses
  %i.en = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel.i.i, 1114112
  call void @llvm.assume(i1 %i.en)
  br i1 %.sroa.9110.sroa.0.0.extract.trunc.i.i.i, label %.sink.split.i.i.peel.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel.i.i, 128
  br i1 %i.eo, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ep = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel.i.i, 2048
  br i1 %i.ep, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.peel.i.i, 65536
  %..i.i.peel.i.i.peel.i.i = select i1 %i.eq, i64 3, i64 4
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %.sroa.01.0.i.i.peel.i.i.peel.i.i = phi i64 [ 2, %bb.bd ], [ %..i.i.peel.i.i.peel.i.i, %bb.be ], [ 1, %bb.bc ]
  %i.er = add i64 %.sroa.01.0.i.i.peel.i.i.peel.i.i, %.sroa.036.sroa.4.0.copyload.i.i.i ; 23 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i.i.i.i.i.peel.i.i = icmp ult i64 %i.er, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i.peel.i.i, label %bb.bh, label %.split.i.i.i.i.i.peel.i.i

.split.i.i.i.i.i.peel.i.i:                        ; preds = %bb.bg
  %i.et = icmp eq i64 %i.er, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.et, label %bb.bi, label %.loopexit.i.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.er
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !94, !noalias !97, !noundef !3
  %i.ew = icmp sgt i8 %i.ev, -65
  br i1 %i.ew, label %bb.bi, label %.loopexit.i.i.i.i

bb.bi:                                            ; preds = %bb.bh, %.split.i.i.i.i.i.peel.i.i, %bb.bf
  %i.ex = icmp samesign eq i64 %i.er, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.ex, label %.sink.split.i.i.peel.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.er
  %i.ez = load i8, ptr %i.ey, align 1, !noalias !98, !noundef !3 ; 3 uses
  %i.fa = icmp sgt i8 %i.ez, -1
  br i1 %i.fa, label %.sink.split.i.i.peel.i.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.peel.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.peel.i.i: ; preds = %bb.bj
  %i.fb = add nuw nsw i64 %i.er, 1
  %i.fc = icmp samesign ne i64 %i.fb, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp samesign ugt i8 %i.ez, -33
  br i1 %i.fd, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.peel.i.i, label %.sink.split.i.i.peel.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.peel.i.i
  %i.fe = add nuw nsw i64 %i.er, 2
  %i.ff = icmp samesign ne i64 %i.fe, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp samesign ugt i8 %i.ez, -17
  br i1 %i.fg, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.peel.i.i, label %.sink.split.i.i.peel.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.peel.i.i
  %i.fh = add nuw nsw i64 %i.er, 3
  %i.fi = icmp samesign ne i64 %i.fh, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.fi)
  br label %.sink.split.i.i.peel.i.i

.loopexit19.i.i.peel.i.i:                         ; preds = %bb.ay
  br i1 %.sroa.9110.sroa.0.0.extract.trunc.i.i.i, label %.sink.split.i.i.peel.i.i, label %bb.bk

bb.bk:                                            ; preds = %.loopexit19.i.i.peel.i.i
  br label %.sink.split.i.i.peel.i.i

.sink.split.i.i.peel.i.i:                         ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.peel.i.i, %bb.bj, %bb.bk, %.loopexit19.i.i.peel.i.i, %bb.bi, %bb.bb, %.preheader.i.i.preheader.i.i.i
  %.sroa.9110.sroa.0.4.i.peel.i.i = phi i1 [ true, %bb.bk ], [ false, %.loopexit19.i.i.peel.i.i ], [ false, %bb.bb ], [ %.sroa.9110.sroa.0.0.extract.trunc.i.i.i, %.preheader.i.i.preheader.i.i.i ], [ false, %bb.bi ], [ false, %bb.bj ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.peel.i.i ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.peel.i.i ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.peel.i.i ] ; 2 uses
  %.sroa.51.2.i.peel.i.i = phi i1 [ true, %bb.bk ], [ false, %.loopexit19.i.i.peel.i.i ], [ false, %bb.bb ], [ true, %.preheader.i.i.preheader.i.i.i ], [ false, %bb.bi ], [ false, %bb.bj ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.peel.i.i ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.peel.i.i ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.peel.i.i ]
  %.sroa.41.2.i.peel.i.i = phi i64 [ 0, %bb.bk ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.loopexit19.i.i.peel.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %bb.bb ], [ 0, %.preheader.i.i.preheader.i.i.i ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.bi ], [ %i.er, %bb.bj ], [ %i.er, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.peel.i.i ], [ %i.er, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.peel.i.i ], [ %i.er, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.peel.i.i ] ; 4 uses
  %.sroa.5.5.i.peel.i.i = phi i64 [ %.sroa.036.sroa.4.0.copyload.i.i.i, %bb.bk ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.loopexit19.i.i.peel.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %bb.bb ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.preheader.i.i.preheader.i.i.i ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.bi ], [ %i.er, %bb.bj ], [ %i.er, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.peel.i.i ], [ %i.er, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.peel.i.i ], [ %i.er, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.peel.i.i ] ; 15 uses
  %spec.select.pn.i.peel.i.i = phi i64 [ %spec.select.i.i.i, %bb.bk ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.loopexit19.i.i.peel.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %bb.bb ], [ %spec.select.i.i.i, %.preheader.i.i.preheader.i.i.i ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.bi ], [ %i.er, %bb.bj ], [ %i.er, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.peel.i.i ], [ %i.er, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.peel.i.i ], [ %i.er, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.peel.i.i ] ; 2 uses
  %i.fj = icmp eq i64 %spec.select.pn.i.peel.i.i, 0
  br i1 %i.fj, label %.split261.us.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.sink.split.i.i.peel.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !93
  invoke void @_RNvMNtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.036.sroa.12.0.copyload.i.i.i, i64 noundef %spec.select.pn.i.peel.i.i)
          to label %bb.bm unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

bb.bm:                                            ; preds = %bb.bl
  %i.fk = load i64, ptr %i.f, align 8, !range !4, !noalias !93, !noundef !3
  %.not77.i.peel.i.i = icmp eq i64 %i.fk, -9223372036854775808
  br i1 %.not77.i.peel.i.i, label %bb.bn, label %.split264.us.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %.sroa.0147.0.copyload.i.peel.i.i = load ptr, ptr %i.cu, align 8, !noalias !93 ; 2 uses
  %i.fl = load <2 x i64>, ptr %.sroa.5148.0..sroa_idx.i.i.i, align 8, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !93
  store ptr %.sroa.0147.0.copyload.i.peel.i.i, ptr %i.g, align 8, !noalias !93
  store <2 x i64> %i.fl, ptr %.sroa.4159.0..sroa_idx.i.i.i, align 8, !noalias !93
  %i.fm = icmp eq ptr %.sroa.0147.0.copyload.i.peel.i.i, inttoptr (i64 -9223372036854775808 to ptr)
  br i1 %i.fm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.peel.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i.peel.i.i unwind label %.split266.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i.peel.i.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.peel.i.i unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.peel.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i.peel.i.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !93
  br i1 %.sroa.51.2.i.peel.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.peel.i.i
  %i.fn = icmp eq i64 %.sroa.5.5.i.peel.i.i, 0
  br i1 %i.fn, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.preheader.i
  %.not.i.i.i.peel.i.i.i.peel.i = icmp ult i64 %.sroa.5.5.i.peel.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %.not.i.i.i.peel.i.i.i.peel.i, label %bb.bq, label %.split.i.i.i.peel.i.i.i.peel.i

.split.i.i.i.peel.i.i.i.peel.i:                   ; preds = %bb.bp
  %i.fo = icmp eq i64 %.sroa.5.5.i.peel.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.fo, label %bb.br, label %.loopexit.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.5.5.i.peel.i.i
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !94, !noalias !95, !noundef !3
  %i.fr = icmp sgt i8 %i.fq, -65
  br i1 %i.fr, label %bb.br, label %.loopexit.i.i.i.i

bb.br:                                            ; preds = %bb.bq, %.split.i.i.i.peel.i.i.i.peel.i, %.lr.ph.i.i.i.i.preheader.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.5.5.i.peel.i.i ; 4 uses
  %i.ft = icmp samesign eq i64 %.sroa.5.5.i.peel.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.ft, label %.loopexit19.i.i.i.peel.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fu = load i8, ptr %i.fs, align 1, !noalias !96, !noundef !3 ; 5 uses
  %i.fv = icmp sgt i8 %i.fu, -1
  br i1 %i.fv, label %bb.bt, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.peel.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.peel.i: ; preds = %bb.bs
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  %i.fx = and i8 %i.fu, 31
  %i.fy = zext nneg i8 %i.fx to i32               ; 3 uses
  %i.fz = add nuw nsw i64 %.sroa.5.5.i.peel.i.i, 1
  %i.ga = icmp samesign ne i64 %i.fz, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.ga)
  %i.gb = load i8, ptr %i.fw, align 1, !noalias !96, !noundef !3
  %i.gc = shl nuw nsw i32 %i.fy, 6
  %i.gd = and i8 %i.gb, 63
  %i.ge = zext nneg i8 %i.gd to i32               ; 2 uses
  %i.gf = or disjoint i32 %i.gc, %i.ge
  %i.gg = icmp samesign ugt i8 %i.fu, -33
  br i1 %i.gg, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.peel.i, label %bb.bu

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.peel.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  %i.gi = add nuw nsw i64 %.sroa.5.5.i.peel.i.i, 2
  %i.gj = icmp samesign ne i64 %i.gi, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.gj)
  %i.gk = load i8, ptr %i.gh, align 1, !noalias !96, !noundef !3
  %i.gl = shl nuw nsw i32 %i.ge, 6
  %i.gm = and i8 %i.gk, 63
  %i.gn = zext nneg i8 %i.gm to i32
  %i.go = or disjoint i32 %i.gl, %i.gn            ; 2 uses
  %i.gp = shl nuw nsw i32 %i.fy, 12
  %i.gq = or disjoint i32 %i.go, %i.gp
  %i.gr = icmp samesign ugt i8 %i.fu, -17
  br i1 %i.gr, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.peel.i, label %bb.bu

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.peel.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fs, i64 3
  %i.gt = add nuw nsw i64 %.sroa.5.5.i.peel.i.i, 3
  %i.gu = icmp samesign ne i64 %i.gt, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.gu)
  %i.gv = load i8, ptr %i.gs, align 1, !noalias !96, !noundef !3
  %i.gw = shl nuw nsw i32 %i.fy, 18
  %i.gx = and i32 %i.gw, 1835008
  %i.gy = shl nuw nsw i32 %i.go, 6
  %i.gz = and i8 %i.gv, 63
  %i.ha = zext nneg i8 %i.gz to i32
  %i.hb = or disjoint i32 %i.gy, %i.ha
  %i.hc = or disjoint i32 %i.hb, %i.gx
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.hd = zext nneg i8 %i.fu to i32
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel.i = phi i32 [ %i.gq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.peel.i ], [ %i.hc, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.peel.i ], [ %i.gf, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.peel.i ], [ %i.hd, %bb.bt ] ; 4 uses
  %i.he = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.he)
  br i1 %.sroa.9110.sroa.0.4.i.peel.i.i, label %.sink.split.i.i.i.peel.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel.i, 128
  br i1 %i.hf, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel.i, 2048
  br i1 %i.hg, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.peel.i, 65536
  %..i.i.peel.i.i.i.peel.i = select i1 %i.hh, i64 3, i64 4
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %.sroa.01.0.i.i.peel.i.i.i.peel.i = phi i64 [ 2, %bb.bw ], [ %..i.i.peel.i.i.i.peel.i, %bb.bx ], [ 1, %bb.bv ]
  %i.hi = add i64 %.sroa.01.0.i.i.peel.i.i.i.peel.i, %.sroa.5.5.i.peel.i.i ; 23 uses
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.not.i.i.i.i.i.i.peel.i = icmp ult i64 %i.hi, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i.i.peel.i, label %bb.ca, label %.split.i.i.i.i.i.i.peel.i

.split.i.i.i.i.i.i.peel.i:                        ; preds = %bb.bz
  %i.hk = icmp eq i64 %i.hi, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.hk, label %bb.cb, label %.loopexit.i.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.hi
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !94, !noalias !97, !noundef !3
  %i.hn = icmp sgt i8 %i.hm, -65
  br i1 %i.hn, label %bb.cb, label %.loopexit.i.i.i.i

bb.cb:                                            ; preds = %bb.ca, %.split.i.i.i.i.i.i.peel.i, %bb.by
  %i.ho = icmp samesign eq i64 %i.hi, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.ho, label %.sink.split.i.i.i.peel.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.hi
  %i.hq = load i8, ptr %i.hp, align 1, !noalias !98, !noundef !3 ; 3 uses
  %i.hr = icmp sgt i8 %i.hq, -1
  br i1 %i.hr, label %.sink.split.i.i.i.peel.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i: ; preds = %bb.cc
  %i.hs = add nuw nsw i64 %i.hi, 1
  %i.ht = icmp samesign ne i64 %i.hs, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.ht)
  %i.hu = icmp samesign ugt i8 %i.hq, -33
  br i1 %i.hu, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i, label %.sink.split.i.i.i.peel.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i
  %i.hv = add nuw nsw i64 %i.hi, 2
  %i.hw = icmp samesign ne i64 %i.hv, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.hw)
  %i.hx = icmp samesign ugt i8 %i.hq, -17
  br i1 %i.hx, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.peel.i, label %.sink.split.i.i.i.peel.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i
  %i.hy = add nuw nsw i64 %i.hi, 3
  %i.hz = icmp samesign ne i64 %i.hy, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.hz)
  br label %.sink.split.i.i.i.peel.i

.loopexit19.i.i.i.peel.i:                         ; preds = %bb.br
  br i1 %.sroa.9110.sroa.0.4.i.peel.i.i, label %.sink.split.i.i.i.peel.i, label %bb.cd

bb.cd:                                            ; preds = %.loopexit19.i.i.i.peel.i
  br label %.sink.split.i.i.i.peel.i

.sink.split.i.i.i.peel.i:                         ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.peel.i, %bb.cc, %bb.cd, %.loopexit19.i.i.i.peel.i, %bb.cb, %bb.bu
  %.sroa.9110.sroa.0.4.i.i.peel.i = phi i1 [ true, %bb.cd ], [ false, %.loopexit19.i.i.i.peel.i ], [ false, %bb.bu ], [ false, %bb.cb ], [ false, %bb.cc ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.peel.i ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i ]
  %.sroa.41.2.i.i.peel.i = phi i64 [ %.sroa.41.2.i.peel.i.i, %bb.cd ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.loopexit19.i.i.i.peel.i ], [ %.sroa.5.5.i.peel.i.i, %bb.bu ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cb ], [ %i.hi, %bb.cc ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.peel.i ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i ]
  %.sroa.5.5.i.i.peel.i = phi i64 [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cd ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.loopexit19.i.i.i.peel.i ], [ %.sroa.5.5.i.peel.i.i, %bb.bu ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cb ], [ %i.hi, %bb.cc ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.peel.i ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i ]
  %spec.select.pn.i.i.peel.i = phi i64 [ %spec.select.i.i.i, %bb.cd ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.loopexit19.i.i.i.peel.i ], [ %.sroa.5.5.i.peel.i.i, %bb.bu ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cb ], [ %i.hi, %bb.cc ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.peel.i ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.peel.i ], [ %i.hi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.peel.i ] ; 2 uses
  %i.ia = icmp eq i64 %spec.select.pn.i.i.peel.i, %.sroa.41.2.i.peel.i.i
  br i1 %i.ia, label %.split261.us.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %.sink.split.i.i.i.peel.i
  %.sroa.4.1.i.i.i.peel.i = sub nuw i64 %spec.select.pn.i.i.peel.i, %.sroa.41.2.i.peel.i.i
  %.sroa.0.1.i.i.i.peel.i = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.41.2.i.peel.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !93
end_hunk_0
begin_hunk_1_@_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path20from_filesystem_pathNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs7JU2D1aBbVY_15deltalake_mount:bb.a
  %invariant.op = sub i64 1, %.sroa.036.sroa.4.0.copyload.i.i.i
  %exitcond.not.i100.us.i.i.i218.not = icmp ult i64 %.sroa.036.sroa.4.0.copyload.i.i.i, %.sroa.036.sroa.15.0.copyload.i.i.i
  %invariant.op284 = sub i64 1, %.sroa.036.sroa.4.0.copyload.i.i.i
  %.not192.us.i.us.i.i221 = icmp eq i64 %.sroa.036.sroa.4.0.copyload.i.i.i, 0
  br label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i, %.split.us.i.i.i
  %.sroa.19.0238.us.i.i.i = phi i64 [ %.sroa.036.sroa.8.0.copyload.i.i.i, %.split.us.i.i.i ], [ %.sroa.19.2.us.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i ] ; 3 uses
  %.sroa.31114.0237.us.i.i.i = phi i64 [ %.sroa.036.sroa.10.0.copyload.i.i.i, %.split.us.i.i.i ], [ %.sroa.31114.2.us.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i ] ; 3 uses
  %.sroa.41.0236.us.i.i.i = phi i64 [ 0, %.split.us.i.i.i ], [ %.sroa.41.2.us.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i ] ; 7 uses
  %i.ig = icmp eq i64 %.sroa.31114.0237.us.i.i.i, -1
  %i.ih = add i64 %.sroa.19.0238.us.i.i.i, %i.ct  ; 3 uses
  %i.ii = icmp ult i64 %i.ih, %.sroa.036.sroa.13.0.copyload.i.i.i ; 2 uses
  br i1 %i.ig, label %bb.cs, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  br i1 %i.ii, label %.lr.ph.i.us.i.i.i, label %.sink.split.i.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %bb.cj, %.sink.split.i87.us.i.i.i
  %i.ij = phi i64 [ %.sink.i.us.i.i.i, %.sink.split.i87.us.i.i.i ], [ %.sroa.31114.0237.us.i.i.i, %bb.cj ] ; 3 uses
  %i.ik = phi i64 [ %i.jn, %.sink.split.i87.us.i.i.i ], [ %i.ih, %bb.cj ]
  %i.il = phi i64 [ %.ph71.i.us.i.i.i, %.sink.split.i87.us.i.i.i ], [ %.sroa.19.0238.us.i.i.i, %bb.cj ] ; 8 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.ik
  %i.in = load i8, ptr %i.im, align 1, !alias.scope !99, !noalias !91, !noundef !3
  %i.io = and i8 %i.in, 63
  %i.ip = zext nneg i8 %i.io to i64
  %i.iq = shl nuw i64 1, %i.ip
  %i.ir = and i64 %i.iq, %.sroa.036.sroa.7.0.copyload.i.i.i
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %bb.cr, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.us.i.i.i
  %.sroa.0.0.i.i.us.i.i.i = call i64 @llvm.umax.i64(i64 %i.ij, i64 %.sroa.036.sroa.4.0.copyload.i.i.i) ; 4 uses
  %umax49.i.us.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.15.0.copyload.i.i.i)
  %exitcond.not.i.us.i.i.i213.not = icmp ult i64 %.sroa.0.0.i.i.us.i.i.i, %.sroa.036.sroa.15.0.copyload.i.i.i
  br i1 %exitcond.not.i.us.i.i.i213.not, label %.lr.ph, label %.preheader193.us.i.i.i.preheader

bb.cl:                                            ; preds = %bb.cm
  %i.it = add nuw i64 %.sroa.02.0.i.us.i.i.i214, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i = icmp eq i64 %i.it, %umax49.i.us.i.i.i
  br i1 %exitcond.not.i.us.i.i.i, label %.preheader193.us.i.i.i.preheader, label %.lr.ph

.preheader193.us.i.i.i.preheader:                 ; preds = %bb.cl, %bb.ck
  %i.iu = icmp ult i64 %i.ij, %.sroa.036.sroa.4.0.copyload.i.i.i
  br i1 %i.iu, label %.lr.ph216, label %.preheader193.us.i.i.i.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.ck, %bb.cl
  %.sroa.02.0.i.us.i.i.i214 = phi i64 [ %i.it, %bb.cl ], [ %.sroa.0.0.i.i.us.i.i.i, %bb.ck ] ; 4 uses
  %i.iv = add i64 %.sroa.02.0.i.us.i.i.i214, %i.il ; 2 uses
  %i.iw = icmp ult i64 %i.iv, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.iw, label %bb.cm, label %.split242.us.i.i.i

bb.cm:                                            ; preds = %.lr.ph
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %.sroa.02.0.i.us.i.i.i214
  %i.iy = load i8, ptr %i.ix, align 1, !alias.scope !100, !noalias !91, !noundef !3
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.iv
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !99, !noalias !91, !noundef !3
  %.not21.i.us.i.i.i = icmp eq i8 %i.iy, %i.ja
  br i1 %.not21.i.us.i.i.i, label %bb.cl, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.reass.i.reass.i.reass.i.reass.reass = add i64 %i.il, %invariant.op
  %i.jb = add i64 %.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.us.i.i.i214
  br label %.sink.split.i87.us.i.i.i

.preheader193.us.i.i.i:                           ; preds = %bb.cp
  %i.jc = icmp ult i64 %i.ij, %i.jd
  br i1 %i.jc, label %.lr.ph216, label %.preheader193.us.i.i.i.preheader._crit_edge

.lr.ph216:                                        ; preds = %.preheader193.us.i.i.i.preheader, %.preheader193.us.i.i.i
  %.sroa.2.0.i.us.i.i.i215 = phi i64 [ %i.jd, %.preheader193.us.i.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.preheader193.us.i.i.i.preheader ]
  %i.jd = add i64 %.sroa.2.0.i.us.i.i.i215, -1    ; 6 uses
  %i.je = icmp ult i64 %i.jd, %.sroa.036.sroa.15.0.copyload.i.i.i
  br i1 %i.je, label %bb.co, label %.split251.us.invoke.i.i.i

bb.co:                                            ; preds = %.lr.ph216
  %i.jf = add i64 %i.jd, %i.il                    ; 3 uses
  %i.jg = icmp ult i64 %i.jf, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.jg, label %bb.cp, label %.split251.us.invoke.i.i.i

bb.cp:                                            ; preds = %bb.co
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %i.jd
  %i.ji = load i8, ptr %i.jh, align 1, !alias.scope !100, !noalias !91, !noundef !3
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.jf
  %i.jk = load i8, ptr %i.jj, align 1, !alias.scope !99, !noalias !91, !noundef !3
  %.not.i88.us.i.i.i = icmp eq i8 %i.ji, %i.jk
  br i1 %.not.i88.us.i.i.i, label %.preheader193.us.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jl = add i64 %i.il, %.sroa.036.sroa.6.0.copyload.i.i.i
  br label %.sink.split.i87.us.i.i.i

bb.cr:                                            ; preds = %.lr.ph.i.us.i.i.i
  %i.jm = add i64 %i.il, %.sroa.036.sroa.15.0.copyload.i.i.i
  br label %.sink.split.i87.us.i.i.i

.sink.split.i87.us.i.i.i:                         ; preds = %bb.cr, %bb.cq, %bb.cn
  %.sink.i.us.i.i.i = phi i64 [ %i.ie, %bb.cq ], [ 0, %bb.cn ], [ 0, %bb.cr ] ; 2 uses
  %.ph71.i.us.i.i.i = phi i64 [ %i.jl, %bb.cq ], [ %i.jb, %bb.cn ], [ %i.jm, %bb.cr ] ; 2 uses
  %i.jn = add i64 %.ph71.i.us.i.i.i, %i.ct        ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.jo, label %.lr.ph.i.us.i.i.i, label %.sink.split.i.us.i.i.i

.preheader193.us.i.i.i.preheader._crit_edge:      ; preds = %.preheader193.us.i.i.i.preheader, %.preheader193.us.i.i.i
  %i.jp = add i64 %i.il, %.sroa.036.sroa.15.0.copyload.i.i.i ; 2 uses
  br label %.sink.split.i.us.i.i.i

bb.cs:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  br i1 %i.ii, label %.lr.ph.i95.us.i.i.i, label %.sink.split.i.us.i.i.i

.lr.ph.i95.us.i.i.i:                              ; preds = %bb.cs, %bb.cx
  %i.jq = phi i64 [ %i.kr, %bb.cx ], [ %i.ih, %bb.cs ]
  %i.jr = phi i64 [ %i.kq, %bb.cx ], [ %.sroa.19.0238.us.i.i.i, %bb.cs ] ; 8 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.jq
  %i.jt = load i8, ptr %i.js, align 1, !alias.scope !101, !noalias !91, !noundef !3
  %i.ju = and i8 %i.jt, 63
  %i.jv = zext nneg i8 %i.ju to i64
  %i.jw = shl nuw i64 1, %i.jv
  %i.jx = and i64 %i.jw, %.sroa.036.sroa.7.0.copyload.i.i.i
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %bb.cw, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i95.us.i.i.i
  br i1 %exitcond.not.i100.us.i.i.i218.not, label %.lr.ph220, label %.preheader.us.i.preheader.i.i

.preheader.i.i.i:                                 ; preds = %bb.cu
  %i.jz = add nuw i64 %.sroa.02.0.i99.us.i.i.i219, 1 ; 2 uses
  %exitcond.not.i100.us.i.i.i = icmp eq i64 %i.jz, %umax49.i98.us.i.i.i
  br i1 %exitcond.not.i100.us.i.i.i, label %.preheader.us.i.preheader.i.i, label %.lr.ph220

.preheader.us.i.preheader.i.i:                    ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader
  br i1 %.first_iter.i.fr.i.i, label %.preheader.us.i.us.i.i.preheader, label %.preheader.us.i.preheader.split.i.i

.preheader.us.i.us.i.i.preheader:                 ; preds = %.preheader.us.i.preheader.i.i
  br i1 %.not192.us.i.us.i.i221, label %.split.us.i.i, label %.lr.ph223

.preheader.us.i.us.i.i:                           ; preds = %bb.ct
  %.not192.us.i.us.i.i = icmp eq i64 %i.ka, 0
  br i1 %.not192.us.i.us.i.i, label %.split.us.i.i, label %.lr.ph223

.lr.ph223:                                        ; preds = %.preheader.us.i.us.i.i.preheader, %.preheader.us.i.us.i.i
  %.sroa.2.0.i103.us.i.us.i.i222 = phi i64 [ %i.ka, %.preheader.us.i.us.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.preheader.us.i.us.i.i.preheader ]
  %i.ka = add i64 %.sroa.2.0.i103.us.i.us.i.i222, -1 ; 4 uses
  %i.kb = add i64 %i.ka, %i.jr                    ; 3 uses
  %i.kc = icmp ult i64 %i.kb, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.kc, label %bb.ct, label %.split251.us.invoke.i.i.i

bb.ct:                                            ; preds = %.lr.ph223
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %i.ka
  %i.ke = load i8, ptr %i.kd, align 1, !alias.scope !102, !noalias !91, !noundef !3
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.kb
  %i.kg = load i8, ptr %i.kf, align 1, !alias.scope !101, !noalias !91, !noundef !3
  %.not.i104.us.i.us.i.i = icmp eq i8 %i.ke, %i.kg
  br i1 %.not.i104.us.i.us.i.i, label %.preheader.us.i.us.i.i, label %.split80.us.i.i

.split80.us.i.i:                                  ; preds = %bb.ct
  %i.kh = add i64 %i.jr, %.sroa.036.sroa.6.0.copyload.i.i.i
  br label %bb.cx

.preheader.us.i.preheader.split.i.i:              ; preds = %.preheader.us.i.preheader.i.i
  br i1 %.not192.us.i.i.i, label %.split.us.i.i, label %.split251.us.invoke.i.i.i

.lr.ph220:                                        ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.sroa.02.0.i99.us.i.i.i219 = phi i64 [ %i.jz, %.preheader.i.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.preheader.i.i.i.preheader ] ; 4 uses
  %i.ki = add i64 %.sroa.02.0.i99.us.i.i.i219, %i.jr ; 2 uses
  %i.kj = icmp ult i64 %i.ki, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.kj, label %bb.cu, label %.split251.us.i.i.i

bb.cu:                                            ; preds = %.lr.ph220
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.14.0.copyload.i.i.i, i64 %.sroa.02.0.i99.us.i.i.i219
  %i.kl = load i8, ptr %i.kk, align 1, !alias.scope !102, !noalias !91, !noundef !3
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.ki
  %i.kn = load i8, ptr %i.km, align 1, !alias.scope !101, !noalias !91, !noundef !3
  %.not21.i102.us.i.i.i = icmp eq i8 %i.kl, %i.kn
  br i1 %.not21.i102.us.i.i.i, label %.preheader.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.reass356.i.reass.i.reass.i.reass.reass = add i64 %i.jr, %invariant.op284
  %i.ko = add i64 %.reass356.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i99.us.i.i.i219
  br label %bb.cx

bb.cw:                                            ; preds = %.lr.ph.i95.us.i.i.i
  %i.kp = add i64 %i.jr, %.sroa.036.sroa.15.0.copyload.i.i.i
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %.split80.us.i.i
  %i.kq = phi i64 [ %i.ko, %bb.cv ], [ %i.kp, %bb.cw ], [ %i.kh, %.split80.us.i.i ] ; 2 uses
  %i.kr = add i64 %i.kq, %i.ct                    ; 2 uses
  %i.ks = icmp ult i64 %i.kr, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.ks, label %.lr.ph.i95.us.i.i.i, label %.sink.split.i.us.i.i.i

.split.us.i.i:                                    ; preds = %.preheader.us.i.us.i.i.preheader, %.preheader.us.i.us.i.i, %.preheader.us.i.preheader.split.i.i
  %i.kt = add i64 %i.jr, %.sroa.036.sroa.15.0.copyload.i.i.i ; 2 uses
  br label %.sink.split.i.us.i.i.i

.sink.split.i.us.i.i.i:                           ; preds = %.sink.split.i87.us.i.i.i, %bb.cx, %.split.us.i.i, %bb.cs, %.preheader193.us.i.i.i.preheader._crit_edge, %bb.cj
  %.sroa.51.2.us.i.i.i = phi i1 [ false, %.preheader193.us.i.i.i.preheader._crit_edge ], [ false, %.split.us.i.i ], [ true, %bb.cx ], [ true, %bb.cs ], [ true, %bb.cj ], [ true, %.sink.split.i87.us.i.i.i ]
  %.sroa.41.2.us.i.i.i = phi i64 [ %i.jp, %.preheader193.us.i.i.i.preheader._crit_edge ], [ %i.kt, %.split.us.i.i ], [ %.sroa.41.0236.us.i.i.i, %bb.cx ], [ %.sroa.41.0236.us.i.i.i, %bb.cs ], [ %.sroa.41.0236.us.i.i.i, %bb.cj ], [ %.sroa.41.0236.us.i.i.i, %.sink.split.i87.us.i.i.i ]
  %.sroa.31114.2.us.i.i.i = phi i64 [ 0, %.preheader193.us.i.i.i.preheader._crit_edge ], [ -1, %.split.us.i.i ], [ -1, %bb.cx ], [ -1, %bb.cs ], [ %.sroa.31114.0237.us.i.i.i, %bb.cj ], [ %.sink.i.us.i.i.i, %.sink.split.i87.us.i.i.i ]
  %.sroa.19.2.us.i.i.i = phi i64 [ %i.jp, %.preheader193.us.i.i.i.preheader._crit_edge ], [ %i.kt, %.split.us.i.i ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cx ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cs ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.cj ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.sink.split.i87.us.i.i.i ]
  %spec.select.pn.us.i.i.i = phi i64 [ %i.il, %.preheader193.us.i.i.i.preheader._crit_edge ], [ %i.jr, %.split.us.i.i ], [ %spec.select.i.i.i, %bb.cx ], [ %spec.select.i.i.i, %bb.cs ], [ %spec.select.i.i.i, %bb.cj ], [ %spec.select.i.i.i, %.sink.split.i87.us.i.i.i ] ; 2 uses
  %i.ku = icmp eq i64 %spec.select.pn.us.i.i.i, %.sroa.41.0236.us.i.i.i
  br i1 %i.ku, label %.split261.us.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %.sink.split.i.us.i.i.i
  %.sroa.4.1.i.us.i.i.i = sub nuw i64 %spec.select.pn.us.i.i.i, %.sroa.41.0236.us.i.i.i
  %.sroa.0.1.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.41.0236.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !93
  invoke void @_RNvMNtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.us.i.i.i, i64 noundef %.sroa.4.1.i.us.i.i.i)
          to label %bb.cz unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

bb.cz:                                            ; preds = %bb.cy
  %i.kv = load i64, ptr %i.f, align 8, !range !4, !noalias !93, !noundef !3
  %.not77.us.i.i.i = icmp eq i64 %i.kv, -9223372036854775808
  br i1 %.not77.us.i.i.i, label %bb.da, label %.split264.us.i.i.i

bb.da:                                            ; preds = %bb.cz
  %.sroa.0147.0.copyload.us.i.i.i = load ptr, ptr %i.cu, align 8, !noalias !93 ; 2 uses
  %i.kw = load <2 x i64>, ptr %.sroa.5148.0..sroa_idx.i.i.i, align 8, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !93
  store ptr %.sroa.0147.0.copyload.us.i.i.i, ptr %i.g, align 8, !noalias !93
  store <2 x i64> %i.kw, ptr %.sroa.4159.0..sroa_idx.i.i.i, align 8, !noalias !93
  %i.kx = icmp eq ptr %.sroa.0147.0.copyload.us.i.i.i, inttoptr (i64 -9223372036854775808 to ptr)
  br i1 %i.kx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.us.i.i.i unwind label %.split266.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.us.i.i.i: ; preds = %bb.db
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.us.i.i.i, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !93
  br i1 %.sroa.51.2.us.i.i.i, label %.thread.i.i.i, label %bb.ci

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.us.i.i.i, %bb.cy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i.i.i, %bb.dv, %.invoke.i.i.i, %.split261.us.i.i.i, %.thread.i.i.i, %.split251.us.invoke.i.i.i, %.loopexit.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i.i.peel.i, %bb.ce, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i.peel.i.i, %bb.bl, %bb.au, %bb.ap, %bb.am, %bb.al
  %lpad.loopexit.split-lp258 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.peel.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i
  %.sroa.5.0239.i.i.i = phi i64 [ %.sroa.5.5.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i ], [ %.sroa.5.5.i.i.peel.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.peel.i ] ; 12 uses
  %.sroa.41.0236.i.i.i = phi i64 [ %.sroa.41.2.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i ], [ %.sroa.41.2.i.i.peel.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.peel.i ] ; 4 uses
  %i.ky = icmp eq i64 %.sroa.5.0239.i.i.i, 0
  br i1 %i.ky, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i = icmp ult i64 %.sroa.5.0239.i.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %.not.i.i.i.peel.i.i.i.i, label %bb.dd, label %.split.i.i.i.peel.i.i.i.i

.split.i.i.i.peel.i.i.i.i:                        ; preds = %bb.dc
  %i.kz = icmp eq i64 %.sroa.5.0239.i.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.kz, label %bb.de, label %.loopexit.i.i.i.i

bb.dd:                                            ; preds = %bb.dc
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.5.0239.i.i.i
  %i.lb = load i8, ptr %i.la, align 1, !alias.scope !94, !noalias !95, !noundef !3
  %i.lc = icmp sgt i8 %i.lb, -65
  br i1 %i.lc, label %bb.de, label %.loopexit.i.i.i.i

bb.de:                                            ; preds = %bb.dd, %.split.i.i.i.peel.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.5.0239.i.i.i ; 4 uses
  %i.le = icmp samesign eq i64 %.sroa.5.0239.i.i.i, %.sroa.036.sroa.13.0.copyload.i.i.i ; 2 uses
  br i1 %i.le, label %.sink.split.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.lf = load i8, ptr %i.ld, align 1, !noalias !96, !noundef !3 ; 4 uses
  %i.lg = icmp sgt i8 %i.lf, -1
  br i1 %i.lg, label %.thread.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i: ; preds = %bb.df
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 1
  %i.li = and i8 %i.lf, 31
  %i.lj = zext nneg i8 %i.li to i32               ; 3 uses
  %i.lk = add nuw nsw i64 %.sroa.5.0239.i.i.i, 1
  %i.ll = icmp samesign ne i64 %i.lk, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.ll)
  %i.lm = load i8, ptr %i.lh, align 1, !noalias !96, !noundef !3
  %i.ln = shl nuw nsw i32 %i.lj, 6
  %i.lo = and i8 %i.lm, 63
  %i.lp = zext nneg i8 %i.lo to i32               ; 2 uses
  %i.lq = or disjoint i32 %i.ln, %i.lp
  %i.lr = icmp samesign ugt i8 %i.lf, -33
  br i1 %i.lr, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i, label %bb.dg

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %i.lt = add nuw nsw i64 %.sroa.5.0239.i.i.i, 2
  %i.lu = icmp samesign ne i64 %i.lt, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.lu)
  %i.lv = load i8, ptr %i.ls, align 1, !noalias !96, !noundef !3
  %i.lw = shl nuw nsw i32 %i.lp, 6
  %i.lx = and i8 %i.lv, 63
  %i.ly = zext nneg i8 %i.lx to i32
  %i.lz = or disjoint i32 %i.lw, %i.ly            ; 2 uses
  %i.ma = shl nuw nsw i32 %i.lj, 12
  %i.mb = or disjoint i32 %i.lz, %i.ma
  %i.mc = icmp samesign ugt i8 %i.lf, -17
  br i1 %i.mc, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.i, label %bb.dg

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.ld, i64 3
  %i.me = add nuw nsw i64 %.sroa.5.0239.i.i.i, 3
  %i.mf = icmp samesign ne i64 %i.me, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.mf)
  %i.mg = load i8, ptr %i.md, align 1, !noalias !96, !noundef !3
  %i.mh = shl nuw nsw i32 %i.lj, 18
  %i.mi = and i32 %i.mh, 1835008
  %i.mj = shl nuw nsw i32 %i.lz, 6
  %i.mk = and i8 %i.mg, 63
  %i.ml = zext nneg i8 %i.mk to i32
  %i.mm = or disjoint i32 %i.mj, %i.ml
  %i.mn = or disjoint i32 %i.mm, %i.mi
  br label %bb.dg

bb.dg:                                            ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i = phi i32 [ %i.mb, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.peel.i.i.i.i ], [ %i.mn, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.peel.i.i.i.i ], [ %i.lq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.peel.i.i.i.i ] ; 4 uses
  %i.mo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.mo)
  %i.mp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 128
  br i1 %i.mp, label %.thread.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.mq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 2048
  br i1 %i.mq, label %.thread.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.mr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i = select i1 %i.mr, i64 3, i64 4
  br label %.thread.i

.thread.i:                                        ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df
  %.sroa.01.0.i.i.peel.i.i.i.i = phi i64 [ 2, %bb.dh ], [ %..i.i.peel.i.i.i.i, %bb.di ], [ 1, %bb.dg ], [ 1, %bb.df ]
  %i.ms = add i64 %.sroa.01.0.i.i.peel.i.i.i.i, %.sroa.5.0239.i.i.i ; 23 uses
  %i.mt = icmp eq i64 %i.ms, 0
  br i1 %i.mt, label %bb.dl, label %bb.dj

bb.dj:                                            ; preds = %.thread.i
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.ms, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dk, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %bb.dj
  %i.mu = icmp eq i64 %i.ms, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.mu, label %bb.dl, label %.loopexit.i.i.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.ms
  %i.mw = load i8, ptr %i.mv, align 1, !alias.scope !94, !noalias !97, !noundef !3
  %i.mx = icmp sgt i8 %i.mw, -65
  br i1 %i.mx, label %bb.dl, label %.loopexit.i.i.i.i

bb.dl:                                            ; preds = %bb.dk, %.split.i.i.i.i.i.i.i, %.thread.i
  %i.my = icmp samesign eq i64 %i.ms, %.sroa.036.sroa.13.0.copyload.i.i.i
  br i1 %i.my, label %.sink.split.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %i.ms
  %i.na = load i8, ptr %i.mz, align 1, !noalias !98, !noundef !3 ; 3 uses
  %i.nb = icmp sgt i8 %i.na, -1
  br i1 %i.nb, label %.sink.split.i.i.i.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.i: ; preds = %bb.dm
  %i.nc = add nuw nsw i64 %i.ms, 1
  %i.nd = icmp samesign ne i64 %i.nc, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.nd)
  %i.ne = icmp samesign ugt i8 %i.na, -33
  br i1 %i.ne, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.i
  %i.nf = add nuw nsw i64 %i.ms, 2
  %i.ng = icmp samesign ne i64 %i.nf, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.ng)
  %i.nh = icmp samesign ugt i8 %i.na, -17
  br i1 %i.nh, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.i
  %i.ni = add nuw nsw i64 %i.ms, 3
  %i.nj = icmp samesign ne i64 %i.ni, %.sroa.036.sroa.13.0.copyload.i.i.i
  call void @llvm.assume(i1 %i.nj)
  br label %.sink.split.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.dk, %.split.i.i.i.i.i.i.i, %bb.dd, %.split.i.i.i.peel.i.i.i.i, %bb.ca, %.split.i.i.i.i.i.i.peel.i, %bb.bq, %.split.i.i.i.peel.i.i.i.peel.i, %bb.bh, %.split.i.i.i.i.i.peel.i.i, %bb.ax, %.split.i.i.i.peel.i.i.peel.i.i
  %.lcssa12.i.i.i.i = phi i64 [ %.sroa.036.sroa.4.0.copyload.i.i.i, %.split.i.i.i.peel.i.i.peel.i.i ], [ %.sroa.036.sroa.4.0.copyload.i.i.i, %bb.ax ], [ %i.er, %.split.i.i.i.i.i.peel.i.i ], [ %i.er, %bb.bh ], [ %.sroa.5.5.i.peel.i.i, %.split.i.i.i.peel.i.i.i.peel.i ], [ %.sroa.5.5.i.peel.i.i, %bb.bq ], [ %i.hi, %.split.i.i.i.i.i.i.peel.i ], [ %i.hi, %bb.ca ], [ %i.ms, %bb.dk ], [ %i.ms, %.split.i.i.i.i.i.i.i ], [ %.sroa.5.0239.i.i.i, %bb.dd ], [ %.sroa.5.0239.i.i.i, %.split.i.i.i.peel.i.i.i.i ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.036.sroa.12.0.copyload.i.i.i, i64 noundef %.sroa.036.sroa.13.0.copyload.i.i.i, i64 noundef %.lcssa12.i.i.i.i, i64 noundef %.sroa.036.sroa.13.0.copyload.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #18
          to label %.noexc.i.i.i unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

.noexc.i.i.i:                                     ; preds = %.loopexit.i.i.i.i
  unreachable

.split251.us.i.i.i:                               ; preds = %.lr.ph220
  %i.nk = add i64 %i.jr, %.sroa.036.sroa.4.0.copyload.i.i.i
  %umax.i101.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload.i.i.i, i64 %i.nk)
  br label %.split251.us.invoke.i.i.i

.split251.us.invoke.i.i.i:                        ; preds = %.preheader.us.i.preheader.split.i.i, %bb.co, %.lr.ph216, %.lr.ph223, %.split242.us.i.i.i, %.split251.us.i.i.i
  %i.nl = phi i64 [ %umax.i101.i.i.i, %.split251.us.i.i.i ], [ %umax.i.i.i.i, %.split242.us.i.i.i ], [ %i.kb, %.lr.ph223 ], [ %i.jd, %.lr.ph216 ], [ %i.jf, %bb.co ], [ %i.if, %.preheader.us.i.preheader.split.i.i ]
  %i.nm = phi i64 [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.split251.us.i.i.i ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.split242.us.i.i.i ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %.lr.ph223 ], [ %.sroa.036.sroa.15.0.copyload.i.i.i, %.lr.ph216 ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.co ], [ %.sroa.036.sroa.15.0.copyload.i.i.i, %.preheader.us.i.preheader.split.i.i ]
  %i.nn = phi ptr [ @6, %.split251.us.i.i.i ], [ @6, %.split242.us.i.i.i ], [ @5, %.lr.ph223 ], [ @4, %.lr.ph216 ], [ @5, %bb.co ], [ @4, %.preheader.us.i.preheader.split.i.i ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.nl, i64 noundef range(i64 0, -9223372036854775808) %i.nm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nn) #18
          to label %.split251.us.cont.i.i.i unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

.split251.us.cont.i.i.i:                          ; preds = %.split251.us.invoke.i.i.i
  unreachable

.split242.us.i.i.i:                               ; preds = %.lr.ph
  %i.no = add i64 %i.il, %.sroa.0.0.i.i.us.i.i.i
  %umax.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.036.sroa.13.0.copyload.i.i.i, i64 %i.no)
  br label %.split251.us.invoke.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.i, %bb.dm, %bb.dl, %bb.de
  %.sroa.41.2.i.i.i = phi i64 [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.dl ], [ %.sroa.41.0236.i.i.i, %bb.de ], [ %i.ms, %bb.dm ], [ %i.ms, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.i ], [ %i.ms, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.i ], [ %i.ms, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.i ]
  %.sroa.5.5.i.i.i = phi i64 [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.dl ], [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.de ], [ %i.ms, %bb.dm ], [ %i.ms, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.i ], [ %i.ms, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.i ], [ %i.ms, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.i ]
  %spec.select.pn.i.i.i = phi i64 [ %.sroa.036.sroa.13.0.copyload.i.i.i, %bb.dl ], [ %spec.select.i.i.i, %bb.de ], [ %i.ms, %bb.dm ], [ %i.ms, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit16.i.i.i.i.i.i.i ], [ %i.ms, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit14.i.i.i.i.i.i.i ], [ %i.ms, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7JU2D1aBbVY_15deltalake_mount.exit12.i.i.i.i.i.i.i ] ; 2 uses
  %i.np = icmp eq i64 %spec.select.pn.i.i.i, %.sroa.41.0236.i.i.i
  br i1 %i.np, label %.split261.us.i.i.i, label %bb.dv

.thread.i.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.us.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.peel.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.peel.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !93
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.dn unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

bb.dn:                                            ; preds = %.thread.i.i.i
  %i.nq = load i64, ptr %i.d, align 8, !range !69, !noalias !93, !noundef !3
  %i.nr = trunc nuw i64 %i.nq to i1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.nt = load i64, ptr %i.ns, align 8, !range !4, !noalias !93, !noundef !3 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.nr, label %bb.do, label %bb.dp, !prof !5

bb.do:                                            ; preds = %bb.dn
  %i.nv = load i64, ptr %i.nu, align 8, !noalias !93
  br label %.invoke.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.nw = load ptr, ptr %i.nu, align 8, !noalias !93, !nonnull !3, !noundef !3 ; 2 uses
  %i.nx = icmp ule i64 %spec.select.i.i.i, %i.nt
  call void @llvm.assume(i1 %i.nx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !93
  %.not76.i.i.i = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %.not76.i.i.i, label %bb.dq, label %bb.du

bb.dq:                                            ; preds = %bb.du, %bb.dp
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.nt, ptr %i.ny, align 8, !alias.scope !91
  %.sroa.455.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.nw, ptr %.sroa.455.0..sroa_idx.i.i.i, align 8, !alias.scope !91
  %.sroa.556.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.select.i.i.i, ptr %.sroa.556.0..sroa_idx.i.i.i, align 8, !alias.scope !91
  store i64 -9223372036854775802, ptr %0, align 8, !alias.scope !91
  %i.nz = load i64, ptr %i.j, align 8, !range !4, !alias.scope !103, !noalias !84, !noundef !3
  %i.oa = icmp eq i64 %i.nz, -9223372036854775808
  br i1 %i.oa, label %bb.eo, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7JU2D1aBbVY_15deltalake_mount.exit.sink.split.i.i.i unwind label %bb.ds, !noalias !91

bb.ds:                                            ; preds = %bb.dr
  %i.ob = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i unwind label %bb.dt, !noalias !91

bb.dt:                                            ; preds = %bb.ds
  %i.oc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !91
  unreachable

bb.du:                                            ; preds = %bb.dp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nw, ptr nonnull align 1 %.sroa.0.0.i.i.i, i64 %spec.select.i.i.i, i1 false), !noalias !91
  br label %bb.dq

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7JU2D1aBbVY_15deltalake_mount.exit.sink.split.i.i.i: ; preds = %bb.dr, %bb.ar
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.eo unwind label %bb.af, !noalias !70

.split261.us.i.i.i:                               ; preds = %.sink.split.i.i.i.i, %.sink.split.i.us.i.i.i, %.sink.split.i.i.i.peel.i, %.sink.split.i.i.peel.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !93
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ch, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.dw unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

bb.dv:                                            ; preds = %.sink.split.i.i.i.i
  %.sroa.4.1.i.i.i.i = sub nuw i64 %spec.select.pn.i.i.i, %.sroa.41.0236.i.i.i
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.036.sroa.12.0.copyload.i.i.i, i64 %.sroa.41.0236.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !93
  invoke void @_RNvMNtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i)
          to label %bb.eb unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

bb.dw:                                            ; preds = %.split261.us.i.i.i
  %i.od = load i64, ptr %i.c, align 8, !range !69, !noalias !93, !noundef !3
  %i.oe = trunc nuw i64 %i.od to i1
  %i.of = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.og = load i64, ptr %i.of, align 8, !range !4, !noalias !93, !noundef !3 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.oe, label %bb.dx, label %bb.dy, !prof !5

bb.dx:                                            ; preds = %bb.dw
  %i.oi = load i64, ptr %i.oh, align 8, !noalias !93
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.dx, %bb.do
  %i.oj = phi i64 [ %i.og, %bb.dx ], [ %i.nt, %bb.do ]
  %i.ok = phi i64 [ %i.oi, %bb.dx ], [ %i.nv, %bb.do ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.oj, i64 %i.ok) #16
          to label %.cont.i.i.i unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.ol = load ptr, ptr %i.oh, align 8, !noalias !93, !nonnull !3, !noundef !3 ; 2 uses
  %i.om = icmp ule i64 %i.ch, %i.og
  call void @llvm.assume(i1 %i.om)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !93
  %.not78.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not78.i.i.i, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.ea, %bb.dy
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !91
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.og, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !alias.scope !91
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ol, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !91
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ch, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !91
  br label %bb.aq

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ol, ptr nonnull align 1 %i.cg, i64 %i.ch, i1 false), !noalias !91
  br label %bb.dz

bb.eb:                                            ; preds = %bb.dv
  %i.on = load i64, ptr %i.f, align 8, !range !4, !noalias !93, !noundef !3
  %.not77.i.i.i = icmp eq i64 %i.on, -9223372036854775808
  br i1 %.not77.i.i.i, label %bb.ej, label %.split264.us.i.i.i

.split264.us.i.i.i:                               ; preds = %bb.eb, %bb.cz, %bb.cf, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !93
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ch, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ed unwind label %bb.ec, !noalias !107

bb.ec:                                            ; preds = %bb.ee, %.split264.us.i.i.i
  %i.oo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #15
          to label %.body.i.i.i unwind label %bb.ei, !noalias !108

bb.ed:                                            ; preds = %.split264.us.i.i.i
  %i.op = load i64, ptr %i.a, align 8, !range !69, !noalias !106, !noundef !3
  %i.oq = trunc nuw i64 %i.op to i1
  %i.or = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.os = load i64, ptr %i.or, align 8, !range !4, !noalias !106, !noundef !3 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.oq, label %bb.ee, label %bb.ef, !prof !5

bb.ee:                                            ; preds = %bb.ed
  %i.ou = load i64, ptr %i.ot, align 8, !noalias !106
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.os, i64 %i.ou) #16
          to label %bb.eh unwind label %bb.ec, !noalias !107

bb.ef:                                            ; preds = %bb.ed
  %i.ov = load ptr, ptr %i.ot, align 8, !noalias !106, !nonnull !3, !noundef !3 ; 2 uses
  %i.ow = icmp ule i64 %i.ch, %i.os
  call void @llvm.assume(i1 %i.ow)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106
  %.not.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i, label %bb.em, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ov, ptr nonnull readonly align 1 %i.cg, i64 %i.ch, i1 false), !noalias !109
  br label %bb.em

bb.eh:                                            ; preds = %bb.ee
  unreachable

bb.ei:                                            ; preds = %bb.ec
  %i.ox = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !108
  unreachable

bb.ej:                                            ; preds = %bb.eb
  %.sroa.0147.0.copyload.i.i.i = load ptr, ptr %i.cu, align 8, !noalias !93 ; 2 uses
  %i.oy = load <2 x i64>, ptr %.sroa.5148.0..sroa_idx.i.i.i, align 8, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !93
  store ptr %.sroa.0147.0.copyload.i.i.i, ptr %i.g, align 8, !noalias !93
  store <2 x i64> %i.oy, ptr %.sroa.4159.0..sroa_idx.i.i.i, align 8, !noalias !93
  %i.oz = icmp eq ptr %.sroa.0147.0.copyload.i.i.i, inttoptr (i64 -9223372036854775808 to ptr)
  br i1 %i.oz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i.i.i unwind label %.split266.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !91

.split266.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.db, %bb.ek, %bb.ch, %bb.bo
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i.i unwind label %bb.el, !noalias !91

bb.el:                                            ; preds = %.split266.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.pa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !noalias !91
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount.exit.i.i.i.i.i: ; preds = %bb.ek
end_hunk_1
