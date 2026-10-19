Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/pugixml?download=true
inline.NumInlined: 2217
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
  store ptr %.0, ptr %i.bu, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.4 = phi ptr [ %i.g, %bb.aj ], [ %i.bx, %bb.ak ] ; 4 uses
  %i.bv = load i8, ptr %.4, align 1
  %i.bw = add i8 %i.bv, -58
  %.not85 = icmp ult i8 %i.bw, -10
  %i.bx = getelementptr inbounds nuw i8, ptr %.4, i64 1
  br i1 %.not85, label %bb.al, label %bb.ak, !llvm.loop !404

bb.al:                                            ; preds = %bb.ak
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.4, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 15, ptr %i.bz, align 8
  br label %bb.bh

bb.am:                                            ; preds = %bb.ai
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 23, ptr %i.ca, align 8
  br label %bb.bh

bb.an:                                            ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 22, ptr %i.cb, align 8
  br label %bb.bh

bb.ao:                                            ; preds = %bb.c, %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.cc, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.5 = phi ptr [ %i.g, %bb.ao ], [ %i.ce, %bb.ap ] ; 5 uses
  %i.cd = load i8, ptr %.5, align 1               ; 2 uses
  %.not81 = icmp eq i8 %i.cd, 0
  %.not82 = icmp eq i8 %i.cd, %i.i
  %or.cond = or i1 %.not81, %.not82
  %i.ce = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  br i1 %or.cond, label %.critedge, label %bb.ap, !llvm.loop !405

.critedge:                                        ; preds = %bb.ap
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.5, ptr %i.cf, align 8
  %i.cg = load i8, ptr %.5, align 1
  %.not83 = icmp eq i8 %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %.not83, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.critedge
  store i32 0, ptr %i.ch, align 8
  br label %bb.bh

bb.ar:                                            ; preds = %.critedge
  store i32 14, ptr %i.ch, align 8
  br label %bb.bh

bb.as:                                            ; preds = %bb.c
  %i.ci = load i8, ptr %i.g, align 1
  %i.cj = icmp eq i8 %i.ci, 58
  br i1 %i.cj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ck = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 25, ptr %i.cl, align 8
  br label %bb.bh

bb.au:                                            ; preds = %bb.as
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.cm, align 8
  br label %bb.bh

bb.av:                                            ; preds = %bb.c
  %i.cn = zext i8 %i.i to i64
  %i.co = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = and i32 %i.cq, 8
  %.not90 = icmp eq i32 %i.cr, 0
  br i1 %.not90, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0, ptr %i.cs, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %bb.aw
  %.7 = phi ptr [ %.0, %bb.aw ], [ %i.cv, %bb.ax ] ; 4 uses
  %i.ct = load i8, ptr %.7, align 1               ; 2 uses
  %i.cu = add i8 %i.ct, -58
  %.not95 = icmp ult i8 %i.cu, -10
  %i.cv = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br i1 %.not95, label %bb.ay, label %bb.ax, !llvm.loop !406

bb.ay:                                            ; preds = %bb.ax
  %i.cw = icmp eq i8 %i.ct, 46
  br i1 %i.cw, label %.preheader97, label %.loopexit98

.preheader97:                                     ; preds = %bb.ay, %.preheader97
  %.7.pn = phi ptr [ %.8, %.preheader97 ], [ %.7, %bb.ay ]
  %.8 = getelementptr inbounds nuw i8, ptr %.7.pn, i64 1 ; 3 uses
  %i.cx = load i8, ptr %.8, align 1
  %i.cy = add i8 %i.cx, -58
  %.not96 = icmp ult i8 %i.cy, -10
  br i1 %.not96, label %.loopexit98, label %.preheader97, !llvm.loop !407

