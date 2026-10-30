Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_system_types-49358cb450e5d054.iceoryx2_bb_system_types.62c1b635620bc0d6-cgu.1?download=true
inline.NumInlined: 77
inline.NumDeleted: 54
begin_hunk_0_@_RNvXs_NtCs8tG85QUCESg_24iceoryx2_bb_system_types12ipv4_addressNtB4_11Ipv4AddressINtNtCs8Chj7Szqq0n_4core7convert7TryFromReE8try_from:bb.a
  br i1 %.not21.i.i.i.i.i, label %bb.y, label %bb.ab

.preheader36.i.i.i.i.i:                           ; preds = %bb.z
  %i.dw = icmp ult i64 %i.cy, %i.dy
  br i1 %i.dw, label %.lr.ph268, label %.split.us.i10.i.i.i.i

.split.us.i10.i.i.i.i:                            ; preds = %.preheader36.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i
  %i.dx = add i64 %i.da, %.sroa.013.sroa.15.0.copyload ; 2 uses
  br label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit

.lr.ph268:                                        ; preds = %.preheader36.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i267 = phi i64 [ %i.dy, %.preheader36.i.i.i.i.i ], [ %.fr214.i.i.i.i161, %.preheader36.i.i.i.i.i.preheader ]
  %i.dy = add i64 %.sroa.2.0.i.i.i.i.i267, -1     ; 6 uses
  %i.dz = icmp ult i64 %i.dy, %.sroa.013.sroa.15.0.copyload
  br i1 %i.dz, label %bb.z, label %.split32.us.i.i.i.i.i

bb.z:                                             ; preds = %.lr.ph268
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.14.0.copyload, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !83, !noalias !80, !noundef !5
  %i.ec = add i64 %i.dy, %i.da                    ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %.sroa.013.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.12.0.copyload, i64 %i.ec
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !82, !noalias !80, !noundef !5
  %.not20.i.i.i.i.i = icmp eq i8 %i.eb, %i.ef
  br i1 %.not20.i.i.i.i.i, label %.preheader36.i.i.i.i.i, label %bb.aa

.split32.us.i.i.i.i.i:                            ; preds = %.lr.ph268
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.dy, i64 noundef range(i64 0, -9223372036854775808) %.sroa.013.sroa.15.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #12, !noalias !84
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.eg = add i64 %i.da, %.sroa.1259.sroa.0.0.insert.insert
  br label %bb.x

bb.ab:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.da, %invariant.op
  %i.eh = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i.i266
  br label %bb.x

bb.ac:                                            ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  br i1 %i.ch, label %.lr.ph.i15.i.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit

.lr.ph.i15.i.i.i.i:                               ; preds = %bb.ac
  %.sroa.1259.sroa.1277.0.insert.ext78 = zext i8 %.sroa.1259.sroa.1277.0152 to i64
  %.sroa.1259.sroa.1277.0.insert.shift79 = shl nuw nsw i64 %.sroa.1259.sroa.1277.0.insert.ext78, 16
  %.sroa.1259.sroa.0.0.insert.ext70 = zext i8 %.sroa.1259.sroa.0.0153 to i64
  %i.ei = or disjoint i64 %.sroa.1259.sroa.1277.0.insert.shift79, %.sroa.1259.sroa.0.0.insert.ext70
  %.sroa.1259.sroa.0.0.insert.insert72 = or disjoint i64 %i.ei, %i.p
  %umax.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr214.i.i.i.i161, i64 range(i64 0, -9223372036854775808) %.sroa.013.sroa.15.0.copyload) ; 2 uses
  %i.ej = add i64 %.fr214.i.i.i.i161, -1          ; 2 uses
  %.first_iter.i16.i.i.i.i = icmp ult i64 %i.ej, %.sroa.013.sroa.15.0.copyload
  %reass.sub79.i.i.i = sub i64 1, %.fr214.i.i.i.i161 ; 2 uses
  br i1 %.first_iter.i16.i.i.i.i, label %.lr.ph.split.us.i.i.i.us.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i15.i.i.i.i
  %exitcond.not.i17.i.i.i.i270.not = icmp ult i64 %.fr214.i.i.i.i161, %.sroa.013.sroa.15.0.copyload
  br label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.us.i.i.preheader:           ; preds = %.lr.ph.i15.i.i.i.i
  %exitcond.not.i17.i.i.us.i.i275.not = icmp ult i64 %.fr214.i.i.i.i161, %.sroa.013.sroa.15.0.copyload
  %.not34.i.us.i.i.us.i.i278 = icmp eq i64 %.fr214.i.i.i.i161, 0
  br label %.lr.ph.split.us.i.i.i.us.i.i

