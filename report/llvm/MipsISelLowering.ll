Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsISelLowering?download=true
inline.NumInlined: 9952
inline.NumDeleted: 3126
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZL16CC_Mips_FixedArgjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  br i1 %.not.i.i71.10.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ee = and i32 %i.ds, 1073741824
  %.not.i.i71.11.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i71.11.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.i.i71.12.i = icmp sgt i32 %i.ds, -1
  br i1 %.not.i.i71.12.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !72 ; 7 uses
  %i.eh = and i32 %i.eg, 1
  %.not.i.i71.13.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i71.13.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ei = and i32 %i.eg, 2
  %.not.i.i71.14.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i71.14.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ej = and i32 %i.eg, 4
  %.not.i.i71.15.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i71.15.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ek = and i32 %i.eg, 8
  %.not.i.i71.16.i = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i71.16.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.el = and i32 %i.eg, 16
  %.not.i.i71.17.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i71.17.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.em = and i32 %i.eg, 32
  %.not.i.i71.18.i = icmp eq i32 %i.em, 0
  br i1 %.not.i.i71.18.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.en = and i32 %i.eg, 64
  %.not.i.i71.19.i = icmp eq i32 %i.en, 0
  br i1 %.not.i.i71.19.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.i, label %.critedge2.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.i: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.0613.i.i70.lcssa.wide.i = phi i64 [ 0, %bb.ao ], [ 1, %bb.ap ], [ 2, %bb.aq ], [ 3, %bb.ar ], [ 4, %bb.as ], [ 5, %bb.at ], [ 6, %bb.au ], [ 7, %bb.av ], [ 8, %bb.aw ], [ 9, %bb.ax ], [ 10, %bb.ay ], [ 11, %bb.az ], [ 12, %bb.ba ], [ 13, %bb.bb ], [ 14, %bb.bc ], [ 15, %bb.bd ], [ 16, %bb.be ], [ 17, %bb.bf ], [ 18, %bb.bg ], [ 19, %bb.bh ]
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_Mips_FastCCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList2, i64 %.0613.i.i70.lcssa.wide.i
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !28 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.ep) #27
  %i.eq = zext i16 %i.ep to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  %i.er = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i8 0, ptr %i.er, align 8, !tbaa !1386, !alias.scope !1406
  %i.es = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 %0, ptr %i.es, align 8, !tbaa !1391, !alias.scope !1406
  %i.et = getelementptr inbounds nuw i8, ptr %23, i64 20 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 4, !alias.scope !1406
  %i.ev = and i8 %i.eu, -128
  %i.ew = trunc i32 %.051 to i8
  %i.ex = shl i8 %i.ew, 1
  %i.ey = and i8 %i.ex, 126
  %i.ez = or disjoint i8 %i.ev, %i.ey
  store i8 %i.ez, ptr %i.et, align 4, !alias.scope !1406
  %i.fa = getelementptr inbounds nuw i8, ptr %23, i64 22
  store i16 %1, ptr %i.fa, align 2, !tbaa !30, !alias.scope !1406
  %i.fb = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i16 14, ptr %i.fb, align 8, !tbaa !30, !alias.scope !1406
  store i32 %i.eq, ptr %23, align 8, !tbaa !72, !alias.scope !1406
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1400, !nonnull !24, !align !64 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 3 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !533 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !534
  %.not.i.i75.i = icmp ult i32 %i.ff, %i.fh
  br i1 %.not.i.i75.i, label %bb.bj, label %bb.bi, !prof !611

bb.bi:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(26) %23)
  br label %bb.bk

bb.bj:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.i
  %i.fi = zext i32 %i.ff to i64
  %i.fj = load ptr, ptr %i.fd, align 8, !tbaa !26
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.fj, i64 %i.fi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %23, i64 32, i1 false)
  %i.fl = load i32, ptr %i.fe, align 8, !tbaa !533
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.fe, align 8, !tbaa !533
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %_ZL18CC_Mips16RetHelperjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

.thread70.i:                                      ; preds = %bb.an
  br i1 %.not.i.i71.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit81.i, label %bb.bl

