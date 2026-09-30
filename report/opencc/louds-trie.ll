Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/louds-trie?download=true
inline.NumInlined: 1936
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK6marisa8grimoire4trie9LoudsTrie14reverse_lookupERNS_5AgentE:bb.a
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 noundef 0)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !137
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !138  ; 4 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ult i64 %i.m, 32
  br i1 %i.n, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i, label %_ZN6marisa8grimoire4trie5State19reverse_lookup_initEv.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !139
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.l                       ; 3 uses
  %i.s = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 4 uses
  %i.t = icmp sgt i64 %i.r, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.j, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i: ; preds = %bb.e, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #20
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i.i
  store ptr %i.s, ptr %i.g, align 8, !tbaa !138
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store ptr %i.u, ptr %i.o, align 8, !tbaa !139
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.v, ptr %i.h, align 8, !tbaa !137
  br label %_ZN6marisa8grimoire4trie5State19reverse_lookup_initEv.exit

_ZN6marisa8grimoire4trie5State19reverse_lookup_initEv.exit: ; preds = %bb.d, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store i32 0, ptr %i.w, align 4, !tbaa !129
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.y = load i64, ptr %i.a, align 8, !tbaa !253
  %i.z = tail call noundef i64 @_ZNK6marisa8grimoire6vector9BitVector7select1Em(ptr noundef nonnull align 8 dereferenceable(208) %i.x, i64 noundef %i.y) ; 3 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 4 uses
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !127
  %i.ac = and i64 %i.z, 4294967295
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %.preheader

.preheader:                                       ; preds = %_ZN6marisa8grimoire4trie5State19reverse_lookup_initEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1064
  br label %bb.i

bb.g:                                             ; preds = %_ZN6marisa8grimoire4trie5State19reverse_lookup_initEv.exit
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !139
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit45

bb.h:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #21
  resume { ptr, i32 } %i.ar

bb.i:                                             ; preds = %.preheader, %bb.v
  %i.as = phi i64 [ %i.z, %.preheader ], [ %i.hi, %bb.v ] ; 2 uses
  %i.at = and i64 %i.as, 4294967295               ; 4 uses
  %i.au = lshr i64 %i.at, 6
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !89
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !54
  %i.ay = and i64 %i.as, 63
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.az, %i.ax
  %.not47 = icmp eq i64 %i.ba, 0
  br i1 %.not47, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !139
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.bd = ptrtoint ptr %i.bb to i64               ; 8 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 8 uses
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = load ptr, ptr %i.ah, align 8, !tbaa !136
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.at
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !55
  %i.bj = tail call noundef i64 @_ZNK6marisa8grimoire6vector9BitVector5rank1Em(ptr noundef nonnull align 8 dereferenceable(208) %i.af, i64 noundef %i.at)
  %i.bk = load i64, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %i.bl = mul i64 %i.bk, %i.bj                    ; 3 uses
  %i.bm = lshr i64 %i.bl, 6
  %i.bn = and i64 %i.bl, 63                       ; 2 uses
  %i.bo = add i64 %i.bn, %i.bk
  %i.bp = icmp ult i64 %i.bo, 65
  %i.bq = load ptr, ptr %i.aj, align 8, !tbaa !89
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bm ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !54 ; 2 uses
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = lshr i64 %i.bs, %i.bn
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEm.exit

bb.l:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !54
  %i.bw = tail call i64 @llvm.fshr.i64(i64 %i.bv, i64 %i.bs, i64 %i.bl)
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEm.exit

_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEm.exit: ; preds = %bb.k, %bb.l
  %.sink.i.i = phi i64 [ %i.bw, %bb.l ], [ %i.bt, %bb.k ]
  %i.bx = zext i8 %i.bi to i32
  %i.by = trunc i64 %.sink.i.i to i32
  %i.bz = load i32, ptr %i.ak, align 8, !tbaa !41
  %i.ca = and i32 %i.bz, %i.by
  %i.cb = shl i32 %i.ca, 8
  %i.cc = or disjoint i32 %i.cb, %i.bx
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = load ptr, ptr %i.al, align 8, !tbaa !53 ; 2 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEm.exit
  tail call void @_ZNK6marisa8grimoire4trie9LoudsTrie8restore_ERNS_5AgentEm(ptr noundef nonnull align 8 dereferenceable(1136) %i.ce, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.cd), !inline_history !3
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie7restoreERNS_5AgentEm.exit

