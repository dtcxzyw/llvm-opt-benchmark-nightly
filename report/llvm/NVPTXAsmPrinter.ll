Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NVPTXAsmPrinter?download=true
inline.NumInlined: 3966
inline.NumDeleted: 2167
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferE:bb.a
.lr.ph.i:                                         ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.04.09.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aq, %bb.g ] ; 2 uses
  %i.ae = trunc i64 %.sroa.04.09.i to i32
  %i.af = load i32, ptr %i.q, align 8, !tbaa !374
  %i.ag = shl i32 %i.ae, 3                        ; 2 uses
  %i.ah = sub i32 %i.af, %i.ag
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.ah, i32 8)
  %i.ai = call noundef i64 @_ZNK4llvm5APInt22extractBitsAsZExtValueEjj(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %.sroa.speculated.i, i32 noundef %i.ag) #19
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = load i32, ptr %i.ad, align 8, !tbaa !690
  %i.al = zext i32 %i.ak to i64
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !688
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 %i.aj, ptr %i.an, align 1, !tbaa !47
  %i.ao = load i32, ptr %i.ad, align 8, !tbaa !690
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !690
  %i.aq = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %.not.i = icmp eq i64 %i.aq, %i.ab
  br i1 %.not.i, label %"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit.loopexit", label %bb.g

"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit.loopexit": ; preds = %bb.g
  %.pre198 = load i32, ptr %i.q, align 8, !tbaa !374
  br label %"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit"

"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit": ; preds = %"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit.loopexit", %_ZN4llvm5APIntC2ERKS0_.exit
  %i.ar = phi i32 [ %.pre198, %"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit.loopexit" ], [ %i.v, %_ZN4llvm5APIntC2ERKS0_.exit ]
  %i.as = icmp ugt i32 %i.ar, 64
  br i1 %i.as, label %bb.h, label %_ZN4llvm5APIntD2Ev.exit

bb.h:                                             ; preds = %"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit"
  %i.at = load ptr, ptr %3, align 8, !tbaa !47    ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN4llvm5APIntD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.at) #22
  br label %_ZN4llvm5APIntD2Ev.exit

bb.j:                                             ; preds = %.critedge
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !210
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = and i32 %i.ay, 255
  %i.ba = icmp eq i32 %i.az, 5
  br i1 %i.ba, label %.critedge89, label %.critedge93

.critedge89:                                      ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47, !noalias !1145
  %.not.i97 = icmp eq ptr %i.bc, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i97, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge89
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.bb) #19
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit

bb.l:                                             ; preds = %.critedge89
  call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.bb) #19
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit

_ZNK4llvm7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.k, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !374 ; 3 uses
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = zext i1 %i.bf to i32                    ; 2 uses
  %i.bh = sub i32 %i.be, %i.bg
  %i.bi = lshr i32 %i.bh, 3
  %i.bj = add nuw nsw i32 %i.bi, %i.bg            ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %.not8.i98 = icmp eq i32 %i.bj, 0
  br i1 %.not8.i98, label %"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit103", label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i99
  %.sroa.04.09.i100 = phi i64 [ 0, %.lr.ph.i99 ], [ %i.bz, %bb.m ] ; 2 uses
  %i.bn = trunc i64 %.sroa.04.09.i100 to i32
  %i.bo = load i32, ptr %i.bd, align 8, !tbaa !374
  %i.bp = shl i32 %i.bn, 3                        ; 2 uses
  %i.bq = sub i32 %i.bo, %i.bp
  %.sroa.speculated.i101 = call i32 @llvm.umin.i32(i32 %i.bq, i32 8)
  %i.br = call noundef i64 @_ZNK4llvm5APInt22extractBitsAsZExtValueEjj(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %.sroa.speculated.i101, i32 noundef %i.bp) #19
  %i.bs = trunc i64 %i.br to i8
  %i.bt = load i32, ptr %i.bm, align 8, !tbaa !690
  %i.bu = zext i32 %i.bt to i64
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !688
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store i8 %i.bs, ptr %i.bw, align 1, !tbaa !47
  %i.bx = load i32, ptr %i.bm, align 8, !tbaa !690
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !690
  %i.bz = add nuw nsw i64 %.sroa.04.09.i100, 1    ; 2 uses
  %.not.i102 = icmp eq i64 %i.bz, %i.bk
  br i1 %.not.i102, label %"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit103.loopexit", label %bb.m

"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit103.loopexit": ; preds = %bb.m
  %.pre = load i32, ptr %i.bd, align 8, !tbaa !374
  br label %"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit103"

"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit103": ; preds = %"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit103.loopexit", %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit
  %i.ca = phi i32 [ %.pre, %"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit103.loopexit" ], [ %i.be, %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit ]
  %i.cb = icmp ugt i32 %i.ca, 64
  br i1 %i.cb, label %bb.n, label %_ZN4llvm5APIntD2Ev.exit