.lr.ph.split.us.i.i.i.us.i.i:                     ; preds = %.lr.ph.split.us.i.i.i.us.i.i.preheader, %bb.af
  %i.ek = phi i64 [ %i.fk, %bb.af ], [ %i.cg, %.lr.ph.split.us.i.i.i.us.i.i.preheader ]
  %i.el = phi i64 [ %i.fj, %bb.af ], [ %.sroa.24.0159, %.lr.ph.split.us.i.i.i.us.i.i.preheader ] ; 7 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.12.0.copyload, i64 %i.ek
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !85, !noalias !80, !noundef !5
  %i.eo = and i8 %i.en, 63
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = shl nuw i64 1, %i.ep
  %i.er = and i64 %i.eq, %.sroa.013.sroa.7.0.copyload
  %.not.us.i.i.i.us.i.i = icmp eq i64 %i.er, 0
  br i1 %.not.us.i.i.i.us.i.i, label %bb.ae, label %.preheader35.i.i.i.us.i.i.preheader

.preheader35.i.i.i.us.i.i.preheader:              ; preds = %.lr.ph.split.us.i.i.i.us.i.i
  br i1 %exitcond.not.i17.i.i.us.i.i275.not, label %.lr.ph277, label %.preheader.i18.us.i.i.us.i.i.preheader

.preheader35.i.i.i.us.i.i:                        ; preds = %.lr.ph277
  %i.es = add i64 %.sroa.04.0.us.i.i.i.us.i.i276, 1 ; 2 uses
  %exitcond.not.i17.i.i.us.i.i = icmp eq i64 %i.es, %umax.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.us.i.i, label %.preheader.i18.us.i.i.us.i.i.preheader, label %.lr.ph277

.preheader.i18.us.i.i.us.i.i.preheader:           ; preds = %.preheader35.i.i.i.us.i.i, %.preheader35.i.i.i.us.i.i.preheader
  br i1 %.not34.i.us.i.i.us.i.i278, label %.split.us.i20.i.i.i.i, label %.lr.ph280

