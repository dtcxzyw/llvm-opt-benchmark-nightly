Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.01?download=true
inline.NumInlined: 835
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode16DecodeContextMapNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECskeugdADtBsi_12pingora_core:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef range(i64 1, 0) %i.ct, i64 noundef 2) #30, !noalias !496
  br label %.backedge87.i.backedge

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman11HuffmanCodeEECskeugdADtBsi_12pingora_core.exit54.i
  %i.cu = icmp eq i64 %i.cm, 0
  br i1 %i.cu, label %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECskeugdADtBsi_12pingora_core.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = shl nuw nsw i64 %i.cm, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef range(i64 1, 0) %i.cv, i64 noundef 2) #30, !noalias !496
  br label %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECskeugdADtBsi_12pingora_core.exit

.lr.ph.i:                                         ; preds = %bb.j, %.backedge.i
  %.sroa.04.0168.i = phi i32 [ %.sroa.04.0.be.i, %.backedge.i ], [ %i.at, %bb.j ] ; 12 uses
  %.sroa.014.0167.i = phi i1 [ false, %.backedge.i ], [ %i.aw, %bb.j ]
  br i1 %.sroa.014.0167.i, label %thread-pre-split.i, label %bb.ac

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.j
  store i8 4, ptr %i.q, align 1, !alias.scope !480, !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !490
  br label %.backedge87.i.backedge

.backedge87.i.backedge:                           ; preds = %._crit_edge.i, %bb.z, %bb.y, %.loopexit84.i
  br label %.backedge87.i

bb.ac:                                            ; preds = %.lr.ph.i
  %.val41.i = load ptr, ptr %i.u, align 8, !alias.scope !480, !noalias !483, !nonnull !7, !noundef !7
  %.val42.i = load i64, ptr %i.v, align 8, !alias.scope !480, !noalias !483, !noundef !7
  %i.cw = invoke noundef zeroext i1 @_RNvNtCsfQhfhXbPrjn_19brotli_decompressor6decode14SafeReadSymbol(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val41.i, i64 noundef %.val42.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
          to label %.noexc16 unwind label %.loopexit

.noexc16:                                         ; preds = %bb.ac
  br i1 %i.cw, label %bb.ah, label %.loopexit85.sink.split.i

thread-pre-split.i:                               ; preds = %.lr.ph.i
  %.pr.i = load i32, ptr %i.a, align 4, !noalias !490
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aj, %thread-pre-split.i
  %i.cx = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.dt, %bb.aj ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %.promoted.i57.i = load i32, ptr %i.x, align 8, !alias.scope !500, !noalias !501 ; 3 uses
  %i.cy = sub i32 64, %.promoted.i57.i
  %.not.i58.i = icmp ult i32 %i.cy, %i.cx
  br i1 %.not.i58.i, label %.lr.ph.i61.i, label %._crit_edge.i59.i

.lr.ph.i61.i:                                     ; preds = %bb.ad
  %.promoted17.i63.i = load i32, ptr %i.y, align 8, !alias.scope !500, !noalias !501 ; 2 uses
  %i.cz = icmp eq i32 %.promoted17.i63.i, 0
  br i1 %i.cz, label %.loopexit85.sink.split.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i61.i
  %.promoted18.i64.i = load i32, ptr %i.z, align 4, !alias.scope !500, !noalias !501
  %.promoted14.i62.i = load i64, ptr %i.w, align 8, !alias.scope !500, !noalias !501
  br label %bb.af

._crit_edge.i59.i.loopexit:                       ; preds = %bb.ag
  store i64 %i.do, ptr %i.w, align 8, !alias.scope !500, !noalias !501
  br label %._crit_edge.i59.i

._crit_edge.i59.i:                                ; preds = %._crit_edge.i59.i.loopexit, %bb.ad
  %.lcssa7.i60.i = phi i32 [ %.promoted.i57.i, %bb.ad ], [ %i.dp, %._crit_edge.i59.i.loopexit ] ; 2 uses
  %i.da = zext i32 %i.cx to i64                   ; 2 uses
  %i.db = icmp ult i32 %i.cx, 33
  br i1 %i.db, label %bb.ao, label %.invoke

bb.ae:                                            ; preds = %bb.ag
  %i.dc = icmp eq i32 %i.dq, 0
  br i1 %i.dc, label %.loopexit85.sink.split.i.loopexit, label %bb.af

bb.af:                                            ; preds = %.lr.ph, %bb.ae
  %i.dd = phi i64 [ %.promoted14.i62.i, %.lr.ph ], [ %i.do, %bb.ae ]
  %i.de = phi i32 [ %.promoted.i57.i, %.lr.ph ], [ %i.dp, %bb.ae ] ; 2 uses
  %i.df = phi i32 [ %.promoted17.i63.i, %.lr.ph ], [ %i.dq, %bb.ae ]
  %i.dg = phi i32 [ %.promoted18.i64.i, %.lr.ph ], [ %i.dr, %bb.ae ] ; 2 uses
  %i.dh = lshr i64 %i.dd, 8                       ; 2 uses
  %i.di = zext i32 %i.dg to i64                   ; 3 uses
  %i.dj = icmp samesign ugt i64 %4, %i.di
  br i1 %i.dj, label %bb.ag, label %.invoke.loopexit375

bb.ag:                                            ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 %i.di
  %i.dl = load i8, ptr %i.dk, align 1, !alias.scope !502, !noalias !503, !noundef !7
  %i.dm = zext i8 %i.dl to i64
  %i.dn = shl nuw i64 %i.dm, 56
  %i.do = or disjoint i64 %i.dn, %i.dh            ; 3 uses
  %i.dp = add i32 %i.de, -8                       ; 3 uses
  store i32 %i.dp, ptr %i.x, align 8, !alias.scope !500, !noalias !501
  %i.dq = add i32 %i.df, -1                       ; 3 uses
  store i32 %i.dq, ptr %i.y, align 8, !alias.scope !500, !noalias !501
  %i.dr = add i32 %i.dg, 1                        ; 2 uses
  store i32 %i.dr, ptr %i.z, align 4, !alias.scope !500, !noalias !501
  %i.ds = sub i32 72, %i.de
  %.not19.i65.i = icmp ult i32 %i.ds, %i.cx
  br i1 %.not19.i65.i, label %bb.ae, label %._crit_edge.i59.i.loopexit

bb.ah:                                            ; preds = %.noexc16
  %i.dt = load i32, ptr %i.a, align 4, !noalias !490, !noundef !7 ; 4 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ai, label %bb.aj

.loopexit85.sink.split.i.loopexit:                ; preds = %bb.ae
  store i64 %i.do, ptr %i.w, align 8, !alias.scope !500, !noalias !501
  br label %.loopexit85.sink.split.i

.loopexit85.sink.split.i:                         ; preds = %.noexc16, %.lr.ph.i61.i, %.loopexit85.sink.split.i.loopexit
  %.lcssa252.sink.i = phi i32 [ %i.cx, %.loopexit85.sink.split.i.loopexit ], [ 65535, %.noexc16 ], [ %i.cx, %.lr.ph.i61.i ]
  store i32 %.lcssa252.sink.i, ptr %i.t, align 8, !alias.scope !480, !noalias !483
  store i32 %.sroa.04.0168.i, ptr %i.r, align 8, !alias.scope !480, !noalias !483
  br label %.loopexit85.i

.loopexit85.i:                                    ; preds = %bb.ao, %.loopexit85.sink.split.i
  %.sroa.0.1.i = phi i32 [ 2, %.loopexit85.sink.split.i ], [ -8, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !490
  br label %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECskeugdADtBsi_12pingora_core.exit

bb.ai:                                            ; preds = %bb.ah
  %i.dv = zext i32 %.sroa.04.0168.i to i64        ; 3 uses
  %i.dw = icmp ugt i64 %.sroa.12.2.ph, %i.dv
  br i1 %i.dw, label %bb.ak, label %.invoke

bb.aj:                                            ; preds = %bb.ah
  %i.dx = icmp ugt i32 %i.dt, %i.au
  br i1 %i.dx, label %bb.am, label %bb.ad

bb.ak:                                            ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %.val45170.i.ph, i64 %i.dv
  store i8 0, ptr %i.dy, align 1, !noalias !496
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.sroa.04.1.i = add i32 %.sroa.04.0168.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.ap, %bb.al
  %.sroa.04.0.be.i = phi i32 [ %.sroa.04.1.i, %bb.al ], [ %i.fv, %bb.ap ] ; 2 uses
  %i.dz = icmp ult i32 %.sroa.04.0.be.i, %i.p
  br i1 %i.dz, label %.lr.ph.i, label %._crit_edge.i

bb.am:                                            ; preds = %bb.aj
  %i.ea = zext i32 %.sroa.04.0168.i to i64        ; 3 uses
  %i.eb = icmp ugt i64 %.sroa.12.2.ph, %i.ea
  br i1 %i.eb, label %bb.an, label %.invoke

bb.an:                                            ; preds = %bb.am
  %i.ec = sub nuw i32 %i.dt, %i.au
  %i.ed = getelementptr inbounds nuw i8, ptr %.val45170.i.ph, i64 %i.ea
  %i.ee = trunc i32 %i.ec to i8
  store i8 %i.ee, ptr %i.ed, align 1, !noalias !496
  br label %bb.al

bb.ao:                                            ; preds = %._crit_edge.i59.i
  %i.ef = load i64, ptr %i.w, align 8, !alias.scope !500, !noalias !501, !noundef !7
  %i.eg = and i32 %.lcssa7.i60.i, 63
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = lshr i64 %i.ef, %i.eh
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr @26, i64 %i.da
  %i.el = load i32, ptr %i.ek, align 4, !noalias !504, !noundef !7
  %i.em = and i32 %i.el, %i.ej                    ; 3 uses
  %i.en = add i32 %.lcssa7.i60.i, %i.cx
  store i32 %i.en, ptr %i.x, align 8, !alias.scope !500, !noalias !501
  %i.eo = and i32 %i.cx, 31
  %i.ep = shl nuw i32 1, %i.eo                    ; 3 uses
  %i.eq = add i32 %i.em, %i.ep                    ; 4 uses
  %i.er = add i32 %i.eq, %.sroa.04.0168.i
  %i.es = icmp ugt i32 %i.er, %i.p
  br i1 %i.es, label %.loopexit85.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.ao
  %i.et = zext i32 %.sroa.04.0168.i to i64
  %i.eu = call i64 @llvm.usub.sat.i64(i64 %.sroa.12.2.ph, i64 %i.et)
  %i.ev = add i32 %i.em, %i.ep
  %i.ew = add i32 %i.ev, -1
  %i.ex = zext i32 %i.ew to i64
  %i.ey = call i64 @llvm.umin.i64(i64 %i.eu, i64 %i.ex)
  %i.ez = trunc nuw i64 %i.ey to i32
  %i.fa = add i32 %i.ez, 1                        ; 3 uses
  %min.iters.check = icmp ult i32 %i.fa, 33
  br i1 %min.iters.check, label %.preheader.i.preheader374, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.i.preheader
  %i.fb = zext i32 %.sroa.04.0168.i to i64
  %i.fc = call i64 @llvm.usub.sat.i64(i64 %.sroa.12.2.ph, i64 %i.fb)
  %i.fd = add i32 %i.em, -1
  %i.fe = add i32 %i.fd, %i.ep
  %i.ff = zext i32 %i.fe to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.fc, i64 %i.ff)
  %i.fg = trunc nuw i64 %umin to i32
  %i.fh = xor i32 %.sroa.04.0168.i, -1
  %i.fi = icmp ult i32 %i.fh, %i.fg
  br i1 %i.fi, label %.preheader.i.preheader374, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.fj = and i32 %i.fa, 31                       ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  %i.fl = select i1 %i.fk, i32 32, i32 %i.fj
  %n.vec = sub i32 %i.fa, %i.fl                   ; 3 uses
  %i.fm = sub i32 %i.eq, %n.vec
  %5 = add i32 %.sroa.04.0168.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fn = add i32 %.sroa.04.0168.i, %index
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %.val45170.i.ph, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <16 x i8> zeroinitializer, ptr %i.fp, align 1, !noalias !496
  store <16 x i8> zeroinitializer, ptr %i.fq, align 1, !noalias !496
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.fr = icmp eq i32 %index.next, %n.vec
  br i1 %i.fr, label %.preheader.i.preheader374, label %vector.body, !llvm.loop !476

.preheader.i.preheader374:                        ; preds = %vector.body, %vector.scevcheck, %.preheader.i.preheader
  %.sroa.073.0.i.ph = phi i32 [ %i.eq, %vector.scevcheck ], [ %i.eq, %.preheader.i.preheader ], [ %i.fm, %vector.body ]
  %.sroa.04.2.i.ph = phi i32 [ %.sroa.04.0168.i, %vector.scevcheck ], [ %.sroa.04.0168.i, %.preheader.i.preheader ], [ %5, %vector.body ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader374, %bb.ap
  %.sroa.073.0.i = phi i32 [ %i.fw, %bb.ap ], [ %.sroa.073.0.i.ph, %.preheader.i.preheader374 ]
  %.sroa.04.2.i = phi i32 [ %i.fv, %bb.ap ], [ %.sroa.04.2.i.ph, %.preheader.i.preheader374 ] ; 2 uses
  %i.fs = zext i32 %.sroa.04.2.i to i64           ; 3 uses
  %i.ft = icmp ugt i64 %.sroa.12.2.ph, %i.fs
  br i1 %i.ft, label %bb.ap, label %.invoke

bb.ap:                                            ; preds = %.preheader.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.val45170.i.ph, i64 %i.fs
  store i8 0, ptr %i.fu, align 1, !noalias !496
  %i.fv = add i32 %.sroa.04.2.i, 1                ; 2 uses
  %i.fw = add i32 %.sroa.073.0.i, -1              ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %.backedge.i, label %.preheader.i, !llvm.loop !477

.invoke.loopexit375:                              ; preds = %bb.af
  store i64 %i.dh, ptr %i.w, align 8, !alias.scope !500, !noalias !501
  br label %.invoke

.invoke:                                          ; preds = %bb.i, %bb.am, %bb.ai, %._crit_edge.i59.i, %.preheader.i, %.invoke.loopexit375, %bb.m
  %i.fy = phi i64 [ %i.ba, %bb.m ], [ %i.fs, %.preheader.i ], [ %i.ea, %bb.am ], [ %i.di, %.invoke.loopexit375 ], [ %i.da, %._crit_edge.i59.i ], [ %i.dv, %bb.ai ], [ %i.aj, %bb.i ]
  %i.fz = phi i64 [ %4, %bb.m ], [ %.sroa.12.2.ph, %.preheader.i ], [ %.sroa.12.2.ph, %bb.am ], [ %4, %.invoke.loopexit375 ], [ 33, %._crit_edge.i59.i ], [ %.sroa.12.2.ph, %bb.ai ], [ %4, %bb.i ]
  %i.ga = phi ptr [ @32, %bb.m ], [ @31, %.preheader.i ], [ @30, %bb.am ], [ @32, %.invoke.loopexit375 ], [ @28, %._crit_edge.i59.i ], [ @29, %bb.ai ], [ @32, %bb.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef %i.fz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ga) #26
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i: ; preds = %bb.l
  store i8 4, ptr %i.q, align 1, !alias.scope !480, !noalias !483
  br label %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECskeugdADtBsi_12pingora_core.exit

.loopexit.loopexit.i:                             ; preds = %bb.m
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ba
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !505, !noalias !506, !noundef !7
  %i.gd = zext i8 %i.gc to i64
  %i.ge = shl nuw i64 %i.gd, 56
  %i.gf = or disjoint i64 %i.ge, %i.az            ; 2 uses
  store i64 %i.gf, ptr %i.w, align 8, !alias.scope !493, !noalias !494
  store i32 56, ptr %i.x, align 8, !alias.scope !493, !noalias !494
  %i.gg = add i32 %.promoted17.i.i, -1
  store i32 %i.gg, ptr %i.y, align 8, !alias.scope !493, !noalias !494
  %i.gh = add i32 %.promoted18.i.i, 1
  store i32 %i.gh, ptr %i.z, align 4, !alias.scope !493, !noalias !494
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %..loopexit_crit_edge.i
  %i.gi = phi i64 [ %.pre.i, %..loopexit_crit_edge.i ], [ %i.gf, %.loopexit.loopexit.i ]
  %.lcssa7.i50.i = phi i32 [ %.promoted.i47.i, %..loopexit_crit_edge.i ], [ 56, %.loopexit.loopexit.i ] ; 2 uses
  %i.gj = and i32 %.lcssa7.i50.i, 63
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = add i32 %.lcssa7.i50.i, 1
  store i32 %i.gl, ptr %i.x, align 8, !alias.scope !493, !noalias !494
  %i.gm = shl nuw i64 1, %i.gk
  %i.gn = and i64 %i.gm, %i.gi
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %.noexc22, label %bb.aq

bb.aq:                                            ; preds = %.loopexit.i
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 2327
  %i.gq = load i8, ptr %i.gp, align 1, !range !12, !alias.scope !480, !noalias !483, !noundef !7
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECskeugdADtBsi_12pingora_core.exit, label %bb.ar

.noexc22:                                         ; preds = %bb.ar, %.loopexit.i
  store i8 0, ptr %i.q, align 1, !alias.scope !480, !noalias !483
  br label %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECskeugdADtBsi_12pingora_core.exit

bb.ar:                                            ; preds = %bb.aq
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 2328
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 2276
  invoke void @_RNvNtCsfQhfhXbPrjn_19brotli_decompressor6decode27InverseMoveToFrontTransform(ptr noalias nofree noundef nonnull %.val45170.i.ph, i64 noundef %.sroa.12.2.ph, i32 noundef %i.p, ptr noalias nofree noundef nonnull dereferenceable(256) %i.gs, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.gt)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %bb.ac
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.loopexit:             ; preds = %bb.u
  %lpad.loopexit381 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.loopexit.split-lp:    ; preds = %bb.g, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.ar, %bb.au, %bb.at
  %.sroa.12.0.ph.ph = phi i64 [ %.sroa.12.5, %bb.at ], [ %.sroa.12.2.ph, %bb.ar ], [ %.sroa.12.5, %bb.au ], [ %.sroa.12.2.ph, %.invoke ]
  %.sroa.0.036.ph.ph = phi ptr [ %.sroa.0.5, %bb.at ], [ %.val45170.i.ph, %bb.ar ], [ %.sroa.0.5, %bb.au ], [ %.val45170.i.ph, %.invoke ]
  %lpad.loopexit.split-lp40 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.t
  %.sroa.12.4 = phi i64 [ %.sroa.12.2.ph, %bb.s ], [ %.sroa.12.2.ph, %bb.t ], [ %.sroa.12.2.ph, %.loopexit ], [ %.sroa.12.0.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.12.2.ph, %.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %.sroa.12.2.ph, %.loopexit.split-lp.loopexit.loopexit ] ; 2 uses
  %.sroa.0.4 = phi ptr [ %.val45170.i.ph, %bb.s ], [ %.val45170.i.ph, %bb.t ], [ %.val45170.i.ph, %.loopexit ], [ %.sroa.0.036.ph.ph, %.loopexit.split-lp.loopexit.split-lp ], [ %.val45170.i.ph, %.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %.val45170.i.ph, %.loopexit.split-lp.loopexit.loopexit ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.by, %bb.s ], [ %i.by, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp40, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit381, %.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp ]
  %i.gu = icmp eq i64 %.sroa.12.4, 0
  br i1 %i.gu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit, label %bb.as

bb.as:                                            ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.4) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.4, i64 noundef range(i64 1, 0) %.sroa.12.4, i64 noundef 1) #30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit

