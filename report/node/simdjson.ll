inline.NumInlined: 1165
inline.NumDeleted: 366
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK8simdjson8westmere14implementation6minifyEPKhmPhRm:bb.a

_ZN8simdjson8westmere12_GLOBAL__N_16stage113json_minifier6minifyILm64EEENS_10error_codeEPKhmPhRm.exit: ; preds = %._crit_edge.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit40.i
  %.sroa.23.1.i = phi ptr [ %.sroa.23.0.lcssa.i, %._crit_edge.i ], [ %i.lv, %_ZN8simdjson8westmere12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit40.i ]
  %.sroa.18.1.i = phi i64 [ %.sroa.18.0.lcssa.i, %._crit_edge.i ], [ %i.hi, %_ZN8simdjson8westmere12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit40.i ]
  %.not.i70.i = icmp eq i64 %.sroa.18.1.i, 0      ; 2 uses
  %i.lw = ptrtoint ptr %.sroa.23.1.i to i64
  %i.lx = ptrtoint ptr %3 to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %storemerge.i.i = select i1 %.not.i70.i, i64 %i.ly, i64 0
  %.0.i14.i = select i1 %.not.i70.i, i32 0, i32 15
  store i64 %storemerge.i.i, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0.i14.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 25) i32 @_ZN8simdjson8westmere25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) initializes((64, 80)) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #20 align 2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer5indexILm64EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer5indexILm64EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ne i32 %3, 0                     ; 2 uses
  br i1 %.not.i, label %bb.d, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %2, 3
  br i1 %i.h, label %bb.e, label %bb.i, !prof !60

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %2, 2
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp ugt i8 %i.k, -65
  br i1 %i.l, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i8, ptr %1, align 1
  %i.n = icmp ugt i8 %i.m, -33
  br i1 %i.n, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer5indexILm64EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i

bb.h:                                             ; preds = %bb.e
  %i.o = load i8, ptr %1, align 1
  %i.p = icmp ugt i8 %i.o, -65
  br i1 %i.p, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer5indexILm64EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i

bb.i:                                             ; preds = %bb.d
  %i.q = add i64 %2, -1                           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp ugt i8 %i.s, -65
  br i1 %i.t, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = add i64 %2, -2                           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1
  %i.x = icmp ugt i8 %i.w, -33
  br i1 %i.x, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = add i64 %2, -3                           ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp ugt i8 %i.aa, -17
  br i1 %i.ab, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i: ; preds = %bb.k
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer5indexILm64EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i: ; preds = %bb.h, %bb.g, %bb.f
  %.013.ph.i = phi i64 [ 1, %bb.f ], [ 1, %bb.h ], [ 2, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  br label %._crit_edge.thread.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i: ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, %bb.k, %bb.j, %bb.i, %bb.c
  %.013.i = phi i64 [ %i.y, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i ], [ %2, %bb.c ], [ %2, %bb.k ], [ %i.q, %bb.i ], [ %i.u, %bb.j ] ; 5 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.013.i, i64 64)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not1538.i = icmp ult i64 %.013.i, 65
  br i1 %.not1538.i, label %._crit_edge.thread.i, label %.lr.ph1502.i