.loopexit98:                                      ; preds = %.preheader97, %bb.ay
  %.9 = phi ptr [ %.7, %bb.ay ], [ %.8, %.preheader97 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.9, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 15, ptr %i.da, align 8
  br label %bb.bh

bb.az:                                            ; preds = %bb.av
  %i.db = and i32 %i.cq, 4
  %.not91 = icmp eq i32 %i.db, 0
  br i1 %.not91, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0, ptr %i.dc, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %.10 = phi ptr [ %.0, %bb.ba ], [ %i.di, %bb.bb ] ; 5 uses
  %i.dd = load i8, ptr %.10, align 1              ; 2 uses
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = and i8 %i.dg, 16
  %.not92 = icmp eq i8 %i.dh, 0
  %i.di = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 3 uses
  br i1 %.not92, label %bb.bc, label %bb.bb, !llvm.loop !408

bb.bc:                                            ; preds = %bb.bb
  %i.dj = icmp eq i8 %i.dd, 58
  br i1 %i.dj, label %bb.bd, label %.loopexit

bb.bd:                                            ; preds = %bb.bc
  %i.dk = load i8, ptr %i.di, align 1             ; 2 uses
  %i.dl = icmp eq i8 %i.dk, 42
  br i1 %i.dl, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.dm = getelementptr inbounds nuw i8, ptr %.10, i64 2
  br label %.loopexit

bb.bf:                                            ; preds = %bb.bd
  %i.dn = zext i8 %i.dk to i64
  %i.do = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = and i8 %i.dp, 16
  %.not93 = icmp eq i8 %i.dq, 0
  br i1 %.not93, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bf, %.preheader
  %.11 = phi ptr [ %i.dw, %.preheader ], [ %i.di, %bb.bf ] ; 3 uses
  %i.dr = load i8, ptr %.11, align 1
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = and i8 %i.du, 16
  %.not94 = icmp eq i8 %i.dv, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %.11, i64 1
  br i1 %.not94, label %.loopexit, label %.preheader, !llvm.loop !409

.loopexit:                                        ; preds = %.preheader, %bb.be, %bb.bf, %bb.bc
  %.12 = phi ptr [ %i.dm, %bb.be ], [ %.10, %bb.bc ], [ %.10, %bb.bf ], [ %.11, %.preheader ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.12, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 20, ptr %i.dy, align 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.az
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.dz, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.aq, %bb.ar, %.loopexit98, %bb.bg, %.loopexit, %bb.at, %bb.au, %bb.ah, %bb.am, %bb.al, %bb.ae, %bb.af, %.loopexit100, %bb.x, %bb.l, %bb.m, %bb.i, %bb.j, %bb.f, %bb.g, %bb.an, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.d
  %.13 = phi ptr [ %.9, %.loopexit98 ], [ %.12, %.loopexit ], [ %.0, %bb.bg ], [ %.0, %bb.d ], [ %i.m, %bb.f ], [ %i.g, %bb.g ], [ %i.r, %bb.i ], [ %i.g, %bb.j ], [ %i.w, %bb.l ], [ %.0, %bb.m ], [ %i.g, %bb.n ], [ %i.g, %bb.o ], [ %i.g, %bb.p ], [ %i.g, %bb.q ], [ %i.g, %bb.r ], [ %.3, %.loopexit100 ], [ %i.g, %bb.x ], [ %i.g, %bb.y ], [ %i.g, %bb.z ], [ %i.g, %bb.aa ], [ %i.g, %bb.ab ], [ %i.g, %bb.ac ], [ %i.bm, %bb.ae ], [ %i.g, %bb.af ], [ %i.br, %bb.ah ], [ %.4, %bb.al ], [ %i.g, %bb.am ], [ %i.g, %bb.an ], [ %.0, %bb.au ], [ %i.ck, %bb.at ], [ %i.ce, %bb.ar ], [ %.5, %bb.aq ]
  store ptr %.13, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %.val34 = load i32, ptr %i.b, align 8
  switch i32 %.val34, label %bb.cs [
    i32 11, label %.thread.thread
    i32 12, label %.thread.thread98
    i32 8, label %bb.cj
    i32 20, label %bb.b
    i32 15, label %bb.am
    i32 14, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  %.val35 = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.015 = phi ptr [ %.val35, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.c = load i8, ptr %.015, align 1              ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 8
  %.not20 = icmp eq i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %.015, i64 1
  br i1 %.not20, label %bb.d, label %bb.c, !llvm.loop !410

bb.d:                                             ; preds = %bb.c
  %.not21 = icmp eq i8 %i.c, 40
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser19parse_location_pathEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.thread64

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val39 = load ptr, ptr %i.j, align 8           ; 2 uses
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
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not32.i = icmp eq ptr %i.o, null
  br i1 %.not32.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  store ptr @.str.39, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i57 = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %.val.i.i57 to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = load ptr, ptr %i.p, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.w, ptr %i.y, align 8
  br label %.thread64

bb.i:                                             ; preds = %.thread.thread
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.z, align 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ab = ptrtoint ptr %.sroa.4.0.copyload.i to i64
  %i.ac = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = icmp ugt i64 %i.ad, 31
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.ag = add i64 %i.ad, 1
  %i.ah = tail call noundef ptr %i.af(i64 noundef %i.ag), !inline_history !411 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_120get_variable_scratchERA32_cPNS_18xpath_variable_setEPKcS7_PPNS_14xpath_variableE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %i.ah, %bb.j ], [ %i.aa, %bb.i ] ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i, ptr align 1 %.sroa.0.0.copyload.i, i64 %i.ad, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ad
  store i8 0, ptr %i.ai, align 1
  %i.aj = load i8, ptr %.0.i.i, align 1           ; 2 uses
  %.not15.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not15.i.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %i.ak = phi i8 [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.aj, %bb.k ]
  %.017.i.i.i.i.i = phi i32 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ 0, %bb.k ]
  %.01316.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.0.i.i, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %.01316.i.i.i.i.i, i64 1 ; 2 uses
  %i.am = sext i8 %i.ak to i32
  %i.an = add i32 %.017.i.i.i.i.i, %i.am
  %i.ao = mul i32 %i.an, 1025                     ; 2 uses
  %i.ap = lshr i32 %i.ao, 6
  %i.aq = xor i32 %i.ap, %i.ao                    ; 2 uses
  %i.ar = load i8, ptr %i.al, align 1             ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !30

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i
  %i.as = mul i32 %i.aq, 9
  br label %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i

_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i: ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.k
  %.0.lcssa.i.i.i.i.i = phi i32 [ 0, %bb.k ], [ %i.as, %._crit_edge.loopexit.i.i.i.i.i ] ; 2 uses
  %i.at = lshr i32 %.0.lcssa.i.i.i.i.i, 11
  %i.au = xor i32 %i.at, %.0.lcssa.i.i.i.i.i
  %i.av = and i32 %i.au, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aw
  %.0912.i.i.i.i = load ptr, ptr %i.ax, align 8   ; 2 uses
  %.not13.i.i.i.i = icmp eq ptr %.0912.i.i.i.i, null
  br i1 %.not13.i.i.i.i, label %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i, %bb.l
  %.0914.i.i.i.i = phi ptr [ %.09.i.i.i.i, %bb.l ], [ %.0912.i.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i ] ; 4 uses
  %i.ay = load i32, ptr %.0914.i.i.i.i, align 8
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr @switch.table._ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv, i64 %i.az
  %switch.gep = getelementptr i8, ptr %i.ba, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0914.i.i.i.i, i64 %switch.ext
  %i.bc = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bb, ptr noundef nonnull readonly dereferenceable(1) %.0.i.i) #51, !inline_history !412
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0914.i.i.i.i, i64 8
  %.09.i.i.i.i = load ptr, ptr %i.be, align 8     ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.09.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !31

_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i:    ; preds = %bb.l, %.lr.ph.i.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i
  %.09.lcssa.i.i.i.i = phi ptr [ null, %_ZN4pugi4impl12_GLOBAL__N_111hash_stringEPKc.exit.i.i.i.i ], [ %.0914.i.i.i.i, %.lr.ph.i.i.i.i ], [ null, %bb.l ] ; 3 uses
  %.not20.i.i = icmp eq ptr %.0.i.i, %i.aa
  br i1 %.not20.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i
  %i.bf = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  tail call void %i.bf(ptr noundef nonnull %.0.i.i), !inline_history !411
  br label %bb.n

_ZN4pugi4impl12_GLOBAL__N_120get_variable_scratchERA32_cPNS_18xpath_variable_setEPKcS7_PPNS_14xpath_variableE.exit.i: ; preds = %bb.j
  %.val40.i = load ptr, ptr %0, align 8
  %i.bg = getelementptr i8, ptr %.val40.i, i64 16
  %.val40.val.i = load ptr, ptr %i.bg, align 8
  store i8 1, ptr %.val40.val.i, align 1
  br label %.thread64

bb.n:                                             ; preds = %bb.m, %_ZN4pugi18xpath_variable_set3getEPKc.exit.i.i
  %.not33.i = icmp eq ptr %.09.lcssa.i.i.i.i, null
  br i1 %.not33.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  store ptr @.str.40, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i48.i = load ptr, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = ptrtoint ptr %.val.i48.i to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = load ptr, ptr %i.bh, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %i.bo, ptr %i.bq, align 8
  br label %.thread64

bb.p:                                             ; preds = %bb.n
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !412
  %i.br = load i32, ptr %.09.lcssa.i.i.i.i, align 8
  %.val41.i = load ptr, ptr %0, align 8           ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val41.i, i64 8 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = add i64 %i.bt, 40                       ; 2 uses
  %i.bv = load ptr, ptr %.val41.i, align 8        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8
  %.not.i.i.i49.i = icmp ugt i64 %i.bu, %i.bx
  br i1 %.not.i.i.i49.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bt
  store i64 %i.bu, ptr %i.bs, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.cb = tail call noundef ptr %i.ca(i64 noundef 4112), !inline_history !413 ; 5 uses
  %.not23.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not23.i.i.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.val41.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not24.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not24.i.i.i.i, label %.thread64, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.cd, align 1
  br label %.thread64

bb.u:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %.val41.i, align 8
  store ptr %i.ce, ptr %i.cb, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 4096, ptr %i.cf, align 8
  store ptr %i.cb, ptr %.val41.i, align 8
  store i64 40, ptr %i.bs, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i.i: ; preds = %bb.u, %bb.q
  %.1.i.i.i.i = phi ptr [ %i.bz, %bb.q ], [ %i.cg, %bb.u ] ; 7 uses
  store i8 20, ptr %.1.i.i.i.i, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  %i.ci = trunc i32 %i.br to i8
  store i8 %i.ci, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 2
  store i8 0, ptr %i.cj, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 3
  store i8 0, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 24, i1 false)
  store ptr %.09.lcssa.i.i.i.i, ptr %i.cm, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82