bb.bl:                                            ; preds = %.thread70.i
  %i.fn = and i32 %i.ds, 2097152
  %.not.i.i78.1.i = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i78.1.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit81.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fo = and i32 %i.ds, 8388608
  %.not.i.i78.2.i = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i78.2.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit81.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fp = and i32 %i.ds, 33554432
  %.not.i.i78.3.i = icmp eq i32 %i.fp, 0
  br i1 %.not.i.i78.3.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit81.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fq = and i32 %i.ds, 134217728
  %.not.i.i78.4.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i78.4.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit81.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fr = and i32 %i.ds, 536870912
  %.not.i.i78.5.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i78.5.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit81.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.not.i.i78.6.i = icmp sgt i32 %i.ds, -1
  br i1 %.not.i.i78.6.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit81.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !72 ; 3 uses
  %i.fu = and i32 %i.ft, 2
  %.not.i.i78.7.i = icmp eq i32 %i.fu, 0
  br i1 %.not.i.i78.7.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit81.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fv = and i32 %i.ft, 8
  %.not.i.i78.8.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i78.8.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit81.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fw = and i32 %i.ft, 32
  %.not.i.i78.9.i = icmp eq i32 %i.fw, 0
  br i1 %.not.i.i78.9.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit81.i, label %.critedge2.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit81.i: ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %.thread70.i
  %.0613.i.i77.lcssa.wide.i = phi i64 [ 0, %.thread70.i ], [ 1, %bb.bl ], [ 2, %bb.bm ], [ 3, %bb.bn ], [ 4, %bb.bo ], [ 5, %bb.bp ], [ 6, %bb.bq ], [ 7, %bb.br ], [ 8, %bb.bs ], [ 9, %bb.bt ]
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr @_ZZL14CC_Mips_FastCCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList3, i64 %.0613.i.i77.lcssa.wide.i
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !28 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.fy) #27
  %i.fz = zext i16 %i.fy to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.ga = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i8 0, ptr %i.ga, align 8, !tbaa !1386, !alias.scope !1409
  %i.gb = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 %0, ptr %i.gb, align 8, !tbaa !1391, !alias.scope !1409
  %i.gc = getelementptr inbounds nuw i8, ptr %24, i64 20 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 4, !alias.scope !1409
  %i.ge = and i8 %i.gd, -128
  %i.gf = trunc i32 %.051 to i8
  %i.gg = shl i8 %i.gf, 1
  %i.gh = and i8 %i.gg, 126
  %i.gi = or disjoint i8 %i.ge, %i.gh
  store i8 %i.gi, ptr %i.gc, align 4, !alias.scope !1409
  %i.gj = getelementptr inbounds nuw i8, ptr %24, i64 22
  store i16 %1, ptr %i.gj, align 2, !tbaa !30, !alias.scope !1409
  %i.gk = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i16 14, ptr %i.gk, align 8, !tbaa !30, !alias.scope !1409
  store i32 %i.fz, ptr %24, align 8, !tbaa !72, !alias.scope !1409
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !1400, !nonnull !24, !align !64 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 3 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !533 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !534
  %.not.i.i82.i = icmp ult i32 %i.go, %i.gq
  br i1 %.not.i.i82.i, label %bb.bv, label %bb.bu, !prof !611

bb.bu:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit81.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(26) %24)
  br label %bb.bw

bb.bv:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit81.i
  %i.gr = zext i32 %i.go to i64
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !26
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %i.gr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 32, i1 false)
  %i.gu = load i32, ptr %i.gn, align 8, !tbaa !533
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gn, align 8, !tbaa !533
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %_ZL18CC_Mips16RetHelperjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

.critedge2.i:                                     ; preds = %bb.bt, %bb.bh, %bb.aj
  %.sroa.025.04485.i = phi i16 [ 7, %bb.aj ], [ 14, %bb.bt ], [ 14, %bb.bh ]
  %.0624882.i = phi i32 [ %.06245.i, %bb.aj ], [ %.051, %bb.bt ], [ %.051, %bb.bh ]
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !1412, !range !23, !noundef !24
  %i.gy = trunc nuw i8 %i.gx to i1
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !1413 ; 2 uses
  br i1 %i.gy, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.critedge2.i
  %i.hb = add i64 %i.ha, 7
  %i.hc = and i64 %i.hb, -4                       ; 2 uses
  %i.hd = sub i64 0, %i.hc
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i