_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECskeugdADtBsi_12pingora_core.exit: ; preds = %.lr.ph.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit.i, %.noexc, %.noexc22, %bb.aq, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i, %.loopexit85.i, %bb.ab, %bb.aa, %.lr.ph.preheader.i.i, %bb.r
  %.sroa.12.5 = phi i64 [ %.sroa.12.2.ph, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i ], [ 0, %bb.r ], [ %i.bg, %.lr.ph.preheader.i.i ], [ %.sroa.12.2.ph, %.noexc22 ], [ %.sroa.12.2.ph, %bb.aq ], [ %.sroa.12.2.ph, %bb.aa ], [ %.sroa.12.2.ph, %bb.ab ], [ %.sroa.12.2.ph, %.loopexit85.i ], [ %.sroa.12.2.ph, %.lr.ph.i.i ], [ %.sroa.12.2.ph, %.noexc ], [ %i.bg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit.i ] ; 4 uses
  %.sroa.0.5 = phi ptr [ %.val45170.i.ph, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i ], [ %i.bf, %bb.r ], [ %i.bf, %.lr.ph.preheader.i.i ], [ %.val45170.i.ph, %.noexc22 ], [ %.val45170.i.ph, %bb.aq ], [ %.val45170.i.ph, %bb.aa ], [ %.val45170.i.ph, %bb.ab ], [ %.val45170.i.ph, %.loopexit85.i ], [ %.val45170.i.ph, %.lr.ph.i.i ], [ %.val45170.i.ph, %.noexc ], [ %i.bf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit.i ] ; 4 uses
  %.sroa.0.0.i = phi i32 [ 2, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit.i ], [ 1, %bb.r ], [ 1, %.lr.ph.preheader.i.i ], [ 1, %.noexc22 ], [ -31, %bb.aq ], [ %i.cj, %bb.aa ], [ %i.cj, %bb.ab ], [ %.sroa.0.1.i, %.loopexit85.i ], [ 2, %.lr.ph.i.i ], [ %i.ae, %.noexc ], [ -25, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit.i ]
  %i.gv = load i32, ptr %i.b, align 4, !noundef !7 ; 2 uses
  br i1 %1, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECskeugdADtBsi_12pingora_core.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 2288
  store i32 %i.gv, ptr %i.gw, align 8
  %i.gx = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxhENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.au:                                            ; preds = %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode21DecodeContextMapInnerNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB17_B17_ECskeugdADtBsi_12pingora_core.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 2224
  store i32 %i.gv, ptr %i.gy, align 8
  %i.gz = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxhENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.av:                                            ; preds = %bb.at
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 1840 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !nonnull !7, !noundef !7
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 1848 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !noundef !7 ; 2 uses
  store ptr %.sroa.0.5, ptr %i.ha, align 8
  store i64 %.sroa.12.5, ptr %i.hc, align 8
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit23, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hb, i64 noundef range(i64 1, 0) %i.hd, i64 noundef 1) #30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit23

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit23: ; preds = %bb.ay, %bb.az, %bb.av, %bb.aw
  %.pn = phi { ptr, i64 } [ %i.gx, %bb.av ], [ %i.gx, %bb.aw ], [ %i.gz, %bb.az ], [ %i.gz, %bb.ay ] ; 2 uses
  %.sroa.12.1 = extractvalue { ptr, i64 } %.pn, 1 ; 2 uses
  %i.hf = icmp eq i64 %.sroa.12.1, 0
  br i1 %i.hf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit24, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit23
  %.sroa.0.1 = extractvalue { ptr, i64 } %.pn, 0  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.1, i64 noundef range(i64 1, 0) %.sroa.12.1, i64 noundef 1) #30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit24

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit24: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit23, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.sroa.0.0.i

bb.ay:                                            ; preds = %bb.au
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 1792 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !nonnull !7, !noundef !7
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 1800 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !noundef !7 ; 2 uses
  store ptr %.sroa.0.5, ptr %i.hg, align 8
  store i64 %.sroa.12.5, ptr %i.hi, align 8
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit23, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hh, i64 noundef range(i64 1, 0) %i.hj, i64 noundef 1) #30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit23

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxhEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.as, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode20ReadDistanceInternalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB16_B16_ECskeugdADtBsi_12pingora_core(i1 noundef zeroext %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(2592) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4096) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 7 uses
  %i.i = alloca [4 x i8], align 4                 ; 6 uses
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1872 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1880
  %i.m = load <2 x i32>, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1888