end_hunk_0
begin_hunk_1_@_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv:bb.a
bb.ak:                                            ; preds = %bb.aj
  store i8 1, ptr %i.fb, align 1
  br label %.thread64

bb.al:                                            ; preds = %bb.ai
  %i.fc = load ptr, ptr %.val42.i, align 8
  store ptr %i.fc, ptr %i.ez, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i64 4096, ptr %i.fd, align 8
  store ptr %i.ez, ptr %.val42.i, align 8
  store i64 40, ptr %i.eq, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i55.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i55.i: ; preds = %bb.al, %bb.ah
  %.1.i.i.i56.i = phi ptr [ %i.ex, %bb.ah ], [ %i.fe, %bb.al ] ; 4 uses
  store <4 x i8> <i8 18, i8 3, i8 0, i8 0>, ptr %.1.i.i.i56.i, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.1.i.i.i56.i, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.1.i.i.i56.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i8 0, i64 24, i1 false)
  store ptr %.1.i53.i, ptr %i.fg, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82

bb.am:                                            ; preds = %bb.a
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8            ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fj to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 4 uses
  %i.fp = icmp ugt i64 %i.fo, 31
  br i1 %i.fp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fq = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.fr = add i64 %i.fo, 1
  %i.fs = tail call noundef ptr %i.fq(i64 noundef %i.fr), !inline_history !417 ; 2 uses
  %.not.i63.i = icmp eq ptr %i.fs, null
  br i1 %.not.i63.i, label %_ZN4pugi4impl12_GLOBAL__N_132convert_string_to_number_scratchERA32_cPKcS5_Pd.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0.i59.i = phi ptr [ %i.fs, %bb.an ], [ %i.fh, %bb.am ] ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i59.i, ptr align 1 %i.fj, i64 %i.fo, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i59.i, i64 %i.fo
  store i8 0, ptr %i.ft, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i = phi ptr [ %.0.i59.i, %bb.ao ], [ %i.fz, %bb.ap ] ; 3 uses
  %i.fu = load i8, ptr %.0.i.i.i.i, align 1       ; 2 uses
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = and i8 %i.fx, 8
  %.not.i.i.i60.i = icmp eq i8 %i.fy, 0
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 1
  br i1 %.not.i.i.i60.i, label %bb.aq, label %bb.ap, !llvm.loop !38

bb.aq:                                            ; preds = %bb.ap
  %i.ga = icmp eq i8 %i.fu, 45
  %spec.select.idx.i.i.i.i = zext i1 %i.ga to i64
  %spec.select.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %spec.select.idx.i.i.i.i ; 3 uses
  %i.gb = load i8, ptr %spec.select.i.i.i.i, align 1 ; 3 uses
  %.not20.i.i.i.i = icmp eq i8 %i.gb, 0
  br i1 %.not20.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gc = add i8 %i.gb, -58
  %.not21.i.i.i.i = icmp ult i8 %i.gc, -10
  br i1 %.not21.i.i.i.i, label %bb.as, label %.preheader

bb.as:                                            ; preds = %bb.ar
  %.not22.i.i.i.i = icmp eq i8 %i.gb, 46
  br i1 %.not22.i.i.i.i, label %bb.at, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.gd = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 1
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = add i8 %i.ge, -58
  %.not23.i.i.i62.i = icmp ult i8 %i.gf, -10
  br i1 %.not23.i.i.i62.i, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i, label %.preheader

.preheader:                                       ; preds = %bb.at, %bb.ar
  br label %bb.au

bb.au:                                            ; preds = %.preheader, %bb.au
  %.2.i.i.i.i = phi ptr [ %i.gi, %bb.au ], [ %spec.select.i.i.i.i, %.preheader ] ; 4 uses
  %i.gg = load i8, ptr %.2.i.i.i.i, align 1       ; 2 uses
  %i.gh = add i8 %i.gg, -58
  %.not24.i.i.i61.i = icmp ult i8 %i.gh, -10
  %i.gi = getelementptr inbounds nuw i8, ptr %.2.i.i.i.i, i64 1
  br i1 %.not24.i.i.i61.i, label %bb.av, label %bb.au, !llvm.loop !39

bb.av:                                            ; preds = %bb.au
  %i.gj = icmp eq i8 %i.gg, 46
  br i1 %i.gj, label %.preheader.i.i.i.i, label %.loopexit.i.i.i.i.preheader