bb.by:                                            ; preds = %.critedge2.i
  %i.he = add i64 %i.ha, 3
  %i.hf = and i64 %i.he, -4                       ; 2 uses
  %i.hg = add nsw i64 %i.hf, 4
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i: ; preds = %bb.by, %bb.bx
  %.sink.i = phi i64 [ %i.hc, %bb.bx ], [ %i.hg, %bb.by ]
  %.0.i.i = phi i64 [ %i.hd, %bb.bx ], [ %i.hf, %bb.by ]
  store i64 %.sink.i, ptr %i.gz, align 8, !tbaa !1413
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.hh, align 8, !tbaa !279
  %.sroa.speculated.i.i = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i.i, i8 2)
  store i8 %.sroa.speculated.i.i, ptr %i.hh, align 8, !tbaa !279
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  %i.hi = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 %0, ptr %i.hj, align 8, !tbaa !1391, !alias.scope !1414
  %i.hk = getelementptr inbounds nuw i8, ptr %25, i64 20 ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 4, !alias.scope !1414
  %i.hm = and i8 %i.hl, -128
  %i.hn = trunc i32 %.0624882.i to i8
  %i.ho = shl i8 %i.hn, 1
  %i.hp = and i8 %i.ho, 126
  %i.hq = or disjoint i8 %i.hm, %i.hp
  store i8 %i.hq, ptr %i.hk, align 4, !alias.scope !1414
  %i.hr = getelementptr inbounds nuw i8, ptr %25, i64 22
  store i16 %1, ptr %i.hr, align 2, !tbaa !30, !alias.scope !1414
  %i.hs = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i16 %.sroa.025.04485.i, ptr %i.hs, align 8, !tbaa !30, !alias.scope !1414
  store i8 1, ptr %i.hi, align 8, !tbaa !1386, !alias.scope !1414
  store i64 %.0.i.i, ptr %25, align 8, !tbaa !489, !alias.scope !1414
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !1400, !nonnull !24, !align !64 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 3 uses
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !533 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !534
  %.not.i.i84.i = icmp ult i32 %i.hw, %i.hy
  br i1 %.not.i.i84.i, label %bb.ca, label %bb.bz, !prof !611

bb.bz:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, ptr noundef nonnull align 8 dereferenceable(26) %25)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit85.i

bb.ca:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit.i
  %i.hz = zext i32 %i.hw to i64
  %i.ia = load ptr, ptr %i.hu, align 8, !tbaa !26
  %i.ib = getelementptr inbounds nuw [32 x i8], ptr %i.ia, i64 %i.hz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ib, ptr noundef nonnull align 8 dereferenceable(32) %25, i64 32, i1 false)
  %i.ic = load i32, ptr %i.hv, align 8, !tbaa !533
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr %i.hv, align 8, !tbaa !533
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit85.i

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit85.i: ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %_ZL18CC_Mips16RetHelperjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

.thread89.i:                                      ; preds = %bb.v
  %i.ie = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !1384, !nonnull !24, !align !64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !1385, !nonnull !24, !align !64
  %i.ii = tail call noundef zeroext i1 @_ZNK4llvm13MipsSubtarget9isABI_O32Ev(ptr noundef nonnull align 8 dereferenceable(536) %i.ih) #27
  %i.ij = icmp eq i16 %.sroa.0105.0, 15
  %or.cond.not.i = select i1 %i.ii, i1 %i.ij, i1 false
  br i1 %or.cond.not.i, label %bb.cb, label %_ZL17CC_MipsO32_FastCCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit.i