end_hunk_0
begin_hunk_1_@_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode24DecodeBlockTypeAndLengthNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  br label %bb.af

bb.ai:                                            ; preds = %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit.thread, %bb.a, %bb.r, %bb.af
  %.sroa.0.1 = phi i1 [ true, %bb.af ], [ false, %bb.r ], [ false, %bb.a ], [ false, %_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode28SafeReadBlockLengthFromIndexNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, i1 noundef zeroext %3, i32 noundef %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, i64 noundef range(i64 0, -9223372036854775808) %6) unnamed_addr #0 {
bb.a:
  br i1 %3, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %4 to i64                       ; 2 uses
  %i.b = icmp ult i32 %4, 26
  br i1 %i.b, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @84, i64 %i.a ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.e = load i8, ptr %i.d, align 2, !noundef !7  ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted.i = load i32, ptr %i.g, align 8, !alias.scope !818, !noalias !820 ; 3 uses
  %i.h = sub i32 64, %.promoted.i
  %.not.i = icmp ult i32 %i.h, %i.f
  %.promoted14.i = load i64, ptr %1, align 8, !alias.scope !818, !noalias !820 ; 2 uses
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.promoted17.i = load i32, ptr %i.i, align 8, !alias.scope !818, !noalias !820
  %.promoted18.i = load i32, ptr %i.j, align 4, !alias.scope !818, !noalias !820
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %i.k = phi i32 [ %.promoted18.i, %.lr.ph.i ], [ %i.z, %bb.f ] ; 2 uses
  %i.l = phi i32 [ %.promoted17.i, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %i.m = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.n = phi i64 [ %.promoted14.i, %.lr.ph.i ], [ %i.w, %bb.f ]
  %i.o = icmp eq i32 %i.l, 0
  br i1 %i.o, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = lshr i64 %i.n, 8                         ; 2 uses
  store i64 %i.p, ptr %1, align 8, !alias.scope !818, !noalias !820
  %i.q = zext i32 %i.k to i64                     ; 3 uses
  %i.r = icmp samesign ugt i64 %6, %i.q
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !819, !noalias !821, !noundef !7
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw i64 %i.u, 56
  %i.w = or disjoint i64 %i.v, %i.p               ; 3 uses
  store i64 %i.w, ptr %1, align 8, !alias.scope !818, !noalias !820
  %i.x = add i32 %i.m, -8                         ; 3 uses
  store i32 %i.x, ptr %i.g, align 8, !alias.scope !818, !noalias !820
  %i.y = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.y, ptr %i.i, align 8, !alias.scope !818, !noalias !820
  %i.z = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.z, ptr %i.j, align 4, !alias.scope !818, !noalias !820
  %i.aa = sub i32 72, %i.m
  %.not19.i = icmp ult i32 %i.aa, %i.f
  br i1 %.not19.i, label %bb.d, label %._crit_edge.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef range(i64 0, -9223372036854775808) %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #26, !noalias !822
  unreachable

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #26
  unreachable

_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %4, ptr %i.ab, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge.i, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit
  %.sink = phi i8 [ 1, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit ], [ 0, %._crit_edge.i ]
  %.sroa.0.0.ph = phi i1 [ false, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader18BrotliSafeReadBits.exit ], [ true, %._crit_edge.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 %.sink, ptr %i.ac, align 4
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i1 %.sroa.0.0

._crit_edge.i:                                    ; preds = %bb.f, %bb.c
  %i.ad = phi i64 [ %.promoted14.i, %bb.c ], [ %i.w, %bb.f ]
  %.lcssa7.i = phi i32 [ %.promoted.i, %bb.c ], [ %i.x, %bb.f ] ; 2 uses
  %i.ae = zext i8 %i.e to i64
  %i.af = and i32 %.lcssa7.i, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = lshr i64 %i.ad, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @26, i64 %i.ae
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !822, !noundef !7
  %i.al = and i32 %i.ak, %i.ai
  %i.am = add i32 %.lcssa7.i, %i.f
  store i32 %i.am, ptr %i.g, align 8, !alias.scope !818, !noalias !820
  %i.an = load i16, ptr %i.c, align 2, !noundef !7
  %i.ao = zext i16 %i.an to i32
  %i.ap = add i32 %i.al, %i.ao
  store i32 %i.ap, ptr %2, align 4
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 -31, 4) i32 @_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode29CopyUncompressedBlockToOutputNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1f_B1f_ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(2592) %5, ptr noalias nofree noundef nonnull readonly captures(none) %6, i64 noundef range(i64 0, -9223372036854775808) %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 2587 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 1872
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 1888 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 1880 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 2208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 2168 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 2184 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 1784
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 1776
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 1884 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 2284 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 2172
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 2180
  %.pre = load i8, ptr %i.b, align 1, !range !12
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.n = phi i8 [ %storemerge, %.backedge ], [ %.pre, %bb.a ]
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode15WriteRingBufferNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef %1, i64 %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4, i1 noundef zeroext false, ptr noalias nofree noundef align 8 dereferenceable(2592) %5)
  %i.p = load i32, ptr %i.a, align 8, !range !21, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.n, label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.d, align 8, !noundef !7 ; 2 uses
  %i.s = load i32, ptr %i.e, align 8, !noundef !7 ; 6 uses
  %i.t = sub i32 64, %i.s
  %i.u = lshr i32 %i.t, 3
  %i.v = add i32 %i.u, %i.r
  %i.w = load i32, ptr %i.f, align 8, !noundef !7 ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.w) ; 2 uses
  %i.x = load i32, ptr %i.g, align 8, !noundef !7 ; 5 uses
  %i.y = add i32 %spec.select, %i.x               ; 2 uses
  %i.z = load i32, ptr %i.h, align 8, !noundef !7 ; 3 uses
  %i.aa = icmp sgt i32 %i.y, %i.z
  %i.ab = sub i32 %i.z, %i.x
  %.sroa.02.1 = select i1 %i.aa, i32 %i.ab, i32 %spec.select ; 7 uses
  %.val12 = load i64, ptr %i.i, align 8, !noundef !7 ; 4 uses
  %i.ac = sext i32 %i.x to i64                    ; 4 uses
  %i.ad = icmp ult i64 %.val12, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.e, !prof !13

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7
  %i.ae = sub nuw i64 %.val12, %i.ac              ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ac ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %notsub24.i = add i32 %i.s, -65
  %i.ag = icmp ult i32 %notsub24.i, -8
  %i.ah = icmp ne i32 %.sroa.02.1, 0
  %or.cond25.i = and i1 %i.ah, %i.ag
  br i1 %or.cond25.i, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ai = load i64, ptr %i.c, align 8, !alias.scope !832, !noalias !834 ; 2 uses
  %i.aj = sub i32 56, %i.s
  %i.ak = lshr i32 %i.aj, 3
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %i.y)
  %i.an = xor i32 %i.x, -1
  %i.ao = add i32 %i.am, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.ae)
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.ap) ; 2 uses
  %min.iters.check131 = icmp samesign ult i64 %i.ar, 4
  br i1 %min.iters.check131, label %scalar.ph130.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %.lr.ph.i
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %i.at = and i64 %i.as, 3                        ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  %i.av = select i1 %i.au, i64 4, i64 %i.at
  %n.vec133 = sub nsw i64 %i.as, %i.av            ; 3 uses
  %8 = trunc nsw i64 %n.vec133 to i32             ; 2 uses
  %9 = sub i32 %.sroa.02.1, %8
  %10 = shl i32 %8, 3
  %11 = add i32 %i.s, %10
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert134 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat135 = shufflevector <4 x i32> %broadcast.splatinsert134, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat135, <i32 0, i32 8, i32 16, i32 24>
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph132
  %index137 = phi i64 [ 0, %vector.ph132 ], [ %index.next138, %vector.body136 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph132 ], [ %vec.ind.next, %vector.body136 ] ; 3 uses
  %i.aw = and <4 x i32> %vec.ind, splat (i32 63)
  %i.ax = zext nneg <4 x i32> %i.aw to <4 x i64>
  %i.ay = lshr <4 x i64> %broadcast.splat, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 %index137
  %i.ba = trunc <4 x i64> %i.ay to <4 x i8>
  store <4 x i8> %i.ba, ptr %i.az, align 1, !alias.scope !831, !noalias !835
  %index.next138 = add nuw i64 %index137, 4       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 32)
  %i.bb = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.bb, label %middle.block139, label %vector.body136, !llvm.loop !827

middle.block139:                                  ; preds = %vector.body136
  %i.bc = extractelement <4 x i32> %vec.ind, i64 3
  %i.bd = add i32 %i.bc, 8
  store i32 %i.bd, ptr %i.e, align 8, !alias.scope !832, !noalias !834
  br label %scalar.ph130.preheader

scalar.ph130.preheader:                           ; preds = %.lr.ph.i, %middle.block139
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec133, %middle.block139 ]
  %.sroa.0.027.i.ph = phi i32 [ %.sroa.02.1, %.lr.ph.i ], [ %9, %middle.block139 ]
  %.ph = phi i32 [ %i.s, %.lr.ph.i ], [ %11, %middle.block139 ]
  br label %scalar.ph130

.preheader.i:                                     ; preds = %bb.j, %bb.e
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.02.1, %bb.e ], [ %i.cc, %bb.j ] ; 4 uses
  %.not.i = icmp eq i32 %.sroa.0.0.lcssa.i, 0
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !alias.scope !832, !noalias !834 ; 2 uses
  br i1 %.not.i, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit, label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.preheader.i
  %i.be = zext i32 %.pre.i to i64                 ; 3 uses
  %i.bf = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %7, i64 %i.be) ; 2 uses
  %i.bg = tail call i64 @llvm.usub.sat.i64(i64 %i.ae, i64 %.sroa.06.0.lcssa.i) ; 2 uses
  %wide.trip.count.i = zext i32 %.sroa.0.0.lcssa.i to i64 ; 2 uses
  %i.bh = add nsw i64 %wide.trip.count.i, -1
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bh)
  %i.bj = freeze i64 %i.bi
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bf) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bk, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph30.i
  %indvars.iv40.i.ph = phi i64 [ 0, %.lr.ph30.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph30.i
  %i.bl = add nuw i64 %i.bk, 1                    ; 2 uses
  %i.bm = and i64 %i.bl, 15                       ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = select i1 %i.bn, i64 16, i64 %i.bm
  %n.vec = sub i64 %i.bl, %i.bo                   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %6, i64 %i.be
  %invariant.gep199 = getelementptr i8, ptr %i.af, i64 %.sroa.06.0.lcssa.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index
  %wide.load = load <16 x i8>, ptr %gep, align 1, !alias.scope !833, !noalias !836
  %gep200 = getelementptr i8, ptr %invariant.gep199, i64 %index
  store <16 x i8> %wide.load, ptr %gep200, align 1, !alias.scope !831, !noalias !835
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %scalar.ph.preheader, label %vector.body, !llvm.loop !828

scalar.ph130:                                     ; preds = %scalar.ph130.preheader, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ %indvars.iv.i.ph, %scalar.ph130.preheader ] ; 3 uses
  %.sroa.0.027.i = phi i32 [ %i.cc, %bb.j ], [ %.sroa.0.027.i.ph, %scalar.ph130.preheader ]
  %i.bq = phi i32 [ %i.cb, %bb.j ], [ %.ph, %scalar.ph130.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.i, %i.ae
  br i1 %exitcond.not, label %bb.k, label %bb.j

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.h
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %bb.h ], [ %indvars.iv40.i.ph, %scalar.ph.preheader ] ; 5 uses
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %i.br = add nuw nsw i64 %indvars.iv40.i, %i.be  ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv40.i, %i.bf
  br i1 %exitcond.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %scalar.ph
  %i.bs = add nuw nsw i64 %indvars.iv40.i, %.sroa.06.0.lcssa.i ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv40.i, %i.bg
  br i1 %exitcond44.not.i, label %bb.i, label %bb.h

