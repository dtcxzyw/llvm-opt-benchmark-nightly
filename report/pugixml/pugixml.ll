Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv:bb.a
  br label %bb.bh

bb.ai:                                            ; preds = %bb.ag
  %i.bt = add i8 %i.bp, -58
  %.not84 = icmp ult i8 %i.bt, -10
  br i1 %.not84, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0, ptr %i.bu, align 8, !tbaa !664
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.4 = phi ptr [ %i.g, %bb.aj ], [ %i.bx, %bb.ak ] ; 4 uses
  %i.bv = load i8, ptr %.4, align 1, !tbaa !86
  %i.bw = add i8 %i.bv, -58
  %.not85 = icmp ult i8 %i.bw, -10
  %i.bx = getelementptr inbounds nuw i8, ptr %.4, i64 1
  br i1 %.not85, label %bb.al, label %bb.ak, !llvm.loop !658

bb.al:                                            ; preds = %bb.ak
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.4, ptr %i.by, align 8, !tbaa !665
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 15, ptr %i.bz, align 8, !tbaa !238
  br label %bb.bh

bb.am:                                            ; preds = %bb.ai
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 23, ptr %i.ca, align 8, !tbaa !238
  br label %bb.bh

bb.an:                                            ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 22, ptr %i.cb, align 8, !tbaa !238
  br label %bb.bh

bb.ao:                                            ; preds = %bb.c, %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.cc, align 8, !tbaa !664
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.5 = phi ptr [ %i.g, %bb.ao ], [ %i.ce, %bb.ap ] ; 5 uses
  %i.cd = load i8, ptr %.5, align 1, !tbaa !86    ; 2 uses
  %.not81 = icmp eq i8 %i.cd, 0
  %.not82 = icmp eq i8 %i.cd, %i.i
  %or.cond = or i1 %.not81, %.not82
  %i.ce = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  br i1 %or.cond, label %.critedge, label %bb.ap, !llvm.loop !659

.critedge:                                        ; preds = %bb.ap
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.5, ptr %i.cf, align 8, !tbaa !665
  %i.cg = load i8, ptr %.5, align 1, !tbaa !86
  %.not83 = icmp eq i8 %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %.not83, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.critedge
  store i32 0, ptr %i.ch, align 8, !tbaa !238
  br label %bb.bh

bb.ar:                                            ; preds = %.critedge
  store i32 14, ptr %i.ch, align 8, !tbaa !238
  br label %bb.bh

bb.as:                                            ; preds = %bb.c
  %i.ci = load i8, ptr %i.g, align 1, !tbaa !86
  %i.cj = icmp eq i8 %i.ci, 58
  br i1 %i.cj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ck = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 25, ptr %i.cl, align 8, !tbaa !238
  br label %bb.bh

bb.au:                                            ; preds = %bb.as
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.cm, align 8, !tbaa !238
  br label %bb.bh

bb.av:                                            ; preds = %bb.c
  %i.cn = zext i8 %i.i to i64
  %i.co = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !86
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = and i32 %i.cq, 8
  %.not90 = icmp eq i32 %i.cr, 0
  br i1 %.not90, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0, ptr %i.cs, align 8, !tbaa !664
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %bb.aw
  %.7 = phi ptr [ %.0, %bb.aw ], [ %i.cv, %bb.ax ] ; 4 uses
  %i.ct = load i8, ptr %.7, align 1, !tbaa !86    ; 2 uses
  %i.cu = add i8 %i.ct, -58
  %.not95 = icmp ult i8 %i.cu, -10
  %i.cv = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br i1 %.not95, label %bb.ay, label %bb.ax, !llvm.loop !660

bb.ay:                                            ; preds = %bb.ax
  %i.cw = icmp eq i8 %i.ct, 46
  br i1 %i.cw, label %.preheader97, label %.loopexit98

.preheader97:                                     ; preds = %bb.ay, %.preheader97
  %.7.pn = phi ptr [ %.8, %.preheader97 ], [ %.7, %bb.ay ]
  %.8 = getelementptr inbounds nuw i8, ptr %.7.pn, i64 1 ; 3 uses
  %i.cx = load i8, ptr %.8, align 1, !tbaa !86
  %i.cy = add i8 %i.cx, -58
  %.not96 = icmp ult i8 %i.cy, -10
  br i1 %.not96, label %.loopexit98, label %.preheader97, !llvm.loop !661