bb.cb:                                            ; preds = %.thread89.i
  %i.ik = load ptr, ptr %i.ie, align 8, !tbaa !1384, !nonnull !24, !align !64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !1385, !nonnull !24, !align !64 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 358
  %i.io = load i8, ptr %i.in, align 2, !tbaa !1417, !range !23, !noundef !24
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.cp, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.iq = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !26 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  %i.it = load i32, ptr %i.is, align 4, !tbaa !72
  %.not.i.i.i.i = icmp sgt i32 %i.it, -1
  br i1 %.not.i.i.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !72 ; 9 uses
  %i.iw = and i32 %i.iv, 1
  %.not.i.i.1.i.i = icmp eq i32 %i.iw, 0
  br i1 %.not.i.i.1.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ix = and i32 %i.iv, 2
  %.not.i.i.2.i.i = icmp eq i32 %i.ix, 0
  br i1 %.not.i.i.2.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.iy = and i32 %i.iv, 4
  %.not.i.i.3.i.i = icmp eq i32 %i.iy, 0
  br i1 %.not.i.i.3.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.iz = and i32 %i.iv, 8
  %.not.i.i.4.i.i = icmp eq i32 %i.iz, 0
  br i1 %.not.i.i.4.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ja = and i32 %i.iv, 16
  %.not.i.i.5.i.i = icmp eq i32 %i.ja, 0
  br i1 %.not.i.i.5.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jb = and i32 %i.iv, 32
  %.not.i.i.6.i.i = icmp eq i32 %i.jb, 0
  br i1 %.not.i.i.6.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jc = and i32 %i.iv, 64
  %.not.i.i.7.i.i = icmp eq i32 %i.jc, 0
  br i1 %.not.i.i.7.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jd = and i32 %i.iv, 128
  %.not.i.i.8.i.i = icmp eq i32 %i.jd, 0
  br i1 %.not.i.i.8.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.je = and i32 %i.iv, 256
  %.not.i.i.9.i.i = icmp eq i32 %i.je, 0
  br i1 %.not.i.i.9.i.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i, label %.thread47.i.i

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i: ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc
  %.0613.i.i.lcssa.wide.i.i = phi i64 [ 0, %bb.cc ], [ 1, %bb.cd ], [ 2, %bb.ce ], [ 3, %bb.cf ], [ 4, %bb.cg ], [ 5, %bb.ch ], [ 6, %bb.ci ], [ 7, %bb.cj ], [ 8, %bb.ck ], [ 9, %bb.cl ]
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr @_ZZL17CC_MipsO32_FastCCjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE8RegList1, i64 %.0613.i.i.lcssa.wide.i.i
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !28 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.jg) #27
  %i.jh = zext i16 %i.jg to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.ji = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i8 0, ptr %i.ji, align 8, !tbaa !1386, !alias.scope !1418
  %i.jj = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 %0, ptr %i.jj, align 8, !tbaa !1391, !alias.scope !1418
  %i.jk = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 4, !alias.scope !1418
  %i.jm = and i8 %i.jl, -128
  %i.jn = trunc i32 %.051 to i8
  %i.jo = shl i8 %i.jn, 1
  %i.jp = and i8 %i.jo, 126
  %i.jq = or disjoint i8 %i.jm, %i.jp
  store i8 %i.jq, ptr %i.jk, align 4, !alias.scope !1418
  %i.jr = getelementptr inbounds nuw i8, ptr %18, i64 22
  store i16 %1, ptr %i.jr, align 2, !tbaa !30, !alias.scope !1418
  %i.js = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i16 15, ptr %i.js, align 8, !tbaa !30, !alias.scope !1418
  store i32 %i.jh, ptr %18, align 8, !tbaa !72, !alias.scope !1418
  %i.jt = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !1400, !nonnull !24, !align !64 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 3 uses
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !533 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 12
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !534
  %.not.i.i45.i.i = icmp ult i32 %i.jw, %i.jy
  br i1 %.not.i.i45.i.i, label %bb.cn, label %bb.cm, !prof !611

bb.cm:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ju, ptr noundef nonnull align 8 dereferenceable(26) %18)
  br label %bb.co

bb.cn:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.i.i
  %i.jz = zext i32 %i.jw to i64
  %i.ka = load ptr, ptr %i.ju, align 8, !tbaa !26
  %i.kb = getelementptr inbounds nuw [32 x i8], ptr %i.ka, i64 %i.jz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kb, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false)
  %i.kc = load i32, ptr %i.jv, align 8, !tbaa !533
  %i.kd = add i32 %i.kc, 1
  store i32 %i.kd, ptr %i.jv, align 8, !tbaa !533
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %_ZL18CC_Mips16RetHelperjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE.exit

bb.cp:                                            ; preds = %bb.cb
  %i.ke = getelementptr inbounds nuw i8, ptr %i.im, i64 359
end_hunk_0