bb.g:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.br, i64 noundef range(i64 0, -9223372036854775808) %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #26, !noalias !837
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.br
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !833, !noalias !836, !noundef !7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !alias.scope !831, !noalias !835
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next41.i, %wide.trip.count.i
  br i1 %exitcond45.not.i, label %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit, label %scalar.ph, !llvm.loop !829

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef range(i64 0, -9223372036854775808) %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #26, !noalias !837
  unreachable

bb.j:                                             ; preds = %scalar.ph130
  %i.bw = and i32 %i.bq, 63
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = lshr i64 %i.ai, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i
  %i.ca = trunc i64 %i.by to i8
  store i8 %i.ca, ptr %i.bz, align 1, !alias.scope !831, !noalias !835
  %i.cb = add i32 %i.bq, 8                        ; 2 uses
  store i32 %i.cb, ptr %i.e, align 8, !alias.scope !832, !noalias !834
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cc = add i32 %.sroa.0.027.i, -1              ; 3 uses
  %notsub.i = add i32 %i.bq, -57
  %i.cd = icmp ult i32 %notsub.i, -8
  %i.ce = icmp ne i32 %i.cc, 0
  %or.cond.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond.i, label %scalar.ph130, label %.preheader.i, !llvm.loop !830

bb.k:                                             ; preds = %scalar.ph130
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ae, i64 noundef range(i64 0, -9223372036854775808) %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #26, !noalias !837
  unreachable

_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit: ; preds = %bb.h, %.preheader.i
  %i.cf = sub i32 %i.r, %.sroa.0.0.lcssa.i
  store i32 %i.cf, ptr %i.d, align 8, !alias.scope !832, !noalias !834
  %i.cg = add i32 %.pre.i, %.sroa.0.0.lcssa.i
  store i32 %i.cg, ptr %.phi.trans.insert.i, align 4, !alias.scope !832, !noalias !834
  %i.ch = add i32 %.sroa.02.1, %i.x               ; 2 uses
  store i32 %i.ch, ptr %i.g, align 8
  %i.ci = sub i32 %i.w, %.sroa.02.1
  store i32 %i.ci, ptr %i.f, align 8
  %i.cj = load i32, ptr %i.k, align 4, !noundef !7
  %i.ck = and i32 %i.cj, 31
  %i.cl = shl nuw i32 1, %i.ck
  %i.cm = icmp slt i32 %i.ch, %i.cl
  br i1 %i.cm, label %bb.m, label %.backedge

bb.l:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ac, i64 noundef %.val12, i64 noundef %.val12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #26
  unreachable

.backedge:                                        ; preds = %bb.o, %bb.n, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit
  %storemerge = phi i8 [ 1, %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit ], [ 0, %bb.n ], [ 0, %bb.o ] ; 2 uses
  store i8 %storemerge, ptr %i.b, align 1
  br label %bb.b

bb.m:                                             ; preds = %_RNvNtCsfQhfhXbPrjn_19brotli_decompressor10bit_reader15BrotliCopyBytes.exit
  %i.cn = icmp eq i32 %i.w, %.sroa.02.1
  %. = select i1 %i.cn, i32 1, i32 2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.m
  %.sroa.0.0 = phi i32 [ %., %bb.m ], [ %i.p, %bb.c ]
  ret i32 %.sroa.0.0

bb.n:                                             ; preds = %bb.c
  %i.co = load i32, ptr %i.h, align 8, !noundef !7
  %i.cp = load i32, ptr %i.k, align 4, !noundef !7
  %i.cq = and i32 %i.cp, 31
  %i.cr = shl nuw i32 1, %i.cq
  %i.cs = icmp eq i32 %i.co, %i.cr
  br i1 %i.cs, label %bb.o, label %.backedge

bb.o:                                             ; preds = %bb.n
  %i.ct = load i32, ptr %i.l, align 4, !noundef !7
  store i32 %i.ct, ptr %i.m, align 4
  br label %.backedge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode32DecodeLiteralBlockSwitchInternalNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB1i_B1i_ECskeugdADtBsi_12pingora_core(i1 noundef zeroext %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(2592) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2072
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1872
  %i.c = tail call fastcc noundef zeroext i1 @_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode24DecodeBlockTypeAndLengthNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core(i1 noundef zeroext %0, ptr noalias nofree noundef align 8 dereferenceable(88) %i.a, ptr noalias nofree noundef align 8 dereferenceable(24) %i.b, i32 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2108
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !840, !noundef !7 ; 4 uses
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %i.g = shl i32 %i.e, 6
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1904
  %i.i = zext i32 %i.g to i64                     ; 4 uses
  store i64 %i.i, ptr %i.h, align 8, !alias.scope !840
  %i.j = lshr i64 %i.f, 5                         ; 2 uses
  %i.k = icmp ult i32 %i.e, 256
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1728
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.j
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !840, !noundef !7
  %i.o = and i32 %i.e, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = and i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2200
  store i32 %i.q, ptr %i.r, align 8, !alias.scope !840
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1848
  %.val9.i = load i64, ptr %i.s, align 8, !alias.scope !840, !noundef !7 ; 2 uses
  %i.t = icmp ugt i64 %.val9.i, %i.i
  br i1 %i.t, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #26, !noalias !840
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1840
  %.val8.i = load ptr, ptr %i.u, align 8, !alias.scope !840, !nonnull !7, !noundef !7
  %i.v = getelementptr inbounds nuw i8, ptr %.val8.i, i64 %i.i
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression6brotliNtB2_12Decompressor3new:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8
  call void @_RNvMs1_NtCsfQhfhXbPrjn_19brotli_decompressor6writerINtB5_18DecompressorWriterINtNtCsexYYUdYSQU6_5alloc3vec3VechEE3newCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([2648 x i8]) align 8 captures(address) dereferenceable(2648) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2664
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2648
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2656
  store i32 0, ptr %i.f, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE15try_reserve_oneCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 4 uses
  %i.h = icmp ult i64 %i.g, 96076792050570582
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i64, ptr %0, align 8, !range !11, !noundef !7
  %i.j = icmp eq i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !7 ; 5 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = lshr i64 %i.l, 2
  %i.o = sub nuw i64 %i.l, %i.n
  %i.p = icmp eq i64 %i.g, %i.o
  br i1 %i.p, label %bb.d, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCskeugdADtBsi_12pingora_core.exit

bb.c:                                             ; preds = %bb.a
  %i.q = mul nuw nsw i64 %i.g, 5
  %.not = icmp ult i64 %i.q, %i.l
  br i1 %.not, label %bb.q, label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.g, 0
  br i1 %i.r, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 7, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1107
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 32769) 8, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4), !noalias !1107
  %i.t = load i64, ptr %i.a, align 8, !range !9, !noalias !1107, !noundef !7
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !32, !noalias !1107, !noundef !7 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.u, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.x, align 8, !noalias !1107
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #28, !noalias !1107
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.e
  %i.z = load ptr, ptr %i.x, align 8, !noalias !1107, !nonnull !7, !noundef !7
  %i.aa = icmp samesign ugt i64 %i.w, 7
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1107
  store i64 %i.w, ptr %i.b, align 8, !noalias !1107
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !noalias !1107
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ac, align 8, !noalias !1107
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE11extend_withCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 8, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskeugdADtBsi_12pingora_core.exit unwind label %bb.g, !noalias !1107

bb.g:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #27
          to label %common.resume unwind label %bb.h, !noalias !1107

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !1107
  unreachable

common.resume:                                    ; preds = %bb.g, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ad, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1107
  %i.af = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE16into_boxed_sliceCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val14 = load i64, ptr %i.k, align 8, !noundef !7 ; 2 uses
  %i.ai = icmp eq i64 %.val14, 0
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core.exit, label %bb.i

bb.i:                                             ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskeugdADtBsi_12pingora_core.exit
  %.val = load ptr, ptr %i.m, align 8, !nonnull !7, !noundef !7
  %i.aj = shl nuw nsw i64 %.val14, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.aj, i64 noundef 2) #30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core.exit

bb.j:                                             ; preds = %bb.d
  %i.ak = shl i64 %i.l, 1
  %i.al = tail call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE8try_growCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.ak) #25
  br i1 %i.al, label %bb.z, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.i, %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskeugdADtBsi_12pingora_core.exit
  store ptr %i.ag, ptr %i.m, align 8
  store i64 %i.ah, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 6, i1 noundef zeroext false, i64 noundef 8, i64 noundef 96)
  %i.am = load i64, ptr %i.c, align 8, !range !9, !noundef !7
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !32, !noundef !7 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core.exit
  %i.ar = load i64, ptr %i.aq, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #28
  unreachable

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core.exit
  %i.as = load ptr, ptr %i.aq, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.at = icmp samesign ugt i64 %i.ap, 5
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECskeugdADtBsi_12pingora_core.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.p ], [ %i.au, %bb.m ]
  store i64 %i.ap, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %i.f, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.n
  store i64 %i.ap, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx5, align 8
  store i64 0, ptr %i.f, align 8
  br label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCskeugdADtBsi_12pingora_core.exit

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCskeugdADtBsi_12pingora_core.exit: ; preds = %.backedge.i, %._crit_edge, %bb.r, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECskeugdADtBsi_12pingora_core.exit, %bb.b
  br label %bb.z

bb.q:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_RNvMs12_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_6Danger7set_red(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.az = load i64, ptr %i.k, align 8, !noundef !7 ; 2 uses
  %.idx = shl i64 %i.az, 2                        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bc = add i64 %.idx, -4                       ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.be, 9223372036854775800     ; 3 uses
  %1 = shl i64 %n.vec, 2
  %2 = getelementptr i8, ptr %i.ay, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bf
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf
  %next.gep32 = getelementptr i8, ptr %i.bg, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep32, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !1103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.01.018.ph = phi ptr [ %i.ay, %.lr.ph.preheader ], [ %2, %middle.block ]
  br label %.lr.ph

bb.r:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.bi = shl nuw nsw i64 %i.l, 1
  %i.bj = tail call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE8try_growCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.bi) #25
  br i1 %i.bj, label %bb.z, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCskeugdADtBsi_12pingora_core.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %.sroa.01.018 = phi ptr [ %i.bk, %.lr.ph ], [ %.sroa.01.018.ph, %.lr.ph.preheader37 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.018, i64 4 ; 2 uses
  store i16 -1, ptr %.sroa.01.018, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.018, i64 2
  store i16 0, ptr %i.bl, align 2
  %i.bm = icmp eq ptr %i.bk, %i.ba
  br i1 %i.bm, label %._crit_edge, label %.lr.ph, !llvm.loop !1104

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !1108, !nonnull !7, !noundef !7 ; 2 uses
  %i.bp = load i64, ptr %i.f, align 8, !alias.scope !1108, !noundef !7 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.bp, 96
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i
  %i.br = icmp eq i64 %i.bp, 0
  br i1 %i.br, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCskeugdADtBsi_12pingora_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = load i16, ptr %i.bs, align 8, !alias.scope !1108 ; 3 uses
  %i.bu = load ptr, ptr %i.ax, align 8, !alias.scope !1108, !nonnull !7 ; 3 uses
  %i.bv = load i64, ptr %i.k, align 8, !alias.scope !1108 ; 4 uses
  %i.bw = zext i16 %i.bt to i64
  %.not43 = icmp eq i64 %i.bv, 0
  %.not44 = icmp eq i64 %i.bv, 0
  br label %bb.s

bb.s:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.036.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %i.bx, %.backedge.i ] ; 3 uses
  %.sroa.7.035.i = phi i64 [ 0, %.lr.ph.i ], [ %i.by, %.backedge.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 96 ; 2 uses
  %i.by = add nuw nsw i64 %.sroa.7.035.i, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 56
  %i.ca = tail call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull align 8 %i.bz) #25 ; 4 uses
  %i.cb = and i16 %i.ca, %i.bt
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 88
  store i16 %i.ca, ptr %i.cd, align 8, !noalias !1108
  br label %.outer33

