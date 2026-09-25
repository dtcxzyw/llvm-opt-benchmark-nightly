Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/aig_manager?download=true
inline.NumInlined: 418
inline.NumDeleted: 212
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4bzla8bitblast10AigManager11rewrite_andERKNS0_7AigNodeES4_:bb.a
  %i.ee = icmp eq i64 %.0.i3.i264, %i.eb
  %or.cond256 = or i1 %i.ed, %i.ee
  br i1 %or.cond256, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  tail call void @_ZN4bzla8bitblast7AigNodeC1EPNS0_11AigNodeDataEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.au, i1 noundef zeroext false)
  br label %.thread392

bb.ax:                                            ; preds = %.thread376, %bb.av, %bb.as
  %or.cond30386 = phi i1 [ %or.cond30382, %.thread376 ], [ true, %bb.av ], [ false, %bb.as ]
  %or.cond16366373385 = phi i1 [ %or.cond16366373.ph, %.thread376 ], [ %or.cond16, %bb.av ], [ %or.cond16, %bb.as ]
  %or.cond14361365374384 = phi i1 [ %or.cond14361365374.ph, %.thread376 ], [ %or.cond14, %bb.av ], [ %or.cond14, %bb.as ]
  %or.cond23375383 = phi i1 [ %or.cond23375.ph, %.thread376 ], [ false, %bb.av ], [ false, %bb.as ]
  br i1 %or.cond3, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ef = icmp eq i64 %.0.i.i, %.0545
  %i.eg = icmp eq i64 %.0.i3.i, %.0545
  %or.cond408 = select i1 %i.ef, i1 true, i1 %i.eg
  br i1 %or.cond408, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZN4bzla8bitblast7AigNodeC1EPNS0_11AigNodeDataEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.au, i1 noundef zeroext false)
  br label %.thread392

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  br i1 %or.cond6, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.eh = icmp eq i64 %.0.i.i263, %.0357544
  %i.ei = icmp eq i64 %.0.i3.i264, %.0357544
  %or.cond409 = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond409, label %bb.bc, label %.thread387

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZN4bzla8bitblast7AigNodeC1EPNS0_11AigNodeDataEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bw, i1 noundef zeroext false)
  br label %.thread392

bb.bd:                                            ; preds = %bb.ba
  %i.ej = and i64 %.0357544, %.0545
  %or.cond38 = icmp slt i64 %i.ej, 0
  %or.cond40 = select i1 %or.cond38, i1 %i.cv, i1 false
  %or.cond42 = select i1 %or.cond40, i1 %i.cw, i1 false
  br i1 %or.cond42, label %bb.be, label %.thread387

bb.be:                                            ; preds = %bb.bd
  %i.ek = icmp eq i64 %.0.i.i, %.0.i.i263
  %i.el = sub nsw i64 0, %.0.i3.i264
  %i.em = icmp eq i64 %.0.i3.i, %i.el
  %or.cond411 = select i1 %i.ek, i1 %i.em, i1 false
  br i1 %or.cond411, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.en = icmp eq i64 %.0.i.i, %.0.i3.i264        ; 2 uses
  %i.eo = sub nsw i64 0, %.0.i.i263
  %i.ep = icmp eq i64 %.0.i3.i, %i.eo
  %or.cond413 = select i1 %i.en, i1 %i.ep, i1 false
  br i1 %or.cond413, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.eq = tail call i64 @llvm.abs.i64(i64 %.0.i.i, i1 true)
  %i.er = getelementptr [8 x i8], ptr %i.ar, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 -8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !11, !noalias !82
  %i.eu = icmp sgt i64 %.0.i.i, 0
  tail call void @_ZN4bzla8bitblast7AigNodeC1EPNS0_11AigNodeDataEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.et, i1 noundef zeroext %i.eu)
  br label %.thread392