.loopexit98:                                      ; preds = %.preheader97, %bb.ay
  %.9 = phi ptr [ %.7, %bb.ay ], [ %.8, %.preheader97 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.9, ptr %i.cz, align 8, !tbaa !665
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 15, ptr %i.da, align 8, !tbaa !238
  br label %bb.bh

bb.az:                                            ; preds = %bb.av
  %i.db = and i32 %i.cq, 4
  %.not91 = icmp eq i32 %i.db, 0
  br i1 %.not91, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0, ptr %i.dc, align 8, !tbaa !664
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %.10 = phi ptr [ %.0, %bb.ba ], [ %i.di, %bb.bb ] ; 5 uses
  %i.dd = load i8, ptr %.10, align 1, !tbaa !86   ; 2 uses
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !86
  %i.dh = and i8 %i.dg, 16
  %.not92 = icmp eq i8 %i.dh, 0
  %i.di = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 3 uses
  br i1 %.not92, label %bb.bc, label %bb.bb, !llvm.loop !662

bb.bc:                                            ; preds = %bb.bb
  %i.dj = icmp eq i8 %i.dd, 58
  br i1 %i.dj, label %bb.bd, label %.loopexit

bb.bd:                                            ; preds = %bb.bc
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !86  ; 2 uses
  %i.dl = icmp eq i8 %i.dk, 42
  br i1 %i.dl, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.dm = getelementptr inbounds nuw i8, ptr %.10, i64 2
  br label %.loopexit

bb.bf:                                            ; preds = %bb.bd
  %i.dn = zext i8 %i.dk to i64
  %i.do = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !86
  %i.dq = and i8 %i.dp, 16
  %.not93 = icmp eq i8 %i.dq, 0
  br i1 %.not93, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bf, %.preheader
  %.11 = phi ptr [ %i.dw, %.preheader ], [ %i.di, %bb.bf ] ; 3 uses
  %i.dr = load i8, ptr %.11, align 1, !tbaa !86
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !86
  %i.dv = and i8 %i.du, 16
  %.not94 = icmp eq i8 %i.dv, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %.11, i64 1
  br i1 %.not94, label %.loopexit, label %.preheader, !llvm.loop !663

.loopexit:                                        ; preds = %.preheader, %bb.be, %bb.bf, %bb.bc
  %.12 = phi ptr [ %i.dm, %bb.be ], [ %.10, %bb.bc ], [ %.10, %bb.bf ], [ %.11, %.preheader ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.12, ptr %i.dx, align 8, !tbaa !665
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 20, ptr %i.dy, align 8, !tbaa !238
  br label %bb.bh

bb.bg:                                            ; preds = %bb.az
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.dz, align 8, !tbaa !238
  br label %bb.bh

bb.bh:                                            ; preds = %bb.aq, %bb.ar, %.loopexit98, %bb.bg, %.loopexit, %bb.at, %bb.au, %bb.ah, %bb.am, %bb.al, %bb.ae, %bb.af, %.loopexit100, %bb.x, %bb.l, %bb.m, %bb.i, %bb.j, %bb.f, %bb.g, %bb.an, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.d
  %.13 = phi ptr [ %.9, %.loopexit98 ], [ %.12, %.loopexit ], [ %.0, %bb.bg ], [ %.0, %bb.d ], [ %i.m, %bb.f ], [ %i.g, %bb.g ], [ %i.r, %bb.i ], [ %i.g, %bb.j ], [ %i.w, %bb.l ], [ %.0, %bb.m ], [ %i.g, %bb.n ], [ %i.g, %bb.o ], [ %i.g, %bb.p ], [ %i.g, %bb.q ], [ %i.g, %bb.r ], [ %.3, %.loopexit100 ], [ %i.g, %bb.x ], [ %i.g, %bb.y ], [ %i.g, %bb.z ], [ %i.g, %bb.aa ], [ %i.g, %bb.ab ], [ %i.g, %bb.ac ], [ %i.bm, %bb.ae ], [ %i.g, %bb.af ], [ %i.br, %bb.ah ], [ %.4, %bb.al ], [ %i.g, %bb.am ], [ %i.g, %bb.an ], [ %.0, %bb.au ], [ %i.ck, %bb.at ], [ %i.ce, %bb.ar ], [ %.5, %bb.aq ]
  store ptr %.13, ptr %0, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %.val34 = load i32, ptr %i.b, align 8, !tbaa !238
  switch i32 %.val34, label %bb.cr [
    i32 11, label %.thread.thread
    i32 12, label %.thread.thread98
    i32 8, label %bb.ci
    i32 20, label %bb.b
    i32 15, label %bb.al
    i32 14, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  %.val35 = load ptr, ptr %i.a, align 8, !tbaa !233
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.015 = phi ptr [ %.val35, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.c = load i8, ptr %.015, align 1, !tbaa !86   ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !86
  %i.g = and i8 %i.f, 8
  %.not20 = icmp eq i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %.015, i64 1
  br i1 %.not20, label %bb.d, label %bb.c, !llvm.loop !666

bb.d:                                             ; preds = %bb.c
  %.not21 = icmp eq i8 %i.c, 40
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser19parse_location_pathEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.thread64

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val39 = load ptr, ptr %i.j, align 8, !tbaa !281 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val40 = load ptr, ptr %i.k, align 8           ; 2 uses
  %i.l = tail call fastcc noundef i32 @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser20parse_node_test_typeERKNS1_18xpath_lexer_stringE(ptr %.val39, ptr %.val40)
  %.not22 = icmp eq i32 %i.l, 0
  br i1 %.not22, label %.thread.thread181, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser19parse_location_pathEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.thread64

.thread.thread:                                   ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !235  ; 2 uses
  %.not32.i = icmp eq ptr %i.o, null
  br i1 %.not32.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !236  ; 2 uses
  store ptr @.str.39, ptr %i.q, align 8, !tbaa !195
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i57 = load ptr, ptr %i.r, align 8, !tbaa !239
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !234
  %i.u = ptrtoint ptr %.val.i.i57 to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !196
  br label %.thread64

bb.i:                                             ; preds = %.thread.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !94
  %.sroa.0.0.copyload.i = load ptr, ptr %i.y, align 8, !tbaa !94 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = ptrtoint ptr %.sroa.4.0.copyload.i to i64
  %i.ab = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 31
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.af = add i64 %i.ac, 1
  %i.ag = tail call noundef ptr %i.ae(i64 noundef %i.af), !inline_history !667 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_120get_variable_scratchERA32_cPNS_18xpath_variable_setEPKcS7_PPNS_14xpath_variableE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %i.ag, %bb.j ], [ %i.z, %bb.i ] ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i, ptr align 1 %.sroa.0.0.copyload.i, i64 %i.ac, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ac
  store i8 0, ptr %i.ah, align 1, !tbaa !86
  %i.ai = load i8, ptr %.0.i.i, align 1, !tbaa !86 ; 3 uses
  %.not15.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not15.i.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %i.aj = phi i8 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.ai, %bb.k ]
  %.017.i.i.i.i.i = phi i32 [ %i.ap, %.lr.ph.i.i.i.i.i ], [ 0, %bb.k ]
  %.01316.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0.i.i, %bb.k ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.01316.i.i.i.i.i, i64 1 ; 2 uses
  %i.al = sext i8 %i.aj to i32
  %i.am = add i32 %.017.i.i.i.i.i, %i.al
  %i.an = mul i32 %i.am, 1025                     ; 2 uses
  %i.ao = lshr i32 %i.an, 6
  %i.ap = xor i32 %i.ao, %i.an                    ; 2 uses
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !86  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !34

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = mul i32 %i.ap, 9
  br label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i

_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i: ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.k
  %.0.lcssa.i.i.i.i.i = phi i32 [ 0, %bb.k ], [ %i.ar, %._crit_edge.loopexit.i.i.i.i.i ] ; 2 uses
  %i.as = lshr i32 %.0.lcssa.i.i.i.i.i, 11
  %i.at = xor i32 %i.as, %.0.lcssa.i.i.i.i.i
  %i.au = and i32 %i.at, 63
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.av
  %.01324.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !212 ; 2 uses
  %.not25.i.i.i.i = icmp eq ptr %.01324.i.i.i.i, null
  br i1 %.not25.i.i.i.i, label %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i.i.i
  %.01326.i.i.i.i = phi ptr [ %.013.i.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i.i.i ], [ %.01324.i.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i ] ; 4 uses
  %i.ax = load i32, ptr %.01326.i.i.i.i, align 8, !tbaa !200
  %switch.tableidx = add i32 %i.ax, -1            ; 2 uses
  %i.ay = icmp ult i32 %switch.tableidx, 4
  br i1 %i.ay, label %switch.lookup, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i.i.i

switch.lookup:                                    ; preds = %.lr.ph.i.i.i.i
  %i.az = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv, i64 %i.az
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.01326.i.i.i.i, i64 %switch.ext ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !86
  %i.bc = icmp eq i8 %i.bb, %i.ai
  br i1 %i.bc, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i.i.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i.i.i.i: ; preds = %switch.lookup
  %i.bd = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ba, ptr noundef nonnull readonly dereferenceable(1) %.0.i.i) #50, !inline_history !668
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i.i.i

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i.i.i.i, %switch.lookup
  %i.bf = getelementptr inbounds nuw i8, ptr %.01326.i.i.i.i, i64 8
  %.013.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !212 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.013.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !35

_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i:    ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i
  %.013.lcssa.i.i.i.i = phi ptr [ null, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i ], [ %.01326.i.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.i.i.i.i ], [ null, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread.i.i.i.i ] ; 3 uses
  %.not20.i.i = icmp eq ptr %.0.i.i, %i.z
  br i1 %.not20.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i
  %i.bg = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.bg(ptr noundef nonnull %.0.i.i), !inline_history !667
  br label %bb.m

_ZN4pugi4impl12_GLOBAL__N_120get_variable_scratchERA32_cPNS_18xpath_variable_setEPKcS7_PPNS_14xpath_variableE.exit.i: ; preds = %bb.j
  %.val40.i = load ptr, ptr %0, align 8, !tbaa !232
  %i.bh = getelementptr i8, ptr %.val40.i, i64 16
  %.val40.val.i = load ptr, ptr %i.bh, align 8, !tbaa !225
  store i8 1, ptr %.val40.val.i, align 1, !tbaa !251
  br label %.thread64

bb.m:                                             ; preds = %bb.l, %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i
  %.not33.i = icmp eq ptr %.013.lcssa.i.i.i.i, null
  br i1 %.not33.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !236 ; 2 uses
  store ptr @.str.40, ptr %i.bj, align 8, !tbaa !195
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i48.i = load ptr, ptr %i.bk, align 8, !tbaa !239
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !234
  %i.bn = ptrtoint ptr %.val.i48.i to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !196
  br label %.thread64

bb.o:                                             ; preds = %bb.m
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !668
  %i.br = load i32, ptr %.013.lcssa.i.i.i.i, align 8, !tbaa !200
  %.val41.i = load ptr, ptr %0, align 8, !tbaa !232 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val41.i, i64 8 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !224 ; 2 uses
  %i.bu = add i64 %i.bt, 40                       ; 2 uses
  %i.bv = load ptr, ptr %.val41.i, align 8, !tbaa !223 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !250
  %.not.i.i.i49.i = icmp ugt i64 %i.bu, %i.bx
  br i1 %.not.i.i.i49.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bt
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.ca = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.cb = tail call noundef ptr %i.ca(i64 noundef 4112), !inline_history !669 ; 5 uses
  %.not23.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not23.i.i.i.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %.val41.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not24.i.i.i.i, label %.thread64, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.cd, align 1, !tbaa !251
  br label %.thread64

bb.t:                                             ; preds = %bb.q
  %i.ce = load ptr, ptr %.val41.i, align 8, !tbaa !223
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !240
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 4096, ptr %i.cf, align 8, !tbaa !250
  store ptr %i.cb, ptr %.val41.i, align 8, !tbaa !223
  store i64 40, ptr %i.bs, align 8, !tbaa !224
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i.i: ; preds = %bb.t, %bb.p
  %.1.i.i.i.i = phi ptr [ %i.bz, %bb.p ], [ %i.cg, %bb.t ] ; 7 uses
  store i8 20, ptr %.1.i.i.i.i, align 8, !tbaa !245
  %i.ch = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  %i.ci = trunc i32 %i.br to i8
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !246
  %i.cj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 2
  store i8 0, ptr %i.cj, align 2, !tbaa !248
end_hunk_0
begin_hunk_1_@_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv:bb.a
bb.aj:                                            ; preds = %bb.ai
  store i8 1, ptr %i.ez, align 1, !tbaa !251
  br label %.thread64

bb.ak:                                            ; preds = %bb.ah
  %i.fa = load ptr, ptr %.val42.i, align 8, !tbaa !223
  store ptr %i.fa, ptr %i.ex, align 8, !tbaa !240
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 4096, ptr %i.fb, align 8, !tbaa !250
  store ptr %i.ex, ptr %.val42.i, align 8, !tbaa !223
  store i64 40, ptr %i.eo, align 8, !tbaa !224
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i55.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i55.i: ; preds = %bb.ak, %bb.ag
  %.1.i.i.i56.i = phi ptr [ %i.ev, %bb.ag ], [ %i.fc, %bb.ak ] ; 4 uses
  store <4 x i8> <i8 18, i8 3, i8 0, i8 0>, ptr %.1.i.i.i56.i, align 8, !tbaa !86
  %i.fd = getelementptr inbounds nuw i8, ptr %.1.i.i.i56.i, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.1.i.i.i56.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i8 0, i64 24, i1 false)
  store ptr %.1.i53.i, ptr %i.fe, align 8, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82