bb.n:                                             ; preds = %_ZNK6marisa8grimoire4trie9LoudsTrie8get_linkEm.exit
  tail call void @_ZNK6marisa8grimoire4trie4Tail7restoreERNS_5AgentEm(ptr noundef nonnull align 8 dereferenceable(256) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.cd), !inline_history !3
  br label %_ZNK6marisa8grimoire4trie9LoudsTrie7restoreERNS_5AgentEm.exit

_ZNK6marisa8grimoire4trie9LoudsTrie7restoreERNS_5AgentEm.exit: ; preds = %bb.m, %bb.n
  %i.cf = load ptr, ptr %i.g, align 8, !tbaa !51  ; 3 uses
  %i.cg = ptrtoaddr ptr %i.cf to i64              ; 6 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.bf ; 9 uses
  %i.ci = load ptr, ptr %i.ag, align 8, !tbaa !51 ; 5 uses
  %i.cj = ptrtoaddr ptr %i.ci to i64              ; 2 uses
  %i.ck = icmp ne ptr %i.ch, %i.ci
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.ci, i64 -1 ; 7 uses
  %i.cl = icmp ult ptr %i.ch, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond.i.i, label %iter.check, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

iter.check:                                       ; preds = %_ZNK6marisa8grimoire4trie9LoudsTrie7restoreERNS_5AgentEm.exit
  %i.cm = add i64 %i.be, -1
  %i.cn = add i64 %i.cg, 1
  %i.co = add i64 %i.cn, %i.bd
  %i.cp = sub i64 %i.co, %i.be
  %i.cq = add i64 %i.cj, -2
  %umax70 = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 %i.cq) ; 2 uses
  %i.cr = add i64 %i.cm, %umax70
  %i.cs = add i64 %i.cg, %i.bd
  %i.ct = icmp ne i64 %i.cr, %i.cs                ; 2 uses
  %umin71.neg = sext i1 %i.ct to i64
  %i.cu = select i1 %i.ct, i64 2, i64 1
  %i.cv = add i64 %i.be, -1
  %i.cw = add i64 %i.cv, %umax70
  %i.cx = add i64 %i.cg, %i.bd
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = add i64 %i.cy, %umin71.neg
  %i.da = lshr i64 %i.cz, 1
  %i.db = add nuw i64 %i.cu, %i.da                ; 7 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.cf, i64 1
  %i.dc = add i64 %i.be, -1
  %i.dd = add i64 %i.cg, 1
  %i.de = add i64 %i.dd, %i.bd
  %i.df = sub i64 %i.de, %i.be
  %i.dg = add i64 %i.cj, -2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.df, i64 %i.dg) ; 2 uses
  %i.dh = add i64 %i.dc, %umax
  %i.di = add i64 %i.cg, %i.bd
  %i.dj = icmp ne i64 %i.dh, %i.di                ; 2 uses
  %umin.neg = sext i1 %i.dj to i64
  %umin = zext i1 %i.dj to i64                    ; 2 uses
  %i.dk = add i64 %i.bd, %umin
  %i.dl = add i64 %i.be, -1
  %i.dm = add i64 %i.dl, %umax
  %i.dn = add i64 %i.cg, %i.bd
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
  %i.fm = ptrtoaddr ptr %i.fj to i64
  %i.fn = ptrtoaddr ptr %i.fi to i64              ; 2 uses
  %i.fo = add i64 %i.fm, -2
  %i.fp = add i64 %i.fn, 1
  %umax97 = tail call i64 @llvm.umax.i64(i64 %i.fo, i64 %i.fp)
  %i.fq = xor i64 %i.fn, -1
  %i.fr = add i64 %umax97, %i.fq                  ; 2 uses
  %i.fs = icmp ne i64 %i.fr, 0
  %umin98 = zext i1 %i.fs to i64                  ; 2 uses
  %i.ft = sub i64 %i.fr, %umin98
  %i.fu = lshr i64 %i.ft, 1
  %i.fv = add nuw i64 %i.fu, %umin98
  %i.fw = add i64 %i.fv, 1                        ; 7 uses
  %min.iters.check99 = icmp ult i64 %i.fw, 8
  br i1 %min.iters.check99, label %.lr.ph.i.i41.preheader, label %vector.memcheck100