bb.bh:                                            ; preds = %bb.bf
  %i.ev = icmp eq i64 %.0.i3.i264, %.0.i3.i
  %i.ew = sub nsw i64 0, %.0.i.i
  %i.ex = icmp eq i64 %.0.i.i263, %i.ew
  %or.cond415 = select i1 %i.ev, i1 %i.ex, i1 false
  br i1 %or.cond415, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ey = sub nsw i64 0, %.0.i3.i
  %i.ez = icmp eq i64 %.0.i.i263, %i.ey
  %or.cond417 = select i1 %i.en, i1 %i.ez, i1 false
  br i1 %or.cond417, label %bb.bj, label %.thread387

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0.i3.i264.lcssa659 = phi i64 [ %.0.i.i, %bb.bi ], [ %.0.i3.i, %bb.bh ] ; 2 uses
  %i.fa = tail call i64 @llvm.abs.i64(i64 %.0.i3.i264.lcssa659, i1 true)
  %i.fb = getelementptr [8 x i8], ptr %i.ar, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.fb, i64 -8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !11, !noalias !83
  %i.fe = icmp sgt i64 %.0.i3.i264.lcssa659, 0
  tail call void @_ZN4bzla8bitblast7AigNodeC1EPNS0_11AigNodeDataEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.fd, i1 noundef zeroext %i.fe)
  br label %.thread392

.thread387:                                       ; preds = %bb.bb, %bb.bi, %bb.bd
  br i1 %or.cond14361365374384, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %.thread387
  %i.ff = icmp eq i64 %.0.i.i, %.0545
  br i1 %i.ff, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fg = sub nsw i64 0, %.0.i3.i
  br label %bb.cg

bb.bm:                                            ; preds = %bb.bk
  %i.fh = icmp eq i64 %.0.i3.i, %.0545
  br i1 %i.fh, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fi = sub nsw i64 0, %.0.i.i
  br label %bb.cg

bb.bo:                                            ; preds = %bb.bm, %.thread387
  br i1 %or.cond16366373385, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  %i.fj = icmp eq i64 %.0.i.i263, %.0357544
  br i1 %i.fj, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.fk = sub nsw i64 0, %.0.i3.i264
  br label %bb.cg

bb.br:                                            ; preds = %bb.bp
  %i.fl = icmp eq i64 %.0.i3.i264, %.0357544
  br i1 %i.fl, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.fm = sub nsw i64 0, %.0.i.i263
  br label %bb.cg

bb.bt:                                            ; preds = %bb.br, %bb.bo
  br i1 %or.cond23375383, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.fn = icmp eq i64 %.0.i.i, %.0.i.i263
  %i.fo = icmp eq i64 %.0.i.i, %.0.i3.i264
  %or.cond418 = select i1 %i.fn, i1 true, i1 %i.fo
  br i1 %or.cond418, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.fp = sub nsw i64 0, %.0.i3.i
  br label %bb.cg

bb.bw:                                            ; preds = %bb.bu
  %i.fq = icmp eq i64 %.0.i3.i, %.0.i.i263
  %i.fr = icmp eq i64 %.0.i3.i, %.0.i3.i264
  %or.cond257 = or i1 %i.fq, %i.fr
  br i1 %or.cond257, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.fs = sub nsw i64 0, %.0.i.i
  br label %bb.cg

bb.by:                                            ; preds = %bb.bw, %bb.bt
  br i1 %or.cond30386, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.ft = icmp eq i64 %.0.i.i263, %.0.i.i
  %i.fu = icmp eq i64 %.0.i.i263, %.0.i3.i
  %or.cond419 = select i1 %i.ft, i1 true, i1 %i.fu
  br i1 %or.cond419, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.fv = sub nsw i64 0, %.0.i3.i264
  br label %bb.cg

bb.cb:                                            ; preds = %bb.bz
  %i.fw = icmp eq i64 %.0.i3.i264, %.0.i.i
  %i.fx = icmp eq i64 %.0.i3.i264, %.0.i3.i
  %or.cond258 = or i1 %i.fw, %i.fx
  br i1 %or.cond258, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.fy = sub nsw i64 0, %.0.i.i263
  br label %bb.cg

