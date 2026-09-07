Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.01?download=true
inline.NumInlined: 835
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode16DecodeContextMapNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB12_B12_ECskeugdADtBsi_12pingora_core:bb.a
  store i64 %i.cd, ptr %i.v, align 8, !alias.scope !480, !noalias !483
  %i.cg = load i32, ptr %i.b, align 4, !alias.scope !479, !noalias !495, !noundef !7
  %i.ch = load i32, ptr %i.s, align 4, !alias.scope !480, !noalias !483, !noundef !7
  %i.ci = add i32 %i.ch, %i.cg                    ; 2 uses
  %i.cj = invoke fastcc noundef i32 @_RINvNtCsfQhfhXbPrjn_19brotli_decompressor6decode15ReadHuffmanCodeNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocB11_B11_ECskeugdADtBsi_12pingora_core(i32 noundef %i.ci, i32 noundef %i.ci, ptr noalias nofree noundef nonnull align 2 %i.ce, i64 noundef %i.cf, i64 noundef 0, ptr noalias nofree noundef align 4 dereferenceable_or_null(4) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(2592) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
          to label %bb.v unwind label %bb.s, !noalias !496 ; 3 uses

bb.v:                                             ; preds = %.noexc15
  %i.ck = invoke { ptr, i64 } @_RNvXs0_NtCsc389t4z7aPt_12alloc_stdlib10heap_allocINtB5_7WrapBoxNtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman11HuffmanCodeENtNtCskKLDkoKarTP_4core7default7Default7defaultCskeugdADtBsi_12pingora_core()
          to label %bb.w unwind label %bb.s, !noalias !496 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.cl = extractvalue { ptr, i64 } %i.ck, 0      ; 4 uses
  %i.cm = extractvalue { ptr, i64 } %i.ck, 1      ; 4 uses
  %i.cn = load ptr, ptr %i.u, align 8, !alias.scope !480, !noalias !483, !nonnull !7, !align !18, !noundef !7
  %i.co = load i64, ptr %i.v, align 8, !alias.scope !480, !noalias !483, !noundef !7 ; 2 uses
  store ptr %i.ce, ptr %i.u, align 8, !alias.scope !480, !noalias !483
  store i64 %i.cf, ptr %i.v, align 8, !alias.scope !480, !noalias !483
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman11HuffmanCodeEECskeugdADtBsi_12pingora_core.exit54.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = shl nuw nsw i64 %i.co, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cn, i64 noundef range(i64 1, 0) %i.cq, i64 noundef 2) #30, !noalias !496
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman11HuffmanCodeEECskeugdADtBsi_12pingora_core.exit54.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman11HuffmanCodeEECskeugdADtBsi_12pingora_core.exit54.i: ; preds = %bb.x, %bb.w
  %i.cr = icmp eq i32 %i.cj, 1
  br i1 %i.cr, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxNtNtCsfQhfhXbPrjn_19brotli_decompressor7huffman11HuffmanCodeEECskeugdADtBsi_12pingora_core.exit54.i
  store i32 65535, ptr %i.t, align 8, !alias.scope !480, !noalias !483
  store i8 3, ptr %i.q, align 1, !alias.scope !480, !noalias !483
  %i.cs = icmp eq i64 %i.cm, 0
  br i1 %i.cs, label %.backedge87.i.backedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = shl nuw nsw i64 %i.cm, 2
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
  %5 = add i32 %i.em, -1
  %i.fd = add i32 %5, %i.ep
  %i.fe = zext i32 %i.fd to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.fc, i64 %i.fe)
  %i.ff = trunc nuw i64 %umin to i32
  %i.fg = xor i32 %.sroa.04.0168.i, -1
  %i.fh = icmp ult i32 %i.fg, %i.ff
  br i1 %i.fh, label %.preheader.i.preheader374, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.fi = and i32 %i.fa, 31                       ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  %i.fk = select i1 %i.fj, i32 32, i32 %i.fi
  %n.vec = sub i32 %i.fa, %i.fk                   ; 3 uses
  %i.fl = sub i32 %i.eq, %n.vec
  %i.fm = add i32 %.sroa.04.0168.i, %n.vec
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
  %.sroa.073.0.i.ph = phi i32 [ %i.eq, %vector.scevcheck ], [ %i.eq, %.preheader.i.preheader ], [ %i.fl, %vector.body ]
  %.sroa.04.2.i.ph = phi i32 [ %.sroa.04.0168.i, %vector.scevcheck ], [ %.sroa.04.0168.i, %.preheader.i.preheader ], [ %i.fm, %vector.body ]
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
end_hunk_0