vector.memcheck100:                               ; preds = %iter.check121
  %i.fx = ptrtoaddr ptr %i.fj to i64
  %i.fy = add i64 %i.fx, -2
  %i.fz = ptrtoaddr ptr %i.fi to i64              ; 2 uses
  %i.ga = add i64 %i.fz, 1
  %i.gb = tail call i64 @llvm.umax.i64(i64 %i.fy, i64 %i.ga)
  %i.gc = xor i64 %i.fz, -1
  %i.gd = add i64 %i.gb, %i.gc                    ; 2 uses
  %i.ge = icmp ne i64 %i.gd, 0
  %i.gf = zext i1 %i.ge to i64                    ; 2 uses
  %i.gg = sub i64 %i.gd, %i.gf
  %i.gh = lshr i64 %i.gg, 1
  %i.gi = add nuw i64 %i.gh, %i.gf                ; 2 uses
  %i.gj = getelementptr i8, ptr %i.fi, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 1
  %i.gl = xor i64 %i.gi, -1
  %i.gm = getelementptr i8, ptr %i.fj, i64 %i.gl
  %bound0101 = icmp ult ptr %i.fi, %i.fj
end_hunk_0
begin_hunk_1_@_ZSt17__rotate_adaptiveIPN6marisa8grimoire4trie13WeightedRangeES4_lET_S5_S5_S5_T1_S6_T0_S6_:bb.a
  %i.ad = icmp eq i64 %i.s, 16
  br i1 %i.ad, label %bb.x, label %_ZSt13move_backwardIPN6marisa8grimoire4trie13WeightedRangeES4_ET0_T_S6_S5_.exit39

bb.x:                                             ; preds = %bb.w
  %i.ae = getelementptr inbounds i8, ptr %2, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !202
  br label %_ZSt13move_backwardIPN6marisa8grimoire4trie13WeightedRangeES4_ET0_T_S6_S5_.exit39

_ZSt13move_backwardIPN6marisa8grimoire4trie13WeightedRangeES4_ET0_T_S6_S5_.exit39: ; preds = %bb.v, %bb.w, %bb.x
  %i.af = sub nsw i64 0, %i.z
  %i.ag = getelementptr inbounds [16 x i8], ptr %2, i64 %i.af
  br label %_ZNSt3_V26rotateIPN6marisa8grimoire4trie13WeightedRangeEEET_S6_S6_S6_.exit

bb.y:                                             ; preds = %bb.m
  %i.ah = icmp eq ptr %0, %1
  br i1 %i.ah, label %_ZNSt3_V26rotateIPN6marisa8grimoire4trie13WeightedRangeEEET_S6_S6_S6_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ai = icmp eq ptr %2, %1
  br i1 %i.ai, label %_ZNSt3_V26rotateIPN6marisa8grimoire4trie13WeightedRangeEEET_S6_S6_S6_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aj = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ak = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 4                 ; 2 uses
  %i.an = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ao = sub i64 %i.an, %i.ak
  %i.ap = ashr exact i64 %i.ao, 4                 ; 3 uses
  %i.aq = sub nsw i64 %i.am, %i.ap
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i, label %bb.ab

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %1, %bb.aa ] ; 3 uses
  %.079.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %0, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %.079.i.i.i, i64 16, i1 false), !tbaa.struct !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.079.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.010.i.i.i, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.010.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIPN6marisa8grimoire4trie13WeightedRangeEEET_S6_S6_S6_.exit, label %.lr.ph.i.i.i, !llvm.loop !13

bb.ab:                                            ; preds = %bb.aa
  %i.au = sub i64 %i.aj, %i.an
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge, %bb.ab
  %.070.i.i = phi i64 [ %i.am, %bb.ab ], [ %.070.i.i.be, %.backedge ] ; 5 uses
  %.066.i.i = phi i64 [ %i.ap, %bb.ab ], [ %.066.i.i.be, %.backedge ] ; 12 uses
  %.041.i.i = phi ptr [ %0, %bb.ab ], [ %.041.i.i.be, %.backedge ] ; 7 uses
  %i.aw = sub nsw i64 %.070.i.i, %.066.i.i        ; 8 uses
  %i.ax = icmp slt i64 %.066.i.i, %i.aw
  br i1 %i.ax, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ay = icmp sgt i64 %i.aw, 0
  br i1 %i.ay, label %.lr.ph89.preheader.i.i, label %._crit_edge90.i.i