bb.al:                                            ; preds = %bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !281 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !282
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fh to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 4 uses
  %i.fn = icmp ugt i64 %i.fm, 31
  br i1 %i.fn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fo = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.fp = add i64 %i.fm, 1
  %i.fq = tail call noundef ptr %i.fo(i64 noundef %i.fp), !inline_history !673 ; 2 uses
  %.not.i64.i = icmp eq ptr %i.fq, null
  br i1 %.not.i64.i, label %_ZN4pugi4impl12_GLOBAL__N_132convert_string_to_number_scratchERA32_cPKcS5_Pd.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0.i59.i = phi ptr [ %i.fq, %bb.am ], [ %i.ff, %bb.al ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i59.i, ptr align 1 %i.fh, i64 %i.fm, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i59.i, i64 %i.fm
  store i8 0, ptr %i.fr, align 1, !tbaa !86
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %.0.i.i.i = phi ptr [ %.0.i59.i, %bb.an ], [ %i.fx, %bb.ao ] ; 4 uses
  %i.fs = load i8, ptr %.0.i.i.i, align 1, !tbaa !86 ; 2 uses
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !86
  %i.fw = and i8 %i.fv, 8
  %.not.i.i60.i = icmp eq i8 %i.fw, 0
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i60.i, label %bb.ap, label %bb.ao, !llvm.loop !41

bb.ap:                                            ; preds = %bb.ao
  %i.fy = icmp eq i8 %i.fs, 45
  %spec.select.idx.i.i.i.i = zext i1 %i.fy to i64
  %spec.select.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %spec.select.idx.i.i.i.i ; 3 uses
  %i.fz = load i8, ptr %spec.select.i.i.i.i, align 1, !tbaa !86 ; 3 uses
  %.not.i.i.i61.i = icmp eq i8 %i.fz, 0
  br i1 %.not.i.i.i61.i, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ga = add i8 %i.fz, -58
  %.not18.i.i.i.i = icmp ult i8 %i.ga, -10
  br i1 %.not18.i.i.i.i, label %bb.ar, label %.preheader

bb.ar:                                            ; preds = %bb.aq
  %.not19.i.i.i.i = icmp eq i8 %i.fz, 46
  br i1 %.not19.i.i.i.i, label %bb.as, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.gb = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !86
  %i.gd = add i8 %i.gc, -58
  %.not20.i.i.i.i = icmp ult i8 %i.gd, -10
  br i1 %.not20.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i, label %.preheader

.preheader:                                       ; preds = %bb.as, %bb.aq
  br label %bb.at

bb.at:                                            ; preds = %.preheader, %bb.at
  %.1.i.i.i62.i = phi ptr [ %i.gg, %bb.at ], [ %spec.select.i.i.i.i, %.preheader ] ; 4 uses
  %i.ge = load i8, ptr %.1.i.i.i62.i, align 1, !tbaa !86 ; 2 uses
  %i.gf = add i8 %i.ge, -58
  %.not21.i.i.i.i = icmp ult i8 %i.gf, -10
  %i.gg = getelementptr inbounds nuw i8, ptr %.1.i.i.i62.i, i64 1
  br i1 %.not21.i.i.i.i, label %bb.au, label %bb.at, !llvm.loop !42

bb.au:                                            ; preds = %bb.at
  %i.gh = icmp eq i8 %i.ge, 46
  br i1 %i.gh, label %.preheader.i.i.i.i, label %.loopexit.i.i.i.i.preheader

.preheader.i.i.i.i:                               ; preds = %bb.au, %.preheader.i.i.i.i
  %.1.pn.i.i.i.i = phi ptr [ %.2.i.i.i.i, %.preheader.i.i.i.i ], [ %.1.i.i.i62.i, %bb.au ]
  %.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %.1.pn.i.i.i.i, i64 1 ; 3 uses
  %i.gi = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !86
  %i.gj = add i8 %i.gi, -58
  %.not22.i.i.i.i = icmp ult i8 %i.gj, -10
  br i1 %.not22.i.i.i.i, label %.loopexit.i.i.i.i.preheader, label %.preheader.i.i.i.i, !llvm.loop !43

.loopexit.i.i.i.i.preheader:                      ; preds = %.preheader.i.i.i.i, %bb.au
  %.4.i.i.i.i.ph = phi ptr [ %.1.i.i.i62.i, %bb.au ], [ %.2.i.i.i.i, %.preheader.i.i.i.i ]
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.i.i.i.i.preheader, %.loopexit.i.i.i.i
  %.4.i.i.i.i = phi ptr [ %i.gp, %.loopexit.i.i.i.i ], [ %.4.i.i.i.i.ph, %.loopexit.i.i.i.i.preheader ] ; 2 uses
  %i.gk = load i8, ptr %.4.i.i.i.i, align 1, !tbaa !86 ; 2 uses
  %i.gl = zext i8 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !86
  %i.go = and i8 %i.gn, 8
  %.not23.i.i.i63.i = icmp eq i8 %i.go, 0
  %i.gp = getelementptr inbounds nuw i8, ptr %.4.i.i.i.i, i64 1
  br i1 %.not23.i.i.i63.i, label %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i.i.i, label %.loopexit.i.i.i.i, !llvm.loop !44

_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i.i.i: ; preds = %.loopexit.i.i.i.i
  %i.gq = icmp eq i8 %i.gk, 0
  br i1 %i.gq, label %bb.av, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i

bb.av:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i.i.i
  %i.gr = tail call double @strtod(ptr noundef nonnull captures(none) %.0.i.i.i, ptr noundef null) #49, !inline_history !668
  br label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i: ; preds = %bb.av, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i.i.i, %bb.as, %bb.ar, %bb.ap
  %.05.i.i.i = phi double [ %i.gr, %bb.av ], [ +qnan, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i.i.i ], [ +qnan, %bb.ap ], [ +qnan, %bb.as ], [ +qnan, %bb.ar ]
  %.not19.i.i = icmp eq ptr %.0.i59.i, %i.ff
  br i1 %.not19.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i
  %i.gs = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.gs(ptr noundef nonnull %.0.i59.i), !inline_history !673
  br label %bb.ax

_ZN4pugi4impl12_GLOBAL__N_132convert_string_to_number_scratchERA32_cPKcS5_Pd.exit.i: ; preds = %bb.am
  %.val39.i = load ptr, ptr %0, align 8, !tbaa !232
  %i.gt = getelementptr i8, ptr %.val39.i, i64 16
  %.val39.val.i = load ptr, ptr %i.gt, align 8, !tbaa !225
  store i8 1, ptr %.val39.val.i, align 1, !tbaa !251
  br label %.thread64

bb.ax:                                            ; preds = %bb.aw, %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !668
  %.val43.i = load ptr, ptr %0, align 8, !tbaa !232 ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.val43.i, i64 8 ; 3 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !224 ; 2 uses
  %i.gw = add i64 %i.gv, 40                       ; 2 uses
  %i.gx = load ptr, ptr %.val43.i, align 8, !tbaa !223 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !250
  %.not.i.i.i65.i = icmp ugt i64 %i.gw, %i.gz
  br i1 %.not.i.i.i65.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gv
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i66.i

bb.az:                                            ; preds = %bb.ax
  %i.hc = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.hd = tail call noundef ptr %i.hc(i64 noundef 4112), !inline_history !674 ; 5 uses
  %.not23.i.i.i68.i = icmp eq ptr %i.hd, null
  br i1 %.not23.i.i.i68.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.he = getelementptr inbounds nuw i8, ptr %.val43.i, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i.i69.i = icmp eq ptr %i.hf, null
  br i1 %.not24.i.i.i69.i, label %.thread64, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i8 1, ptr %i.hf, align 1, !tbaa !251
  br label %.thread64

bb.bc:                                            ; preds = %bb.az
  %i.hg = load ptr, ptr %.val43.i, align 8, !tbaa !223
  store ptr %i.hg, ptr %i.hd, align 8, !tbaa !240
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store i64 4096, ptr %i.hh, align 8, !tbaa !250
  store ptr %i.hd, ptr %.val43.i, align 8, !tbaa !223
  store i64 40, ptr %i.gu, align 8, !tbaa !224
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i66.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i66.i: ; preds = %bb.bc, %bb.ay
  %.1.i.i.i67.i = phi ptr [ %i.hb, %bb.ay ], [ %i.hi, %bb.bc ] ; 4 uses
  store <4 x i8> <i8 19, i8 2, i8 0, i8 0>, ptr %.1.i.i.i67.i, align 8, !tbaa !86
  %i.hj = getelementptr inbounds nuw i8, ptr %.1.i.i.i67.i, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.1.i.i.i67.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hj, i8 0, i64 24, i1 false)
  store double %.05.i.i.i, ptr %i.hk, align 8, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82