.preheader.i.i.i.i:                               ; preds = %bb.av, %.preheader.i.i.i.i
  %.2.pn.i.i.i.i = phi ptr [ %.3.i.i.i.i, %.preheader.i.i.i.i ], [ %.2.i.i.i.i, %bb.av ]
  %.3.i.i.i.i = getelementptr inbounds nuw i8, ptr %.2.pn.i.i.i.i, i64 1 ; 3 uses
  %i.gk = load i8, ptr %.3.i.i.i.i, align 1
  %i.gl = add i8 %i.gk, -58
  %.not25.i.i.i.i = icmp ult i8 %i.gl, -10
  br i1 %.not25.i.i.i.i, label %.loopexit.i.i.i.i.preheader, label %.preheader.i.i.i.i, !llvm.loop !40

.loopexit.i.i.i.i.preheader:                      ; preds = %.preheader.i.i.i.i, %bb.av
  %.5.i.i.i.i.ph = phi ptr [ %.2.i.i.i.i, %bb.av ], [ %.3.i.i.i.i, %.preheader.i.i.i.i ]
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.loopexit.i.i.i.i.preheader, %.loopexit.i.i.i.i
  %.5.i.i.i.i = phi ptr [ %i.gr, %.loopexit.i.i.i.i ], [ %.5.i.i.i.i.ph, %.loopexit.i.i.i.i.preheader ] ; 2 uses
  %i.gm = load i8, ptr %.5.i.i.i.i, align 1       ; 2 uses
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = and i8 %i.gp, 8
  %.not26.i.i.i.i = icmp eq i8 %i.gq, 0
  %i.gr = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i, i64 1
  br i1 %.not26.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i.i.i, label %.loopexit.i.i.i.i, !llvm.loop !41

_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i.i.i: ; preds = %.loopexit.i.i.i.i
  %i.gs = icmp eq i8 %i.gm, 0
  br i1 %i.gs, label %bb.aw, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i

bb.aw:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i.i.i
  %i.gt = tail call double @strtod(ptr noundef nonnull readonly captures(none) %.0.i59.i, ptr noundef null) #50, !inline_history !412
  br label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i: ; preds = %bb.aw, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i.i.i, %bb.at, %bb.as, %bb.aq
  %.0.i.i.i = phi double [ %i.gt, %bb.aw ], [ +qnan, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i.i.i ], [ +qnan, %bb.aq ], [ +qnan, %bb.at ], [ +qnan, %bb.as ]
  %.not19.i.i = icmp eq ptr %.0.i59.i, %i.fh
  br i1 %.not19.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i
  %i.gu = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8
  tail call void %i.gu(ptr noundef nonnull %.0.i59.i), !inline_history !417
  br label %bb.ay

_ZN4pugi4impl12_GLOBAL__N_132convert_string_to_number_scratchERA32_cPKcS5_Pd.exit.i: ; preds = %bb.an
  %.val39.i = load ptr, ptr %0, align 8
  %i.gv = getelementptr i8, ptr %.val39.i, i64 16
  %.val39.val.i = load ptr, ptr %i.gv, align 8
  store i8 1, ptr %.val39.val.i, align 1
  br label %.thread64

bb.ay:                                            ; preds = %bb.ax, %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit.i.i
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !412
  %.val43.i = load ptr, ptr %0, align 8           ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.val43.i, i64 8 ; 3 uses
  %i.gx = load i64, ptr %i.gw, align 8            ; 2 uses
  %i.gy = add i64 %i.gx, 40                       ; 2 uses
  %i.gz = load ptr, ptr %.val43.i, align 8        ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load i64, ptr %i.ha, align 8
  %.not.i.i.i64.i = icmp ugt i64 %i.gy, %i.hb
  br i1 %.not.i.i.i64.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gx
  store i64 %i.gy, ptr %i.gw, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i65.i

bb.ba:                                            ; preds = %bb.ay
  %i.he = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.hf = tail call noundef ptr %i.he(i64 noundef 4112), !inline_history !418 ; 5 uses
  %.not23.i.i.i67.i = icmp eq ptr %i.hf, null
  br i1 %.not23.i.i.i67.i, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.hg = getelementptr inbounds nuw i8, ptr %.val43.i, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8            ; 2 uses
  %.not24.i.i.i68.i = icmp eq ptr %i.hh, null
  br i1 %.not24.i.i.i68.i, label %.thread64, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i8 1, ptr %i.hh, align 1
  br label %.thread64

bb.bd:                                            ; preds = %bb.ba
  %i.hi = load ptr, ptr %.val43.i, align 8
  store ptr %i.hi, ptr %i.hf, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i64 4096, ptr %i.hj, align 8
  store ptr %i.hf, ptr %.val43.i, align 8
  store i64 40, ptr %i.gw, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i65.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i65.i: ; preds = %bb.bd, %bb.az
  %.1.i.i.i66.i = phi ptr [ %i.hd, %bb.az ], [ %i.hk, %bb.bd ] ; 4 uses
  store <4 x i8> <i8 19, i8 2, i8 0, i8 0>, ptr %.1.i.i.i66.i, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.1.i.i.i66.i, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %.1.i.i.i66.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i8 0, i64 24, i1 false)
  store double %.0.i.i.i, ptr %i.hm, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82

.thread.thread181:                                ; preds = %bb.f
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !412
  %.val35.i = load i32, ptr %i.b, align 8
  %.not.i50 = icmp eq i32 %.val35.i, 12
  br i1 %.not.i50, label %bb.be, label %.thread.thread171

.thread.thread171:                                ; preds = %.thread.thread181
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %2 = load ptr, ptr %1, align 8
  store ptr @.str.42, ptr %2, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i69.i = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %5 = load ptr, ptr %4, align 8
  %6 = ptrtoint ptr %.val.i69.i to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = load ptr, ptr %1, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %8, ptr %10, align 8
  br label %.thread64

