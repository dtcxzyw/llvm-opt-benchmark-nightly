Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/louds-trie?download=true
inline.NumInlined: 1936
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK6marisa8grimoire4trie9LoudsTrie14reverse_lookupERNS_5AgentE:bb.a
  %i.cp = sub i64 %i.co, %i.be
  %i.cq = add i64 %i.cj, -2
  %umax70 = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.cq) ; 2 uses
  %i.cr = add i64 %i.cm, %umax70
  %i.cs = add i64 %i.bd, %i.cg
  %i.ct = icmp ne i64 %i.cr, %i.cs                ; 2 uses
  %umin71.neg = sext i1 %i.ct to i64
  %i.cu = select i1 %i.ct, i64 2, i64 1
  %i.cv = add i64 %i.be, -1
  %i.cw = add i64 %i.cv, %umax70
  %i.cx = add i64 %i.bd, %i.cg
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = add i64 %i.cy, %umin71.neg
  %i.da = lshr i64 %i.cz, 1
  %i.db = add nuw i64 %i.cu, %i.da                ; 7 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.cf, i64 1
  %i.dc = add i64 %i.be, -1
  %i.dd = add i64 %i.bd, 1
  %i.de = add i64 %i.dd, %i.cg
  %i.df = sub i64 %i.de, %i.be
  %i.dg = add i64 %i.cj, -2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.df, i64 %i.dg) ; 2 uses
  %i.dh = add i64 %i.dc, %umax
  %i.di = add i64 %i.bd, %i.cg
  %i.dj = icmp ne i64 %i.dh, %i.di                ; 2 uses
  %umin.neg = sext i1 %i.dj to i64
  %umin = zext i1 %i.dj to i64                    ; 2 uses
  %i.dk = add i64 %i.bd, %umin
  %i.dl = add i64 %i.be, -1
  %i.dm = add i64 %i.dl, %umax
  %i.dn = add i64 %i.bd, %i.cg
  %i.do = add i64 %i.dn, %umin
  %i.dp = sub i64 %i.dm, %i.do
  %i.dq = lshr i64 %i.dp, 1                       ; 2 uses
  %i.dr = add i64 %i.dk, %i.dq
  %i.ds = sub i64 %i.dr, %i.be
  %scevgep67 = getelementptr i8, ptr %scevgep, i64 %i.ds
  %scevgep68 = getelementptr i8, ptr %i.ci, i64 -1
  %.neg = sub nsw i64 %umin.neg, %i.dq
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %.neg
  %bound0 = icmp ult ptr %i.ch, %i.ci
  %bound1 = icmp ult ptr %scevgep69, %scevgep67
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check72 = icmp ult i64 %i.db, 16
  br i1 %min.iters.check72, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = and i64 %i.db, 8
  %n.vec = and i64 %i.db, -16                     ; 5 uses
  %i.du = sub i64 0, %n.vec
  %i.dv = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.ch, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dx = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.dx
  %next.gep73 = getelementptr i8, ptr %i.ch, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep73, align 1, !tbaa !55, !alias.scope !254, !noalias !255
  %i.dy = getelementptr i8, ptr %next.gep, i64 -15 ; 2 uses
  %wide.load74 = load <16 x i8>, ptr %i.dy, align 1, !tbaa !55, !alias.scope !255
  %reverse = shufflevector <16 x i8> %wide.load74, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %next.gep73, align 1, !tbaa !55, !alias.scope !254, !noalias !255
  %reverse75 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse75, ptr %i.dy, align 1, !tbaa !55, !alias.scope !255
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.dt, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !256

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec77 = and i64 %i.db, -8                    ; 4 uses
  %i.ea = sub i64 0, %n.vec77
  %i.eb = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.ch, i64 %n.vec77
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index78 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 3 uses
  %i.ed = sub i64 0, %index78
  %next.gep79 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.ed
  %next.gep80 = getelementptr i8, ptr %i.ch, i64 %index78 ; 2 uses
  %wide.load81 = load <8 x i8>, ptr %next.gep80, align 1, !tbaa !55, !alias.scope !254, !noalias !255
  %i.ee = getelementptr i8, ptr %next.gep79, i64 -7 ; 2 uses
  %wide.load82 = load <8 x i8>, ptr %i.ee, align 1, !tbaa !55, !alias.scope !255
  %reverse83 = shufflevector <8 x i8> %wide.load82, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse83, ptr %next.gep80, align 1, !tbaa !55, !alias.scope !254, !noalias !255
  %reverse84 = shufflevector <8 x i8> %wide.load81, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse84, ptr %i.ee, align 1, !tbaa !55, !alias.scope !255
  %index.next85 = add nuw i64 %index78, 8         ; 2 uses
  %i.ef = icmp eq i64 %index.next85, %n.vec77
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !244

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n86 = icmp eq i64 %i.db, %n.vec77
  br i1 %cmp.n86, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %iter.check ], [ %.sroa.0.08.i.i, %vector.memcheck ], [ %i.dv, %vec.epilog.iter.check ], [ %i.eb, %vec.epilog.middle.block ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.ch, %iter.check ], [ %i.ch, %vector.memcheck ], [ %i.dw, %vec.epilog.iter.check ], [ %i.ec, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.eg = load i8, ptr %.sroa.05.09.i.i, align 1, !tbaa !55
  %i.eh = load i8, ptr %.sroa.0.010.i.i, align 1, !tbaa !55
  store i8 %i.eh, ptr %.sroa.05.09.i.i, align 1, !tbaa !55
  store i8 %i.eg, ptr %.sroa.0.010.i.i, align 1, !tbaa !55
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -1 ; 2 uses
  %i.ej = icmp ult ptr %i.ei, %.sroa.0.0.i.i
  br i1 %i.ej, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, !llvm.loop !245

bb.o:                                             ; preds = %bb.i
  %i.ek = load ptr, ptr %i.ah, align 8, !tbaa !136
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.at
  %i.em = load i8, ptr %i.el, align 1, !tbaa !55  ; 2 uses
  %i.en = load ptr, ptr %i.ag, align 8, !tbaa !139 ; 3 uses
  %i.eo = load ptr, ptr %i.h, align 8, !tbaa !137
  %.not.i.i = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 %i.em, ptr %i.en, align 1, !tbaa !55
  %i.ep = load ptr, ptr %i.ag, align 8, !tbaa !139
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store ptr %i.eq, ptr %i.ag, align 8, !tbaa !139
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

bb.q:                                             ; preds = %bb.o
  %i.er = load ptr, ptr %i.g, align 8, !tbaa !138 ; 4 uses
  %i.es = ptrtoint ptr %i.en to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 8 uses
  %i.ev = icmp eq i64 %i.eu, 9223372036854775807
  br i1 %i.ev, label %bb.r, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #23
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ew = add i64 %.sroa.speculated.i.i.i.i, %i.eu ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.eu
  %i.ey = tail call i64 @llvm.umin.i64(i64 %i.ew, i64 9223372036854775807)
  %i.ez = select i1 %i.ex, i64 9223372036854775807, i64 %i.ey ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ez, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #22 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.eu ; 2 uses
  store i8 %i.em, ptr %i.fb, align 1, !tbaa !55
  %i.fc = icmp sgt i64 %i.eu, 0
  br i1 %i.fc, label %bb.s, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.s:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fa, ptr align 1 %i.er, i64 %i.eu, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.s, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.eu) #20
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  store ptr %i.fa, ptr %i.g, align 8, !tbaa !138
  store ptr %i.fd, ptr %i.ag, align 8, !tbaa !139
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ez
  store ptr %i.fe, ptr %i.h, align 8, !tbaa !137
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.p, %_ZNK6marisa8grimoire4trie9LoudsTrie7restoreERNS_5AgentEm.exit
  %i.ff = load i32, ptr %i.ab, align 8, !tbaa !127
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = load i64, ptr %i.an, align 8, !tbaa !112
  %.not38 = icmp ult i64 %i.fh, %i.fg
  br i1 %.not38, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !51  ; 13 uses
  %i.fj = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 7 uses
  %i.fk = icmp ne ptr %i.fi, %i.fj
  %.sroa.0.08.i.i39 = getelementptr inbounds i8, ptr %i.fj, i64 -1 ; 7 uses
  %i.fl = icmp ult ptr %i.fi, %.sroa.0.08.i.i39
  %or.cond.i.i40 = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %or.cond.i.i40, label %iter.check121, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45