.outer33:                                         ; preds = %bb.v, %bb.s
  %.sroa.014.0.i.ph = phi i64 [ %i.ct, %bb.v ], [ 0, %bb.s ] ; 2 uses
  %.sroa.04.0.i.ph = phi i64 [ %i.cu, %bb.v ], [ %i.cc, %bb.s ] ; 2 uses
  %i.ce = icmp ult i64 %.sroa.04.0.i.ph, %i.bv    ; 2 uses
  %.not43.not = xor i1 %.not43, true
  %brmerge = or i1 %i.ce, %.not43.not
  %.sroa.04.0.i.ph.mux = select i1 %i.ce, i64 %.sroa.04.0.i.ph, i64 0 ; 5 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer33
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.sroa.04.0.i.ph.mux ; 3 uses
  %i.cg = load i16, ptr %i.cf, align 2, !noalias !1108, !noundef !7
  %.not23.i = icmp eq i16 %i.cg, -1
  br i1 %.not23.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !1108, !noundef !7
  %i.cj = and i16 %i.ci, %i.bt
  %i.ck = zext i16 %i.cj to i64
  %i.cl = sub i64 %.sroa.04.0.i.ph.mux, %i.ck
  %i.cm = and i64 %i.cl, %i.bw
  %i.cn = icmp samesign ult i64 %i.cm, %.sroa.014.0.i.ph
  br i1 %i.cn, label %bb.w, label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.co = trunc i64 %.sroa.7.035.i to i16
  store i16 %i.co, ptr %i.cf, align 2, !noalias !1108
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.y, %bb.u
  %i.cp = phi i64 [ %.sroa.04.0.i.ph.mux, %bb.u ], [ %.sroa.04.2.i.ph.mux, %bb.y ]
  %.sink.i = phi i16 [ %i.ca, %bb.u ], [ %.sroa.619.0.i.ph, %bb.y ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i16 %.sink.i, ptr %i.cr, align 2, !noalias !1108
  %i.cs = icmp eq ptr %i.bx, %i.bq
  br i1 %i.cs, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCskeugdADtBsi_12pingora_core.exit, label %bb.s

bb.v:                                             ; preds = %bb.t
  %i.ct = add nuw nsw i64 %.sroa.014.0.i.ph, 1
  %i.cu = add nuw i64 %.sroa.04.0.i.ph.mux, 1
  br label %.outer33

bb.w:                                             ; preds = %bb.t
  %i.cv = trunc i64 %.sroa.7.035.i to i16
  br label %.outer

.outer:                                           ; preds = %bb.x, %bb.w
  %.sroa.04.2.i.ph = phi i64 [ %i.dc, %bb.x ], [ %.sroa.04.0.i.ph.mux, %bb.w ] ; 2 uses
  %.sroa.017.0.i.ph = phi i16 [ %i.cy, %bb.x ], [ %i.cv, %bb.w ] ; 2 uses
  %.sroa.619.0.i.ph = phi i16 [ %i.db, %bb.x ], [ %i.ca, %bb.w ] ; 2 uses
  %i.cw = icmp ult i64 %.sroa.04.2.i.ph, %i.bv    ; 2 uses
  %.not44.not = xor i1 %.not44, true
  %brmerge49 = or i1 %i.cw, %.not44.not
  %.sroa.04.2.i.ph.mux = select i1 %i.cw, i64 %.sroa.04.2.i.ph, i64 0 ; 3 uses
  br i1 %brmerge49, label %.loopexit42, label %infloop48

.loopexit42:                                      ; preds = %.outer
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.sroa.04.2.i.ph.mux ; 4 uses
  %i.cy = load i16, ptr %i.cx, align 2, !noalias !1108, !noundef !7 ; 2 uses
  %i.cz = icmp eq i16 %i.cy, -1
  br i1 %i.cz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit42
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 2 ; 2 uses
  %i.db = load i16, ptr %i.da, align 2, !noalias !1108, !noundef !7
  store i16 %.sroa.017.0.i.ph, ptr %i.cx, align 2, !noalias !1108
  store i16 %.sroa.619.0.i.ph, ptr %i.da, align 2, !noalias !1108
  %i.dc = add nuw i64 %.sroa.04.2.i.ph.mux, 1
  br label %.outer

bb.y:                                             ; preds = %.loopexit42
  store i16 %.sroa.017.0.i.ph, ptr %i.cx, align 2, !noalias !1108
  br label %.backedge.i

bb.z:                                             ; preds = %bb.r, %bb.j, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCskeugdADtBsi_12pingora_core.exit
  %.sroa.0.0 = phi i1 [ true, %bb.j ], [ false, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCskeugdADtBsi_12pingora_core.exit ], [ true, %bb.r ]
  ret i1 %.sroa.0.0

infloop:                                          ; preds = %.outer33, %infloop
  br label %infloop

infloop48:                                        ; preds = %.outer, %infloop48
  br label %infloop48
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23remove_all_extra_valuesCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1141, !noalias !1142, !nonnull !7, !noundef !7 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted = load i64, ptr %i.g, align 8, !alias.scope !1141, !noalias !1142 ; 3 uses
  %i.h = icmp ult i64 %1, %.promoted
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.an
  %.sroa.0.078 = phi i64 [ %.sroa.10.0.i, %bb.an ], [ %1, %bb.a ] ; 7 uses
  %i.i = phi i64 [ %i.w, %bb.an ], [ %.promoted, %bb.a ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %.sroa.0.078 ; 10 uses
  %i.k = load i64, ptr %i.j, align 8, !range !9, !noalias !1143, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !1143, !noundef !7 ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !range !9, !noalias !1143, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !1143, !noundef !7 ; 12 uses
  %i.r = trunc nuw i64 %i.k to i1
  %i.s = trunc nuw i64 %i.o to i1                 ; 2 uses
  br i1 %i.r, label %bb.b, label %bb.c

._crit_edge:                                      ; preds = %bb.an, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.10.0.i, %bb.an ]
  %.lcssa = phi i64 [ %.promoted, %bb.a ], [ %i.w, %bb.an ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa, i64 noundef %.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #26, !noalias !1143
  unreachable

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.s, label %bb.n, label %bb.o

bb.c:                                             ; preds = %.lr.ph
  %i.t = icmp ult i64 %i.m, %i.d                  ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.t, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.c
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %i.m
  store i64 0, ptr %i.u, align 8, !noalias !1143
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE11swap_removeCskeugdADtBsi_12pingora_core.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #26, !noalias !1143
  unreachable

end_hunk_2
begin_hunk_3_@_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE8try_growCskeugdADtBsi_12pingora_core:bb.a
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core.exit34, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, 0) %.idx, i64 noundef 2) #30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core.exit34

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core.exit34: ; preds = %bb.x, %bb.w, %bb.a
  ret i1 %i.d

bb.y:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 4 uses
  %i.h = icmp ult i64 %i.g, 88686269585142076
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i64, ptr %0, align 8, !range !11, !noundef !7
  %i.j = icmp eq i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !7 ; 5 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = lshr i64 %i.l, 2
  %i.o = sub nuw i64 %i.l, %i.n
  %i.p = icmp eq i64 %i.g, %i.o
  br i1 %i.p, label %bb.d, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCskeugdADtBsi_12pingora_core.exit

bb.c:                                             ; preds = %bb.a
  %i.q = mul nuw nsw i64 %i.g, 5
  %.not = icmp ult i64 %i.q, %i.l
  br i1 %.not, label %bb.q, label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.g, 0
  br i1 %i.r, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 7, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1167
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 32769) 8, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4), !noalias !1167
  %i.t = load i64, ptr %i.a, align 8, !range !9, !noalias !1167, !noundef !7
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !32, !noalias !1167, !noundef !7 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.u, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.x, align 8, !noalias !1167
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #28, !noalias !1167
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.e
  %i.z = load ptr, ptr %i.x, align 8, !noalias !1167, !nonnull !7, !noundef !7
  %i.aa = icmp samesign ugt i64 %i.w, 7
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1167
  store i64 %i.w, ptr %i.b, align 8, !noalias !1167
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !noalias !1167
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ac, align 8, !noalias !1167
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE11extend_withCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 8, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskeugdADtBsi_12pingora_core.exit unwind label %bb.g, !noalias !1167

bb.g:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #27
          to label %common.resume unwind label %bb.h, !noalias !1167

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !1167
  unreachable

common.resume:                                    ; preds = %bb.g, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ad, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskeugdADtBsi_12pingora_core.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskeugdADtBsi_12pingora_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1167
  %i.af = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE16into_boxed_sliceCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val14 = load i64, ptr %i.k, align 8, !noundef !7 ; 2 uses
  %i.ai = icmp eq i64 %.val14, 0
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core.exit, label %bb.i

bb.i:                                             ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskeugdADtBsi_12pingora_core.exit
  %.val = load ptr, ptr %i.m, align 8, !nonnull !7, !noundef !7
  %i.aj = shl nuw nsw i64 %.val14, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.aj, i64 noundef 2) #30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core.exit

bb.j:                                             ; preds = %bb.d
  %i.ak = shl i64 %i.l, 1
  %i.al = tail call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap8try_growCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.ak) #25
  br i1 %i.al, label %bb.z, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.i, %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskeugdADtBsi_12pingora_core.exit
  store ptr %i.ag, ptr %i.m, align 8
  store i64 %i.ah, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 6, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
  %i.am = load i64, ptr %i.c, align 8, !range !9, !noundef !7
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !32, !noundef !7 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core.exit
  %i.ar = load i64, ptr %i.aq, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #28
  unreachable

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskeugdADtBsi_12pingora_core.exit
  %i.as = load ptr, ptr %i.aq, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.at = icmp samesign ugt i64 %i.ap, 5
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECskeugdADtBsi_12pingora_core.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.p ], [ %i.au, %bb.m ]
  store i64 %i.ap, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %i.f, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.n
  store i64 %i.ap, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx5, align 8
  store i64 0, ptr %i.f, align 8
  br label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCskeugdADtBsi_12pingora_core.exit

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCskeugdADtBsi_12pingora_core.exit: ; preds = %.backedge.i, %._crit_edge, %bb.r, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECskeugdADtBsi_12pingora_core.exit, %bb.b
  br label %bb.z

bb.q:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_RNvMs12_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_6Danger7set_red(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.az = load i64, ptr %i.k, align 8, !noundef !7 ; 2 uses
  %.idx = shl i64 %i.az, 2                        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bc = add i64 %.idx, -4                       ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.be, 9223372036854775800     ; 3 uses
  %1 = shl i64 %n.vec, 2
  %2 = getelementptr i8, ptr %i.ay, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bf
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf
  %next.gep32 = getelementptr i8, ptr %i.bg, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep32, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !1163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.01.018.ph = phi ptr [ %i.ay, %.lr.ph.preheader ], [ %2, %middle.block ]
  br label %.lr.ph

bb.r:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.bi = shl nuw nsw i64 %i.l, 1
  %i.bj = tail call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap8try_growCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.bi) #25
  br i1 %i.bj, label %bb.z, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCskeugdADtBsi_12pingora_core.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %.sroa.01.018 = phi ptr [ %i.bk, %.lr.ph ], [ %.sroa.01.018.ph, %.lr.ph.preheader37 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.018, i64 4 ; 2 uses
  store i16 -1, ptr %.sroa.01.018, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.018, i64 2
  store i16 0, ptr %i.bl, align 2
  %i.bm = icmp eq ptr %i.bk, %i.ba
  br i1 %i.bm, label %._crit_edge, label %.lr.ph, !llvm.loop !1164

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !1168, !nonnull !7, !noundef !7 ; 2 uses
  %i.bp = load i64, ptr %i.f, align 8, !alias.scope !1168, !noundef !7 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.bp, 104
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i
  %i.br = icmp eq i64 %i.bp, 0
  br i1 %i.br, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCskeugdADtBsi_12pingora_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = load i16, ptr %i.bs, align 8, !alias.scope !1168 ; 3 uses
  %i.bu = load ptr, ptr %i.ax, align 8, !alias.scope !1168, !nonnull !7 ; 3 uses
  %i.bv = load i64, ptr %i.k, align 8, !alias.scope !1168 ; 4 uses
  %i.bw = zext i16 %i.bt to i64
  %.not43 = icmp eq i64 %i.bv, 0
  %.not44 = icmp eq i64 %i.bv, 0
  br label %bb.s

bb.s:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.036.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %i.bx, %.backedge.i ] ; 3 uses
  %.sroa.7.035.i = phi i64 [ 0, %.lr.ph.i ], [ %i.by, %.backedge.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 104 ; 2 uses
  %i.by = add nuw nsw i64 %.sroa.7.035.i, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 64
  %i.ca = tail call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull align 8 %i.bz) #25 ; 4 uses
  %i.cb = and i16 %i.ca, %i.bt
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 96
  store i16 %i.ca, ptr %i.cd, align 8, !noalias !1168
  br label %.outer33