bb.be:                                            ; preds = %.thread.thread181
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !412
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.ho = load i64, ptr %i.hn, align 8
  %.val34.i115 = load i32, ptr %i.b, align 8      ; 2 uses
  %.not25.i116 = icmp eq i32 %.val34.i115, 13
  br i1 %.not25.i116, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.be, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit
  %.val34.i119 = phi i32 [ %.val34.i, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ], [ %.val34.i115, %bb.be ]
  %.0.i118 = phi ptr [ %36, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ], [ null, %bb.be ]
  %.017.i117 = phi i64 [ %41, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ], [ 0, %bb.be ] ; 4 uses
  %.sroa.5.0125 = phi ptr [ %.sroa.5.1, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ], [ null, %bb.be ] ; 2 uses
  %.sroa.058.0124 = phi ptr [ %.sroa.058.1, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ], [ null, %bb.be ] ; 2 uses
  %.not26.i = icmp eq i64 %.017.i117, 0
  br i1 %.not26.i, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit74.i.a, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph
  %.not27.i = icmp eq i32 %.val34.i119, 21
  br i1 %.not27.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %12 = load ptr, ptr %11, align 8
  store ptr @.str.43, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i70.i = load ptr, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %.val.i70.i to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %18, ptr %20, align 8
  br label %.thread64

bb.bh:                                            ; preds = %bb.bf
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !412
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit74.i.a

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit74.i.a: ; preds = %bb.bh, %.lr.ph
  %21 = load i64, ptr %i.hn, align 8              ; 3 uses
  %22 = add i64 %21, 1                            ; 3 uses
  store i64 %22, ptr %i.hn, align 8
  %23 = icmp ugt i64 %22, 1024
  br i1 %23, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit74.i.a
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %25 = load ptr, ptr %24, align 8
  store ptr @.str.31, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i52 = load ptr, ptr %26, align 8
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %28 = load ptr, ptr %27, align 8
  %29 = ptrtoint ptr %.val.i.i.i52 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = load ptr, ptr %24, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %31, ptr %i.hp, align 8
  br label %.thread64

bb.bj:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit74.i.a
  %i.hq = add nsw i64 %21, 2
  store i64 %i.hq, ptr %i.hn, align 8
  %33 = icmp sgt i64 %21, 1022
  br i1 %33, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87.sink.split, label %34

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87.sink.split: ; preds = %bb.bj
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8
  store ptr @.str.31, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i69.i.a = load ptr, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = ptrtoint ptr %.val.i69.i.a to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = load ptr, ptr %i.hr, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i64 %i.hy, ptr %i.ia, align 8
  br label %.thread64

34:                                               ; preds = %bb.bj
  %35 = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !414 ; 2 uses
  %.not.i71.i = icmp eq ptr %35, null
  br i1 %.not.i71.i, label %.thread64, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit74.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit74.i: ; preds = %34
  %36 = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser20parse_expression_recEPNS1_14xpath_ast_nodeEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %35, i32 noundef 0), !inline_history !414 ; 5 uses
  store i64 %22, ptr %i.hn, align 8
  %.not28.not.i = icmp eq ptr %36, null
  br i1 %.not28.not.i, label %.thread64, label %37

37:                                               ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit74.i
  %38 = icmp ult i64 %.017.i117, 2
  br i1 %38, label %39, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87

39:                                               ; preds = %37
  %.sroa.idx = icmp eq i64 %.017.i117, 1          ; 2 uses
  %spec.select = select i1 %.sroa.idx, ptr %.sroa.058.0124, ptr %36
  %spec.select97 = select i1 %.sroa.idx, ptr %36, ptr %.sroa.5.0125
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87: ; preds = %37
  %40 = getelementptr inbounds nuw i8, ptr %.0.i118, i64 24
  store ptr %36, ptr %40, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit: ; preds = %39, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87
  %.sroa.058.1 = phi ptr [ %.sroa.058.0124, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87 ], [ %spec.select, %39 ] ; 2 uses
  %.sroa.5.1 = phi ptr [ %.sroa.5.0125, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87 ], [ %spec.select97, %39 ] ; 2 uses
  %41 = add i64 %.017.i117, 1                     ; 2 uses
  %.val34.i = load i32, ptr %i.b, align 8         ; 2 uses
  %.not25.i = icmp eq i32 %.val34.i, 13
  br i1 %.not25.i, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit, label %.lr.ph, !llvm.loop !419

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit, %bb.be
  %.val47.i = phi ptr [ null, %bb.be ], [ %.sroa.058.1, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ]
  %.val46.i = phi ptr [ null, %bb.be ], [ %.sroa.5.1, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ]
  %.017.i.lcssa = phi i64 [ 0, %bb.be ], [ %41, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.loopexit ]
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !412
  store i64 %i.ho, ptr %i.hn, align 8
  %i.ib = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser14parse_functionERKNS1_18xpath_lexer_stringEmPPNS1_14xpath_ast_nodeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %.val39, ptr %.val40, i64 noundef %.017.i.lcssa, ptr %.val47.i, ptr %.val46.i), !inline_history !412 ; 2 uses
  %.not.i = icmp eq ptr %i.ib, null
  br i1 %.not.i, label %.thread64, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82: ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i65.i, %bb.z, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i55.i, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit
  %.9.i85 = phi ptr [ %i.ib, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit ], [ %.1.i.i.i66.i, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i65.i ], [ %i.dc, %bb.z ], [ %.1.i.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i.i ], [ %.1.i.i.i56.i, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i55.i ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.id = load i64, ptr %i.ic, align 8
  %.val21.i120 = load i32, ptr %i.b, align 8      ; 2 uses
  %i.ie = icmp eq i32 %.val21.i120, 18
  br i1 %i.ie, label %.lr.ph122, label %._crit_edge

.lr.ph122:                                        ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82, %bb.by
  %.010.i121 = phi ptr [ %.1.i.i.i45, %bb.by ], [ %.9.i85, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82 ] ; 2 uses
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !420
  %i.if = load i64, ptr %i.ic, align 8            ; 3 uses
  %i.ig = add i64 %i.if, 1                        ; 3 uses
  store i64 %i.ig, ptr %i.ic, align 8
  %i.ih = icmp ugt i64 %i.ig, 1024
  br i1 %i.ih, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph122
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8
  store ptr @.str.31, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = ptrtoint ptr %.val.i.i to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = load ptr, ptr %i.ii, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i64 %i.ip, ptr %i.ir, align 8
  br label %.thread64

bb.bl:                                            ; preds = %.lr.ph122
  %i.is = getelementptr i8, ptr %.010.i121, i64 1
  %.010.val.i = load i8, ptr %i.is, align 1
  %.not17.i = icmp eq i8 %.010.val.i, 1
  br i1 %.not17.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8
  store ptr @.str.37, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i49 = load ptr, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = ptrtoint ptr %.val.i49 to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = load ptr, ptr %i.it, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store i64 %i.ja, ptr %i.jc, align 8
  br label %.thread64

bb.bn:                                            ; preds = %bb.bl
  %i.jd = add nsw i64 %i.if, 2
  store i64 %i.jd, ptr %i.ic, align 8
  %i.je = icmp sgt i64 %i.if, 1022
  br i1 %i.je, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8
  store ptr @.str.31, ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = ptrtoint ptr %.val.i.i.i to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  %i.jn = load ptr, ptr %i.jf, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store i64 %i.jm, ptr %i.jo, align 8
  br label %.thread64

bb.bp:                                            ; preds = %bb.bn
  %i.jp = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !421 ; 2 uses
  %.not.i48 = icmp eq ptr %i.jp, null
  br i1 %.not.i48, label %.thread64, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit: ; preds = %bb.bp
  %i.jq = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser20parse_expression_recEPNS1_14xpath_ast_nodeEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.jp, i32 noundef 0), !inline_history !421 ; 2 uses
  store i64 %i.ig, ptr %i.ic, align 8
  %.not18.i = icmp eq ptr %i.jq, null
  br i1 %.not18.i, label %.thread64, label %bb.bq