iter.check121:                                    ; preds = %bb.u
  %2 = ptrtoaddr ptr %i.fj to i64
  %3 = ptrtoaddr ptr %i.fi to i64                 ; 2 uses
  %i.fm = add i64 %2, -2
  %i.fn = add i64 %3, 1
  %umax97 = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 %i.fn)
  %i.fo = xor i64 %3, -1
  %i.fp = add i64 %umax97, %i.fo                  ; 2 uses
  %i.fq = icmp ne i64 %i.fp, 0
  %umin98 = zext i1 %i.fq to i64                  ; 2 uses
  %i.fr = sub i64 %i.fp, %umin98
  %i.fs = lshr i64 %i.fr, 1
  %i.ft = add nuw i64 %i.fs, %umin98
  %i.fu = add i64 %i.ft, 1                        ; 7 uses
  %min.iters.check99 = icmp ult i64 %i.fu, 8
  br i1 %min.iters.check99, label %.lr.ph.i.i41.preheader, label %vector.memcheck100

vector.memcheck100:                               ; preds = %iter.check121
  %4 = ptrtoaddr ptr %i.fj to i64
  %i.fv = add i64 %4, -2
  %5 = ptrtoaddr ptr %i.fi to i64                 ; 2 uses
  %i.fw = add i64 %5, 1
  %i.fx = tail call i64 @llvm.umax.i64(i64 %i.fv, i64 %i.fw)
  %i.fy = xor i64 %5, -1
  %i.fz = add i64 %i.fx, %i.fy                    ; 2 uses
  %i.ga = icmp ne i64 %i.fz, 0
  %i.gb = zext i1 %i.ga to i64                    ; 2 uses
  %i.gc = sub i64 %i.fz, %i.gb
  %i.gd = lshr i64 %i.gc, 1
  %i.ge = add nuw i64 %i.gd, %i.gb                ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fi, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.gf, i64 1
  %i.gh = xor i64 %i.ge, -1
  %i.gi = getelementptr i8, ptr %i.fj, i64 %i.gh
  %bound0101 = icmp ult ptr %i.fi, %i.fj
  %bound1102 = icmp ult ptr %i.gi, %i.gg
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.lr.ph.i.i41.preheader, label %vector.main.loop.iter.check104