.lr.ph89.preheader.i.i:                           ; preds = %bb.ad
  %i.az = getelementptr inbounds [16 x i8], ptr %.041.i.i, i64 %.066.i.i ; 2 uses
  %.neg = add i64 %.066.i.i, 1
  %xtraiter63 = and i64 %i.aw, 1
  %i.ba = icmp eq i64 %.070.i.i, %.neg
  br i1 %i.ba, label %.lr.ph89.i.i.epil.preheader, label %.lr.ph89.preheader.i.i.new

.lr.ph89.preheader.i.i.new:                       ; preds = %.lr.ph89.preheader.i.i
  %unroll_iter67 = and i64 %i.aw, 9223372036854775806
  br label %.lr.ph89.i.i

._crit_edge90.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph89.i.i
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %._crit_edge90.i.i, label %.lr.ph89.i.i.epil.preheader

.lr.ph89.i.i.epil.preheader:                      ; preds = %._crit_edge90.i.i.loopexit.unr-lcssa, %.lr.ph89.preheader.i.i
  %.04086.i.i.epil.init = phi ptr [ %i.az, %.lr.ph89.preheader.i.i ], [ %i.bg, %._crit_edge90.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.185.i.i.epil.init = phi ptr [ %.041.i.i, %.lr.ph89.preheader.i.i ], [ %i.bf, %._crit_edge90.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod66 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %.185.i.i.epil.init, i64 16, i1 false), !tbaa.struct !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.185.i.i.epil.init, ptr noundef nonnull align 4 dereferenceable(16) %.04086.i.i.epil.init, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.04086.i.i.epil.init, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bb = getelementptr inbounds nuw i8, ptr %.185.i.i.epil.init, i64 16
  br label %._crit_edge90.i.i

._crit_edge90.i.i:                                ; preds = %.lr.ph89.i.i.epil.preheader, %._crit_edge90.i.i.loopexit.unr-lcssa, %bb.ad
  %.1.lcssa.i.i = phi ptr [ %.041.i.i, %bb.ad ], [ %i.bf, %._crit_edge90.i.i.loopexit.unr-lcssa ], [ %i.bb, %.lr.ph89.i.i.epil.preheader ]
  %i.bc = srem i64 %.070.i.i, %.066.i.i           ; 2 uses
  %.not53.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not53.i.i, label %_ZNSt3_V26rotateIPN6marisa8grimoire4trie13WeightedRangeEEET_S6_S6_S6_.exit, label %bb.ae

.lr.ph89.i.i:                                     ; preds = %.lr.ph89.i.i, %.lr.ph89.preheader.i.i.new
  %.04086.i.i = phi ptr [ %i.az, %.lr.ph89.preheader.i.i.new ], [ %i.bg, %.lr.ph89.i.i ] ; 4 uses
  %.185.i.i = phi ptr [ %.041.i.i, %.lr.ph89.preheader.i.i.new ], [ %i.bf, %.lr.ph89.i.i ] ; 4 uses
  %niter68 = phi i64 [ 0, %.lr.ph89.preheader.i.i.new ], [ %niter68.next.1, %.lr.ph89.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %.185.i.i, i64 16, i1 false), !tbaa.struct !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.185.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.04086.i.i, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.04086.i.i, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bd = getelementptr inbounds nuw i8, ptr %.185.i.i, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04086.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bd, ptr noundef nonnull align 4 dereferenceable(16) %i.be, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bf = getelementptr inbounds nuw i8, ptr %.185.i.i, i64 32 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04086.i.i, i64 32 ; 2 uses
  %niter68.next.1 = add i64 %niter68, 2           ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %._crit_edge90.i.i.loopexit.unr-lcssa, label %.lr.ph89.i.i, !llvm.loop !14

bb.ae:                                            ; preds = %._crit_edge90.i.i
  %i.bh = sub nsw i64 %.066.i.i, %i.bc
  br label %.backedge

bb.af:                                            ; preds = %bb.ac
  %i.bi = getelementptr inbounds [16 x i8], ptr %.041.i.i, i64 %.070.i.i ; 3 uses
  %i.bj = sub i64 0, %i.aw
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.bj ; 3 uses
  %i.bl = icmp sgt i64 %.066.i.i, 0
  br i1 %i.bl, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.af
  %xtraiter = and i64 %.066.i.i, 1
  %i.bm = icmp eq i64 %.066.i.i, 1
  br i1 %i.bm, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.066.i.i, 9223372036854775806
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.03883.i.i.epil.init = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.bt, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.282.i.i.epil.init = phi ptr [ %i.bk, %.lr.ph.i.i.preheader ], [ %i.bs, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %.066.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.bn = getelementptr inbounds i8, ptr %.282.i.i.epil.init, i64 -16 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.03883.i.i.epil.init, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bn, ptr noundef nonnull align 4 dereferenceable(16) %i.bo, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bo, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.af
  %.2.lcssa.i.i = phi ptr [ %i.bk, %bb.af ], [ %.041.i.i, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.041.i.i, %.lr.ph.i.i.epil.preheader ]
  %i.bp = srem i64 %.070.i.i, %i.aw               ; 2 uses
  %.not.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i, label %_ZNSt3_V26rotateIPN6marisa8grimoire4trie13WeightedRangeEEET_S6_S6_S6_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i, %bb.ae
  %.070.i.i.be = phi i64 [ %.066.i.i, %bb.ae ], [ %i.aw, %._crit_edge.i.i ]
  %.066.i.i.be = phi i64 [ %i.bh, %bb.ae ], [ %i.bp, %._crit_edge.i.i ]
  %.041.i.i.be = phi ptr [ %.1.lcssa.i.i, %bb.ae ], [ %.2.lcssa.i.i, %._crit_edge.i.i ]
  br label %bb.ac, !llvm.loop !15

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.03883.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i ] ; 2 uses
  %.282.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bq = getelementptr inbounds i8, ptr %.282.i.i, i64 -16 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.03883.i.i, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bq, ptr noundef nonnull align 4 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.br, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bs = getelementptr inbounds i8, ptr %.282.i.i, i64 -32 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %.03883.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bs, ptr noundef nonnull align 4 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bt, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !202
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !16

_ZNSt3_V26rotateIPN6marisa8grimoire4trie13WeightedRangeEEET_S6_S6_S6_.exit: ; preds = %._crit_edge.i.i, %._crit_edge90.i.i, %.lr.ph.i.i.i, %bb.z, %bb.y, %bb.n, %bb.b, %_ZSt13move_backwardIPN6marisa8grimoire4trie13WeightedRangeES4_ET0_T_S6_S5_.exit39, %_ZSt4moveIPN6marisa8grimoire4trie13WeightedRangeES4_ET0_T_S6_S5_.exit36
  %.0 = phi ptr [ %i.p, %_ZSt4moveIPN6marisa8grimoire4trie13WeightedRangeES4_ET0_T_S6_S5_.exit36 ], [ %2, %bb.n ], [ %i.ag, %_ZSt13move_backwardIPN6marisa8grimoire4trie13WeightedRangeES4_ET0_T_S6_S5_.exit39 ], [ %0, %bb.b ], [ %0, %bb.z ], [ %2, %bb.y ], [ %1, %.lr.ph.i.i.i ], [ %i.av, %._crit_edge90.i.i ], [ %i.av, %._crit_edge.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector10FlatVector6build_ERKNS1_6VectorIjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72   ; 6 uses
  %.not58 = icmp ne i64 %i.b, 0                   ; 4 uses
  br i1 %.not58, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169  ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.b, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %vec.phi73 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <4 x i32>, ptr %i.e, align 4, !tbaa !73
  %wide.load74 = load <4 x i32>, ptr %i.f, align 4, !tbaa !73
  %i.g = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.h = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load74, <4 x i32> %vec.phi73) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.g, <4 x i32> %i.h)
  %i.j = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.03047.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.03146.ph = phi i32 [ 0, %.lr.ph ], [ %i.j, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.j, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %.not49 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %.not49, label %._crit_edge.thread, label %._crit_edge

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03047 = phi i64 [ %i.m, %scalar.ph ], [ %.03047.ph, %scalar.ph.preheader ] ; 2 uses
  %.03146 = phi i32 [ %spec.select, %scalar.ph ], [ %.03146.ph, %scalar.ph.preheader ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.03047
  %i.l = load i32, ptr %i.k, align 4, !tbaa !73
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %.03146) ; 2 uses
  %i.m = add nuw i64 %.03047, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.b
  br i1 %exitcond.not, label %.preheader, label %scalar.ph, !llvm.loop !330

._crit_edge.thread:                               ; preds = %.preheader, %bb.a
  %i.n = zext i1 %.not58 to i64                   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !87
  %.not.i.i33 = icmp ult i64 %i.p, %i.n
  br i1 %.not.i.i33, label %bb.c, label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i34

._crit_edge:                                      ; preds = %.preheader
  %i.q = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.lcssa, i1 true) ; 2 uses
  %i.r = sub nuw nsw i32 32, %i.q
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = mul i64 %i.b, %i.s
  %i.u = add i64 %i.t, 63                         ; 2 uses
  %i.v = lshr i64 %i.u, 6                         ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !87   ; 3 uses
  %.not.i.i = icmp ugt i64 %i.v, %i.x
  br i1 %.not.i.i, label %bb.b, label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i