.outer33:                                         ; preds = %bb.v, %bb.s
  %.sroa.014.0.i.ph = phi i64 [ %i.ct, %bb.v ], [ 0, %bb.s ] ; 2 uses
  %.sroa.04.0.i.ph = phi i64 [ %i.cu, %bb.v ], [ %i.cc, %bb.s ] ; 2 uses
  %i.ce = icmp ult i64 %.sroa.04.0.i.ph, %i.bv    ; 2 uses
  %.not43.not = xor i1 %.not43, true
  %brmerge = or i1 %i.ce, %.not43.not
  %.sroa.04.0.i.ph.mux = select i1 %i.ce, i64 %.sroa.04.0.i.ph, i64 0 ; 5 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer33
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.sroa.04.0.i.ph.mux ; 3 uses
  %i.cg = load i16, ptr %i.cf, align 2, !noalias !1168, !noundef !7
  %.not23.i = icmp eq i16 %i.cg, -1
  br i1 %.not23.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !1168, !noundef !7
  %i.cj = and i16 %i.ci, %i.bt
  %i.ck = zext i16 %i.cj to i64
  %i.cl = sub i64 %.sroa.04.0.i.ph.mux, %i.ck
  %i.cm = and i64 %i.cl, %i.bw
  %i.cn = icmp samesign ult i64 %i.cm, %.sroa.014.0.i.ph
  br i1 %i.cn, label %bb.w, label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.co = trunc i64 %.sroa.7.035.i to i16
  store i16 %i.co, ptr %i.cf, align 2, !noalias !1168
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.y, %bb.u
  %i.cp = phi i64 [ %.sroa.04.0.i.ph.mux, %bb.u ], [ %.sroa.04.2.i.ph.mux, %bb.y ]
  %.sink.i = phi i16 [ %i.ca, %bb.u ], [ %.sroa.619.0.i.ph, %bb.y ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i16 %.sink.i, ptr %i.cr, align 2, !noalias !1168
  %i.cs = icmp eq ptr %i.bx, %i.bq
  br i1 %i.cs, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCskeugdADtBsi_12pingora_core.exit, label %bb.s

bb.v:                                             ; preds = %bb.t
  %i.ct = add nuw nsw i64 %.sroa.014.0.i.ph, 1
  %i.cu = add nuw i64 %.sroa.04.0.i.ph.mux, 1
  br label %.outer33

bb.w:                                             ; preds = %bb.t
  %i.cv = trunc i64 %.sroa.7.035.i to i16
  br label %.outer

.outer:                                           ; preds = %bb.x, %bb.w
  %.sroa.04.2.i.ph = phi i64 [ %i.dc, %bb.x ], [ %.sroa.04.0.i.ph.mux, %bb.w ] ; 2 uses
  %.sroa.017.0.i.ph = phi i16 [ %i.cy, %bb.x ], [ %i.cv, %bb.w ] ; 2 uses
  %.sroa.619.0.i.ph = phi i16 [ %i.db, %bb.x ], [ %i.ca, %bb.w ] ; 2 uses
  %i.cw = icmp ult i64 %.sroa.04.2.i.ph, %i.bv    ; 2 uses
  %.not44.not = xor i1 %.not44, true
  %brmerge49 = or i1 %i.cw, %.not44.not
  %.sroa.04.2.i.ph.mux = select i1 %i.cw, i64 %.sroa.04.2.i.ph, i64 0 ; 3 uses
  br i1 %brmerge49, label %.loopexit42, label %infloop48

.loopexit42:                                      ; preds = %.outer
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.sroa.04.2.i.ph.mux ; 4 uses
  %i.cy = load i16, ptr %i.cx, align 2, !noalias !1168, !noundef !7 ; 2 uses
  %i.cz = icmp eq i16 %i.cy, -1
  br i1 %i.cz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit42
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 2 ; 2 uses
  %i.db = load i16, ptr %i.da, align 2, !noalias !1168, !noundef !7
  store i16 %.sroa.017.0.i.ph, ptr %i.cx, align 2, !noalias !1168
  store i16 %.sroa.619.0.i.ph, ptr %i.da, align 2, !noalias !1168
  %i.dc = add nuw i64 %.sroa.04.2.i.ph.mux, 1
  br label %.outer

bb.y:                                             ; preds = %.loopexit42
  store i16 %.sroa.017.0.i.ph, ptr %i.cx, align 2, !noalias !1168
  br label %.backedge.i

bb.z:                                             ; preds = %bb.r, %bb.j, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCskeugdADtBsi_12pingora_core.exit
  %.sroa.0.0 = phi i1 [ true, %bb.j ], [ false, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCskeugdADtBsi_12pingora_core.exit ], [ true, %bb.r ]
  ret i1 %.sroa.0.0

infloop:                                          ; preds = %.outer33, %infloop
  br label %infloop

infloop48:                                        ; preds = %.outer, %infloop48
  br label %infloop48
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1201, !noalias !1202, !nonnull !7, !noundef !7 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted = load i64, ptr %i.g, align 8, !alias.scope !1201, !noalias !1202 ; 3 uses
  %i.h = icmp ult i64 %1, %.promoted
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.an
  %.sroa.0.078 = phi i64 [ %.sroa.10.0.i, %bb.an ], [ %1, %bb.a ] ; 7 uses
  %i.i = phi i64 [ %i.w, %bb.an ], [ %.promoted, %bb.a ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.sroa.0.078 ; 10 uses
  %i.k = load i64, ptr %i.j, align 8, !range !9, !noalias !1203, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !1203, !noundef !7 ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !range !9, !noalias !1203, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !1203, !noundef !7 ; 12 uses
  %i.r = trunc nuw i64 %i.k to i1
  %i.s = trunc nuw i64 %i.o to i1                 ; 2 uses
  br i1 %i.r, label %bb.b, label %bb.c

._crit_edge:                                      ; preds = %bb.an, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.10.0.i, %bb.an ]
  %.lcssa = phi i64 [ %.promoted, %bb.a ], [ %i.w, %bb.an ]
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.lcssa, i64 noundef %.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #26, !noalias !1203
  unreachable

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.s, label %bb.n, label %bb.o

bb.c:                                             ; preds = %.lr.ph
  %i.t = icmp ult i64 %i.m, %i.d                  ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.t, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.c
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %i.m
  store i64 0, ptr %i.u, align 8, !noalias !1203
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBJ_5value11HeaderValueEE11swap_removeCskeugdADtBsi_12pingora_core.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #26, !noalias !1203
  unreachable

end_hunk_3
begin_hunk_4_@_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext8set_dscp:bb.a
  %i.s = tail call noundef ptr @__errno_location() #30
  %i.t = load i32, ptr %i.s, align 4, !noalias !1467, !noundef !7
  %i.u = load atomic ptr, ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !1467
  %.not.i.i.i = icmp eq ptr %i.u, @178
  br i1 %.not.i.i.i, label %bb.i, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  call void @_RNvNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178), !noalias !1467
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.p, ptr %i.c, align 4
  %i.v = call noundef i32 @setsockopt(i32 noundef %0, i32 noundef 41, i32 noundef 67, ptr noundef nonnull %i.c, i32 noundef 4) #30
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RINvNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext7set_optlEB8_.exit18.thread

_RINvNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext7set_optlEB8_.exit18.thread: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.x = tail call noundef ptr @__errno_location() #30
  %i.y = load i32, ptr %i.x, align 4, !noalias !1468, !noundef !7
  %i.z = load atomic ptr, ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !1468
  %.not.i.i.i17 = icmp eq ptr %i.z, @178
  br i1 %.not.i.i.i17, label %bb.j, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  call void @_RNvNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178), !noalias !1468
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.d
  %i.aa = sext i32 %i.t to i64
  %i.ab = shl nsw i64 %i.aa, 32
  %i.ac = or disjoint i64 %i.ab, 2
  %i.ad = inttoptr i64 %i.ac to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1469
  store i64 0, ptr %i.b, align 8, !noalias !1469
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @185, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1469
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 27, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1469
  %i.ae = call { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCskeugdADtBsi_12pingora_core(ptr noundef nonnull %i.ad), !noalias !1470 ; 2 uses
  %i.af = extractvalue { ptr, ptr } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.ae, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %i.af, ptr %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1469
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ai = sext i32 %i.y to i64
  %i.aj = shl nsw i64 %i.ai, 32
  %i.ak = or disjoint i64 %i.aj, 2
  %i.al = inttoptr i64 %i.ak to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1471
  store i64 0, ptr %i.a, align 8, !noalias !1471
  %.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @186, ptr %.sroa.4.0..sroa_idx.i19, align 8, !noalias !1471
  %.sroa.5.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 32, ptr %.sroa.5.0..sroa_idx.i20, align 8, !noalias !1471
  %i.am = call { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtBW_2io5error5ErrorE4fromCskeugdADtBsi_12pingora_core(ptr noundef nonnull %i.al), !noalias !1472 ; 2 uses
  %i.an = extractvalue { ptr, ptr } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.am, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef %i.an, ptr %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1471
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_RINvNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext7set_optlEB8_.exit.thread, %_RINvNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext7set_optlEB8_.exit18.thread, %bb.a
  %.sroa.0.3 = phi ptr [ %i.m, %bb.a ], [ null, %_RINvNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext7set_optlEB8_.exit.thread ], [ %i.ah, %bb.i ], [ %i.ap, %bb.j ], [ null, %_RINvNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext7set_optlEB8_.exit18.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %.sroa.0.3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix14is_interrupted(i32 noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %0, 4
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 44) i8 @_RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix17decode_error_kind(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 122
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCsG258MDvU3F_3std3sys2io5error4unix17decode_error_kind, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 43, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46streamNtB2_9RawStreamNtNtNtCs2awuzAz5vY4_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable2 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, ptr } @_RNvXs0_NtNtNtCs2awuzAz5vY4_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call { i64, ptr } @_RNvXs0_NtNtNtCs2awuzAz5vY4_5tokio3net4unix6streamNtB5_10UnixStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !align !23, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !7, !nonnull !7
  %i.j = tail call { i64, ptr } %i.i(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.pn = phi { i64, ptr } [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.j, %bb.d ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCskeugdADtBsi_12pingora_core9protocols11raw_connectNtB5_17ConnectProxyErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1486
  call void @_RINvMsq_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_7HdrName10from_bytesNCINvXs4_NtNtB8_3map14as_header_nameReNtB1d_6Sealed4findNtNtB8_5value11HeaderValueE0INtNtCskKLDkoKarTP_4core6option6OptionTjjEEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.e), !noalias !1487
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !1486, !noundef !7 ; 2 uses
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %_RINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.thread.i.i, label %_RINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i

_RINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.thread.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1486
  br label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getReECskeugdADtBsi_12pingora_core.exit.thread

_RINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.a
  %.sroa.51.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.51.0.copyload.i.i = load i64, ptr %.sroa.51.0..sroa_idx.i.i, align 8, !noalias !1488 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1486
  %i.h = trunc nuw i64 %i.f to i1
  br i1 %i.h, label %bb.b, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getReECskeugdADtBsi_12pingora_core.exit.thread

bb.b:                                             ; preds = %_RINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1489, !noalias !1490, !noundef !7 ; 2 uses
  %i.k = icmp ult i64 %.sroa.51.0.copyload.i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.51.0.copyload.i.i, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1489, !noalias !1490, !nonnull !7, !noundef !7
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %i.m, i64 %.sroa.51.0.copyload.i.i ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %.val = load ptr, ptr %i.o, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.p = getelementptr i8, ptr %i.n, i64 40
  %.val26 = load i64, ptr %i.p, align 8, !noundef !7 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %.val26
  %i.r = icmp samesign eq i64 %.val26, 0
  br i1 %i.r, label %bb.g, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ult i64 %.val26, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp ult i64 %.val26, 32
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %2 = and i64 %.val26, 24
  %n.vec = and i64 %.val26, -32                   ; 4 uses
  %3 = getelementptr i8, ptr %.val, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi34 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %predphi36, %vector.body ]
  %next.gep = getelementptr i8, ptr %.val, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1 ; 2 uses
  %wide.load35 = load <16 x i8>, ptr %i.s, align 1 ; 2 uses
  %i.t = add <16 x i8> %wide.load, splat (i8 -127)
  %i.u = icmp ult <16 x i8> %i.t, splat (i8 -95)
  %i.v = add <16 x i8> %wide.load35, splat (i8 -127)
  %i.w = icmp ult <16 x i8> %i.v, splat (i8 -95)
  %i.x = icmp ne <16 x i8> %wide.load, splat (i8 9)
  %i.y = icmp ne <16 x i8> %wide.load35, splat (i8 9)
  %i.z = and <16 x i1> %i.u, %i.x
  %predphi = or <16 x i1> %vec.phi, %i.z          ; 2 uses
  %i.aa = and <16 x i1> %i.w, %i.y
  %predphi36 = or <16 x i1> %vec.phi34, %i.aa     ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1481

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %predphi36, %predphi
  %i.ac = bitcast <16 x i1> %bin.rdx to i16
  %i.ad = icmp ne i16 %i.ac, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %.val26, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %2, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1491

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.ad, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.val26, -8                  ; 3 uses
  %4 = getelementptr i8, ptr %.val, i64 %n.vec37
  %i.ae = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi39 = phi <8 x i1> [ %i.ae, %vec.epilog.ph ], [ %predphi42, %vec.epilog.vector.body ]
  %next.gep40 = getelementptr i8, ptr %.val, i64 %index38
  %wide.load41 = load <8 x i8>, ptr %next.gep40, align 1 ; 2 uses
  %i.af = add <8 x i8> %wide.load41, splat (i8 -127)
  %i.ag = icmp ult <8 x i8> %i.af, splat (i8 -95)
  %i.ah = icmp ne <8 x i8> %wide.load41, splat (i8 9)
  %i.ai = and <8 x i1> %i.ag, %i.ah
  %predphi42 = or <8 x i1> %vec.phi39, %i.ai      ; 2 uses
  %index.next43 = add nuw i64 %index38, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next43, %n.vec37
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1482

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ak = bitcast <8 x i1> %predphi42 to i8
  %i.al = icmp ne i8 %i.ak, 0                     ; 2 uses
  %cmp.n44 = icmp eq i64 %.val26, %n.vec37
  br i1 %cmp.n44, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.02.i.ph = phi i1 [ false, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  %.sroa.03.01.i.ph = phi ptr [ %.val, %iter.check ], [ %3, %vec.epilog.iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.sroa.01.02.i = phi i1 [ %.sroa.06.0.i, %bb.f ], [ %.sroa.01.02.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.03.01.i = phi ptr [ %i.am, %bb.f ], [ %.sroa.03.01.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i, i64 1 ; 2 uses
  %i.an = load i8, ptr %.sroa.03.01.i, align 1, !noundef !7 ; 2 uses
  %i.ao = add i8 %i.an, -32
  %or.cond.i = icmp ult i8 %i.ao, 95
  br i1 %or.cond.i, label %bb.f, label %bb.e

._crit_edge.loopexit.i:                           ; preds = %bb.f, %vec.epilog.middle.block, %middle.block
  %.sroa.06.0.i.lcssa = phi i1 [ %i.al, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %.sroa.06.0.i, %bb.f ]
  br i1 %.sroa.06.0.i.lcssa, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getReECskeugdADtBsi_12pingora_core.exit.thread, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.ap = icmp ne i8 %i.an, 9
  %i.aq = or i1 %.sroa.01.02.i, %i.ap
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.06.0.i = phi i1 [ %i.aq, %bb.e ], [ %.sroa.01.02.i, %.lr.ph.i ] ; 2 uses
  %i.ar = icmp eq ptr %i.am, %i.q
  br i1 %i.ar, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1483

bb.g:                                             ; preds = %bb.d, %._crit_edge.loopexit.i
  br label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getReECskeugdADtBsi_12pingora_core.exit.thread

_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getReECskeugdADtBsi_12pingora_core.exit.thread: ; preds = %_RINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i, %_RINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.thread.i.i, %._crit_edge.loopexit.i, %bb.g
  %.val.sink = phi ptr [ %.val, %bb.g ], [ @188, %._crit_edge.loopexit.i ], [ @188, %_RINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.thread.i.i ], [ @188, %_RINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i ]
  %.val26.sink = phi i64 [ %.val26, %bb.g ], [ 33, %._crit_edge.loopexit.i ], [ 33, %_RINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.thread.i.i ], [ 33, %_RINvXs4_NtNtNtCs84JG9zk80ZV_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i.i ]
  store ptr %.val.sink, ptr %i.d, align 8, !captures !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.val26.sink, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store ptr %i.at, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCs84JG9zk80ZV_4http6status10StatusCodeNtB6_7Display3fmtCskeugdADtBsi_12pingora_core, ptr %.sroa.410.0..sroa_idx, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.au, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCskeugdADtBsi_12pingora_core, ptr %.sroa.414.0..sroa_idx, align 8
  %i.av = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !7, !align !23, !noundef !7
  %i.ay = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax, ptr noundef nonnull @189, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.ay
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvXs0_NtNtNtCskeugdADtBsi_12pingora_core9protocols2l46streamNtB5_9RawStreamNtNtNtNtCsG258MDvU3F_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !7
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef i32 @_RNvXNtNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6stream3sysNtB4_9TcpStreamNtNtNtNtCsG258MDvU3F_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call noundef i32 @_RNvXs5_NtNtNtCs2awuzAz5vY4_5tokio3net4unix6streamNtB5_10UnixStreamNtNtNtNtCsG258MDvU3F_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ -1, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11compression4gzipNtB5_10CompressorNtB7_6Encode6encode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(160) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.f = extractvalue { i64, i32 } %i.e, 0
  %i.g = extractvalue { i64, i32 } %i.e, 1
  store i64 %i.f, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !7
  %i.k = add i64 %i.j, %3
  store i64 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.m = load i64, ptr %i.l, align 8, !range !27, !noundef !7
  %.not = icmp eq i64 %i.m, -1
  br i1 %.not, label %bb.g, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 16384)
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %..i)
  %i.n = tail call noundef ptr @_RNvYINtNtNtCs87coOwG4J0B_6flate22gz5write9GzEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  %.not.i8 = icmp eq ptr %i.n, null
  br i1 %.not.i8, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCskeugdADtBsi_12pingora_core.exit9, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1496
  store ptr %i.n, ptr %i.a, align 8, !noalias !1496
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #28
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #27
          to label %common.resume unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.s, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCskeugdADtBsi_12pingora_core.exit9: ; preds = %bb.b
  br i1 %4, label %bb.h, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCskeugdADtBsi_12pingora_core.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #26
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.h, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCskeugdADtBsi_12pingora_core.exit9
  %i.q = load i64, ptr %i.l, align 8, !range !27, !noundef !7
  %.not5 = icmp eq i64 %i.q, -1
  br i1 %.not5, label %bb.q, label %bb.m, !prof !13

bb.h:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCskeugdADtBsi_12pingora_core.exit9
  %i.r = tail call noundef ptr @_RNvMNtNtCs87coOwG4J0B_6flate22gz5writeINtB2_9GzEncoderINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10try_finishCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %1) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCskeugdADtBsi_12pingora_core.exit, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1497
  store ptr %i.r, ptr %i.b, align 8, !noalias !1497
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @123, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200) #28
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #27
          to label %common.resume unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.m:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCskeugdADtBsi_12pingora_core.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !7 ; 2 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noundef !7
  %i.z = add i64 %i.y, %i.v
  store i64 %i.z, ptr %i.x, align 8
  %i.aa = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) ; 2 uses
  %i.ab = extractvalue { i64, i32 } %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !7 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.af = add i64 %i.ab, %i.ad                    ; 4 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
end_hunk_4
begin_hunk_5_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext12TcpKeepaliveNtB6_5Debug3fmtBE_:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.e, ptr %i.a, align 8, !noalias !1517
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @225, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @226, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @223, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @227, i64 noundef 8, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @223, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @228, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @221, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @229, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @224)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1517
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l43ext12TcpKeepaliveNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !23, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1522
  store ptr %i.c, ptr %i.a, align 8, !noalias !1522
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsa_NtCskKLDkoKarTP_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1522
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.f, align 8, !noalias !1522
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsa_NtCskKLDkoKarTP_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1522
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.g, align 8, !noalias !1522
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !1522
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.e, ptr %i.h, align 8, !noalias !1522
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXsa_NtCskKLDkoKarTP_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !1522
  %i.i = load ptr, ptr %1, align 8, !alias.scope !1521, !noalias !1523, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1521, !noalias !1523, !nonnull !7, !align !23, !noundef !7
  %i.l = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @239, ptr noundef nonnull %i.a), !noalias !1521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1522
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB5_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB5_12fast_timeout11FastTimeoutENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB2d_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call { i64, ptr } @_RNvXNtNtNtCs2awuzAz5vY4_5tokio2io4util4readINtB2_4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB1u_(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0        ; 2 uses
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !1531, !noalias !1532, !noundef !7 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputuNtNtB5_6marker4SendNtB2d_4SyncEL_EEE18get_or_insert_withNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB3d_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadIBZ_DNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB3d_12fast_timeout11FastTimeoutEB1y_4poll0EB4R_.exit_crit_edge

._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputuNtNtB5_6marker4SendNtB2d_4SyncEL_EEE18get_or_insert_withNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB3d_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadIBZ_DNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB3d_12fast_timeout11FastTimeoutEB1y_4poll0EB4R_.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputuNtNtB5_6marker4SendNtB2d_4SyncEL_EEE18get_or_insert_withNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB3d_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadIBZ_DNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB3d_12fast_timeout11FastTimeoutEB1y_4poll0EB4R_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = tail call { ptr, ptr } @_RNvXNtCsih3NV0yzdTo_15pingora_timeout12fast_timeoutNtB2_11FastTimeoutNtB4_9ToTimeout7timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g), !noalias !1531 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1533
  store ptr %i.i, ptr %i.a, align 8, !noalias !1534
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.k, align 8, !noalias !1534
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1531
  %i.l = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 8, 409) 16, i64 noundef 8) #30, !noalias !1531 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %_RNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB7_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB7_12fast_timeout11FastTimeoutENtNtNtCskKLDkoKarTP_4core6future6future6Future4poll0B2f_.exit.i, !prof !13

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #28
          to label %.noexc.i.i unwind label %bb.e, !noalias !1531

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_EEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #27
          to label %bb.g unwind label %bb.f, !noalias !1531

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !1531
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.n

_RNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB7_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB7_12fast_timeout11FastTimeoutENtNtNtCskKLDkoKarTP_4core6future6future6Future4poll0B2f_.exit.i: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.l, align 8, !noalias !1531
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.j, ptr %i.q, align 8, !noalias !1531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1533
  store ptr %i.l, ptr %0, align 8, !alias.scope !1531, !noalias !1532
  store ptr @114, ptr %i.p, align 8, !alias.scope !1531, !noalias !1532
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputuNtNtB5_6marker4SendNtB2d_4SyncEL_EEE18get_or_insert_withNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB3d_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadIBZ_DNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB3d_12fast_timeout11FastTimeoutEB1y_4poll0EB4R_.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputuNtNtB5_6marker4SendNtB2d_4SyncEL_EEE18get_or_insert_withNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB3d_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadIBZ_DNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB3d_12fast_timeout11FastTimeoutEB1y_4poll0EB4R_.exit: ; preds = %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputuNtNtB5_6marker4SendNtB2d_4SyncEL_EEE18get_or_insert_withNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB3d_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadIBZ_DNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB3d_12fast_timeout11FastTimeoutEB1y_4poll0EB4R_.exit_crit_edge, %_RNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB7_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB7_12fast_timeout11FastTimeoutENtNtNtCskKLDkoKarTP_4core6future6future6Future4poll0B2f_.exit.i
  %i.r = phi ptr [ %.pre, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputuNtNtB5_6marker4SendNtB2d_4SyncEL_EEE18get_or_insert_withNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB3d_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadIBZ_DNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB3d_12fast_timeout11FastTimeoutEB1y_4poll0EB4R_.exit_crit_edge ], [ @114, %_RNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB7_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB7_12fast_timeout11FastTimeoutENtNtNtCskKLDkoKarTP_4core6future6future6Future4poll0B2f_.exit.i ]
  %i.s = phi ptr [ %i.f, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputuNtNtB5_6marker4SendNtB2d_4SyncEL_EEE18get_or_insert_withNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB3d_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadIBZ_DNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB3d_12fast_timeout11FastTimeoutEB1y_4poll0EB4R_.exit_crit_edge ], [ %i.l, %_RNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB7_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB7_12fast_timeout11FastTimeoutENtNtNtCskKLDkoKarTP_4core6future6future6Future4poll0B2f_.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !7, !nonnull !7
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #25
  %. = select i1 %i.v, i64 -1, i64 2
  %i.w = insertvalue { i64, ptr } poison, i64 %., 0
  %i.x = insertvalue { i64, ptr } %i.w, ptr undef, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.y = icmp ult i64 %i.d, 2
  tail call void @llvm.assume(i1 %i.y)
  br label %bb.i

bb.i:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputuNtNtB5_6marker4SendNtB2d_4SyncEL_EEE18get_or_insert_withNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB3d_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadIBZ_DNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB3d_12fast_timeout11FastTimeoutEB1y_4poll0EB4R_.exit, %bb.h
  %.merged = phi { i64, ptr } [ %i.x, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtB5_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputuNtNtB5_6marker4SendNtB2d_4SyncEL_EEE18get_or_insert_withNCNvXs2_Csih3NV0yzdTo_15pingora_timeoutINtB3d_7TimeoutINtNtNtNtCs2awuzAz5vY4_5tokio2io4util4read4ReadIBZ_DNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EENtNtB3d_12fast_timeout11FastTimeoutEB1y_4poll0EB4R_.exit ], [ %i.c, %bb.h ]
  ret { i64, ptr } %.merged
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1546, !noalias !1547, !noundef !7
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !1546, !noalias !1547
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1546, !noalias !1547, !noundef !7 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 range(i64 0, -9223372036854775808) %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %..i.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !1548, !noalias !1546
  %i.i = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !1548, !noalias !1546
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !1548, !noalias !1546, !noundef !7
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1546, !noalias !1547, !noundef !7
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !1546, !noalias !1547
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0.i            ; 2 uses
  %3 = and i64 %i.af, 7                           ; 4 uses
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %i.ah = icmp ult i64 %.sroa.0.0.i, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.h
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !1546, !noalias !1547
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19.i = load i64, ptr %i.ai, align 8, !alias.scope !1546, !noalias !1547
  %.promoted20.i = load i64, ptr %i.aj, align 8, !alias.scope !1549, !noalias !1547
  %.promoted22.i = load i64, ptr %i.ak, align 8, !alias.scope !1549, !noalias !1547
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !1546, !noalias !1547, !noundef !7
  %i.an = xor i64 %i.am, %i.ad                    ; 3 uses
  %i.ao = load i64, ptr %0, align 8, !alias.scope !1550, !noalias !1547, !noundef !7
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1550, !noalias !1547, !noundef !7 ; 3 uses
  %i.ar = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1550, !noalias !1547, !noundef !7
  %i.au = add i64 %i.at, %i.an                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 13)
  %i.aw = xor i64 %i.av, %i.ar                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 16)
  %i.ay = xor i64 %i.au, %i.ax                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ba = add i64 %i.au, %i.aw                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 17)
  %i.bd = xor i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.ap, align 8, !alias.scope !1550, !noalias !1547
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 21)
  %i.bf = xor i64 %i.be, %i.bb
  store i64 %i.bf, ptr %i.al, align 8, !alias.scope !1550, !noalias !1547
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  store i64 %i.bg, ptr %i.as, align 8, !alias.scope !1550, !noalias !1547
  %i.bh = xor i64 %i.bb, %i.ad
  store i64 %i.bh, ptr %0, align 8, !alias.scope !1546, !noalias !1547
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.bi = add i64 %i.e, %2
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskeugdADtBsi_12pingora_core.exit

._crit_edge.i:                                    ; preds = %bb.q
  store i64 %i.cx, ptr %i.ai, align 8, !alias.scope !1546, !noalias !1547
  store i64 %i.cv, ptr %i.aj, align 8, !alias.scope !1549, !noalias !1547
  store i64 %i.cy, ptr %i.ak, align 8, !alias.scope !1549, !noalias !1547
  store i64 %i.cz, ptr %0, align 8, !alias.scope !1546, !noalias !1547
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %i.da, %._crit_edge.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.bj = icmp samesign ugt i64 %3, 3
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.bk, align 1, !alias.scope !1551, !noalias !1546
  %i.bl = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.bl, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bm = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.bn = icmp samesign ult i64 %i.bm, %3
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.bp, align 1, !alias.scope !1551, !noalias !1546
  %i.bq = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.br = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.bs = shl nuw nsw i64 %i.bq, %i.br
  %i.bt = or i64 %i.bs, %.sroa.0.0.i11.i
  %i.bu = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i = phi i64 [ %i.bu, %bb.n ], [ %.sroa.03.0.i10.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.bt, %bb.n ], [ %.sroa.0.0.i11.i, %bb.m ] ; 2 uses
  %i.bv = icmp samesign ult i64 %.sroa.03.1.i12.i, %3
  br i1 %i.bv, label %bb.p, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

bb.p:                                             ; preds = %bb.o
  %i.bw = add i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %2
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !1551, !noalias !1546, !noundef !7
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.cc = shl nuw nsw i64 %i.ca, %i.cb
  %i.cd = or i64 %i.cc, %.sroa.0.1.i13.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i: ; preds = %bb.p, %bb.o
  %.sroa.0.2.i14.i = phi i64 [ %i.cd, %bb.p ], [ %.sroa.0.1.i13.i, %bb.o ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i, ptr %i.ce, align 8, !alias.scope !1546, !noalias !1547
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskeugdADtBsi_12pingora_core.exit

bb.q:                                             ; preds = %bb.q, %.lr.ph.i
  %i.cf = phi i64 [ %.promoted22.i, %.lr.ph.i ], [ %i.cy, %bb.q ]
  %i.cg = phi i64 [ %.promoted20.i, %.lr.ph.i ], [ %i.cv, %bb.q ] ; 3 uses
  %i.ch = phi i64 [ %.promoted19.i, %.lr.ph.i ], [ %i.cx, %bb.q ]
  %.sroa.0.118.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.ci = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.cz, %bb.q ]
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118.i
  %.sroa.07.0.copyload.i = load i64, ptr %i.cj, align 1, !alias.scope !1547, !noalias !1546 ; 2 uses
  %i.ck = xor i64 %.sroa.07.0.copyload.i, %i.ch   ; 3 uses
  %i.cl = add i64 %i.ci, %i.cg                    ; 3 uses
  %i.cm = add i64 %i.ck, %i.cf                    ; 2 uses
  %i.cn = tail call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 13)
  %i.co = xor i64 %i.cl, %i.cn                    ; 3 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 16)
  %i.cq = xor i64 %i.cm, %i.cp                    ; 3 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 32)
  %i.cs = add i64 %i.cm, %i.co                    ; 3 uses
  %i.ct = add i64 %i.cq, %i.cr                    ; 2 uses
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 17)
  %i.cv = xor i64 %i.cs, %i.cu                    ; 2 uses
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 21)
  %i.cx = xor i64 %i.cw, %i.ct                    ; 2 uses
  %i.cy = tail call noundef i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 32) ; 2 uses
  %i.cz = xor i64 %i.ct, %.sroa.07.0.copyload.i   ; 2 uses
  %i.da = add nuw i64 %.sroa.0.118.i, 8           ; 3 uses
  %i.db = icmp ult i64 %i.da, %i.ag
  br i1 %i.db, label %bb.q, label %._crit_edge.i

_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCskeugdADtBsi_12pingora_core.exit: ; preds = %bb.j, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %i.bi, %bb.j ], [ %3, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !1546, !noalias !1547
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs2_NtNtNtCskeugdADtBsi_12pingora_core9protocols2l46streamNtB5_16RawStreamWrapperNtNtNtCs2awuzAz5vY4_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef align 8 dereferenceable(88) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 10 uses
  %i.g = alloca [216 x i8], align 8               ; 6 uses
  %i.h = alloca [216 x i8], align 8               ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i8, ptr %i.j, align 8, !range !12, !noundef !7
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = load i64, ptr %0, align 8, !range !11, !noundef !7 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i64 %i.m, label %default.unreachable99 [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.a
  switch i64 %i.m, label %default.unreachable99 [
    i64 0, label %.preheader
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

.preheader:                                       ; preds = %bb.c
  %i.o = tail call { i64, ptr } @_RNvMNtNtNtCs2awuzAz5vY4_5tokio3net3tcp6streamNtB2_9TcpStream15poll_read_ready(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.j

default.unreachable99:                            ; preds = %bb.ac, %bb.n, %bb.c, %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.z = tail call { i64, ptr } @_RNvXs0_NtNtNtCs2awuzAz5vY4_5tokio3net3tcp6streamNtB5_9TcpStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.aa = tail call { i64, ptr } @_RNvXs0_NtNtNtCs2awuzAz5vY4_5tokio3net4unix6streamNtB5_10UnixStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.n, align 8, !nonnull !7, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !7, !align !23, !noundef !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !7, !nonnull !7
  %i.ag = tail call { i64, ptr } %i.af(ptr noundef nonnull %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %._crit_edge, %.loopexit42, %bb.i, %bb.h
  %.merged = phi { i64, ptr } [ %i.de, %._crit_edge ], [ %i.cu, %.loopexit42 ], [ %i.ah, %bb.h ], [ %i.an, %bb.i ], [ %i.z, %bb.d ], [ %i.aa, %bb.e ], [ %i.ag, %bb.f ]
  ret { i64, ptr } %.merged

bb.h:                                             ; preds = %bb.c
  %i.ah = tail call { i64, ptr } @_RNvXs0_NtNtNtCs2awuzAz5vY4_5tokio3net4unix6streamNtB5_10UnixStreamNtNtNtBb_2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.g

bb.i:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.n, align 8, !nonnull !7, !noundef !7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !7, !align !23, !noundef !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !7, !nonnull !7
  %i.an = tail call { i64, ptr } %i.am(ptr noundef nonnull %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #25
  br label %bb.g

bb.j:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCsifUeDn7Bu1H_3nix3sys6socket7RecvMsgNtNtB10_4addr15SockaddrStorageENtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit
  %i.ao = phi { i64, ptr } [ %i.o, %.lr.ph ], [ %i.da, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCsifUeDn7Bu1H_3nix3sys6socket7RecvMsgNtNtB10_4addr15SockaddrStorageENtNtNtB4_2io5error5ErrorEECskeugdADtBsi_12pingora_core.exit ]
  %i.ap = extractvalue { i64, ptr } %i.ao, 1      ; 2 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.aq = load i64, ptr %i.r, align 8, !noundef !7 ; 4 uses
  %i.ar = load i64, ptr %i.s, align 8, !noundef !7 ; 4 uses
  %i.as = icmp ugt i64 %i.ar, %i.aq
  br i1 %i.as, label %bb.m, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %2, align 8, !nonnull !7, !noundef !7
  %i.au = sub nuw i64 %i.aq, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.av, ptr %i.i, align 8
  store i64 %i.au, ptr %i.t, align 8
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.n, ptr %i.d, align 8
  store ptr %i.n, ptr %i.w, align 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.u, ptr %.sroa.59.0..sroa_idx, align 8
end_hunk_5