vector.main.loop.iter.check104:                   ; preds = %vector.memcheck100
  %min.iters.check105 = icmp ult i64 %i.fu, 16
  br i1 %min.iters.check105, label %vec.epilog.ph125, label %vector.ph106

vector.ph106:                                     ; preds = %vector.main.loop.iter.check104
  %i.gj = and i64 %i.fu, 8
  %n.vec107 = and i64 %i.fu, -16                  ; 5 uses
  %i.gk = sub i64 0, %n.vec107
  %i.gl = getelementptr i8, ptr %.sroa.0.08.i.i39, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.fi, i64 %n.vec107
  br label %vector.body108

vector.body108:                                   ; preds = %vector.ph106, %vector.body108
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next116, %vector.body108 ] ; 3 uses
  %i.gn = sub i64 0, %index109
  %next.gep110 = getelementptr i8, ptr %.sroa.0.08.i.i39, i64 %i.gn
  %next.gep111 = getelementptr i8, ptr %i.fi, i64 %index109 ; 2 uses
  %wide.load112 = load <16 x i8>, ptr %next.gep111, align 1, !tbaa !55, !alias.scope !257, !noalias !258
  %i.go = getelementptr i8, ptr %next.gep110, i64 -15 ; 2 uses
  %wide.load113 = load <16 x i8>, ptr %i.go, align 1, !tbaa !55, !alias.scope !258
  %reverse114 = shufflevector <16 x i8> %wide.load113, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse114, ptr %next.gep111, align 1, !tbaa !55, !alias.scope !257, !noalias !258
  %reverse115 = shufflevector <16 x i8> %wide.load112, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse115, ptr %i.go, align 1, !tbaa !55, !alias.scope !258
  %index.next116 = add nuw i64 %index109, 16      ; 2 uses
  %i.gp = icmp eq i64 %index.next116, %n.vec107
  br i1 %i.gp, label %middle.block117, label %vector.body108, !llvm.loop !249