.lr.ph1502.i:                                     ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i
  %.sroa.18.01501.i = phi i64 [ %i.cl, %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i ], [ 0, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.23148.01500.i = phi <2 x i64> [ %.sroa.23148.1.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i ], [ zeroinitializer, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.48.01499.i = phi <2 x i64> [ %.sroa.48.1.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i ], [ zeroinitializer, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 2 uses
  %.sroa.53.01498.i = phi <2 x i64> [ %.sroa.53.1.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i ], [ zeroinitializer, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 2 uses
  %.sroa.59.01497.i = phi ptr [ %.sroa.59.2.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i ], [ %i.ag, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 29 uses
  %.sroa.142.01496.i = phi i64 [ %i.pi, %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i ], [ 0, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 5 uses
  %.sroa.148.01495.i = phi i64 [ %i.pk, %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i ], [ 0, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.8.01494.i = phi i64 [ %.sroa.8.1.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i ], [ 0, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 3 uses
  %.sroa.0.01493.i = phi i64 [ %i.ei, %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i ], [ 0, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.11.01492.i = phi i64 [ %i.pl, %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i ], [ 0, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.01492.i ; 4 uses
  %i.ai = load <2 x i64>, ptr %i.ah, align 1      ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load <2 x i64>, ptr %i.aj, align 1      ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.am = load <2 x i64>, ptr %i.al, align 1      ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ao = load <2 x i64>, ptr %i.an, align 1      ; 5 uses
  %i.ap = bitcast <2 x i64> %i.ai to <16 x i8>    ; 9 uses
  %i.aq = bitcast <2 x i64> %i.ak to <16 x i8>    ; 9 uses
  %i.ar = bitcast <2 x i64> %i.am to <16 x i8>    ; 12 uses
  %i.as = icmp eq <16 x i8> %i.ar, splat (i8 92)
  %i.at = bitcast <2 x i64> %i.ao to <16 x i8>    ; 10 uses
  %i.au = icmp eq <16 x i8> %i.at, splat (i8 92)
  %i.av = bitcast <16 x i1> %i.as to i16
  %i.aw = zext i16 %i.av to i64
  %i.ax = bitcast <16 x i1> %i.au to i16
  %i.ay = zext i16 %i.ax to i64
  %i.az = shufflevector <2 x i64> %i.ai, <2 x i64> %i.ak, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ba = bitcast <4 x i64> %i.az to <32 x i8>
  %i.bb = icmp eq <32 x i8> %i.ba, splat (i8 92)
  %i.bc = bitcast <32 x i1> %i.bb to i32
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.aw, 32
  %i.bf = or disjoint i64 %i.be, %i.bd
  %i.bg = shl nuw i64 %i.ay, 48                   ; 2 uses
  %i.bh = or disjoint i64 %i.bf, %i.bg            ; 3 uses
  %.not.i.i21.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i21.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph1502.i
  %i.bi = xor i64 %.sroa.8.01494.i, -1
  %i.bj = and i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = shl i64 %i.bj, 1
  %i.bl = or i64 %i.bk, -6148914691236517206
  %i.bm = sub i64 %i.bl, %i.bj
  %i.bn = xor i64 %i.bm, -6148914691236517206     ; 2 uses
  %i.bo = or i64 %i.bh, %.sroa.8.01494.i
  %i.bp = xor i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bn, %i.bg
  %i.br = lshr i64 %i.bq, 63
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i: ; preds = %bb.l, %.lr.ph1502.i
  %.sroa.8.1.i = phi i64 [ %i.br, %bb.l ], [ 0, %.lr.ph1502.i ] ; 2 uses
  %.sroa.0.0.i.i22.i = phi i64 [ %i.bp, %bb.l ], [ %.sroa.8.01494.i, %.lr.ph1502.i ]
  %i.bs = icmp eq <16 x i8> %i.ap, splat (i8 34)
  %i.bt = icmp eq <16 x i8> %i.aq, splat (i8 34)
  %i.bu = icmp eq <16 x i8> %i.ar, splat (i8 34)
  %i.bv = icmp eq <16 x i8> %i.at, splat (i8 34)
  %i.bw = bitcast <16 x i1> %i.bs to i16
  %i.bx = bitcast <16 x i1> %i.bt to i16
  %i.by = bitcast <16 x i1> %i.bu to i16
  %i.bz = bitcast <16 x i1> %i.bv to i16
  %i.ca = insertelement <4 x i16> poison, i16 %i.bw, i64 0
  %i.cb = insertelement <4 x i16> %i.ca, i16 %i.bx, i64 1
  %i.cc = insertelement <4 x i16> %i.cb, i16 %i.by, i64 2
  %i.cd = insertelement <4 x i16> %i.cc, i16 %i.bz, i64 3
  %i.ce = bitcast <4 x i16> %i.cd to i64
  %i.cf = xor i64 %.sroa.0.0.i.i22.i, -1
  %i.cg = and i64 %i.ce, %i.cf                    ; 3 uses
  %i.ch = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %i.ci = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ch, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.cj = extractelement <2 x i64> %i.ci, i64 0
  %i.ck = xor i64 %i.cj, %.sroa.18.01501.i        ; 3 uses
  %i.cl = ashr i64 %i.ck, 63                      ; 2 uses
  %i.cm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.ap)
  %i.cn = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.aq)
  %i.co = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.ar)
  %i.cp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.at)
  %i.cq = icmp eq <16 x i8> %i.co, %i.ar
  %i.cr = icmp eq <16 x i8> %i.cp, %i.at
  %i.cs = bitcast <16 x i1> %i.cq to i16
  %i.ct = zext i16 %i.cs to i64
  %i.cu = bitcast <16 x i1> %i.cr to i16
  %i.cv = zext i16 %i.cu to i64
  %i.cw = shufflevector <16 x i8> %i.cm, <16 x i8> %i.cn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cx = shufflevector <2 x i64> %i.ai, <2 x i64> %i.ak, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cy = bitcast <4 x i64> %i.cx to <32 x i8>
  %i.cz = icmp eq <32 x i8> %i.cw, %i.cy
  %i.da = bitcast <32 x i1> %i.cz to i32
  %i.db = zext i32 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.ct, 32
  %i.dd = or disjoint i64 %i.dc, %i.db
  %i.de = shl nuw i64 %i.cv, 48
  %i.df = or disjoint i64 %i.dd, %i.de
  %i.dg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.ap)
  %i.dh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.aq)
  %i.di = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.ar)
  %i.dj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.at)
  %4 = bitcast <2 x i64> %i.ai to <16 x i8>
  %5 = or <16 x i8> %4, splat (i8 32)
  %6 = bitcast <2 x i64> %i.ak to <16 x i8>
  %7 = or <16 x i8> %6, splat (i8 32)
  %i.dk = bitcast <2 x i64> %i.am to <16 x i8>
  %i.dl = or <16 x i8> %i.dk, splat (i8 32)
  %i.dm = icmp eq <16 x i8> %i.dl, %i.di
  %i.dn = bitcast <2 x i64> %i.ao to <16 x i8>
  %i.do = or <16 x i8> %i.dn, splat (i8 32)
  %i.dp = icmp eq <16 x i8> %i.do, %i.dj
  %i.dq = bitcast <16 x i1> %i.dm to i16
  %i.dr = zext i16 %i.dq to i64
  %i.ds = bitcast <16 x i1> %i.dp to i16
  %i.dt = zext i16 %i.ds to i64
  %8 = shufflevector <16 x i8> %5, <16 x i8> %7, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.du = shufflevector <16 x i8> %i.dg, <16 x i8> %i.dh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dv = icmp eq <32 x i8> %8, %i.du
  %i.dw = bitcast <32 x i1> %i.dv to i32
  %i.dx = zext i32 %i.dw to i64
  %i.dy = shl nuw nsw i64 %i.dr, 32
  %i.dz = or disjoint i64 %i.dy, %i.dx
  %i.ea = shl nuw i64 %i.dt, 48
  %i.eb = or disjoint i64 %i.dz, %i.ea            ; 2 uses
  %i.ec = or i64 %i.eb, %i.df
  %i.ed = xor i64 %i.ec, -1                       ; 2 uses
  %i.ee = xor i64 %i.cg, -1
  %i.ef = and i64 %i.ed, %i.ee                    ; 2 uses
  %i.eg = shl i64 %i.ef, 1
  %i.eh = or disjoint i64 %i.eg, %.sroa.0.01493.i
  %i.ei = lshr i64 %i.ef, 63                      ; 2 uses
  %i.ej = icmp ult <16 x i8> %i.ar, splat (i8 32)
  %i.ek = icmp ult <16 x i8> %i.at, splat (i8 32)
  %i.el = bitcast <16 x i1> %i.ej to i16
  %i.em = zext i16 %i.el to i64
  %i.en = bitcast <16 x i1> %i.ek to i16
  %i.eo = zext i16 %i.en to i64
  %i.ep = shufflevector <2 x i64> %i.ai, <2 x i64> %i.ak, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eq = bitcast <4 x i64> %i.ep to <32 x i8>
  %i.er = icmp ult <32 x i8> %i.eq, splat (i8 32)
  %i.es = bitcast <32 x i1> %i.er to i32
  %i.et = zext i32 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.em, 32
  %i.ev = or disjoint i64 %i.eu, %i.et
  %i.ew = shl nuw i64 %i.eo, 48
  %i.ex = or disjoint i64 %i.ev, %i.ew
  %i.ey = or <2 x i64> %i.ak, %i.ai
  %i.ez = or <2 x i64> %i.ey, %i.am
  %i.fa = or <2 x i64> %i.ez, %i.ao
  %i.fb = bitcast <2 x i64> %i.fa to <16 x i8>
  %i.fc = icmp slt <16 x i8> %i.fb, zeroinitializer
  %i.fd = bitcast <16 x i1> %i.fc to i16
  %i.fe = icmp eq i16 %i.fd, 0
  br i1 %i.fe, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit.i, label %bb.m, !prof !73

bb.m:                                             ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i
  %i.ff = bitcast <2 x i64> %.sroa.48.01499.i to <16 x i8> ; 3 uses
  %i.fg = shufflevector <16 x i8> %i.ff, <16 x i8> %i.ap, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.fh = bitcast <16 x i8> %i.fg to <8 x i16>
  %i.fi = lshr <8 x i16> %i.fh, splat (i16 4)
  %i.fj = bitcast <8 x i16> %i.fi to <16 x i8>
  %i.fk = and <16 x i8> %i.fj, splat (i8 15)
  %i.fl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.fk)
  %i.fm = and <16 x i8> %i.fg, splat (i8 15)
  %i.fn = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.fm)
  %i.fo = bitcast <2 x i64> %i.ai to <8 x i16>
  %i.fp = lshr <8 x i16> %i.fo, splat (i16 4)
  %i.fq = bitcast <8 x i16> %i.fp to <16 x i8>
  %i.fr = and <16 x i8> %i.fq, splat (i8 15)
  %i.fs = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.fr)
  %i.ft = and <16 x i8> %i.fn, %i.fl
  %i.fu = and <16 x i8> %i.ft, %i.fs
  %i.fv = shufflevector <16 x i8> %i.ff, <16 x i8> %i.ap, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.fw = shufflevector <16 x i8> %i.ff, <16 x i8> %i.ap, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.fx = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fv, <16 x i8> splat (i8 96))
  %i.fy = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.fw, <16 x i8> splat (i8 112))
  %i.fz = or <16 x i8> %i.fx, %i.fy
  %.inner46 = and <16 x i8> %i.fz, splat (i8 -128)
  %.inner47 = xor <16 x i8> %.inner46, %i.fu
  %i.ga = shufflevector <16 x i8> %i.ap, <16 x i8> %i.aq, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.gb = bitcast <16 x i8> %i.ga to <8 x i16>
  %i.gc = lshr <8 x i16> %i.gb, splat (i16 4)
  %i.gd = bitcast <8 x i16> %i.gc to <16 x i8>
  %i.ge = and <16 x i8> %i.gd, splat (i8 15)
  %i.gf = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.ge)
  %i.gg = and <16 x i8> %i.ga, splat (i8 15)
  %i.gh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.gg)
  %i.gi = bitcast <2 x i64> %i.ak to <8 x i16>
  %i.gj = lshr <8 x i16> %i.gi, splat (i16 4)
  %i.gk = bitcast <8 x i16> %i.gj to <16 x i8>
  %i.gl = and <16 x i8> %i.gk, splat (i8 15)
  %i.gm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.gl)
  %i.gn = and <16 x i8> %i.gh, %i.gf
  %i.go = and <16 x i8> %i.gn, %i.gm
  %i.gp = shufflevector <16 x i8> %i.ap, <16 x i8> %i.aq, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.gq = shufflevector <16 x i8> %i.ap, <16 x i8> %i.aq, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.gr = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.gp, <16 x i8> splat (i8 96))
  %i.gs = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.gq, <16 x i8> splat (i8 112))
  %i.gt = or <16 x i8> %i.gr, %i.gs
  %.inner50 = and <16 x i8> %i.gt, splat (i8 -128)
  %.inner51 = xor <16 x i8> %.inner50, %i.go
  %i.gu = shufflevector <16 x i8> %i.aq, <16 x i8> %i.ar, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.gv = bitcast <16 x i8> %i.gu to <8 x i16>
  %i.gw = lshr <8 x i16> %i.gv, splat (i16 4)
  %i.gx = bitcast <8 x i16> %i.gw to <16 x i8>
  %i.gy = and <16 x i8> %i.gx, splat (i8 15)
  %i.gz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.gy)
  %i.ha = and <16 x i8> %i.gu, splat (i8 15)
  %i.hb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.ha)
  %i.hc = bitcast <2 x i64> %i.am to <8 x i16>
  %i.hd = lshr <8 x i16> %i.hc, splat (i16 4)
  %i.he = bitcast <8 x i16> %i.hd to <16 x i8>
  %i.hf = and <16 x i8> %i.he, splat (i8 15)
  %i.hg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.hf)
  %i.hh = and <16 x i8> %i.hb, %i.gz
  %i.hi = and <16 x i8> %i.hh, %i.hg
  %i.hj = shufflevector <16 x i8> %i.aq, <16 x i8> %i.ar, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.hk = shufflevector <16 x i8> %i.aq, <16 x i8> %i.ar, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.hl = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.hj, <16 x i8> splat (i8 96))
  %i.hm = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.hk, <16 x i8> splat (i8 112))
  %i.hn = or <16 x i8> %i.hl, %i.hm
  %.inner54 = and <16 x i8> %i.hn, splat (i8 -128)
  %.inner55 = xor <16 x i8> %.inner54, %i.hi
  %i.ho = shufflevector <16 x i8> %i.ar, <16 x i8> %i.at, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.hp = bitcast <16 x i8> %i.ho to <8 x i16>
  %i.hq = lshr <8 x i16> %i.hp, splat (i16 4)
  %i.hr = bitcast <8 x i16> %i.hq to <16 x i8>
  %i.hs = and <16 x i8> %i.hr, splat (i8 15)
  %i.ht = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.hs)
  %i.hu = and <16 x i8> %i.ho, splat (i8 15)
  %i.hv = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.hu)
  %i.hw = bitcast <2 x i64> %i.ao to <8 x i16>
  %i.hx = lshr <8 x i16> %i.hw, splat (i16 4)
  %i.hy = bitcast <8 x i16> %i.hx to <16 x i8>
  %i.hz = and <16 x i8> %i.hy, splat (i8 15)
  %i.ia = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.hz)
  %i.ib = and <16 x i8> %i.hv, %i.ht
  %i.ic = and <16 x i8> %i.ib, %i.ia
  %i.id = shufflevector <16 x i8> %i.ar, <16 x i8> %i.at, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ie = shufflevector <16 x i8> %i.ar, <16 x i8> %i.at, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.if = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.id, <16 x i8> splat (i8 96))
  %i.ig = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ie, <16 x i8> splat (i8 112))
  %i.ih = or <16 x i8> %i.if, %i.ig
  %.inner58 = and <16 x i8> %i.ih, splat (i8 -128)
  %.inner59 = xor <16 x i8> %.inner58, %i.ic
  %.inner60 = or <16 x i8> %.inner47, %.inner51
  %.inner61 = or <16 x i8> %.inner60, %.inner55
  %.inner62 = or <16 x i8> %.inner61, %.inner59
  %i.ii = bitcast <16 x i8> %.inner62 to <2 x i64>
  %i.ij = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.at, <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.ik = bitcast <16 x i8> %i.ij to <2 x i64>
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit.i: ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i, %bb.m
  %.sroa.53.1.i = phi <2 x i64> [ %i.ik, %bb.m ], [ %.sroa.53.01498.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i ] ; 2 uses
  %.sroa.48.1.i = phi <2 x i64> [ %i.ao, %bb.m ], [ %.sroa.48.01499.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i ] ; 2 uses
  %.sroa.53.01498.i.pn = phi <2 x i64> [ %i.ii, %bb.m ], [ %.sroa.53.01498.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i ]
  %.sroa.23148.1.i = or <2 x i64> %.sroa.53.01498.i.pn, %.sroa.23148.01500.i ; 3 uses
  %i.il = trunc i64 %.sroa.11.01492.i to i32
  %i.im = add i32 %i.il, -64                      ; 27 uses
  %i.in = icmp eq i64 %.sroa.142.01496.i, 0
  br i1 %i.in, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i, label %bb.n