bb.n:                                             ; preds = %"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit103"
  %i.cc = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN4llvm5APIntD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.cc) #22
  br label %_ZN4llvm5APIntD2Ev.exit

bb.p:                                             ; preds = %.critedge
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cf = load i32, ptr %i.ce, align 4            ; 3 uses
  %i.cg = and i32 %i.cf, 1073741824
  %.not.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds i8, ptr %1, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !665
  %.pre.i.i = and i32 %i.cf, 268435455
  %.pre1.i.i = zext nneg i32 %.pre.i.i to i64
  br label %_ZNK4llvm4User8operandsEv.exit

bb.r:                                             ; preds = %bb.p
  %i.cj = and i32 %i.cf, 268435455
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds [32 x i8], ptr %1, i64 %i.cl
  br label %_ZNK4llvm4User8operandsEv.exit

_ZNK4llvm4User8operandsEv.exit:                   ; preds = %bb.q, %bb.r
  %i.cn = phi ptr [ %i.ci, %bb.q ], [ %i.cm, %bb.r ] ; 2 uses
  %.pre-phi2.i.i = phi i64 [ %.pre1.i.i, %bb.q ], [ %i.ck, %bb.r ] ; 2 uses
  %.idx = shl nuw nsw i64 %.pre-phi2.i.i, 5
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx
  %.not85187 = icmp eq i64 %.pre-phi2.i.i, 0
  br i1 %.not85187, label %_ZN4llvm5APIntD2Ev.exit, label %.lr.ph189

.lr.ph189:                                        ; preds = %_ZNK4llvm4User8operandsEv.exit, %.lr.ph189
  %.073188 = phi ptr [ %i.cq, %.lr.ph189 ], [ %i.cn, %_ZNK4llvm4User8operandsEv.exit ] ; 2 uses
  %i.cp = load ptr, ptr %.073188, align 8, !tbaa !364
  tail call void @_ZN4llvm15NVPTXAsmPrinter12bufferLEByteEPKNS_8ConstantEiPNS0_9AggBufferE(ptr noundef nonnull align 8 dereferenceable(1177) %0, ptr noundef %i.cp, i32 noundef 0, ptr noundef %2)
  %i.cq = getelementptr inbounds nuw i8, ptr %.073188, i64 32 ; 2 uses
  %.not85 = icmp eq ptr %i.cq, %i.co
  br i1 %.not85, label %_ZN4llvm5APIntD2Ev.exit, label %.lr.ph189