middle.block117:                                  ; preds = %vector.body108
  %cmp.n118 = icmp eq i64 %i.fu, %n.vec107
  br i1 %cmp.n118, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45.loopexit, label %vec.epilog.iter.check123

vec.epilog.iter.check123:                         ; preds = %middle.block117
  %min.epilog.iters.check124.not.not = icmp eq i64 %i.gj, 0
  br i1 %min.epilog.iters.check124.not.not, label %.lr.ph.i.i41.preheader, label %vec.epilog.ph125, !prof !256

vec.epilog.ph125:                                 ; preds = %vector.main.loop.iter.check104, %vec.epilog.iter.check123
  %vec.epilog.resume.val119 = phi i64 [ %n.vec107, %vec.epilog.iter.check123 ], [ 0, %vector.main.loop.iter.check104 ]
  %n.vec126 = and i64 %i.fu, -8                   ; 4 uses
  %i.gq = sub i64 0, %n.vec126
  %i.gr = getelementptr i8, ptr %.sroa.0.08.i.i39, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.fi, i64 %n.vec126
  br label %vec.epilog.vector.body127

vec.epilog.vector.body127:                        ; preds = %vec.epilog.vector.body127, %vec.epilog.ph125
  %index128 = phi i64 [ %vec.epilog.resume.val119, %vec.epilog.ph125 ], [ %index.next135, %vec.epilog.vector.body127 ] ; 3 uses
  %i.gt = sub i64 0, %index128
  %next.gep129 = getelementptr i8, ptr %.sroa.0.08.i.i39, i64 %i.gt
  %next.gep130 = getelementptr i8, ptr %i.fi, i64 %index128 ; 2 uses
  %wide.load131 = load <8 x i8>, ptr %next.gep130, align 1, !tbaa !55, !alias.scope !257, !noalias !258
  %i.gu = getelementptr i8, ptr %next.gep129, i64 -7 ; 2 uses
  %wide.load132 = load <8 x i8>, ptr %i.gu, align 1, !tbaa !55, !alias.scope !258
  %reverse133 = shufflevector <8 x i8> %wide.load132, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse133, ptr %next.gep130, align 1, !tbaa !55, !alias.scope !257, !noalias !258
  %reverse134 = shufflevector <8 x i8> %wide.load131, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse134, ptr %i.gu, align 1, !tbaa !55, !alias.scope !258
  %index.next135 = add nuw i64 %index128, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next135, %n.vec126
  br i1 %i.gv, label %vec.epilog.middle.block136, label %vec.epilog.vector.body127, !llvm.loop !250

vec.epilog.middle.block136:                       ; preds = %vec.epilog.vector.body127
  %cmp.n137 = icmp eq i64 %i.fu, %n.vec126
  br i1 %cmp.n137, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45.loopexit, label %.lr.ph.i.i41.preheader