bb.n:                                             ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit.i
  %i.io = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.sroa.142.01496.i) ; 11 uses
  %i.ip = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.142.01496.i, i1 true)
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = or disjoint i32 %i.im, %i.iq
  store i32 %i.ir, ptr %.sroa.59.01497.i, align 4
  %i.is = add i64 %.sroa.142.01496.i, -1
  %i.it = and i64 %i.is, %.sroa.142.01496.i       ; 3 uses
  %i.iu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.it, i1 true)
  %i.iv = trunc nuw nsw i64 %i.iu to i32
  %i.iw = or disjoint i32 %i.im, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 4
  store i32 %i.iw, ptr %i.ix, align 4
  %i.iy = add i64 %i.it, -2
  %i.iz = and i64 %i.iy, %i.it                    ; 3 uses
  %i.ja = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.iz, i1 true)
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %i.jc = or disjoint i32 %i.im, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 8
  store i32 %i.jc, ptr %i.jd, align 4
  %i.je = add i64 %i.iz, -2
  %i.jf = and i64 %i.je, %i.iz                    ; 3 uses
  %i.jg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jf, i1 true)
  %i.jh = trunc nuw nsw i64 %i.jg to i32
  %i.ji = or disjoint i32 %i.im, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 12
  store i32 %i.ji, ptr %i.jj, align 4
  %i.jk = icmp samesign ugt i64 %i.io, 4
  br i1 %i.jk, label %bb.o, label %.loopexit1483.i, !prof !60