.thread.thread181:                                ; preds = %bb.f
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !668
  %.val35.i = load i32, ptr %i.b, align 8, !tbaa !238
  %.not.i50 = icmp eq i32 %.val35.i, 12
  br i1 %.not.i50, label %bb.bd, label %.thread.thread171

.thread.thread171:                                ; preds = %.thread.thread181
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %2 = load ptr, ptr %1, align 8, !tbaa !236      ; 2 uses
  store ptr @.str.42, ptr %2, align 8, !tbaa !195
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i70.i = load ptr, ptr %3, align 8, !tbaa !239
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !234
  %6 = ptrtoint ptr %.val.i70.i to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %8, ptr %9, align 8, !tbaa !196
  br label %.thread64

bb.bd:                                            ; preds = %.thread.thread181
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !668
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !237 ; 2 uses
  %.val34.i115 = load i32, ptr %i.b, align 8, !tbaa !238 ; 2 uses
  %.not25.i116 = icmp eq i32 %.val34.i115, 13
  br i1 %.not25.i116, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bd, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit
  %i.hn = phi i64 [ %20, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ], [ %i.hm, %bb.bd ]
  %.val34.i119 = phi i32 [ %.val34.i, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ], [ %.val34.i115, %bb.bd ]
  %.0.i118 = phi ptr [ %33, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ], [ null, %bb.bd ]
  %.017.i117 = phi i64 [ %38, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ], [ 0, %bb.bd ] ; 4 uses
  %.sroa.5.0125 = phi ptr [ %.sroa.5.1, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ], [ null, %bb.bd ] ; 2 uses
  %.sroa.058.0124 = phi ptr [ %.sroa.058.1, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ], [ null, %bb.bd ] ; 2 uses
  %.not26.i = icmp eq i64 %.017.i117, 0
  br i1 %.not26.i, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit75.i.a, label %bb.be