bb.bq:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit
  %.val22.i = load ptr, ptr %0, align 8           ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.val22.i, i64 8 ; 3 uses
  %i.js = load i64, ptr %i.jr, align 8            ; 2 uses
  %i.jt = add i64 %i.js, 40                       ; 2 uses
  %i.ju = load ptr, ptr %.val22.i, align 8        ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load i64, ptr %i.jv, align 8
  %.not.i.i.i43 = icmp ugt i64 %i.jt, %i.jw
  br i1 %.not.i.i.i43, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.js
  store i64 %i.jt, ptr %i.jr, align 8
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bq
  %i.jz = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.ka = tail call noundef ptr %i.jz(i64 noundef 4112), !inline_history !422 ; 5 uses
  %.not23.i.i.i46 = icmp eq ptr %i.ka, null
  br i1 %.not23.i.i.i46, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.kb = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8            ; 2 uses
  %.not24.i.i.i47 = icmp eq ptr %i.kc, null
  br i1 %.not24.i.i.i47, label %.thread64, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i8 1, ptr %i.kc, align 1
  br label %.thread64

bb.bv:                                            ; preds = %bb.bs
  %i.kd = load ptr, ptr %.val22.i, align 8
  store ptr %i.kd, ptr %i.ka, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i64 4096, ptr %i.ke, align 8
  store ptr %i.ka, ptr %.val22.i, align 8
  store i64 40, ptr %i.jr, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.br
  %.1.i.i.i45 = phi ptr [ %i.jy, %bb.br ], [ %i.kf, %bb.bv ] ; 6 uses
  store <4 x i8> <i8 17, i8 1, i8 0, i8 0>, ptr %.1.i.i.i45, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %.1.i.i.i45, i64 8
  store ptr %.010.i121, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %.1.i.i.i45, i64 16
  store ptr %i.jq, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %.1.i.i.i45, i64 24
  store ptr null, ptr %i.ki, align 8
  %.val.i = load i32, ptr %i.b, align 8
  %.not20.i = icmp eq i32 %.val.i, 19
  br i1 %.not20.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8
  store ptr @.str.38, ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i42 = load ptr, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = ptrtoint ptr %.val.i42 to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = load ptr, ptr %i.kj, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store i64 %i.kq, ptr %i.ks, align 8
  br label %.thread64

bb.by:                                            ; preds = %bb.bw
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a), !inline_history !420
  %.val21.i = load i32, ptr %i.b, align 8         ; 2 uses
  %i.kt = icmp eq i32 %.val21.i, 18
  br i1 %i.kt, label %.lr.ph122, label %._crit_edge, !llvm.loop !423

._crit_edge:                                      ; preds = %bb.by, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82
  %.val28 = phi i32 [ %.val21.i120, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82 ], [ %.val21.i, %bb.by ]
  %.010.i.lcssa = phi ptr [ %.9.i85, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread82 ], [ %.1.i.i.i45, %bb.by ] ; 4 uses
  store i64 %i.id, ptr %i.ic, align 8
  switch i32 %.val28, label %.thread64 [
    i32 16, label %bb.bz
    i32 17, label %bb.ca
  ]

bb.bz:                                            ; preds = %._crit_edge
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a)
  br label %bb.ci

bb.ca:                                            ; preds = %._crit_edge
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a)
  %i.ku = getelementptr i8, ptr %.010.i.lcssa, i64 1
  %.val37 = load i8, ptr %i.ku, align 1
  %.not24 = icmp eq i8 %.val37, 1
  br i1 %.not24, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8
  store ptr @.str.32, ptr %i.kw, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i41 = load ptr, ptr %i.kx, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = ptrtoint ptr %.val.i41 to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = load ptr, ptr %i.kv, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store i64 %i.lc, ptr %i.le, align 8
  br label %.thread64

bb.cc:                                            ; preds = %bb.ca
  %.val38 = load ptr, ptr %0, align 8             ; 5 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.val38, i64 8 ; 3 uses
  %i.lg = load i64, ptr %i.lf, align 8            ; 2 uses
  %i.lh = add i64 %i.lg, 40                       ; 2 uses
  %i.li = load ptr, ptr %.val38, align 8          ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load i64, ptr %i.lj, align 8
  %.not.i.i.i = icmp ugt i64 %i.lh, %i.lk
  br i1 %.not.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lg
  store i64 %i.lh, ptr %i.lf, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tEPNS1_14xpath_ast_nodeENS1_6axis_tENS1_10nodetest_tEPKc.exit

bb.ce:                                            ; preds = %bb.cc
  %i.ln = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.lo = tail call noundef ptr %i.ln(i64 noundef 4112), !inline_history !43 ; 5 uses
  %.not23.i.i.i = icmp eq ptr %i.lo, null
  br i1 %.not23.i.i.i, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.lp = getelementptr inbounds nuw i8, ptr %.val38, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.lq, null
  br i1 %.not24.i.i.i, label %.thread64, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i8 1, ptr %i.lq, align 1
  br label %.thread64