bb.o:                                             ; preds = %bb.n
  %i.jl = add i64 %i.jf, -2
  %i.jm = and i64 %i.jl, %i.jf                    ; 3 uses
  %i.jn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jm, i1 true)
  %i.jo = trunc nuw nsw i64 %i.jn to i32
  %i.jp = or disjoint i32 %i.im, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 16
  store i32 %i.jp, ptr %i.jq, align 4
  %i.jr = add i64 %i.jm, -2
  %i.js = and i64 %i.jr, %i.jm                    ; 3 uses
  %i.jt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.js, i1 true)
  %i.ju = trunc nuw nsw i64 %i.jt to i32
  %i.jv = or disjoint i32 %i.im, %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 20
  store i32 %i.jv, ptr %i.jw, align 4
  %i.jx = add i64 %i.js, -1
  %i.jy = and i64 %i.jx, %i.js                    ; 3 uses
  %i.jz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jy, i1 true)
  %i.ka = trunc nuw nsw i64 %i.jz to i32
  %i.kb = or disjoint i32 %i.im, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 24
  store i32 %i.kb, ptr %i.kc, align 4
  %i.kd = add i64 %i.jy, -2
  %i.ke = and i64 %i.kd, %i.jy                    ; 3 uses
  %i.kf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ke, i1 true)
end_hunk_0
begin_hunk_1_@_ZN8simdjson8westmere25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %i.nt = add i64 %i.no, -2
  %i.nu = and i64 %i.nt, %i.no                    ; 3 uses
  %i.nv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nu, i1 true)
  %i.nw = trunc nuw nsw i64 %i.nv to i32
  %i.nx = or disjoint i32 %i.im, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 88
  store i32 %i.nx, ptr %i.ny, align 4
  %i.nz = add i64 %i.nu, -2
  %i.oa = and i64 %i.nz, %i.nu                    ; 3 uses
  %i.ob = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.oa, i1 true)
  %i.oc = trunc nuw nsw i64 %i.ob to i32
  %i.od = or disjoint i32 %i.im, %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 92
  store i32 %i.od, ptr %i.oe, align 4
  %i.of = icmp samesign ugt i64 %i.io, 24
  br i1 %i.of, label %.lr.ph.i.preheader, label %.loopexit1483.i, !prof !74