bb.be:                                            ; preds = %.lr.ph
  %.not27.i = icmp eq i32 %.val34.i119, 21
  br i1 %.not27.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %11 = load ptr, ptr %10, align 8, !tbaa !236    ; 2 uses
  store ptr @.str.43, ptr %11, align 8, !tbaa !195
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i71.i = load ptr, ptr %12, align 8, !tbaa !239
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %14 = load ptr, ptr %13, align 8, !tbaa !234
  %15 = ptrtoint ptr %.val.i71.i to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %17, ptr %18, align 8, !tbaa !196
  br label %.thread64

bb.bg:                                            ; preds = %bb.be
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !668
  %.pre = load i64, ptr %i.hl, align 8, !tbaa !237
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit75.i.a

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit75.i.a: ; preds = %bb.bg, %.lr.ph
  %19 = phi i64 [ %.pre, %bb.bg ], [ %i.hn, %.lr.ph ] ; 3 uses
  %20 = add i64 %19, 1                            ; 4 uses
  store i64 %20, ptr %i.hl, align 8, !tbaa !237
  %21 = icmp ugt i64 %20, 1024
  br i1 %21, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit75.i.a
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %23 = load ptr, ptr %22, align 8, !tbaa !236    ; 2 uses
  store ptr @.str.31, ptr %23, align 8, !tbaa !195
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i52 = load ptr, ptr %24, align 8, !tbaa !239
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %26 = load ptr, ptr %25, align 8, !tbaa !234
  %27 = ptrtoint ptr %.val.i.i.i52 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %i.ho = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %29, ptr %i.ho, align 8, !tbaa !196
  br label %.thread64

bb.bi:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit75.i.a
  %i.hp = add nsw i64 %19, 2
  store i64 %i.hp, ptr %i.hl, align 8, !tbaa !237
  %30 = icmp sgt i64 %19, 1022
  br i1 %30, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87.sink.split, label %31

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87.sink.split: ; preds = %bb.bi
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !236 ; 2 uses
  store ptr @.str.31, ptr %i.hr, align 8, !tbaa !195
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i70.i.a = load ptr, ptr %i.hs, align 8, !tbaa !239
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !234
  %i.hv = ptrtoint ptr %.val.i70.i.a to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !196
  br label %.thread64

31:                                               ; preds = %bb.bi
  %32 = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !670 ; 2 uses
  %.not.i72.i = icmp eq ptr %32, null
  br i1 %.not.i72.i, label %.thread64, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit75.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit75.i: ; preds = %31
  %33 = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser20parse_expression_recEPNS1_14xpath_ast_nodeEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %32, i32 noundef 0), !inline_history !670 ; 5 uses
  store i64 %20, ptr %i.hl, align 8, !tbaa !237
  %.not28.not.i = icmp eq ptr %33, null
  br i1 %.not28.not.i, label %.thread64, label %34

34:                                               ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit75.i
  %35 = icmp ult i64 %.017.i117, 2
  br i1 %35, label %36, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87

36:                                               ; preds = %34
  %.sroa.idx = icmp eq i64 %.017.i117, 1          ; 2 uses
  %spec.select = select i1 %.sroa.idx, ptr %.sroa.058.0124, ptr %33
  %spec.select97 = select i1 %.sroa.idx, ptr %33, ptr %.sroa.5.0125
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87: ; preds = %34
  %37 = getelementptr inbounds nuw i8, ptr %.0.i118, i64 24
  store ptr %33, ptr %37, align 8, !tbaa !244
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit: ; preds = %36, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87
  %.sroa.058.1 = phi ptr [ %.sroa.058.0124, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87 ], [ %spec.select, %36 ] ; 2 uses
  %.sroa.5.1 = phi ptr [ %.sroa.5.0125, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87 ], [ %spec.select97, %36 ] ; 2 uses
  %38 = add i64 %.017.i117, 1                     ; 2 uses
  %.val34.i = load i32, ptr %i.b, align 8, !tbaa !238 ; 2 uses
  %.not25.i = icmp eq i32 %.val34.i, 13
  br i1 %.not25.i, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit, label %.lr.ph, !llvm.loop !675

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit, %bb.bd
  %.val47.i = phi ptr [ null, %bb.bd ], [ %.sroa.058.1, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ]
  %.val46.i = phi ptr [ null, %bb.bd ], [ %.sroa.5.1, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ]
  %.017.i.lcssa = phi i64 [ 0, %bb.bd ], [ %38, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ]
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !668
  store i64 %i.hm, ptr %i.hl, align 8, !tbaa !237
  %i.hz = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser14parse_functionERKNS1_18xpath_lexer_stringEmPPNS1_14xpath_ast_nodeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %.val39, ptr %.val40, i64 noundef %.017.i.lcssa, ptr %.val47.i, ptr %.val46.i), !inline_history !668 ; 2 uses
  %.not.i = icmp eq ptr %i.hz, null
  br i1 %.not.i, label %.thread64, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82: ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i66.i, %bb.y, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i55.i, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit
  %.9.i85 = phi ptr [ %i.hz, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit ], [ %.1.i.i.i67.i, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i66.i ], [ %i.db, %bb.y ], [ %.1.i.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i.i ], [ %.1.i.i.i56.i, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i55.i ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !237
  %.val21.i120 = load i32, ptr %i.b, align 8, !tbaa !238 ; 2 uses
  %i.ic = icmp eq i32 %.val21.i120, 18
  br i1 %i.ic, label %.lr.ph122, label %._crit_edge

.lr.ph122:                                        ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82, %bb.bx
  %.010.i121 = phi ptr [ %.1.i.i.i45, %bb.bx ], [ %.9.i85, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82 ] ; 2 uses
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !676
  %i.id = load i64, ptr %i.ia, align 8, !tbaa !237 ; 3 uses
  %i.ie = add i64 %i.id, 1                        ; 3 uses
  store i64 %i.ie, ptr %i.ia, align 8, !tbaa !237
  %i.if = icmp ugt i64 %i.ie, 1024
  br i1 %i.if, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph122
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !236 ; 2 uses
  store ptr @.str.31, ptr %i.ih, align 8, !tbaa !195
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.ii, align 8, !tbaa !239
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !234
  %i.il = ptrtoint ptr %.val.i.i to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i64 %i.in, ptr %i.io, align 8, !tbaa !196
  br label %.thread64

bb.bk:                                            ; preds = %.lr.ph122
  %i.ip = getelementptr i8, ptr %.010.i121, i64 1
  %.010.val.i = load i8, ptr %i.ip, align 1, !tbaa !246
  %.not17.i = icmp eq i8 %.010.val.i, 1
  br i1 %.not17.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !236 ; 2 uses
  store ptr @.str.37, ptr %i.ir, align 8, !tbaa !195
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i49 = load ptr, ptr %i.is, align 8, !tbaa !239
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !234
  %i.iv = ptrtoint ptr %.val.i49 to i64
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !196
  br label %.thread64

bb.bm:                                            ; preds = %bb.bk
  %i.iz = add nsw i64 %i.id, 2
  store i64 %i.iz, ptr %i.ia, align 8, !tbaa !237
  %i.ja = icmp sgt i64 %i.id, 1022
  br i1 %i.ja, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !236 ; 2 uses
  store ptr @.str.31, ptr %i.jc, align 8, !tbaa !195
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.jd, align 8, !tbaa !239
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !234
  %i.jg = ptrtoint ptr %.val.i.i.i to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i64 %i.ji, ptr %i.jj, align 8, !tbaa !196
  br label %.thread64

bb.bo:                                            ; preds = %bb.bm
  %i.jk = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !677 ; 2 uses
  %.not.i48 = icmp eq ptr %i.jk, null
  br i1 %.not.i48, label %.thread64, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit: ; preds = %bb.bo
  %i.jl = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser20parse_expression_recEPNS1_14xpath_ast_nodeEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.jk, i32 noundef 0), !inline_history !677 ; 2 uses
  store i64 %i.ie, ptr %i.ia, align 8, !tbaa !237
  %.not18.i = icmp eq ptr %i.jl, null
  br i1 %.not18.i, label %.thread64, label %bb.bp