bb.s:                                             ; preds = %.critedge
  tail call void @_ZN4llvm15NVPTXAsmPrinter23bufferAggregateConstVecEPKNS_14ConstantVectorEPNS0_9AggBufferE(ptr noundef nonnull align 8 dereferenceable(1177) %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %_ZN4llvm5APIntD2Ev.exit

.critedge91:                                      ; preds = %.critedge
  %i.cr = add i8 %i.b, -5
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i8 %i.cr, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %.critedge93, label %bb.t

bb.t:                                             ; preds = %.critedge91
  %i.cs = tail call noundef i64 @_ZNK4llvm22ConstantDataSequential14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #19 ; 2 uses
  %.not180190 = icmp eq i64 %i.cs, 0
  br i1 %.not180190, label %_ZN4llvm5APIntD2Ev.exit, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.t, %.lr.ph192
  %.sroa.0143.0191 = phi i64 [ %i.cv, %.lr.ph192 ], [ 0, %bb.t ] ; 2 uses
  %i.ct = and i64 %.sroa.0143.0191, 4294967295
  %i.cu = tail call noundef ptr @_ZNK4llvm22ConstantDataSequential20getElementAsConstantEm(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.ct) #19
  tail call void @_ZN4llvm15NVPTXAsmPrinter12bufferLEByteEPKNS_8ConstantEiPNS0_9AggBufferE(ptr noundef nonnull align 8 dereferenceable(1177) %0, ptr noundef %i.cu, i32 noundef 0, ptr noundef %2)
  %i.cv = add nuw i64 %.sroa.0143.0191, 1         ; 2 uses
  %.not180 = icmp eq i64 %i.cv, %i.cs
  br i1 %.not180, label %_ZN4llvm5APIntD2Ev.exit, label %.lr.ph192

.critedge93:                                      ; preds = %bb.j, %.critedge91
  %i.cw = icmp eq i8 %i.b, 12
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = and i32 %i.cy, 268435455                ; 2 uses
  %.not84 = icmp eq i32 %i.cz, 0
  br i1 %.not84, label %_ZN4llvm5APIntD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %.critedge93
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !210 ; 3 uses
  %i.dc = zext nneg i32 %i.cz to i64
  %i.dd = getelementptr inbounds i8, ptr %1, i64 -8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNK4llvm4User10getOperandEj.exit
  %.sroa.0137.0193 = phi i64 [ 0, %bb.u ], [ %i.eh, %_ZNK4llvm4User10getOperandEj.exit ] ; 4 uses
  %i.de = trunc i64 %.sroa.0137.0193 to i32
  %i.df = add i32 %i.de, 1                        ; 2 uses
  %i.dg = load i32, ptr %i.cx, align 4
  %i.dh = and i32 %i.dg, 268435455
  %i.di = icmp eq i32 %i.df, %i.dh
  %i.dj = tail call noundef ptr @_ZNK4llvm10DataLayout15getStructLayoutEPNS_10StructTypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.a, ptr noundef %i.db) #19 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 2 uses
  br i1 %i.di, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.copyload.i113 = load i64, ptr %i.dk, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.dl = tail call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.a, ptr noundef %i.db) #19 ; 2 uses
  %.fca.0.extract13 = extractvalue { i64, i8 } %i.dl, 0 ; 2 uses
  %.fca.1.extract14 = extractvalue { i64, i8 } %i.dl, 1
  %i.dm = add i64 %.fca.0.extract13, %.sroa.0.0.copyload.i113
  %i.dn = icmp eq i64 %.fca.0.extract13, 0
  %.sroa.6.0.i = select i1 %i.dn, i8 %.sroa.2.0.copyload.i, i8 %.fca.1.extract14
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.do = zext i32 %i.df to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.do ; 2 uses
  %.sroa.0.0.copyload.i118 = load i64, ptr %i.dp, align 8
  %.sroa.2.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload.i120 = load i8, ptr %.sroa.2.0..sroa_idx.i119, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.5.0 = phi i8 [ %.sroa.6.0.i, %bb.w ], [ %.sroa.2.0.copyload.i120, %bb.x ]
  %.sroa.0135.0 = phi i64 [ %i.dm, %bb.w ], [ %.sroa.0.0.copyload.i118, %bb.x ]
  %i.dq = trunc nuw i8 %.sroa.5.0 to i1
  br i1 %i.dq, label %bb.z, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.149) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.y
  %i.dr = tail call noundef ptr @_ZNK4llvm10DataLayout15getStructLayoutEPNS_10StructTypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.a, ptr noundef %i.db) #19
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %.sroa.0137.0193 ; 2 uses
  %.sroa.2.0..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.sroa.2.0.copyload.i125 = load i8, ptr %.sroa.2.0..sroa_idx.i124, align 8
  %i.du = trunc nuw i8 %.sroa.2.0.copyload.i125 to i1
  br i1 %i.du, label %bb.aa, label %_ZNK4llvm8TypeSizecvmEv.exit128

bb.aa:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.149) #20
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit128:                  ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %.sroa.0.0.copyload.i123 = load i64, ptr %i.dt, align 8
  %i.dv = sub i64 %.sroa.0135.0, %.sroa.0.0.copyload.i123
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = load i32, ptr %i.cx, align 4            ; 2 uses
  %i.dy = and i32 %i.dx, 1073741824
  %.not.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit128
  %i.dz = load ptr, ptr %i.dd, align 8, !tbaa !665
  br label %_ZNK4llvm4User10getOperandEj.exit

bb.ac:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit128
  %i.ea = and i32 %i.dx, 268435455
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = sub nsw i64 0, %i.eb
  %i.ed = getelementptr inbounds [32 x i8], ptr %1, i64 %i.ec
  br label %_ZNK4llvm4User10getOperandEj.exit