.lr.ph.i.preheader:                               ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer21write_indexes_steppedILi0ELi24ELi4EEEijRmi.exit90.i
  %i.og = add i64 %i.oa, -2
  %i.oh = and i64 %i.og, %i.oa                    ; 2 uses
  %xtraiter = and i64 %i.io, 1
  %i.oi = icmp eq i64 %i.io, 25
  br i1 %i.oi, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %i.oj = and i64 %i.io, 126
  %i.ok = add nsw i64 %i.oj, -26
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 24, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.014161490.i = phi i64 [ %i.oh, %.lr.ph.i.preheader.new ], [ %i.ox, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ] ; 2 uses
  %i.ol = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.014161490.i, i1 true)
  %i.om = trunc nuw nsw i64 %i.ol to i32
  %i.on = or disjoint i32 %i.im, %i.om
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01497.i, i64 %indvars.iv.i
  store i32 %i.on, ptr %i.oo, align 4
  %i.op = add i64 %.014161490.i, -1
  %i.oq = and i64 %i.op, %.014161490.i            ; 3 uses
  %i.or = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.oq, i1 true)
  %i.os = trunc nuw nsw i64 %i.or to i32
  %i.ot = or disjoint i32 %i.im, %i.os
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01497.i, i64 %indvars.iv.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  store i32 %i.ot, ptr %i.ov, align 4
  %i.ow = add i64 %i.oq, -2
  %i.ox = and i64 %i.ow, %i.oq                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.ok
  br i1 %niter.ncmp.1, label %.loopexit1483.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !223

.loopexit1483.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit1483.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit1483.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 24, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %.loopexit1483.i.loopexit.unr-lcssa ]
  %.014161490.i.epil.init = phi i64 [ %i.oh, %.lr.ph.i.preheader ], [ %i.ox, %.loopexit1483.i.loopexit.unr-lcssa ]
  %lcmp.mod89 = trunc i64 %i.io to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.oy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.014161490.i.epil.init, i1 true)
  %i.oz = trunc nuw nsw i64 %i.oy to i32
  %i.pa = or disjoint i32 %i.im, %i.oz
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01497.i, i64 %indvars.iv.i.epil.init
  store i32 %i.pa, ptr %i.pb, align 4
  br label %.loopexit1483.i

.loopexit1483.i:                                  ; preds = %.lr.ph.i.epil.preheader, %.loopexit1483.i.loopexit.unr-lcssa, %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer21write_indexes_steppedILi0ELi24ELi4EEEijRmi.exit90.i, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01497.i, i64 %i.io
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i: ; preds = %.loopexit1483.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit.i
  %.sroa.59.2.i = phi ptr [ %.sroa.59.01497.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit.i ], [ %i.pc, %.loopexit1483.i ] ; 2 uses
  %i.pd = xor i64 %i.eh, -1
  %i.pe = and i64 %i.pd, %i.ed
  %i.pf = or i64 %i.pe, %i.eb
  %i.pg = xor i64 %i.cg, %i.ck
  %i.ph = xor i64 %i.pg, -1
  %i.pi = and i64 %i.pf, %i.ph                    ; 2 uses
  %i.pj = and i64 %i.ck, %i.ex
  %i.pk = or i64 %i.pj, %.sroa.148.01495.i        ; 2 uses
  %i.pl = add nuw i64 %.sroa.11.01492.i, 64       ; 4 uses
  %i.pm = icmp ult i64 %i.pl, %spec.select.i.i
  br i1 %i.pm, label %.lr.ph1502.i, label %._crit_edge.i, !llvm.loop !224