bb.cd:                                            ; preds = %bb.cb, %bb.by
  br i1 %or.cond12, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.fz = icmp eq i64 %.0.i.i, %.0.i.i263
  %i.ga = icmp eq i64 %.0.i3.i, %.0.i.i263
  %or.cond420 = select i1 %i.fz, i1 true, i1 %i.ga
  br i1 %or.cond420, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gb = icmp eq i64 %.0.i.i, %.0.i3.i264
  %i.gc = icmp eq i64 %.0.i3.i, %.0.i3.i264
  %or.cond259 = or i1 %i.gb, %i.gc
  br i1 %or.cond259, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cc, %bb.ca, %bb.bx, %bb.bv, %bb.bs, %bb.bq, %bb.bn, %bb.bl
  %.1358 = phi i64 [ %.0357544, %bb.bq ], [ %.0357544, %bb.bs ], [ %i.fp, %bb.bv ], [ %i.fs, %bb.bx ], [ %.0357544, %bb.ca ], [ %.0357544, %bb.cc ], [ %i.fg, %bb.bl ], [ %.0357544, %bb.ce ], [ %i.fi, %bb.bn ], [ %.0357544, %bb.cf ] ; 3 uses
  %.1 = phi i64 [ %i.fk, %bb.bq ], [ %i.fm, %bb.bs ], [ %.0545, %bb.bv ], [ %.0545, %bb.bx ], [ %i.fv, %bb.ca ], [ %i.fy, %bb.cc ], [ %.0545, %bb.bl ], [ %.0.i3.i264, %bb.ce ], [ %.0545, %bb.bn ], [ %.0.i.i263, %bb.cf ] ; 3 uses
  %i.gd = icmp eq i64 %.1358, 1
  %i.ge = icmp eq i64 %.1358, %.1
  %or.cond403 = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond403, label %._crit_edge, label %.lr.ph