bb.ch:                                            ; preds = %bb.ce
  %i.lr = load ptr, ptr %.val38, align 8
  store ptr %i.lr, ptr %i.lo, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store i64 4096, ptr %i.ls, align 8
  store ptr %i.lo, ptr %.val38, align 8
  store i64 40, ptr %i.lf, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tEPNS1_14xpath_ast_nodeENS1_6axis_tENS1_10nodetest_tEPKc.exit

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tEPNS1_14xpath_ast_nodeENS1_6axis_tENS1_10nodetest_tEPKc.exit: ; preds = %bb.cd, %bb.ch
  %.1.i.i.i = phi ptr [ %i.lm, %bb.cd ], [ %i.lt, %bb.ch ] ; 4 uses
  store <4 x i8> <i8 56, i8 1, i8 5, i8 2>, ptr %.1.i.i.i, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 8
  store ptr %.010.i.lcssa, ptr %i.lu, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i8 0, i64 24, i1 false)
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tEPNS1_14xpath_ast_nodeENS1_6axis_tENS1_10nodetest_tEPKc.exit, %bb.bz
  %.0 = phi ptr [ %.1.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tEPNS1_14xpath_ast_nodeENS1_6axis_tENS1_10nodetest_tEPKc.exit ], [ %.010.i.lcssa, %bb.bz ]
  %i.lw = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser28parse_relative_location_pathEPNS1_14xpath_ast_nodeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %.0)
  br label %.thread64

bb.cj:                                            ; preds = %bb.a
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(36) %i.a)
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ly = load i64, ptr %i.lx, align 8            ; 2 uses
  %i.lz = add i64 %i.ly, 1                        ; 2 uses
  store i64 %i.lz, ptr %i.lx, align 8
  %i.ma = icmp ugt i64 %i.lz, 1024
  br i1 %i.ma, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8
  store ptr @.str.31, ptr %i.mc, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i188 = load ptr, ptr %i.md, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = ptrtoint ptr %.val.i.i.i188 to i64
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = load ptr, ptr %i.mb, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store i64 %i.mi, ptr %i.mk, align 8
  br label %.thread64

bb.cl:                                            ; preds = %bb.cj
  %i.ml = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !44 ; 2 uses
  %.not.i187 = icmp eq ptr %i.ml, null
  br i1 %.not.i187, label %.thread64, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit189

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit189: ; preds = %bb.cl
  %i.mm = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser20parse_expression_recEPNS1_14xpath_ast_nodeEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.ml, i32 noundef 7), !inline_history !44 ; 2 uses
  store i64 %i.ly, ptr %i.lx, align 8
  %.not = icmp eq ptr %i.mm, null
  br i1 %.not, label %.thread64, label %bb.cm

bb.cm:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit189
  %.val36 = load ptr, ptr %0, align 8             ; 5 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.val36, i64 8 ; 3 uses
  %i.mo = load i64, ptr %i.mn, align 8            ; 2 uses
  %i.mp = add i64 %i.mo, 40                       ; 2 uses
  %i.mq = load ptr, ptr %.val36, align 8          ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i64, ptr %i.mr, align 8
  %.not.i.i.i190 = icmp ugt i64 %i.mp, %i.ms
  br i1 %.not.i.i.i190, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.mo
  store i64 %i.mp, ptr %i.mn, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i

bb.co:                                            ; preds = %bb.cm
  %i.mv = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.mw = tail call noundef ptr %i.mv(i64 noundef 4112), !inline_history !45 ; 5 uses
  %.not23.i.i.i192 = icmp eq ptr %i.mw, null
  br i1 %.not23.i.i.i192, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.mx = getelementptr inbounds nuw i8, ptr %.val36, i64 16
  %i.my = load ptr, ptr %i.mx, align 8            ; 2 uses
  %.not24.i.i.i193 = icmp eq ptr %i.my, null
  br i1 %.not24.i.i.i193, label %.thread64, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  store i8 1, ptr %i.my, align 1
  br label %.thread64

bb.cr:                                            ; preds = %bb.co
  %i.mz = load ptr, ptr %.val36, align 8
  store ptr %i.mz, ptr %i.mw, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  store i64 4096, ptr %i.na, align 8
  store ptr %i.mw, ptr %.val36, align 8
  store i64 40, ptr %i.mn, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i: ; preds = %bb.cr, %bb.cn
  %.1.i.i.i191 = phi ptr [ %i.mu, %bb.cn ], [ %i.nb, %bb.cr ] ; 4 uses
  store <4 x i8> <i8 14, i8 2, i8 0, i8 0>, ptr %.1.i.i.i191, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %.1.i.i.i191, i64 8
  store ptr %i.mm, ptr %i.nc, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %.1.i.i.i191, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nd, i8 0, i64 16, i1 false)
  br label %.thread64

bb.cs:                                            ; preds = %bb.a
  %i.ne = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser19parse_location_pathEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  br label %.thread64