._crit_edge.thread.i:                             ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i
  %.ph.i = phi ptr [ %i.ad, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.af, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.0131581.ph.i = phi i64 [ %.013.ph.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %.013.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.59.0.lcssa.ph.i = phi ptr [ %i.ae, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.ag, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i

._crit_edge.i:                                    ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i
  %i.pn = bitcast <2 x i64> %.sroa.48.1.i to <16 x i8>
  %i.po = or <2 x i64> %.sroa.23148.1.i, %.sroa.53.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.pp = icmp eq i64 %.013.i, %i.pl
  br i1 %i.pp, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i

_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.18.0.lcssa1604.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.cl, %._crit_edge.i ]
  %.sroa.23148.0.lcssa1603.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.23148.1.i, %._crit_edge.i ]
  %.sroa.48.0.lcssa1602.i = phi <16 x i8> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.pn, %._crit_edge.i ] ; 3 uses
  %.sroa.53.0.lcssa1601.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.po, %._crit_edge.i ]
  %.sroa.59.0.lcssa1600.i = phi ptr [ %.sroa.59.0.lcssa.ph.i, %._crit_edge.thread.i ], [ %.sroa.59.2.i, %._crit_edge.i ] ; 29 uses
  %.sroa.142.0.lcssa1599.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.pi, %._crit_edge.i ] ; 5 uses
  %.sroa.148.0.lcssa1598.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.pk, %._crit_edge.i ]
  %.sroa.8.0.lcssa1597.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.sroa.8.1.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.lcssa1596.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.ei, %._crit_edge.i ]
  %.sroa.11.0.lcssa1595.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.pl, %._crit_edge.i ] ; 30 uses
  %.01315811594.i = phi i64 [ %.0131581.ph.i, %._crit_edge.thread.i ], [ %.013.i, %._crit_edge.i ] ; 3 uses
  %i.pq = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %i.af, %._crit_edge.i ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 32, i64 64, i1 false)
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa1595.i
  %i.ps = sub i64 %.01315811594.i, %.sroa.11.0.lcssa1595.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.pr, i64 %i.ps, i1 false)
  %.0..0..0..0..0..i = load <2 x i64>, ptr %i.a, align 16 ; 4 uses
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..16..16..i = load <2 x i64>, ptr %.16..16..16..16..16..sroa_idx, align 16 ; 4 uses
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..i = load <2 x i64>, ptr %.32..32..32..32..32..sroa_idx, align 16 ; 4 uses
  %.48..48..48..48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.48..48..48..48..48..i = load <2 x i64>, ptr %.48..48..48..48..48..sroa_idx, align 16 ; 4 uses
  %i.pt = bitcast <2 x i64> %.0..0..0..0..0..i to <16 x i8> ; 12 uses
  %i.pu = icmp eq <16 x i8> %i.pt, splat (i8 92)
  %i.pv = bitcast <2 x i64> %.16..16..16..16..16..i to <16 x i8> ; 12 uses
  %i.pw = icmp eq <16 x i8> %i.pv, splat (i8 92)
  %i.px = bitcast <2 x i64> %.32..32..32..32..32..i to <16 x i8> ; 12 uses
  %i.py = icmp eq <16 x i8> %i.px, splat (i8 92)
  %i.pz = bitcast <2 x i64> %.48..48..48..48..48..i to <16 x i8> ; 10 uses
  %i.qa = icmp eq <16 x i8> %i.pz, splat (i8 92)
  %i.qb = bitcast <16 x i1> %i.pu to i16
  %i.qc = bitcast <16 x i1> %i.pw to i16
  %i.qd = bitcast <16 x i1> %i.py to i16
  %i.qe = bitcast <16 x i1> %i.qa to i16
  %i.qf = insertelement <4 x i16> poison, i16 %i.qb, i64 0
  %i.qg = insertelement <4 x i16> %i.qf, i16 %i.qc, i64 1
  %i.qh = insertelement <4 x i16> %i.qg, i16 %i.qd, i64 2
  %i.qi = insertelement <4 x i16> %i.qh, i16 %i.qe, i64 3
  %i.qj = bitcast <4 x i16> %i.qi to i64          ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.qj, 0
  br i1 %.not.i.i.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %i.qk = xor i64 %.sroa.8.0.lcssa1597.i, -1
  %i.ql = and i64 %i.qj, %i.qk                    ; 2 uses
  %i.qm = shl i64 %i.ql, 1
  %i.qn = or i64 %i.qm, -6148914691236517206
  %i.qo = sub i64 %i.qn, %i.ql
  %i.qp = or i64 %.sroa.8.0.lcssa1597.i, %i.qj
  %i.qq = xor i64 %i.qp, %i.qo
  %i.qr = xor i64 %i.qq, -6148914691236517206
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i: ; preds = %bb.s, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.qr, %bb.s ], [ %.sroa.8.0.lcssa1597.i, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i ]
  %i.qs = icmp eq <16 x i8> %i.pt, splat (i8 34)
  %i.qt = icmp eq <16 x i8> %i.pv, splat (i8 34)
  %i.qu = icmp eq <16 x i8> %i.px, splat (i8 34)
  %i.qv = icmp eq <16 x i8> %i.pz, splat (i8 34)
  %i.qw = bitcast <16 x i1> %i.qs to i16
  %i.qx = bitcast <16 x i1> %i.qt to i16
  %i.qy = bitcast <16 x i1> %i.qu to i16
  %i.qz = bitcast <16 x i1> %i.qv to i16
  %i.ra = insertelement <4 x i16> poison, i16 %i.qw, i64 0
  %i.rb = insertelement <4 x i16> %i.ra, i16 %i.qx, i64 1
  %i.rc = insertelement <4 x i16> %i.rb, i16 %i.qy, i64 2
  %i.rd = insertelement <4 x i16> %i.rc, i16 %i.qz, i64 3
  %i.re = bitcast <4 x i16> %i.rd to i64
  %i.rf = xor i64 %.sroa.0.0.i.i.i, -1
  %i.rg = and i64 %i.re, %i.rf                    ; 3 uses
  %i.rh = insertelement <2 x i64> poison, i64 %i.rg, i64 0
  %i.ri = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.rh, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.rj = extractelement <2 x i64> %i.ri, i64 0
  %i.rk = xor i64 %i.rj, %.sroa.18.0.lcssa1604.i  ; 3 uses
  %i.rl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.pt)
  %i.rm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.pv)
  %i.rn = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.px)
  %i.ro = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.pz)
  %i.rp = icmp eq <16 x i8> %i.rn, %i.px
  %i.rq = icmp eq <16 x i8> %i.ro, %i.pz
  %i.rr = bitcast <16 x i1> %i.rp to i16
  %i.rs = zext i16 %i.rr to i64
  %i.rt = bitcast <16 x i1> %i.rq to i16
  %i.ru = zext i16 %i.rt to i64
  %i.rv = shufflevector <16 x i8> %i.rl, <16 x i8> %i.rm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rw = shufflevector <16 x i8> %i.pt, <16 x i8> %i.pv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rx = icmp eq <32 x i8> %i.rv, %i.rw
  %i.ry = bitcast <32 x i1> %i.rx to i32
  %i.rz = zext i32 %i.ry to i64
  %i.sa = shl nuw nsw i64 %i.rs, 32
  %i.sb = or disjoint i64 %i.sa, %i.rz
  %i.sc = shl nuw i64 %i.ru, 48
  %i.sd = or disjoint i64 %i.sb, %i.sc
  %i.se = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.pt)
  %i.sf = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.pv)
  %i.sg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.px)
  %i.sh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.pz)
  %9 = bitcast <2 x i64> %.0..0..0..0..0..i to <16 x i8>
  %10 = or <16 x i8> %9, splat (i8 32)
  %11 = bitcast <2 x i64> %.16..16..16..16..16..i to <16 x i8>
  %12 = or <16 x i8> %11, splat (i8 32)
  %i.si = bitcast <2 x i64> %.32..32..32..32..32..i to <16 x i8>
  %i.sj = or <16 x i8> %i.si, splat (i8 32)
  %i.sk = icmp eq <16 x i8> %i.sj, %i.sg
  %i.sl = bitcast <2 x i64> %.48..48..48..48..48..i to <16 x i8>
  %i.sm = or <16 x i8> %i.sl, splat (i8 32)
  %i.sn = icmp eq <16 x i8> %i.sm, %i.sh
  %i.so = bitcast <16 x i1> %i.sk to i16
  %i.sp = zext i16 %i.so to i64
  %i.sq = bitcast <16 x i1> %i.sn to i16
  %i.sr = zext i16 %i.sq to i64
  %13 = shufflevector <16 x i8> %10, <16 x i8> %12, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ss = shufflevector <16 x i8> %i.se, <16 x i8> %i.sf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.st = icmp eq <32 x i8> %13, %i.ss
  %i.su = bitcast <32 x i1> %i.st to i32
  %i.sv = zext i32 %i.su to i64
  %i.sw = shl nuw nsw i64 %i.sp, 32
  %i.sx = or disjoint i64 %i.sw, %i.sv
  %i.sy = shl nuw i64 %i.sr, 48
  %i.sz = or disjoint i64 %i.sx, %i.sy            ; 2 uses
  %i.ta = or i64 %i.sz, %i.sd
  %i.tb = xor i64 %i.ta, -1                       ; 2 uses
  %i.tc = xor i64 %i.rg, -1
  %i.td = and i64 %i.tb, %i.tc
  %i.te = shl i64 %i.td, 1
  %i.tf = or disjoint i64 %i.te, %.sroa.0.0.lcssa1596.i
  %i.tg = icmp ult <16 x i8> %i.px, splat (i8 32)
  %i.th = icmp ult <16 x i8> %i.pz, splat (i8 32)
  %i.ti = bitcast <16 x i1> %i.tg to i16
  %i.tj = zext i16 %i.ti to i64
  %i.tk = bitcast <16 x i1> %i.th to i16
  %i.tl = zext i16 %i.tk to i64
  %i.tm = shufflevector <16 x i8> %i.pt, <16 x i8> %i.pv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.tn = icmp ult <32 x i8> %i.tm, splat (i8 32)
  %i.to = bitcast <32 x i1> %i.tn to i32
  %i.tp = zext i32 %i.to to i64
  %i.tq = shl nuw nsw i64 %i.tj, 32
  %i.tr = or disjoint i64 %i.tq, %i.tp
  %i.ts = shl nuw i64 %i.tl, 48
  %i.tt = or disjoint i64 %i.tr, %i.ts
  %i.tu = or <2 x i64> %.16..16..16..16..16..i, %.0..0..0..0..0..i
  %i.tv = or <2 x i64> %i.tu, %.32..32..32..32..32..i
  %i.tw = or <2 x i64> %i.tv, %.48..48..48..48..48..i
  %i.tx = bitcast <2 x i64> %i.tw to <16 x i8>
  %i.ty = icmp slt <16 x i8> %i.tx, zeroinitializer
  %i.tz = bitcast <16 x i1> %i.ty to i16
  %i.ua = icmp eq i16 %i.tz, 0
  br i1 %i.ua, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit70.i, label %bb.t, !prof !73