bb.bp:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit
  %.val22.i = load ptr, ptr %0, align 8, !tbaa !232 ; 5 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.val22.i, i64 8 ; 3 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !224 ; 2 uses
  %i.jo = add i64 %i.jn, 40                       ; 2 uses
  %i.jp = load ptr, ptr %.val22.i, align 8, !tbaa !223 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !250
  %.not.i.i.i43 = icmp ugt i64 %i.jo, %i.jr
  br i1 %.not.i.i.i43, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jn
  store i64 %i.jo, ptr %i.jm, align 8, !tbaa !224
  br label %bb.bv

bb.br:                                            ; preds = %bb.bp
  %i.ju = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.jv = tail call noundef ptr %i.ju(i64 noundef 4112), !inline_history !678 ; 5 uses
  %.not23.i.i.i46 = icmp eq ptr %i.jv, null
  br i1 %.not23.i.i.i46, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.jw = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i.i47 = icmp eq ptr %i.jx, null
  br i1 %.not24.i.i.i47, label %.thread64, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i8 1, ptr %i.jx, align 1, !tbaa !251
  br label %.thread64

bb.bu:                                            ; preds = %bb.br
  %i.jy = load ptr, ptr %.val22.i, align 8, !tbaa !223
  store ptr %i.jy, ptr %i.jv, align 8, !tbaa !240
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i64 4096, ptr %i.jz, align 8, !tbaa !250
  store ptr %i.jv, ptr %.val22.i, align 8, !tbaa !223
  store i64 40, ptr %i.jm, align 8, !tbaa !224
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bq
  %.1.i.i.i45 = phi ptr [ %i.jt, %bb.bq ], [ %i.ka, %bb.bu ] ; 6 uses
  store <4 x i8> <i8 17, i8 1, i8 0, i8 0>, ptr %.1.i.i.i45, align 8, !tbaa !86
  %i.kb = getelementptr inbounds nuw i8, ptr %.1.i.i.i45, i64 8
  store ptr %.010.i121, ptr %i.kb, align 8, !tbaa !242
  %i.kc = getelementptr inbounds nuw i8, ptr %.1.i.i.i45, i64 16
  store ptr %i.jl, ptr %i.kc, align 8, !tbaa !243
  %i.kd = getelementptr inbounds nuw i8, ptr %.1.i.i.i45, i64 24
  store ptr null, ptr %i.kd, align 8, !tbaa !244
  %.val.i = load i32, ptr %i.b, align 8, !tbaa !238
  %.not20.i = icmp eq i32 %.val.i, 19
  br i1 %.not20.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !236 ; 2 uses
  store ptr @.str.38, ptr %i.kf, align 8, !tbaa !195
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i42 = load ptr, ptr %i.kg, align 8, !tbaa !239
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !234
  %i.kj = ptrtoint ptr %.val.i42 to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i64 %i.kl, ptr %i.km, align 8, !tbaa !196
  br label %.thread64

bb.bx:                                            ; preds = %bb.bv
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !676
  %.val21.i = load i32, ptr %i.b, align 8, !tbaa !238 ; 2 uses
  %i.kn = icmp eq i32 %.val21.i, 18
  br i1 %i.kn, label %.lr.ph122, label %._crit_edge, !llvm.loop !679

._crit_edge:                                      ; preds = %bb.bx, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82
  %.val28 = phi i32 [ %.val21.i120, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82 ], [ %.val21.i, %bb.bx ]
  %.010.i.lcssa = phi ptr [ %.9.i85, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82 ], [ %.1.i.i.i45, %bb.bx ] ; 4 uses
  store i64 %i.ib, ptr %i.ia, align 8, !tbaa !237
  switch i32 %.val28, label %.thread64 [
    i32 16, label %bb.by
    i32 17, label %bb.bz
  ]

bb.by:                                            ; preds = %._crit_edge
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a)
  br label %bb.ch

bb.bz:                                            ; preds = %._crit_edge
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a)
  %i.ko = getelementptr i8, ptr %.010.i.lcssa, i64 1
  %.val37 = load i8, ptr %i.ko, align 1, !tbaa !246
  %.not24 = icmp eq i8 %.val37, 1
  br i1 %.not24, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !236 ; 2 uses
  store ptr @.str.32, ptr %i.kq, align 8, !tbaa !195
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i41 = load ptr, ptr %i.kr, align 8, !tbaa !239
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !234
  %i.ku = ptrtoint ptr %.val.i41 to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store i64 %i.kw, ptr %i.kx, align 8, !tbaa !196
  br label %.thread64

bb.cb:                                            ; preds = %bb.bz
  %.val38 = load ptr, ptr %0, align 8, !tbaa !232 ; 5 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.val38, i64 8 ; 3 uses
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !224 ; 2 uses
  %i.la = add i64 %i.kz, 40                       ; 2 uses
  %i.lb = load ptr, ptr %.val38, align 8, !tbaa !223 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !250
  %.not.i.i.i = icmp ugt i64 %i.la, %i.ld
  br i1 %.not.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.kz
  store i64 %i.la, ptr %i.ky, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tEPNS1_14xpath_ast_nodeENS1_6axis_tENS1_10nodetest_tEPKc.exit

bb.cd:                                            ; preds = %bb.cb
  %i.lg = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.lh = tail call noundef ptr %i.lg(i64 noundef 4112), !inline_history !46 ; 5 uses
  %.not23.i.i.i = icmp eq ptr %i.lh, null
  br i1 %.not23.i.i.i, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.li = getelementptr inbounds nuw i8, ptr %.val38, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.lj, null
  br i1 %.not24.i.i.i, label %.thread64, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i8 1, ptr %i.lj, align 1, !tbaa !251
  br label %.thread64