.thread64:                                        ; preds = %34, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit74.i, %bb.bp, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit, %bb.cl, %bb.ck, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i, %bb.cq, %bb.cp, %._crit_edge, %bb.cf, %bb.cg, %bb.bt, %bb.bu, %bb.bo, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87.sink.split, %bb.ae, %bb.af, %bb.w, %bb.v, %bb.bi, %bb.bg, %.thread.thread171, %bb.bc, %_ZN4pugi4impl12_GLOBAL__N_132convert_string_to_number_scratchERA32_cPKcS5_Pd.exit.i, %bb.ak, %bb.s, %bb.t, %bb.o, %_ZN4pugi4impl12_GLOBAL__N_120get_variable_scratchERA32_cPNS_18xpath_variable_setEPKcS7_PPNS_14xpath_variableE.exit.i, %bb.y, %bb.aj, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit.i, %bb.h, %bb.bb, %bb.bx, %bb.bm, %bb.bk, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit, %bb.g, %bb.e, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit189, %bb.ci, %bb.cb, %bb.cs
  %.4 = phi ptr [ %i.ne, %bb.cs ], [ null, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit189 ], [ %.010.i.lcssa, %._crit_edge ], [ %i.i, %bb.e ], [ null, %bb.bt ], [ null, %bb.cb ], [ %i.lw, %bb.ci ], [ null, %bb.cp ], [ %i.m, %bb.g ], [ null, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit ], [ null, %bb.bk ], [ null, %bb.bm ], [ null, %bb.cg ], [ null, %bb.bx ], [ null, %bb.ck ], [ null, %bb.bb ], [ null, %bb.h ], [ null, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit.i ], [ null, %bb.aj ], [ null, %bb.y ], [ null, %_ZN4pugi4impl12_GLOBAL__N_120get_variable_scratchERA32_cPNS_18xpath_variable_setEPKcS7_PPNS_14xpath_variableE.exit.i ], [ null, %bb.o ], [ null, %bb.t ], [ null, %bb.s ], [ null, %bb.ak ], [ null, %_ZN4pugi4impl12_GLOBAL__N_132convert_string_to_number_scratchERA32_cPKcS5_Pd.exit.i ], [ null, %bb.bc ], [ null, %.thread.thread171 ], [ null, %bb.bg ], [ null, %bb.bi ], [ null, %bb.bu ], [ null, %bb.v ], [ null, %bb.w ], [ null, %bb.af ], [ null, %bb.ae ], [ null, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser24parse_primary_expressionEv.exit.thread87.sink.split ], [ null, %bb.cf ], [ null, %bb.bo ], [ null, %bb.cl ], [ null, %bb.cq ], [ null, %bb.bp ], [ %.1.i.i.i191, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i ], [ null, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit ], [ null, %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser16parse_expressionEi.exit74.i ], [ null, %34 ]
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
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, 1                          ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.i = icmp ugt i64 %i.h, 1024
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  store ptr @.str.31, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %.val.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = load ptr, ptr %i.j, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.q, ptr %i.s, align 8
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.t = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser30parse_path_or_unary_expressionEv(ptr noundef nonnull align 8 dereferenceable(112) %0) ; 3 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call fastcc { i64, i32 } @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser11binary_op_t5parseERNS1_11xpath_lexerE(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 2 uses
  %.sroa.5.066 = extractvalue { i64, i32 } %i.u, 1 ; 2 uses
  %.sroa.012.067 = extractvalue { i64, i32 } %i.u, 0
  %i.v = and i64 %.sroa.012.067, 4294967295
  %i.w = icmp ne i64 %i.v, 0
  %i.x = icmp sgt i32 %.sroa.5.066, %.sroa.8.074
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.5.069 = phi i32 [ %.sroa.5.0, %bb.f ], [ %.sroa.5.066, %bb.e ]
  %.04068 = phi ptr [ %i.z, %bb.f ], [ %i.t, %bb.e ]
  %i.z = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser20parse_expression_recEPNS1_14xpath_ast_nodeEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %.04068, i32 noundef %.sroa.5.069) ; 3 uses
  %.not52 = icmp eq ptr %i.z, null
  br i1 %.not52, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aa = tail call fastcc { i64, i32 } @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser11binary_op_t5parseERNS1_11xpath_lexerE(ptr noundef nonnull align 8 dereferenceable(36) %i.a) ; 2 uses
  %.sroa.5.0 = extractvalue { i64, i32 } %i.aa, 1 ; 2 uses
  %.sroa.012.0 = extractvalue { i64, i32 } %i.aa, 0
  %i.ab = and i64 %.sroa.012.0, 4294967295
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = icmp sgt i32 %.sroa.5.0, %.sroa.8.074
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !424

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.040.lcssa = phi ptr [ %i.t, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %i.af = icmp eq i32 %.sroa.022.0.extract.trunc76, 15
  br i1 %i.af, label %bb.l, label %.split

.split:                                           ; preds = %._crit_edge
  %.val53 = load ptr, ptr %0, align 8             ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val53, i64 8 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = add i64 %i.ah, 40                       ; 2 uses
  %i.aj = load ptr, ptr %.val53, align 8          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8
  %.not.i.i.i = icmp ugt i64 %i.ai, %i.al
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah
  store i64 %i.ai, ptr %i.ag, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i

bb.h:                                             ; preds = %.split
  %i.ao = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.ap = tail call noundef ptr %i.ao(i64 noundef 4112), !inline_history !45 ; 5 uses
  %.not23.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not23.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.val53, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not24.i.i.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.ar, align 1
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %.val53, align 8
  store ptr %i.as, ptr %i.ap, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 4096, ptr %i.at, align 8
  store ptr %i.ap, ptr %.val53, align 8
  store i64 40, ptr %i.ag, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i: ; preds = %bb.k, %bb.g
  %.1.i.i.i = phi ptr [ %i.an, %bb.g ], [ %i.au, %bb.k ] ; 2 uses
  %i.av = trunc i64 %.sroa.022.075 to i8
  store i8 %i.av, ptr %.1.i.i.i, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.l:                                             ; preds = %._crit_edge
  %i.aw = getelementptr i8, ptr %.03573, i64 1
  %.035.val = load i8, ptr %i.aw, align 1
  %.not49 = icmp eq i8 %.035.val, 1
  br i1 %.not49, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr i8, ptr %.040.lcssa, i64 1
  %.040.val = load i8, ptr %i.ax, align 1
  %.not50 = icmp eq i8 %.040.val, 1
  br i1 %.not50, label %.split43, label %bb.s

.split43:                                         ; preds = %bb.m
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = add i64 %i.az, 40                       ; 2 uses
  %i.bb = load ptr, ptr %.val, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  %.not.i.i.i54 = icmp ugt i64 %i.ba, %i.bd
  br i1 %.not.i.i.i54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.split43
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.az
  store i64 %i.ba, ptr %i.ay, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i55

bb.o:                                             ; preds = %.split43
  %i.bg = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8
  %i.bh = tail call noundef ptr %i.bg(i64 noundef 4112), !inline_history !45 ; 5 uses
  %.not23.i.i.i57 = icmp eq ptr %i.bh, null
  br i1 %.not23.i.i.i57, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not24.i.i.i58 = icmp eq ptr %i.bj, null
  br i1 %.not24.i.i.i58, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.bj, align 1
  br label %.critedge

bb.r:                                             ; preds = %bb.o
  %i.bk = load ptr, ptr %.val, align 8
  store ptr %i.bk, ptr %i.bh, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 4096, ptr %i.bl, align 8
  store ptr %i.bh, ptr %.val, align 8
  store i64 40, ptr %i.ay, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i55

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i55: ; preds = %bb.r, %bb.n
  %.1.i.i.i56 = phi ptr [ %i.bf, %bb.n ], [ %i.bm, %bb.r ] ; 2 uses
  store i8 15, ptr %.1.i.i.i56, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.s:                                             ; preds = %bb.m, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  store ptr @.str.95, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.bp, align 8
end_hunk_1