.lr.ph277:                                        ; preds = %.preheader35.i.i.i.us.i.i.preheader, %.preheader35.i.i.i.us.i.i
  %.sroa.04.0.us.i.i.i.us.i.i276 = phi i64 [ %i.es, %.preheader35.i.i.i.us.i.i ], [ %.fr214.i.i.i.i161, %.preheader35.i.i.i.us.i.i.preheader ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.14.0.copyload, i64 %.sroa.04.0.us.i.i.i.us.i.i276
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !86, !noalias !80, !noundef !5
  %i.ev = add i64 %.sroa.04.0.us.i.i.i.us.i.i276, %i.el ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %.sroa.013.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.12.0.copyload, i64 %i.ev
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !85, !noalias !80, !noundef !5
  %.not21.us.i.i.i.us.i.i = icmp eq i8 %i.eu, %i.ey
  br i1 %.not21.us.i.i.i.us.i.i, label %.preheader35.i.i.i.us.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph277
  %.reass281.i.reass.i.us.i.i = add i64 %i.el, %reass.sub79.i.i.i
  %i.ez = add i64 %.reass281.i.reass.i.us.i.i, %.sroa.04.0.us.i.i.i.us.i.i276
  br label %bb.af

.preheader.i18.us.i.i.us.i.i:                     ; preds = %.lr.ph280
  %.not34.i.us.i.i.us.i.i = icmp eq i64 %i.fa, 0
  br i1 %.not34.i.us.i.i.us.i.i, label %.split.us.i20.i.i.i.i, label %.lr.ph280

.lr.ph280:                                        ; preds = %.preheader.i18.us.i.i.us.i.i.preheader, %.preheader.i18.us.i.i.us.i.i
  %.sroa.2.0.us.i.us.i.i.us.i.i279 = phi i64 [ %i.fa, %.preheader.i18.us.i.i.us.i.i ], [ %.fr214.i.i.i.i161, %.preheader.i18.us.i.i.us.i.i.preheader ]
  %i.fa = add i64 %.sroa.2.0.us.i.us.i.i.us.i.i279, -1 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.14.0.copyload, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !86, !noalias !80, !noundef !5
  %i.fd = add i64 %i.fa, %i.el                    ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %.sroa.013.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.12.0.copyload, i64 %i.fd
  %i.fg = load i8, ptr %i.ff, align 1, !alias.scope !85, !noalias !80, !noundef !5
  %.not20.us.i.us.i.i.us.i.i = icmp eq i8 %i.fc, %i.fg
  br i1 %.not20.us.i.us.i.i.us.i.i, label %.preheader.i18.us.i.i.us.i.i, label %.split.us.i.i.us.i.i

.split.us.i.i.us.i.i:                             ; preds = %.lr.ph280
  %i.fh = add i64 %.sroa.1259.sroa.0.0.insert.insert72, %i.el
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i.i
  %i.fi = add i64 %i.el, %.sroa.013.sroa.15.0.copyload
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.split.us.i.i.us.i.i, %bb.ad
  %i.fj = phi i64 [ %i.ez, %bb.ad ], [ %i.fi, %bb.ae ], [ %i.fh, %.split.us.i.i.us.i.i ] ; 2 uses
  %i.fk = add i64 %i.fj, %i.o                     ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %.sroa.013.sroa.13.0.copyload
  br i1 %i.fl, label %.lr.ph.split.us.i.i.i.us.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %bb.ai
  %i.fm = phi i64 [ %i.ge, %bb.ai ], [ %i.cg, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.fn = phi i64 [ %i.gd, %bb.ai ], [ %.sroa.24.0159, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.12.0.copyload, i64 %i.fm
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !85, !noalias !80, !noundef !5
  %i.fq = and i8 %i.fp, 63
  %i.fr = zext nneg i8 %i.fq to i64
  %i.fs = shl nuw i64 1, %i.fr
  %i.ft = and i64 %i.fs, %.sroa.013.sroa.7.0.copyload
  %.not.us.i.i.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not.us.i.i.i.i.i, label %bb.ah, label %.preheader35.i.i.i.i.i.preheader

.preheader35.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.split.us.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i.i270.not, label %.lr.ph272, label %.preheader.i18.i.i.i.i

.preheader35.i.i.i.i.i:                           ; preds = %.lr.ph272
  %i.fu = add i64 %.sroa.04.0.us.i.i.i.i.i271, 1  ; 2 uses
  %exitcond.not.i17.i.i.i.i = icmp eq i64 %i.fu, %umax.i.i.i.i.i
  br i1 %exitcond.not.i17.i.i.i.i, label %.preheader.i18.i.i.i.i, label %.lr.ph272

.lr.ph272:                                        ; preds = %.preheader35.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i
  %.sroa.04.0.us.i.i.i.i.i271 = phi i64 [ %i.fu, %.preheader35.i.i.i.i.i ], [ %.fr214.i.i.i.i161, %.preheader35.i.i.i.i.i.preheader ] ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.14.0.copyload, i64 %.sroa.04.0.us.i.i.i.i.i271
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !86, !noalias !80, !noundef !5
  %i.fx = add i64 %.sroa.04.0.us.i.i.i.i.i271, %i.fn ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %.sroa.013.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.12.0.copyload, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !85, !noalias !80, !noundef !5
  %.not21.us.i.i.i.i.i = icmp eq i8 %i.fw, %i.ga
  br i1 %.not21.us.i.i.i.i.i, label %.preheader35.i.i.i.i.i, label %bb.ag

.preheader.i18.i.i.i.i:                           ; preds = %.preheader35.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i64 %.fr214.i.i.i.i161, 0
  br i1 %.not34.i.i.i.i.i, label %.split.us.i20.i.i.i.i, label %.split32.us.i19.i.i.i.i

.split32.us.i19.i.i.i.i:                          ; preds = %.preheader.i18.i.i.i.i
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.ej, i64 noundef range(i64 0, -9223372036854775808) %.sroa.013.sroa.15.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #12, !noalias !87
  unreachable

bb.ag:                                            ; preds = %.lr.ph272
  %.reass281.i.reass.i.i.i = add i64 %i.fn, %reass.sub79.i.i.i
  %i.gb = add i64 %.reass281.i.reass.i.i.i, %.sroa.04.0.us.i.i.i.i.i271
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.gc = add i64 %i.fn, %.sroa.013.sroa.15.0.copyload
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gd = phi i64 [ %i.gb, %bb.ag ], [ %i.gc, %bb.ah ] ; 2 uses
  %i.ge = add i64 %i.gd, %i.o                     ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %.sroa.013.sroa.13.0.copyload
  br i1 %i.gf, label %.lr.ph.split.us.i.i.i.i.i, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit

.split.us.i20.i.i.i.i:                            ; preds = %.preheader.i18.us.i.i.us.i.i.preheader, %.preheader.i18.us.i.i.us.i.i, %.preheader.i18.i.i.i.i
  %i.gg = phi i64 [ %i.fn, %.preheader.i18.i.i.i.i ], [ %i.el, %.preheader.i18.us.i.i.us.i.i ], [ %i.el, %.preheader.i18.us.i.i.us.i.i.preheader ] ; 2 uses
  %i.gh = add i64 %i.gg, %.sroa.013.sroa.15.0.copyload ; 2 uses
  br label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit

bb.aj:                                            ; preds = %.split165.us.i.i.i.i
  br label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit: ; preds = %bb.x, %bb.ai, %bb.af, %bb.t, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit12.i.i.us.i.i.i.i, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit14.i.i.us.i.i.i.i, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit16.i.i.us.i.i.i.i, %bb.o, %.preheader.i.i.i.i, %bb.p, %bb.s, %bb.u, %bb.ac, %.split165.us.i.i.i.i, %.loopexit42.i.i.i.i, %.split.us.i10.i.i.i.i, %.split.us.i20.i.i.i.i, %bb.n, %bb.h, %bb.aj
  %.sroa.1259.sroa.1277.2 = phi i8 [ 0, %.split165.us.i.i.i.i ], [ 0, %bb.h ], [ %.sroa.1259.sroa.1277.0152, %bb.t ], [ 0, %bb.n ], [ %.sroa.1259.sroa.1277.0152, %.split.us.i20.i.i.i.i ], [ %.sroa.1259.sroa.1277.0152, %.split.us.i10.i.i.i.i ], [ %.sroa.1259.sroa.1277.0152, %.loopexit42.i.i.i.i ], [ 1, %.preheader.i.i.i.i ], [ %.sroa.1259.sroa.1277.0152, %bb.s ], [ %.sroa.1259.sroa.1277.0152, %bb.p ], [ %.sroa.1259.sroa.1277.0152, %bb.u ], [ 1, %bb.aj ], [ %.sroa.1259.sroa.1277.0152, %bb.ai ], [ %.sroa.1259.sroa.1277.0152, %bb.af ], [ 0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit12.i.i.us.i.i.i.i ], [ %.sroa.1259.sroa.1277.0152, %bb.ac ], [ 0, %bb.o ], [ 0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit16.i.i.us.i.i.i.i ], [ 0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit14.i.i.us.i.i.i.i ], [ %.sroa.1259.sroa.1277.0152, %bb.x ]
  %.sroa.1259.sroa.0.2 = phi i8 [ 0, %.split165.us.i.i.i.i ], [ 0, %bb.h ], [ %.sroa.1259.sroa.0.0153, %bb.t ], [ 0, %bb.n ], [ %.sroa.1259.sroa.0.0153, %.split.us.i20.i.i.i.i ], [ %.sroa.1259.sroa.0.0153, %.split.us.i10.i.i.i.i ], [ %.sroa.1259.sroa.0.0153, %.loopexit42.i.i.i.i ], [ %.sroa.1259.sroa.0.0153, %.preheader.i.i.i.i ], [ %.sroa.1259.sroa.0.0153, %bb.s ], [ %.sroa.1259.sroa.0.0153, %bb.p ], [ %.sroa.1259.sroa.0.0153, %bb.u ], [ 1, %bb.aj ], [ %.sroa.1259.sroa.0.0153, %bb.ai ], [ %.sroa.1259.sroa.0.0153, %bb.af ], [ 0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit12.i.i.us.i.i.i.i ], [ %.sroa.1259.sroa.0.0153, %bb.ac ], [ 0, %bb.o ], [ 0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit16.i.i.us.i.i.i.i ], [ 0, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit14.i.i.us.i.i.i.i ], [ %.sroa.1259.sroa.0.0153, %bb.x ]
  %.sroa.52.1 = phi i1 [ false, %.split165.us.i.i.i.i ], [ false, %bb.h ], [ true, %bb.t ], [ false, %bb.n ], [ false, %.split.us.i20.i.i.i.i ], [ false, %.split.us.i10.i.i.i.i ], [ false, %.loopexit42.i.i.i.i ], [ true, %.preheader.i.i.i.i ], [ true, %bb.s ], [ true, %bb.p ], [ true, %bb.u ], [ true, %bb.aj ], [ true, %bb.ai ], [ true, %bb.af ], [ false, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit12.i.i.us.i.i.i.i ], [ true, %bb.ac ], [ false, %bb.o ], [ false, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit16.i.i.us.i.i.i.i ], [ false, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit14.i.i.us.i.i.i.i ], [ true, %bb.x ]
  %.sroa.42.1 = phi i64 [ %.sroa.013.sroa.13.0.copyload, %.split165.us.i.i.i.i ], [ %.fr214.i.i.i.i161, %bb.h ], [ %.sroa.42.0156, %bb.t ], [ %.sroa.013.sroa.13.0.copyload, %bb.n ], [ %i.gh, %.split.us.i20.i.i.i.i ], [ %i.dx, %.split.us.i10.i.i.i.i ], [ %i.cv, %.loopexit42.i.i.i.i ], [ %.sroa.42.0156, %.preheader.i.i.i.i ], [ %.sroa.42.0156, %bb.s ], [ %.sroa.42.0156, %bb.p ], [ %.sroa.42.0156, %bb.u ], [ %.sroa.42.0156, %bb.aj ], [ %.sroa.42.0156, %bb.ai ], [ %.sroa.42.0156, %bb.af ], [ %i.bn, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit12.i.i.us.i.i.i.i ], [ %.sroa.42.0156, %bb.ac ], [ %i.bn, %bb.o ], [ %i.bn, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit16.i.i.us.i.i.i.i ], [ %i.bn, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit14.i.i.us.i.i.i.i ], [ %.sroa.42.0156, %bb.x ]
  %.sroa.3564.3 = phi i64 [ %.sroa.3564.0158, %.split165.us.i.i.i.i ], [ %.sroa.3564.0158, %bb.h ], [ %.sroa.3564.0158, %bb.t ], [ %.sroa.3564.0158, %bb.n ], [ -1, %.split.us.i20.i.i.i.i ], [ 0, %.split.us.i10.i.i.i.i ], [ %.sroa.3564.0158, %.loopexit42.i.i.i.i ], [ %.sroa.3564.0158, %.preheader.i.i.i.i ], [ %.sroa.3564.0158, %bb.s ], [ %.sroa.3564.0158, %bb.p ], [ %.sroa.3564.0158, %bb.u ], [ %.sroa.3564.0158, %bb.aj ], [ -1, %bb.ai ], [ -1, %bb.af ], [ %.sroa.3564.0158, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit12.i.i.us.i.i.i.i ], [ -1, %bb.ac ], [ %.sroa.3564.0158, %bb.o ], [ %.sroa.3564.0158, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit16.i.i.us.i.i.i.i ], [ %.sroa.3564.0158, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit14.i.i.us.i.i.i.i ], [ %.sink.i11.i.i.i.i, %bb.x ]
  %.sroa.24.2 = phi i64 [ %.sroa.24.0159, %.split165.us.i.i.i.i ], [ %.sroa.24.0159, %bb.h ], [ %.sroa.24.0159, %bb.t ], [ %.sroa.24.0159, %bb.n ], [ %i.gh, %.split.us.i20.i.i.i.i ], [ %i.dx, %.split.us.i10.i.i.i.i ], [ %.sroa.24.0159, %.loopexit42.i.i.i.i ], [ %.sroa.24.0159, %.preheader.i.i.i.i ], [ %.sroa.24.0159, %bb.s ], [ %.sroa.24.0159, %bb.p ], [ %.sroa.013.sroa.13.0.copyload, %bb.u ], [ %.sroa.24.0159, %bb.aj ], [ %.sroa.013.sroa.13.0.copyload, %bb.ai ], [ %.sroa.013.sroa.13.0.copyload, %bb.af ], [ %.sroa.24.0159, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit12.i.i.us.i.i.i.i ], [ %.sroa.013.sroa.13.0.copyload, %bb.ac ], [ %.sroa.24.0159, %bb.o ], [ %.sroa.24.0159, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit16.i.i.us.i.i.i.i ], [ %.sroa.24.0159, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit14.i.i.us.i.i.i.i ], [ %.sroa.013.sroa.13.0.copyload, %bb.x ]
  %.sroa.5.289 = phi i64 [ %.sroa.013.sroa.13.0.copyload, %.split165.us.i.i.i.i ], [ %.fr214.i.i.i.i161, %bb.h ], [ %.sroa.013.sroa.13.0.copyload, %bb.t ], [ %.sroa.013.sroa.13.0.copyload, %bb.n ], [ %.fr214.i.i.i.i161, %.split.us.i20.i.i.i.i ], [ %.fr214.i.i.i.i161, %.split.us.i10.i.i.i.i ], [ %i.cv, %.loopexit42.i.i.i.i ], [ %.fr214.i.i.i.i161, %.preheader.i.i.i.i ], [ %.sroa.013.sroa.13.0.copyload, %bb.s ], [ %.fr214.i.i.i.i161, %bb.p ], [ %.fr214.i.i.i.i161, %bb.u ], [ %.sroa.013.sroa.13.0.copyload, %bb.aj ], [ %.fr214.i.i.i.i161, %bb.ai ], [ %.fr214.i.i.i.i161, %bb.af ], [ %i.bn, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit12.i.i.us.i.i.i.i ], [ %.fr214.i.i.i.i161, %bb.ac ], [ %i.bn, %bb.o ], [ %i.bn, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit16.i.i.us.i.i.i.i ], [ %i.bn, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit14.i.i.us.i.i.i.i ], [ %.fr214.i.i.i.i161, %bb.x ]
  %.pn = phi i64 [ %.sroa.013.sroa.13.0.copyload, %.split165.us.i.i.i.i ], [ %.fr214.i.i.i.i161, %bb.h ], [ %1, %bb.t ], [ %.sroa.013.sroa.13.0.copyload, %bb.n ], [ %i.gg, %.split.us.i20.i.i.i.i ], [ %i.da, %.split.us.i10.i.i.i.i ], [ %i.cu, %.loopexit42.i.i.i.i ], [ %1, %.preheader.i.i.i.i ], [ %1, %bb.s ], [ %1, %bb.p ], [ %1, %bb.u ], [ %1, %bb.aj ], [ %1, %bb.ai ], [ %1, %bb.af ], [ %i.bn, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit12.i.i.us.i.i.i.i ], [ %1, %bb.ac ], [ %i.bn, %bb.o ], [ %i.bn, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit16.i.i.us.i.i.i.i ], [ %i.bn, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit14.i.i.us.i.i.i.i ], [ %1, %bb.x ]
  %.sroa.4.1.i.i.i = sub nuw i64 %.pn, %.sroa.42.0156 ; 2 uses
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.12.0.copyload, i64 %.sroa.42.0156 ; 3 uses
  %i.gi = add nuw nsw i64 %.sroa.5569.0154, 1
  %i.gj = icmp eq i64 %.sroa.5569.0154, 4
  br i1 %i.gj, label %bb.an, label %bb.ao

_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit.thread: ; preds = %.loopexit105
  %i.gk = icmp eq i32 %i.hy, 4
  br i1 %i.gk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit.thread
  %i.gl = load i32, ptr %i.h, align 4
  %i.gm = tail call i32 @llvm.bswap.i32(i32 %i.gl)
  %i.gn = zext i32 %i.gm to i64
  %.sroa.8.sroa.0.2.insert.shift = shl nuw i64 %i.gn, 32
  br label %bb.am

bb.al:                                            ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs8tG85QUCESg_24iceoryx2_bb_system_types, ptr %.sroa.448.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.j, ptr %i.b, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8tG85QUCESg_24iceoryx2_bb_system_types, ptr %.sroa.452.0..sroa_idx, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %i.go, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8tG85QUCESg_24iceoryx2_bb_system_types, ptr %.sroa.456.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @7, ptr noundef nonnull %i.c, ptr noundef nonnull @16, ptr noundef nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.loopexit, %bb.an, %bb.ak
  %.sroa.5.0.insert.insert = phi i64 [ %.sroa.8.sroa.0.2.insert.shift, %bb.ak ], [ 65281, %bb.al ], [ 65281, %bb.an ], [ %.sroa.8.0.i.ph, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret i64 %.sroa.5.0.insert.insert

bb.an:                                            ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs8tG85QUCESg_24iceoryx2_bb_system_types, ptr %.sroa.424.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8tG85QUCESg_24iceoryx2_bb_system_types, ptr %.sroa.428.0..sroa_idx, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.k, ptr %i.gp, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8tG85QUCESg_24iceoryx2_bb_system_types, ptr %.sroa.432.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @7, ptr noundef nonnull %i.g, ptr noundef nonnull @17, ptr noundef nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.am

bb.ao:                                            ; preds = %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit
  switch i64 %.sroa.4.1.i.i.i, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.gq = load i8, ptr %.sroa.0.1.i.i.i, align 1, !alias.scope !88, !noundef !5 ; 2 uses
  switch i8 %i.gq, label %bb.aq [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.ao
  %.pr.i = load i8, ptr %.sroa.0.1.i.i.i, align 1, !alias.scope !88
  br label %bb.aq

bb.aq:                                            ; preds = %thread-pre-split.i, %bb.ap
  %i.gr = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.gq, %bb.ap ]
  %cond.i = icmp eq i8 %i.gr, 43                  ; 2 uses
  %i.gs = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.4.1.i.i.i, %i.gs ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 %.sroa.0.0.idx.i ; 3 uses
  %i.gt = icmp samesign ult i64 %.sroa.15.0.i, 3
  br i1 %i.gt, label %.preheader.i, label %.preheader57.i.preheader

.preheader.i:                                     ; preds = %bb.aq
  %.not5462.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5462.i, label %.loopexit105, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.gu = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !88, !noundef !5
  %i.gv = zext i8 %i.gu to i32
  %i.gw = add nsw i32 %i.gv, -48                  ; 2 uses
  %i.gx = icmp ugt i32 %i.gw, 9
  br i1 %i.gx, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.preheader.i
  %i.gy = icmp eq i64 %.sroa.15.0.i, 1
  %i.gz = trunc nuw nsw i32 %i.gw to i8           ; 2 uses
  br i1 %i.gy, label %.loopexit105, label %.lr.ph.i

.preheader57.i:                                   ; preds = %bb.au
  %.not53.not.i = icmp eq i64 %i.hb, 0
  br i1 %.not53.not.i, label %.loopexit105, label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %bb.aq, %.preheader57.i
  %.sroa.0.1.i285 = phi ptr [ %i.ha, %.preheader57.i ], [ %.sroa.0.0.i, %bb.aq ] ; 2 uses
  %.sroa.15.1.i284 = phi i64 [ %i.hb, %.preheader57.i ], [ %.sroa.15.0.i, %bb.aq ]
  %.sroa.043.0.i283 = phi i8 [ %i.hn, %.preheader57.i ], [ 0, %bb.aq ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i285, i64 1
  %i.hb = add nsw i64 %.sroa.15.1.i284, -1        ; 2 uses
  %i.hc = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.sroa.043.0.i283, i8 10) ; 2 uses
  %i.hd = extractvalue { i8, i1 } %i.hc, 0        ; 2 uses
  %i.he = extractvalue { i8, i1 } %i.hc, 1
  %i.hf = load i8, ptr %.sroa.0.1.i285, align 1, !alias.scope !88, !noundef !5 ; 2 uses
  br i1 %i.he, label %bb.at, label %bb.as, !prof !89

bb.as:                                            ; preds = %.preheader57.i.preheader
  %i.hg = zext i8 %i.hf to i32
  %i.hh = add nsw i32 %i.hg, -48                  ; 2 uses
  %i.hi = icmp ult i32 %i.hh, 10
  br i1 %i.hi, label %bb.au, label %.loopexit

bb.at:                                            ; preds = %.preheader57.i.preheader
  %i.hj = add i8 %i.hf, -48
  %i.hk = icmp ult i8 %i.hj, 10
  %i.hl = select i1 %i.hk, i64 513, i64 257
  br label %.loopexit

bb.au:                                            ; preds = %bb.as
  %i.hm = trunc nuw nsw i32 %i.hh to i8
  %i.hn = add i8 %i.hd, %i.hm                     ; 3 uses
  %i.ho = icmp ult i8 %i.hn, %i.hd
  br i1 %i.ho, label %.loopexit, label %.preheader57.i, !prof !89

.lr.ph.i:                                         ; preds = %bb.ar
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %.pre = load i8, ptr %i.hp, align 1, !alias.scope !88
  %i.hq = zext i8 %.pre to i32
  %i.hr = add nsw i32 %i.hq, -48                  ; 2 uses
  %i.hs = icmp ugt i32 %i.hr, 9
  br i1 %i.hs, label %.loopexit, label %.loopexit105.loopexit.loopexit

.loopexit105.loopexit.loopexit:                   ; preds = %.lr.ph.i
  %i.ht = mul nuw nsw i8 %i.gz, 10
  %i.hu = trunc nuw nsw i32 %i.hr to i8
  %i.hv = add nuw nsw i8 %i.ht, %i.hu
  br label %.loopexit105

.loopexit:                                        ; preds = %bb.ap, %bb.ap, %bb.ao, %.lr.ph.i, %.lr.ph.preheader.i, %bb.as, %bb.au, %bb.at
  %.sroa.8.0.i.ph = phi i64 [ %i.hl, %bb.at ], [ 513, %bb.au ], [ 257, %bb.as ], [ 1, %bb.ao ], [ 257, %bb.ap ], [ 257, %.lr.ph.preheader.i ], [ 257, %.lr.ph.i ], [ 257, %bb.ap ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.i, ptr %i.e, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs8tG85QUCESg_24iceoryx2_bb_system_types, ptr %.sroa.436.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.d, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8tG85QUCESg_24iceoryx2_bb_system_types, ptr %.sroa.440.0..sroa_idx, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.k, ptr %i.hw, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8tG85QUCESg_24iceoryx2_bb_system_types, ptr %.sroa.444.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @7, ptr noundef nonnull %i.e, ptr noundef nonnull @18, ptr noundef nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.am

.loopexit105:                                     ; preds = %.preheader57.i, %.preheader.i, %.loopexit105.loopexit.loopexit, %bb.ar
  %.sroa.8.0.i = phi i8 [ 0, %.preheader.i ], [ %i.hv, %.loopexit105.loopexit.loopexit ], [ %i.gz, %bb.ar ], [ %i.hn, %.preheader57.i ]
  %i.hx = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.5569.0154
  store i8 %.sroa.8.0.i, ptr %i.hx, align 1
  %i.hy = add nuw nsw i32 %.sroa.01.0160, 1       ; 2 uses
  %.fr214.i.i.i.i = freeze i64 %.sroa.5.289
  br i1 %.sroa.52.1, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit.thread, label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB4_8FilePathINtNtCs8Chj7Szqq0n_4core7convert4FromNtNtB6_9file_name8FileNameE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) initializes((0, 264)) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(264) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 8 uses
  %i.b = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String8as_bytesCs8tG85QUCESg_24iceoryx2_bb_system_types(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1) #11 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  store i8 0, ptr %i.e, align 1, !noalias !93
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i8 0, ptr %i.a, align 8, !noalias !93
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.c, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !94
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  store i8 0, ptr %i.g, align 1, !noalias !93
  store i64 %i.d, ptr %i.f, align 8, !noalias !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %i.a, i64 264, i1 false), !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

end_hunk_0