bb.b:                                             ; preds = %._crit_edge
  %i.y = lshr i64 %i.u, 7
  %i.z = icmp samesign ugt i64 %i.x, %i.y
  %i.aa = shl nuw nsw i64 %i.x, 1
  %.0.i.i = select i1 %i.z, i64 %i.aa, i64 %i.v   ; 2 uses
  %i.ab = shl nuw nsw i64 %.0.i.i, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #22 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !88
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !86
  %i.ah = shl i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %i.ae, i64 %i.ah, i1 false)
  %i.ai = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #20
  br label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.b
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !88
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ac, ptr %i.aj, align 8, !tbaa !89
  store i64 %.0.i.i, ptr %i.w, align 8, !tbaa !87
  br label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i

_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i, %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !86 ; 3 uses
  %i.am = icmp ugt i64 %i.v, %i.al
  br i1 %i.am, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i
  %i.an = sub nuw nsw i64 %i.v, %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !88
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.al
  %.idx.i.i.i = shl nuw nsw i64 %i.an, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !54
  br label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit: ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit.loopexit, %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i
  store i64 %i.v, ptr %i.ak, align 8, !tbaa !86
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.s, ptr %i.ar, align 8, !tbaa !40
  %i.as = lshr i32 -1, %i.q
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.as, ptr %i.at, align 8, !tbaa !41
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.thread
  %i.au = select i1 %.not58, i64 8, i64 0
  %i.av = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.au) #22 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !86
  %i.ba = shl i64 %i.az, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ax, i64 %i.ba, i1 false)
  %i.bb = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i40 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i40, label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i42, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i41

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i41: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.bb) #20
  br label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i42