bb.t:                                             ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %i.ub = shufflevector <16 x i8> %.sroa.48.0.lcssa1602.i, <16 x i8> %i.pt, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.uc = bitcast <16 x i8> %i.ub to <8 x i16>
  %i.ud = lshr <8 x i16> %i.uc, splat (i16 4)
  %i.ue = bitcast <8 x i16> %i.ud to <16 x i8>
  %i.uf = and <16 x i8> %i.ue, splat (i8 15)
  %i.ug = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.uf)
  %i.uh = and <16 x i8> %i.ub, splat (i8 15)
  %i.ui = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.uh)
  %i.uj = bitcast <2 x i64> %.0..0..0..0..0..i to <8 x i16>
  %i.uk = lshr <8 x i16> %i.uj, splat (i16 4)
  %i.ul = bitcast <8 x i16> %i.uk to <16 x i8>
  %i.um = and <16 x i8> %i.ul, splat (i8 15)
  %i.un = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.um)
  %i.uo = and <16 x i8> %i.ui, %i.ug
  %i.up = and <16 x i8> %i.uo, %i.un
  %i.uq = shufflevector <16 x i8> %.sroa.48.0.lcssa1602.i, <16 x i8> %i.pt, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ur = shufflevector <16 x i8> %.sroa.48.0.lcssa1602.i, <16 x i8> %i.pt, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.us = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.uq, <16 x i8> splat (i8 96))
  %i.ut = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.ur, <16 x i8> splat (i8 112))
  %i.uu = or <16 x i8> %i.us, %i.ut
  %.inner69 = and <16 x i8> %i.uu, splat (i8 -128)
  %.inner70 = xor <16 x i8> %.inner69, %i.up
  %i.uv = bitcast <16 x i8> %.inner70 to <2 x i64>
  %i.uw = shufflevector <16 x i8> %i.pt, <16 x i8> %i.pv, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ux = bitcast <16 x i8> %i.uw to <8 x i16>
  %i.uy = lshr <8 x i16> %i.ux, splat (i16 4)
  %i.uz = bitcast <8 x i16> %i.uy to <16 x i8>
  %i.va = and <16 x i8> %i.uz, splat (i8 15)
  %i.vb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.va)
  %i.vc = and <16 x i8> %i.uw, splat (i8 15)
  %i.vd = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.vc)
  %i.ve = bitcast <2 x i64> %.16..16..16..16..16..i to <8 x i16>
  %i.vf = lshr <8 x i16> %i.ve, splat (i16 4)
  %i.vg = bitcast <8 x i16> %i.vf to <16 x i8>
  %i.vh = and <16 x i8> %i.vg, splat (i8 15)
  %i.vi = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.vh)
  %i.vj = and <16 x i8> %i.vd, %i.vb
  %i.vk = and <16 x i8> %i.vj, %i.vi
  %i.vl = shufflevector <16 x i8> %i.pt, <16 x i8> %i.pv, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.vm = shufflevector <16 x i8> %i.pt, <16 x i8> %i.pv, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.vn = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.vl, <16 x i8> splat (i8 96))
  %i.vo = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.vm, <16 x i8> splat (i8 112))
  %i.vp = or <16 x i8> %i.vn, %i.vo
  %.inner73 = and <16 x i8> %i.vp, splat (i8 -128)
  %.inner74 = xor <16 x i8> %.inner73, %i.vk
  %i.vq = bitcast <16 x i8> %.inner74 to <2 x i64>
  %i.vr = shufflevector <16 x i8> %i.pv, <16 x i8> %i.px, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.vs = bitcast <16 x i8> %i.vr to <8 x i16>
  %i.vt = lshr <8 x i16> %i.vs, splat (i16 4)
  %i.vu = bitcast <8 x i16> %i.vt to <16 x i8>
  %i.vv = and <16 x i8> %i.vu, splat (i8 15)
  %i.vw = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.vv)
  %i.vx = and <16 x i8> %i.vr, splat (i8 15)
  %i.vy = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.vx)
  %i.vz = bitcast <2 x i64> %.32..32..32..32..32..i to <8 x i16>
  %i.wa = lshr <8 x i16> %i.vz, splat (i16 4)
  %i.wb = bitcast <8 x i16> %i.wa to <16 x i8>
  %i.wc = and <16 x i8> %i.wb, splat (i8 15)
  %i.wd = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.wc)
  %i.we = and <16 x i8> %i.vy, %i.vw
  %i.wf = and <16 x i8> %i.we, %i.wd
  %i.wg = shufflevector <16 x i8> %i.pv, <16 x i8> %i.px, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.wh = shufflevector <16 x i8> %i.pv, <16 x i8> %i.px, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.wi = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.wg, <16 x i8> splat (i8 96))
  %i.wj = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.wh, <16 x i8> splat (i8 112))
  %i.wk = or <16 x i8> %i.wi, %i.wj
  %.inner77 = and <16 x i8> %i.wk, splat (i8 -128)
  %.inner78 = xor <16 x i8> %.inner77, %i.wf
  %i.wl = bitcast <16 x i8> %.inner78 to <2 x i64>
  %i.wm = shufflevector <16 x i8> %i.px, <16 x i8> %i.pz, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.wn = bitcast <16 x i8> %i.wm to <8 x i16>
  %i.wo = lshr <8 x i16> %i.wn, splat (i16 4)
  %i.wp = bitcast <8 x i16> %i.wo to <16 x i8>
  %i.wq = and <16 x i8> %i.wp, splat (i8 15)
  %i.wr = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.wq)
  %i.ws = and <16 x i8> %i.wm, splat (i8 15)
  %i.wt = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.ws)
  %i.wu = bitcast <2 x i64> %.48..48..48..48..48..i to <8 x i16>
  %i.wv = lshr <8 x i16> %i.wu, splat (i16 4)
  %i.ww = bitcast <8 x i16> %i.wv to <16 x i8>
  %i.wx = and <16 x i8> %i.ww, splat (i8 15)
  %i.wy = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.wx)
  %i.wz = and <16 x i8> %i.wt, %i.wr
  %i.xa = and <16 x i8> %i.wz, %i.wy
  %i.xb = shufflevector <16 x i8> %i.px, <16 x i8> %i.pz, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.xc = shufflevector <16 x i8> %i.px, <16 x i8> %i.pz, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.xd = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.xb, <16 x i8> splat (i8 96))
  %i.xe = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.xc, <16 x i8> splat (i8 112))
  %i.xf = or <16 x i8> %i.xd, %i.xe
  %.inner81 = and <16 x i8> %i.xf, splat (i8 -128)
  %.inner82 = xor <16 x i8> %.inner81, %i.xa
  %i.xg = bitcast <16 x i8> %.inner82 to <2 x i64>
  %i.xh = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.pz, <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.xi = bitcast <16 x i8> %i.xh to <2 x i64>
  %i.xj = or <2 x i64> %.sroa.23148.0.lcssa1603.i, %i.xi
  %i.xk = or <2 x i64> %i.xj, %i.uv
  %i.xl = or <2 x i64> %i.xk, %i.vq
  %i.xm = or <2 x i64> %i.xl, %i.wl
  %i.xn = or <2 x i64> %i.xm, %i.xg
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit70.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit70.i: ; preds = %bb.t, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %.sroa.23148.2.i = phi <2 x i64> [ %i.xn, %bb.t ], [ %.sroa.53.0.lcssa1601.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ] ; 2 uses
  %i.xo = trunc i64 %.sroa.11.0.lcssa1595.i to i32
  %i.xp = add i32 %i.xo, -64                      ; 27 uses
  %i.xq = icmp eq i64 %.sroa.142.0.lcssa1599.i, 0
  br i1 %i.xq, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit70.i
  %i.xr = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.sroa.142.0.lcssa1599.i) ; 11 uses
  %i.xs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.142.0.lcssa1599.i, i1 true)
  %i.xt = trunc nuw nsw i64 %i.xs to i32
  %i.xu = or disjoint i32 %i.xp, %i.xt
  store i32 %i.xu, ptr %.sroa.59.0.lcssa1600.i, align 4
  %i.xv = add i64 %.sroa.142.0.lcssa1599.i, -1
  %i.xw = and i64 %i.xv, %.sroa.142.0.lcssa1599.i ; 3 uses
  %i.xx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.xw, i1 true)
  %i.xy = trunc nuw nsw i64 %i.xx to i32
  %i.xz = or disjoint i32 %i.xp, %i.xy
  %i.ya = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 4
  store i32 %i.xz, ptr %i.ya, align 4
  %i.yb = add i64 %i.xw, -2
  %i.yc = and i64 %i.yb, %i.xw                    ; 3 uses
  %i.yd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yc, i1 true)
  %i.ye = trunc nuw nsw i64 %i.yd to i32
  %i.yf = or disjoint i32 %i.xp, %i.ye
  %i.yg = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 8
  store i32 %i.yf, ptr %i.yg, align 4
  %i.yh = add i64 %i.yc, -2
  %i.yi = and i64 %i.yh, %i.yc                    ; 3 uses
  %i.yj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yi, i1 true)
  %i.yk = trunc nuw nsw i64 %i.yj to i32
  %i.yl = or disjoint i32 %i.xp, %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 12
  store i32 %i.yl, ptr %i.ym, align 4
  %i.yn = icmp samesign ugt i64 %i.xr, 4
  br i1 %i.yn, label %bb.v, label %.loopexit1481.i, !prof !60