.lr.ph.i.i41.preheader:                           ; preds = %iter.check121, %vector.memcheck100, %vec.epilog.iter.check123, %vec.epilog.middle.block136
  %.sroa.0.010.i.i42.ph = phi ptr [ %.sroa.0.08.i.i39, %iter.check121 ], [ %.sroa.0.08.i.i39, %vector.memcheck100 ], [ %i.gl, %vec.epilog.iter.check123 ], [ %i.gr, %vec.epilog.middle.block136 ]
  %.sroa.05.09.i.i43.ph = phi ptr [ %i.fi, %iter.check121 ], [ %i.fi, %vector.memcheck100 ], [ %i.gm, %vec.epilog.iter.check123 ], [ %i.gs, %vec.epilog.middle.block136 ]
  br label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %.lr.ph.i.i41.preheader, %.lr.ph.i.i41
  %.sroa.0.010.i.i42 = phi ptr [ %.sroa.0.0.i.i44, %.lr.ph.i.i41 ], [ %.sroa.0.010.i.i42.ph, %.lr.ph.i.i41.preheader ] ; 3 uses
  %.sroa.05.09.i.i43 = phi ptr [ %i.gy, %.lr.ph.i.i41 ], [ %.sroa.05.09.i.i43.ph, %.lr.ph.i.i41.preheader ] ; 3 uses
  %i.gw = load i8, ptr %.sroa.05.09.i.i43, align 1, !tbaa !55
  %i.gx = load i8, ptr %.sroa.0.010.i.i42, align 1, !tbaa !55
  store i8 %i.gx, ptr %.sroa.05.09.i.i43, align 1, !tbaa !55
  store i8 %i.gw, ptr %.sroa.0.010.i.i42, align 1, !tbaa !55
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i43, i64 1 ; 2 uses
  %.sroa.0.0.i.i44 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i42, i64 -1 ; 2 uses
  %i.gz = icmp ult ptr %i.gy, %.sroa.0.0.i.i44
  br i1 %i.gz, label %.lr.ph.i.i41, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45.loopexit, !llvm.loop !251

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45.loopexit: ; preds = %.lr.ph.i.i41, %vec.epilog.middle.block136, %middle.block117
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !138
  %.pre48 = load ptr, ptr %i.ag, align 8, !tbaa !139
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45

bb.v:                                             ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit
  %i.ha = tail call noundef i64 @_ZNK6marisa8grimoire6vector9BitVector7select1Em(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.fg)
  %i.hb = load i32, ptr %i.ab, align 8, !tbaa !127
  %i.hc = zext i32 %i.hb to i64
  %i.hd = xor i64 %i.hc, -1
  %i.he = add i64 %i.ha, %i.hd                    ; 2 uses
  %i.hf = trunc i64 %i.he to i32
  store i32 %i.hf, ptr %i.ab, align 8, !tbaa !127
  br label %bb.i, !llvm.loop !252

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45: ; preds = %bb.u, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45.loopexit, %bb.g
  %.sink66 = phi ptr [ %i.aq, %bb.g ], [ %.pre48, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45.loopexit ], [ %i.fj, %bb.u ]
  %.sink65 = phi ptr [ %i.ao, %bb.g ], [ %.pre, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45.loopexit ], [ %i.fi, %bb.u ] ; 2 uses
  %i.hg = ptrtoint ptr %.sink66 to i64
  %i.hh = ptrtoint ptr %.sink65 to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sink65, ptr %i.hj, align 8, !tbaa !65
  %i.hk = trunc i64 %i.hi to i32
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.hk, ptr %i.hl, align 8, !tbaa !66
  %i.hm = load i64, ptr %i.a, align 8, !tbaa !253
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !55
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare noundef i64 @_ZNK6marisa8grimoire6vector9BitVector7select1Em(ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6marisa8grimoire4trie9LoudsTrie20common_prefix_searchERNS_5AgentE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !129
  switch i32 %i.d, label %bb.b [
    i32 3, label %bb.k
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !127
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 0, ptr %i.f, align 4, !tbaa !128
  store i32 1, ptr %i.c, align 4, !tbaa !129
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.i = load i64, ptr %i.h, align 8, !tbaa !54
  %i.j = and i64 %i.i, 1
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = load ptr, ptr %1, align 8, !tbaa !132
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.n, align 8, !tbaa !66
  %i.o = tail call noundef i64 @_ZNK6marisa8grimoire6vector9BitVector5rank1Em(ptr noundef nonnull align 8 dereferenceable(208) %i.k, i64 noundef 0)
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.p, ptr %i.q, align 4, !tbaa !55
  br label %bb.k

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.v = load i32, ptr %i.r, align 4, !tbaa !128
  %i.w = zext i32 %i.v to i64
  %i.x = load i64, ptr %i.s, align 8, !tbaa !131
  %i.y = icmp ugt i64 %i.x, %i.w
  br i1 %i.y, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef zeroext i1 @_ZNK6marisa8grimoire4trie9LoudsTrie10find_childERNS_5AgentE(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