_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i42: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i41, %bb.c
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !88
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.av, ptr %i.bc, align 8, !tbaa !89
  store i64 %i.n, ptr %i.o, align 8, !tbaa !87
  br label %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i34

_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i34: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i42, %._crit_edge.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !86
  %i.bf = icmp ult i64 %i.be, %i.n
  br i1 %i.bf, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit43.loopexit, label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit43

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit43.loopexit: ; preds = %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i34
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !88
  %.idx.i.i.i35 = select i1 %.not58, i64 8, i64 0
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bh, i8 0, i64 %.idx.i.i.i35, i1 false), !tbaa !54
  br label %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit43

_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit43: ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit43.loopexit, %_ZN6marisa8grimoire6vector6VectorImE7reserveEm.exit.i34
  store i64 %i.n, ptr %i.bd, align 8, !tbaa !86
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bi, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit43, %_ZN6marisa8grimoire6vector6VectorImE6resizeEmRKm.exit
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !42
  %.not59 = icmp eq i64 %i.bj, 0
  br i1 %.not59, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !169
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !41 ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !88
  br label %bb.e

._crit_edge57:                                    ; preds = %_ZN6marisa8grimoire6vector10FlatVector3setEmj.exit, %bb.d
  ret void

bb.e:                                             ; preds = %.lr.ph56, %_ZN6marisa8grimoire6vector10FlatVector3setEmj.exit
  %.054 = phi i64 [ 0, %.lr.ph56 ], [ %i.ct, %_ZN6marisa8grimoire6vector10FlatVector3setEmj.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.054
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !73
  %i.bv = load i64, ptr %i.bn, align 8, !tbaa !40
  %i.bw = mul i64 %i.bv, %.054                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 6
  %i.by = and i64 %i.bw, 63                       ; 4 uses
  %i.bz = shl i64 %i.bq, %i.by
  %i.ca = xor i64 %i.bz, -1
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bx ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !54
  %i.cd = and i64 %i.cc, %i.ca
  %i.ce = and i32 %i.bp, %i.bu
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = shl i64 %i.cf, %i.by
  %i.ch = or i64 %i.cd, %i.cg
  store i64 %i.ch, ptr %i.cb, align 8, !tbaa !54
  %i.ci = load i64, ptr %i.bn, align 8, !tbaa !40
  %i.cj = add i64 %i.ci, %i.by
  %i.ck = icmp ugt i64 %i.cj, 64
  br i1 %i.ck, label %bb.f, label %_ZN6marisa8grimoire6vector10FlatVector3setEmj.exit

bb.f:                                             ; preds = %bb.e
  %i.cl = sub nuw nsw i64 64, %i.by               ; 2 uses
  %i.cm = lshr i64 %i.bq, %i.cl
  %i.cn = xor i64 %i.cm, -1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !54
  %i.cq = and i64 %i.cp, %i.cn
  %i.cr = lshr i64 %i.cf, %i.cl
  %i.cs = or i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.co, align 8, !tbaa !54
  br label %_ZN6marisa8grimoire6vector10FlatVector3setEmj.exit

_ZN6marisa8grimoire6vector10FlatVector3setEmj.exit: ; preds = %bb.e, %bb.f
  %i.ct = add nuw i64 %.054, 1                    ; 2 uses
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !72
  %i.cv = icmp ult i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.e, label %._crit_edge57, !llvm.loop !331
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPSt4pairIjjElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph21

.lr.ph:                                           ; preds = %.lr.ph21
  %i.f = icmp eq i64 %i.g, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph21, !llvm.loop !332

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.015.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %.015.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_RT0_(ptr noundef %0, ptr noundef %.015.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph21:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0121420 = phi i64 [ %i.g, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.01519 = phi ptr [ %i.h, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %i.g = add nsw i64 %.0121420, -1                ; 3 uses
  %i.h = tail call noundef ptr @_ZSt27__unguarded_partition_pivotIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEET_S6_S6_T0_(ptr noundef %0, ptr noundef %.01519) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPSt4pairIjjElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %i.h, ptr noundef %.01519, i64 noundef %i.g)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.a
  %i.k = icmp sgt i64 %i.j, 128
  br i1 %i.k, label %.lr.ph, label %.loopexit, !llvm.loop !332

.loopexit:                                        ; preds = %.lr.ph21, %bb.a, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.b ] ; 2 uses
  %.020.i.idx = phi i64 [ %.020.i.add, %bb.g ], [ 8, %bb.b ] ; 3 uses
  %.pn19.i = phi ptr [ %.020.i.ptr, %bb.g ], [ %0, %bb.b ] ; 2 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 7 uses
  %i.f = load i32, ptr %.020.i.ptr, align 4, !tbaa !78 ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !78     ; 2 uses
  %i.h = icmp ult i32 %i.f, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult i32 %i.g, %i.f
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !79
  %i.l = load i32, ptr %i.e, align 4, !tbaa !79
  %i.m = icmp ult i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i
  %i.n = load i64, ptr %.020.i.ptr, align 4
  %i.o = lshr exact i64 %.020.i.idx, 3            ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16 ; 2 uses
  %xtraiter66 = and i64 %i.o, 3                   ; 2 uses
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ], [ %.020.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter68 = phi i64 [ %prol.iter68.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.q = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !73
  store i32 %i.s, ptr %i.r, align 4, !tbaa !78
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !73
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !79
  %i.w = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter68.next = add i64 %prol.iter68, 1     ; 2 uses
  %prol.iter68.cmp.not = icmp eq i64 %prol.iter68.next, %xtraiter66
  br i1 %prol.iter68.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !333

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.020.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %indvar, 3
  br i1 %i.x, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !73
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !78
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !73
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !79
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !73
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !78
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -12
end_hunk_1