bb.v:                                             ; preds = %bb.u
  %i.yo = add i64 %i.yi, -2
  %i.yp = and i64 %i.yo, %i.yi                    ; 3 uses
  %i.yq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yp, i1 true)
  %i.yr = trunc nuw nsw i64 %i.yq to i32
  %i.ys = or disjoint i32 %i.xp, %i.yr
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 16
  store i32 %i.ys, ptr %i.yt, align 4
  %i.yu = add i64 %i.yp, -2
  %i.yv = and i64 %i.yu, %i.yp                    ; 3 uses
  %i.yw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yv, i1 true)
  %i.yx = trunc nuw nsw i64 %i.yw to i32
  %i.yy = or disjoint i32 %i.xp, %i.yx
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 20
  store i32 %i.yy, ptr %i.yz, align 4
  %i.za = add i64 %i.yv, -1
  %i.zb = and i64 %i.za, %i.yv                    ; 3 uses
  %i.zc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zb, i1 true)
  %i.zd = trunc nuw nsw i64 %i.zc to i32
  %i.ze = or disjoint i32 %i.xp, %i.zd
  %i.zf = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 24
  store i32 %i.ze, ptr %i.zf, align 4
  %i.zg = add i64 %i.zb, -2
  %i.zh = and i64 %i.zg, %i.zb                    ; 3 uses
  %i.zi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zh, i1 true)
  %i.zj = trunc nuw nsw i64 %i.zi to i32
end_hunk_1