bb.cg:                                            ; preds = %bb.cd
  %i.lk = load ptr, ptr %.val38, align 8, !tbaa !223
  store ptr %i.lk, ptr %i.lh, align 8, !tbaa !240
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i64 4096, ptr %i.ll, align 8, !tbaa !250
  store ptr %i.lh, ptr %.val38, align 8, !tbaa !223
  store i64 40, ptr %i.ky, align 8, !tbaa !224
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tEPNS1_14xpath_ast_nodeENS1_6axis_tENS1_10nodetest_tEPKc.exit

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tEPNS1_14xpath_ast_nodeENS1_6axis_tENS1_10nodetest_tEPKc.exit: ; preds = %bb.cc, %bb.cg
  %.1.i.i.i = phi ptr [ %i.lf, %bb.cc ], [ %i.lm, %bb.cg ] ; 4 uses
  store <4 x i8> <i8 56, i8 1, i8 5, i8 2>, ptr %.1.i.i.i, align 8, !tbaa !86
  %i.ln = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 8
  store ptr %.010.i.lcssa, ptr %i.ln, align 8, !tbaa !242
  %i.lo = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lo, i8 0, i64 24, i1 false)
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tEPNS1_14xpath_ast_nodeENS1_6axis_tENS1_10nodetest_tEPKc.exit, %bb.by
  %.0 = phi ptr [ %.1.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tEPNS1_14xpath_ast_nodeENS1_6axis_tENS1_10nodetest_tEPKc.exit ], [ %.010.i.lcssa, %bb.by ]
  %i.lp = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser28parse_relative_location_pathEPNS1_14xpath_ast_nodeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %.0)
  br label %.thread64

bb.ci:                                            ; preds = %bb.a
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a)
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !237 ; 2 uses
  %i.ls = add i64 %i.lr, 1                        ; 2 uses
  store i64 %i.ls, ptr %i.lq, align 8, !tbaa !237
  %i.lt = icmp ugt i64 %i.ls, 1024
  br i1 %i.lt, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !236 ; 2 uses
  store ptr @.str.31, ptr %i.lv, align 8, !tbaa !195
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i187 = load ptr, ptr %i.lw, align 8, !tbaa !239
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !234
  %i.lz = ptrtoint ptr %.val.i.i.i187 to i64
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !196
  br label %.thread64

bb.ck:                                            ; preds = %bb.ci
  %i.md = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !47 ; 2 uses
  %.not.i186 = icmp eq ptr %i.md, null
  br i1 %.not.i186, label %.thread64, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit188

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit188: ; preds = %bb.ck
  %i.me = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser20parse_expression_recEPNS1_14xpath_ast_nodeEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.md, i32 noundef 7), !inline_history !47 ; 2 uses
  store i64 %i.lr, ptr %i.lq, align 8, !tbaa !237
  %.not = icmp eq ptr %i.me, null
  br i1 %.not, label %.thread64, label %bb.cl

bb.cl:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit188
  %.val36 = load ptr, ptr %0, align 8, !tbaa !232 ; 5 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.val36, i64 8 ; 3 uses
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !224 ; 2 uses
  %i.mh = add i64 %i.mg, 40                       ; 2 uses
  %i.mi = load ptr, ptr %.val36, align 8, !tbaa !223 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !250
  %.not.i.i.i189 = icmp ugt i64 %i.mh, %i.mk
  br i1 %.not.i.i.i189, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mg
  store i64 %i.mh, ptr %i.mf, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i

bb.cn:                                            ; preds = %bb.cl
  %i.mn = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.mo = tail call noundef ptr %i.mn(i64 noundef 4112), !inline_history !48 ; 5 uses
  %.not23.i.i.i191 = icmp eq ptr %i.mo, null
  br i1 %.not23.i.i.i191, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.mp = getelementptr inbounds nuw i8, ptr %.val36, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i.i192 = icmp eq ptr %i.mq, null
  br i1 %.not24.i.i.i192, label %.thread64, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i8 1, ptr %i.mq, align 1, !tbaa !251
  br label %.thread64

bb.cq:                                            ; preds = %bb.cn
  %i.mr = load ptr, ptr %.val36, align 8, !tbaa !223
  store ptr %i.mr, ptr %i.mo, align 8, !tbaa !240
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store i64 4096, ptr %i.ms, align 8, !tbaa !250
  store ptr %i.mo, ptr %.val36, align 8, !tbaa !223
  store i64 40, ptr %i.mf, align 8, !tbaa !224
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i: ; preds = %bb.cq, %bb.cm
  %.1.i.i.i190 = phi ptr [ %i.mm, %bb.cm ], [ %i.mt, %bb.cq ] ; 4 uses
  store <4 x i8> <i8 14, i8 2, i8 0, i8 0>, ptr %.1.i.i.i190, align 8, !tbaa !86
  %i.mu = getelementptr inbounds nuw i8, ptr %.1.i.i.i190, i64 8
  store ptr %i.me, ptr %i.mu, align 8, !tbaa !242
  %i.mv = getelementptr inbounds nuw i8, ptr %.1.i.i.i190, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mv, i8 0, i64 16, i1 false)
  br label %.thread64

bb.cr:                                            ; preds = %bb.a
  %i.mw = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser19parse_location_pathEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.thread64