_ZNK4llvm4User10getOperandEj.exit:                ; preds = %bb.ab, %bb.ac
  %i.ee = phi ptr [ %i.dz, %bb.ab ], [ %i.ed, %bb.ac ]
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %i.ee, i64 %.sroa.0137.0193
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !364
  tail call void @_ZN4llvm15NVPTXAsmPrinter12bufferLEByteEPKNS_8ConstantEiPNS0_9AggBufferE(ptr noundef nonnull align 8 dereferenceable(1177) %0, ptr noundef %i.eg, i32 noundef %i.dw, ptr noundef %2)
  %i.eh = add nuw nsw i64 %.sroa.0137.0193, 1     ; 2 uses
  %.not181 = icmp eq i64 %i.eh, %i.dc
  br i1 %.not181, label %_ZN4llvm5APIntD2Ev.exit, label %bb.v

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %.lr.ph, %.lr.ph189, %.lr.ph192, %_ZNK4llvm4User10getOperandEj.exit, %bb.c, %_ZNK4llvm4User8operandsEv.exit, %bb.t, %bb.o, %bb.n, %"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit103", %bb.i, %bb.h, %"_ZZN4llvm15NVPTXAsmPrinter23bufferAggregateConstantEPKNS_8ConstantEPNS0_9AggBufferEENK3$_0clENS_5APIntES5_.exit", %bb.s, %.critedge93
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEj(ptr noundef nonnull align 8 dereferenceable(177) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35   ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.idx3.i = shl nuw nsw i64 %i.e, 2              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx3.i ; 2 uses
  %i.g = lshr i64 %i.e, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.h = and i64 %.idx3.i, 17179869168
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.h
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i
  %.053.i.i.i.i.i = phi i64 [ %i.u, %bb.e ], [ %i.g, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.02952.i.i.i.i.i = phi ptr [ %i.t, %bb.e ], [ %i.b, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.i = load i32, ptr %.02952.i.i.i.i.i, align 4, !tbaa !54
  %i.j = urem i32 %i.i, %1
  %.not38.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not38.i.i.i.i.i, label %bb.b, label %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !54
  %i.m = urem i32 %i.l, %1
  %.not39.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not39.i.i.i.i.i, label %bb.c, label %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit.loopexit.split.loop.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !54
  %i.p = urem i32 %i.o, %1
  %.not40.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not40.i.i.i.i.i, label %bb.d, label %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit.loopexit.split.loop.exit13

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !54
  %i.s = urem i32 %i.r, %1
  %.not41.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not41.i.i.i.i.i, label %bb.e, label %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit.loopexit.split.loop.exit15

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i, i64 16
  %i.u = add nsw i64 %.053.i.i.i.i.i, -1
  %i.v = icmp sgt i64 %.053.i.i.i.i.i, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !1146

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.e
  %i.w = and i32 %i.d, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.a
  %.pre-phi59.i.i.i.i.i = phi i32 [ %i.w, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.d, %bb.a ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  switch i32 %.pre-phi59.i.i.i.i.i, label %bb.k [
    i32 3, label %bb.f
    i32 2, label %bb.h
    i32 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.x = load i32, ptr %.029.lcssa.i.i.i.i.i, align 4, !tbaa !54
  %i.y = urem i32 %i.x, %1
  %.not.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.z, %bb.g ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.aa = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !54
  %i.ab = urem i32 %i.aa, %1
  %.not36.i.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not36.i.i.i.i.i, label %bb.i, label %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ad = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !54
  %i.ae = urem i32 %i.ad, %1
  %.not37.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not37.i.i.i.i.i, label %bb.k, label %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i
  br label %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit

_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i, i64 4
  br label %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit

_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit.loopexit.split.loop.exit13: ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i, i64 8
  br label %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit

_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit.loopexit.split.loop.exit15: ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i.i, i64 12
  br label %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit

_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit.loopexit.split.loop.exit, %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit.loopexit.split.loop.exit13, %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit.loopexit.split.loop.exit15, %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.h ], [ %i.f, %bb.k ], [ %.2.i.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i.i, %bb.f ], [ %i.ah, %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit.loopexit.split.loop.exit15 ], [ %i.ag, %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit.loopexit.split.loop.exit13 ], [ %i.af, %_ZN4llvm6all_ofIRKNS_11SmallVectorIjLj4EEEZNKS_15NVPTXAsmPrinter9AggBuffer17allSymbolsAlignedEjEUljE_EEbOT_T0_.exit.loopexit.split.loop.exit ], [ %.02952.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.ai = icmp eq ptr %i.f, %.028.i.i.i.i.i
  ret i1 %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm15NVPTXAsmPrinter9AggBuffer10printBytesERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !827, !nonnull !200, !align !201
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !388, !nonnull !200, !align !201
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !706  ; 4 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !687    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp ne i32 %i.g, 0
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !688
  %i.n = zext i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.n, %.preheader ], [ %i.o, %bb.c ] ; 2 uses
  %i.o = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !47
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.c, label %.critedge.loopexit.split.loop.exit80

bb.c:                                             ; preds = %bb.b
  %.old1.not.wide = icmp eq i64 %i.o, 0
  br i1 %.old1.not.wide, label %.critedge, label %bb.b

.critedge.loopexit.split.loop.exit80:             ; preds = %bb.b
  %i.r = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.loopexit.split.loop.exit80, %bb.a
  %.1 = phi i32 [ %i.g, %bb.a ], [ %i.r, %.critedge.loopexit.split.loop.exit80 ], [ 0, %bb.c ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !35   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36
  %.not.i = icmp ult i32 %i.u, %i.w
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !51

bb.d:                                             ; preds = %.critedge
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef %.1)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.e:                                             ; preds = %.critedge
  %i.x = zext i32 %i.u to i64
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.x
  store i32 %.1, ptr %i.z, align 1
  %i.aa = load i32, ptr %i.t, align 8, !tbaa !35
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.t, align 8, !tbaa !35
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit: ; preds = %bb.d, %bb.e
  %.not57 = icmp eq i32 %.1, 0
  br i1 %.not57, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
end_hunk_0