bb.ch:                                            ; preds = %bb.cd, %bb.cf
  %i.gf = icmp samesign ugt i64 %i.aq, %i.bt      ; 2 uses
  %spec.select = select i1 %i.gf, i64 %.0545, i64 %.0357544 ; 2 uses
  %spec.select421 = select i1 %i.gf, i64 %.0357544, i64 %.0545 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.gg = tail call noundef i64 @llvm.abs.i64(i64 %spec.select, i1 true)
  %i.gh = getelementptr [8 x i8], ptr %i.ar, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 -8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !11, !noalias !84
  %6 = icmp slt i64 %spec.select, 0
  call void @_ZN4bzla8bitblast7AigNodeC1EPNS0_11AigNodeDataEb(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.gj, i1 noundef zeroext %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.gk = call noundef i64 @llvm.abs.i64(i64 %spec.select421, i1 true)
  %i.gl = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !44, !noalias !85
  %i.gm = getelementptr [8 x i8], ptr %i.gl, i64 %i.gk
  %i.gn = getelementptr i8, ptr %i.gm, i64 -8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !11, !noalias !85
  %7 = icmp slt i64 %spec.select421, 0
  invoke void @_ZN4bzla8bitblast7AigNodeC1EPNS0_11AigNodeDataEb(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.go, i1 noundef zeroext %7)
          to label %_ZNK4bzla8bitblast10AigManager8get_nodeEl.exit unwind label %bb.cj

_ZNK4bzla8bitblast10AigManager8get_nodeEl.exit:   ; preds = %bb.ch
  %i.gp = invoke noundef ptr @_ZN4bzla8bitblast10AigManager18find_or_create_andERKNS0_7AigNodeES4_(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %_ZNK4bzla8bitblast10AigManager8get_nodeEl.exit
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @_ZN4bzla8bitblast7AigNodeC1EPNS0_11AigNodeDataEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.gp, i1 noundef zeroext false)
  br label %.thread392

bb.cj:                                            ; preds = %bb.ch
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ck:                                            ; preds = %_ZNK4bzla8bitblast10AigManager8get_nodeEl.exit
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #16
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pn = phi { ptr, i32 } [ %i.gr, %bb.ck ], [ %i.gq, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN4bzla8bitblast7AigNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn

.thread392:                                       ; preds = %bb.bj, %bb.bg, %bb.bc, %bb.az, %bb.aw, %bb.ar, %bb.am, %bb.aj, %bb.ag, %bb.ab, %bb.y, %bb.ci, %bb.j, %bb.h, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4bzla8bitblast10AigManager8get_nodeEl(ptr dead_on_unwind noalias nonnull writable sret(%"class.bzla::bitblast::AigNode") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noundef i64 @llvm.abs.i64(i64 %2, i1 true)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = icmp slt i64 %2, 0
  tail call void @_ZN4bzla8bitblast7AigNodeC1EPNS0_11AigNodeDataEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.f, i1 noundef zeroext %i.g)
  ret void
}

declare void @_ZN4bzla8bitblast7AigNodeC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_ZNK4bzla8bitblast10AigManager12get_childrenEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef i64 @llvm.abs.i64(i64 %1, i1 true)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19   ; 4 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.h to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.h, -2
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = sub nsw i64 0, %i.n
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit

bb.d:                                             ; preds = %bb.b
  %i.p = inttoptr i64 %i.h to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !22
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit

_ZNK4bzla8bitblast7AigNode6get_idEv.exit:         ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.o, %bb.c ], [ %i.r, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !19   ; 4 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit4, label %bb.e

bb.e:                                             ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit
  %i.v = trunc i64 %i.t to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = and i64 %i.t, -2
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !22
  %i.aa = sub nsw i64 0, %i.z
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit4

bb.g:                                             ; preds = %bb.e
  %i.ab = inttoptr i64 %i.t to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !22
  br label %_ZNK4bzla8bitblast7AigNode6get_idEv.exit4

_ZNK4bzla8bitblast7AigNode6get_idEv.exit4:        ; preds = %_ZNK4bzla8bitblast7AigNode6get_idEv.exit, %bb.f, %bb.g
  %.0.i3 = phi i64 [ 0, %_ZNK4bzla8bitblast7AigNode6get_idEv.exit ], [ %i.aa, %bb.f ], [ %i.ad, %bb.g ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.0.i, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.0.i3, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla8bitblast10AigManager15garbage_collectEPNS0_11AigNodeDataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !43, !range !87, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNSt6vectorIPN4bzla8bitblast11AigNodeDataESaIS3_EED2Ev.exit27, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !43
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #19 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4bzla8bitblast11AigNodeDataESt14default_deleteIS2_EE5resetEPS2_.exit, %bb.b
  %.sroa.029.0 = phi ptr [ %i.d, %bb.b ], [ %.sroa.029.4, %_ZNSt10unique_ptrIN4bzla8bitblast11AigNodeDataESt14default_deleteIS2_EE5resetEPS2_.exit ] ; 8 uses
  %.sroa.13.0 = phi ptr [ %i.e, %bb.b ], [ %.sroa.13.3, %_ZNSt10unique_ptrIN4bzla8bitblast11AigNodeDataESt14default_deleteIS2_EE5resetEPS2_.exit ] ; 2 uses
  %.sroa.24.0 = phi ptr [ %i.e, %bb.b ], [ %.sroa.24.4, %_ZNSt10unique_ptrIN4bzla8bitblast11AigNodeDataESt14default_deleteIS2_EE5resetEPS2_.exit ] ; 7 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.13.0, i64 -8 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4bzla8bitblast18AigNodeUniqueTable5eraseEPKNS0_11AigNodeDataE(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull %i.k)
  %i.o = load i64, ptr %i.l, align 8, !tbaa !19
  %i.p = and i64 %i.o, -2
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = load <2 x i32>, ptr %i.r, align 8, !tbaa !88
  %i.t = add <2 x i32> %i.s, splat (i32 -1)       ; 2 uses
  store <2 x i32> %i.t, ptr %i.r, align 8, !tbaa !88
  store i64 0, ptr %i.l, align 8, !tbaa !19
  %i.u = extractelement <2 x i32> %i.t, i64 0
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorIPN4bzla8bitblast11AigNodeDataESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.j, %.sroa.24.0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.q, ptr %i.j, align 8, !tbaa !11
  br label %_ZNSt6vectorIPN4bzla8bitblast11AigNodeDataESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.w = ptrtoint ptr %.sroa.24.0 to i64
  %i.x = ptrtoint ptr %.sroa.029.0 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 6 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.h, label %_ZNKSt6vectorIPN4bzla8bitblast11AigNodeDataESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPN4bzla8bitblast11AigNodeDataESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #19
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIPN4bzla8bitblast11AigNodeDataESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store ptr %i.q, ptr %i.ah, align 8, !tbaa !11
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.i, label %_ZNSt6vectorIPN4bzla8bitblast11AigNodeDataESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
end_hunk_0