.thread64:                                        ; preds = %31, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit75.i, %bb.bo, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit, %bb.ck, %bb.cj, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i, %bb.cp, %bb.co, %._crit_edge, %bb.ce, %bb.cf, %bb.bs, %bb.bt, %bb.bn, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87.sink.split, %bb.ad, %bb.ae, %bb.v, %bb.u, %bb.bh, %bb.bf, %.thread.thread171, %bb.bb, %_ZN4pugi4impl12_GLOBAL__N_132convert_string_to_number_scratchERA32_cPKcS5_Pd.exit.i, %bb.aj, %bb.r, %bb.s, %bb.n, %_ZN4pugi4impl12_GLOBAL__N_120get_variable_scratchERA32_cPNS_18xpath_variable_setEPKcS7_PPNS_14xpath_variableE.exit.i, %bb.x, %bb.ai, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit.i, %bb.h, %bb.ba, %bb.bw, %bb.bl, %bb.bj, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit, %bb.g, %bb.e, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit188, %bb.ch, %bb.ca, %bb.cr
  %.4 = phi ptr [ %i.mw, %bb.cr ], [ null, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit188 ], [ %.010.i.lcssa, %._crit_edge ], [ %i.i, %bb.e ], [ null, %bb.bs ], [ null, %bb.ca ], [ %i.lp, %bb.ch ], [ null, %bb.co ], [ %i.m, %bb.g ], [ null, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit ], [ null, %bb.bj ], [ null, %bb.bl ], [ null, %bb.cf ], [ null, %bb.bw ], [ null, %bb.cj ], [ null, %bb.ba ], [ null, %bb.h ], [ null, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit.i ], [ null, %bb.ai ], [ null, %bb.x ], [ null, %_ZN4pugi4impl12_GLOBAL__N_120get_variable_scratchERA32_cPNS_18xpath_variable_setEPKcS7_PPNS_14xpath_variableE.exit.i ], [ null, %bb.n ], [ null, %bb.s ], [ null, %bb.r ], [ null, %bb.aj ], [ null, %_ZN4pugi4impl12_GLOBAL__N_132convert_string_to_number_scratchERA32_cPKcS5_Pd.exit.i ], [ null, %bb.bb ], [ null, %.thread.thread171 ], [ null, %bb.bf ], [ null, %bb.bh ], [ null, %bb.bt ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.ae ], [ null, %bb.ad ], [ null, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87.sink.split ], [ null, %bb.ce ], [ null, %bb.bn ], [ null, %bb.ck ], [ null, %bb.cp ], [ null, %bb.bo ], [ %.1.i.i.i190, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i ], [ null, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit ], [ null, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit75.i ], [ null, %31 ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser20parse_expression_recEPNS1_14xpath_ast_nodeEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, -2147483648) %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = tail call fastcc { i64, i32 } @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser11binary_op_t5parseERNS1_11xpath_lexerE(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 2 uses
  %.sroa.8.070 = extractvalue { i64, i32 } %i.b, 1 ; 2 uses
  %.sroa.022.071 = extractvalue { i64, i32 } %i.b, 0 ; 2 uses
  %.sroa.022.0.extract.trunc72 = trunc i64 %.sroa.022.071 to i32 ; 2 uses
  %i.c = icmp ne i32 %.sroa.022.0.extract.trunc72, 0
  %i.d = icmp sge i32 %.sroa.8.070, %2
  %i.e = select i1 %i.c, i1 %i.d, i1 false
  br i1 %i.e, label %.lr.ph78, label %.critedge

.lr.ph78:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph78, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit
  %.sroa.022.0.extract.trunc76 = phi i32 [ %.sroa.022.0.extract.trunc72, %.lr.ph78 ], [ %.sroa.022.0.extract.trunc, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit ]
  %.sroa.022.075 = phi i64 [ %.sroa.022.071, %.lr.ph78 ], [ %.sroa.022.0, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit ] ; 2 uses
  %.sroa.8.074 = phi i32 [ %.sroa.8.070, %.lr.ph78 ], [ %.sroa.8.0, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit ] ; 2 uses
  %.03573 = phi ptr [ %1, %.lr.ph78 ], [ %.1.i.i.i.sink99, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit ] ; 2 uses
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a)
  %i.g = load i64, ptr %i.f, align 8, !tbaa !237
  %i.h = add i64 %i.g, 1                          ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !237
  %i.i = icmp ugt i64 %i.h, 1024
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !236  ; 2 uses
  store ptr @.str.31, ptr %i.k, align 8, !tbaa !195
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.l, align 8, !tbaa !239
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !234
  %i.o = ptrtoint ptr %.val.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !196
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.s = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv(ptr noundef nonnull align 8 dereferenceable(112) %0) ; 3 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call fastcc { i64, i32 } @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser11binary_op_t5parseERNS1_11xpath_lexerE(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 2 uses
  %.sroa.5.066 = extractvalue { i64, i32 } %i.t, 1 ; 2 uses
  %.sroa.012.067 = extractvalue { i64, i32 } %i.t, 0
  %i.u = and i64 %.sroa.012.067, 4294967295
  %i.v = icmp ne i64 %i.u, 0
  %i.w = icmp sgt i32 %.sroa.5.066, %.sroa.8.074
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.5.069 = phi i32 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.066, %bb.e ]
  %.04068 = phi ptr [ %i.y, %bb.f ], [ %i.s, %bb.e ]
  %i.y = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser20parse_expression_recEPNS1_14xpath_ast_nodeEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %.04068, i32 noundef %.sroa.5.069) ; 3 uses
  %.not52 = icmp eq ptr %i.y, null
  br i1 %.not52, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.z = tail call fastcc { i64, i32 } @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser11binary_op_t5parseERNS1_11xpath_lexerE(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 2 uses
  %.sroa.5.0 = extractvalue { i64, i32 } %i.z, 1  ; 2 uses
  %.sroa.012.0 = extractvalue { i64, i32 } %i.z, 0
  %i.aa = and i64 %.sroa.012.0, 4294967295
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = icmp sgt i32 %.sroa.5.0, %.sroa.8.074
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !680

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.040.lcssa = phi ptr [ %i.s, %bb.e ], [ %i.y, %bb.f ] ; 2 uses
  %i.ae = icmp eq i32 %.sroa.022.0.extract.trunc76, 15
  br i1 %i.ae, label %bb.l, label %.split

.split:                                           ; preds = %._crit_edge
  %.val53 = load ptr, ptr %0, align 8, !tbaa !232 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val53, i64 8 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !224 ; 2 uses
  %i.ah = add i64 %i.ag, 40                       ; 2 uses
  %i.ai = load ptr, ptr %.val53, align 8, !tbaa !223 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !250
  %.not.i.i.i = icmp ugt i64 %i.ah, %i.ak
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i

bb.h:                                             ; preds = %.split
  %i.an = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.ao = tail call noundef ptr %i.an(i64 noundef 4112), !inline_history !48 ; 5 uses
  %.not23.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not23.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.val53, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not24.i.i.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.aq, align 1, !tbaa !251
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %.val53, align 8, !tbaa !223
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !240
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 4096, ptr %i.as, align 8, !tbaa !250
  store ptr %i.ao, ptr %.val53, align 8, !tbaa !223
  store i64 40, ptr %i.af, align 8, !tbaa !224
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i: ; preds = %bb.k, %bb.g
  %.1.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.at, %bb.k ] ; 2 uses
  %i.au = trunc i64 %.sroa.022.075 to i8
  store i8 %i.au, ptr %.1.i.i.i, align 8, !tbaa !245
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.l:                                             ; preds = %._crit_edge
  %i.av = getelementptr i8, ptr %.03573, i64 1
  %.035.val = load i8, ptr %i.av, align 1, !tbaa !246
  %.not49 = icmp eq i8 %.035.val, 1
  br i1 %.not49, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr i8, ptr %.040.lcssa, i64 1
  %.040.val = load i8, ptr %i.aw, align 1, !tbaa !246
  %.not50 = icmp eq i8 %.040.val, 1
  br i1 %.not50, label %.split43, label %bb.s

.split43:                                         ; preds = %bb.m
  %.val = load ptr, ptr %0, align 8, !tbaa !232   ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !224 ; 2 uses
  %i.az = add i64 %i.ay, 40                       ; 2 uses
  %i.ba = load ptr, ptr %.val, align 8, !tbaa !223 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !250
  %.not.i.i.i54 = icmp ugt i64 %i.az, %i.bc
  br i1 %.not.i.i.i54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.split43
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ay
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i55

bb.o:                                             ; preds = %.split43
  %i.bf = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.bg = tail call noundef ptr %i.bf(i64 noundef 4112), !inline_history !48 ; 5 uses
  %.not23.i.i.i57 = icmp eq ptr %i.bg, null
  br i1 %.not23.i.i.i57, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i.i58 = icmp eq ptr %i.bi, null
  br i1 %.not24.i.i.i58, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.bi, align 1, !tbaa !251
  br label %.critedge

bb.r:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr %.val, align 8, !tbaa !223
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !240
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 4096, ptr %i.bk, align 8, !tbaa !250
  store ptr %i.bg, ptr %.val, align 8, !tbaa !223
  store i64 40, ptr %i.ax, align 8, !tbaa !224
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i55

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i55: ; preds = %bb.r, %bb.n
  %.1.i.i.i56 = phi ptr [ %i.be, %bb.n ], [ %i.bl, %bb.r ] ; 2 uses
  store i8 15, ptr %.1.i.i.i56, align 8, !tbaa !245
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.s:                                             ; preds = %bb.m, %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !236 ; 2 uses
  store ptr @.str.95, ptr %i.bn, align 8, !tbaa !195
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.bo, align 8, !tbaa !239
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_1
