Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_dwa?download=true
inline.NumInlined: 252
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@LossyDctEncoder_execute:bb.a
  %i.asf = load i32, ptr %i.ase, align 8, !tbaa !36, !noalias !258
  %i.asg = sext i32 %i.asf to i64
  %i.ash = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.asg
  store i16 %i.arc, ptr %i.ash, align 2, !tbaa !62, !alias.scope !251, !noalias !259
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr @quantizeCoeffAndZigXDR.inv_remap, i64 %i.amp
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !36, !noalias !258
  %i.ask = sext i32 %i.asj to i64
  %i.asl = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.ask
  store i16 %i.arv, ptr %i.asl, align 2, !tbaa !62, !alias.scope !251, !noalias !259
  %indvars.iv.next.i155 = add nuw nsw i64 %indvars.iv.i154, 4
  %i.asm = icmp samesign ult i64 %indvars.iv.i154, 60
  br i1 %i.asm, label %bb.ct, label %quantizeCoeffAndZigXDR.exit, !llvm.loop !242

quantizeCoeffAndZigXDR.exit:                      ; preds = %half_to_float.exit77.i
  %i.asn = load i16, ptr %i.b, align 16, !tbaa !62
  %i.aso = getelementptr inbounds nuw i8, ptr %i.xw, i64 384 ; 2 uses
  %i.asp = load ptr, ptr %i.aso, align 32, !tbaa !246 ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 2
  store ptr %i.asq, ptr %i.aso, align 32, !tbaa !246
  store i16 %i.asn, ptr %i.asp, align 2, !tbaa !62
  %i.asr = load i64, ptr %i.t, align 8, !tbaa !260
  %i.ass = add i64 %i.asr, 1
  store i64 %i.ass, ptr %i.t, align 8, !tbaa !260
  %.promoted = load i64, ptr %i.s, align 8, !tbaa !261
  br label %bb.fc

bb.fc:                                            ; preds = %.critedge.thread.i, %quantizeCoeffAndZigXDR.exit
  %storemerge.in.i206 = phi i64 [ %.promoted, %quantizeCoeffAndZigXDR.exit ], [ %storemerge.i, %.critedge.thread.i ]
  %.03345.i = phi ptr [ %.2159207, %quantizeCoeffAndZigXDR.exit ], [ %.2.i, %.critedge.thread.i ] ; 2 uses
  %.03544.i = phi i32 [ 1, %quantizeCoeffAndZigXDR.exit ], [ %i.atl, %.critedge.thread.i ] ; 5 uses
  %i.ast = zext nneg i32 %.03544.i to i64
  %i.asu = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ast
  %i.asv = load i16, ptr %i.asu, align 2, !tbaa !62 ; 2 uses
  %.not.i = icmp eq i16 %i.asv, 0
  br i1 %.not.i, label %.preheader.i156, label %.critedge.thread.i, !llvm.loop !243

.preheader.i156:                                  ; preds = %bb.fc
  %i.asw = icmp samesign ult i32 %.03544.i, 63
  br i1 %i.asw, label %.lr.ph.i.preheader, label %.critedge.thread.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i156
  %i.asx = add nuw nsw i32 %.03544.i, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.fd
  %i.asy = phi i32 [ %i.atf, %bb.fd ], [ %i.asx, %.lr.ph.i.preheader ] ; 2 uses
  %.039.i = phi i16 [ %i.atd, %bb.fd ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %i.asz = zext nneg i32 %i.asy to i64
  %i.ata = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.asz
  %i.atb = load i16, ptr %i.ata, align 2, !tbaa !62
  %i.atc = icmp eq i16 %i.atb, 0
  br i1 %i.atc, label %bb.fd, label %.critedge.i

bb.fd:                                            ; preds = %.lr.ph.i
  %i.atd = add i16 %.039.i, 1                     ; 3 uses
  %i.ate = zext i16 %i.atd to i32
  %i.atf = add nuw nsw i32 %.03544.i, %i.ate      ; 3 uses
  %i.atg = icmp samesign ult i32 %i.atf, 64
  br i1 %i.atg, label %.lr.ph.i, label %.critedge.i, !llvm.loop !244

.critedge.i:                                      ; preds = %bb.fd, %.lr.ph.i
  %.0.lcssa.i = phi i16 [ %i.atd, %bb.fd ], [ %.039.i, %.lr.ph.i ] ; 3 uses
  %.lcssa.i = phi i32 [ %i.atf, %bb.fd ], [ %i.asy, %.lr.ph.i ]
  %i.ath = icmp eq i16 %.0.lcssa.i, 1
  br i1 %i.ath, label %.critedge.thread.i, label %bb.fe

bb.fe:                                            ; preds = %.critedge.i
  %i.ati = icmp eq i32 %.lcssa.i, 64
  %i.atj = or i16 %.0.lcssa.i, -256
  %spec.select.i = select i1 %i.ati, i16 -256, i16 %i.atj
  %i.atk = zext i16 %.0.lcssa.i to i32
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.preheader.i156, %.critedge.i, %bb.fe, %bb.fc
  %storemerge53.i = phi i16 [ %i.asv, %bb.fc ], [ 0, %.critedge.i ], [ %spec.select.i, %bb.fe ], [ 0, %.preheader.i156 ]
  %.sink52.i = phi i32 [ 1, %bb.fc ], [ 1, %.critedge.i ], [ %i.atk, %bb.fe ], [ 1, %.preheader.i156 ]
  store i16 %storemerge53.i, ptr %.03345.i, align 2, !tbaa !62
  %storemerge.i = add i64 %storemerge.in.i206, 1  ; 2 uses
  %i.atl = add nuw nsw i32 %.sink52.i, %.03544.i  ; 2 uses
  %.2.i = getelementptr inbounds nuw i8, ptr %.03345.i, i64 2 ; 3 uses
  %i.atm = icmp samesign ult i32 %i.atl, 64
  br i1 %i.atm, label %bb.fc, label %LossyDctEncoder_rleAc.exit

LossyDctEncoder_rleAc.exit:                       ; preds = %.critedge.thread.i
  store i64 %storemerge.i, ptr %i.s, align 8, !tbaa !261
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %exitcond297.not = icmp eq i64 %indvars.iv.next294, %wide.trip.count296
  br i1 %exitcond297.not, label %._crit_edge212, label %.lr.ph211, !llvm.loop !245

bb.ff:                                            ; preds = %._crit_edge220.split
  tail call void %1(ptr noundef nonnull %.0130377380) #21
  br label %bb.fg

bb.fg:                                            ; preds = %._crit_edge220.split, %bb.ff, %bb.d
  %.0135 = phi i32 [ 1, %bb.d ], [ 0, %bb.ff ], [ 0, %._crit_edge220.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0135
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @exr_compress_buffer(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @exr_compress_max_buffer_size(i64 noundef) local_unnamed_addr #2

declare i32 @internal_huf_compress(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @internal_zip_deconstruct_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @internal_rle_compress(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @LossyDctEncoder_base_construct(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 24), (52, 80)) %0, float noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store float %1, ptr %i.a, align 4, !tbaa !263
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %5, ptr %i.b, align 4, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %6, ptr %i.c, align 8, !tbaa !107
  store ptr %4, ptr %0, align 8, !tbaa !110
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.e, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %3, ptr %i.f, align 8, !tbaa !109
  %i.g = fcmp olt float %1, 0.000000e+00
  br i1 %i.g, label %bb.b, label %vector.ph

bb.b:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !263
  br label %vector.ph

vector.ph:                                        ; preds = %bb.b, %bb.a
  %i.h = phi float [ 0.000000e+00, %bb.b ], [ %1, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 720
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @__const.LossyDctEncoder_base_construct.jpegQuantTableY, i64 %index
  %wide.load = load <4 x i32>, ptr %i.m, align 16, !tbaa !36
  %i.n = sitofp <4 x i32> %wide.load to <4 x float>
  %i.o = fmul <4 x float> %broadcast.splat, %i.n
  %i.p = fdiv <4 x float> %i.o, splat (float 1.000000e+01) ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  store <4 x float> %i.p, ptr %i.q, align 4, !tbaa !103
  %i.r = bitcast <4 x float> %i.p to <4 x i32>
  %i.s = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.p)
  %i.t = bitcast <4 x float> %i.s to <4 x i32>    ; 8 uses
  %i.u = lshr <4 x i32> %i.r, splat (i32 16)      ; 2 uses
  %i.v = trunc nuw <4 x i32> %i.u to <4 x i16>
  %i.w = and <4 x i16> %i.v, splat (i16 -32768)   ; 2 uses
  %i.x = add nsw <4 x i32> %i.t, splat (i32 -855638017)
  %i.y = icmp ult <4 x i32> %i.x, splat (i32 92274687) ; 2 uses
  %i.z = lshr <4 x i32> %i.t, splat (i32 23)      ; 2 uses
  %i.aa = sub nuw nsw <4 x i32> splat (i32 126), %i.z
  %i.ab = and <4 x i32> %i.t, splat (i32 8388607)
  %i.ac = or disjoint <4 x i32> %i.ab, splat (i32 8388608) ; 2 uses
  %i.ad = add nsw <4 x i32> %i.z, splat (i32 -94)
  %i.ae = shl <4 x i32> %i.ac, %i.ad              ; 2 uses
  %i.af = lshr <4 x i32> %i.ac, %i.aa             ; 2 uses
  %i.ag = and <4 x i32> %i.u, splat (i32 32768)   ; 2 uses
  %i.ah = or <4 x i32> %i.af, %i.ag
  %i.ai = trunc nuw <4 x i32> %i.ah to <4 x i16>  ; 2 uses
  %i.aj = icmp ugt <4 x i32> %i.ae, splat (i32 -2147483648) ; 2 uses
  %i.ak = xor <4 x i1> %i.aj, splat (i1 true)
  %i.al = select <4 x i1> %i.y, <4 x i1> %i.ak, <4 x i1> zeroinitializer ; 2 uses
  %i.am = icmp ne <4 x i32> %i.ae, splat (i32 -2147483648)
  %i.an = and <4 x i32> %i.af, splat (i32 1)
  %i.ao = icmp eq <4 x i32> %i.an, zeroinitializer
  %i.ap = select <4 x i1> %i.am, <4 x i1> splat (i1 true), <4 x i1> %i.ao ; 2 uses
  %i.aq = xor <4 x i1> %i.ap, splat (i1 true)
  %i.ar = select <4 x i1> %i.al, <4 x i1> %i.aq, <4 x i1> zeroinitializer
  %7 = or <4 x i1> %i.aj, %i.ar
  %8 = select <4 x i1> %i.y, <4 x i1> %7, <4 x i1> zeroinitializer
  %i.as = add nuw <4 x i16> %i.ai, splat (i16 1)
  %i.at = add nsw <4 x i32> %i.t, splat (i32 -947912704)
  %i.au = icmp ult <4 x i32> %i.at, splat (i32 251654144)
  %i.av = add nuw nsw <4 x i32> %i.t, splat (i32 134221823)
  %i.aw = lshr <4 x i32> %i.t, splat (i32 13)     ; 2 uses
  %i.ax = and <4 x i32> %i.aw, splat (i32 1)
  %i.ay = add nuw nsw <4 x i32> %i.av, %i.ax
  %i.az = lshr <4 x i32> %i.ay, splat (i32 13)
  %i.ba = or <4 x i32> %i.az, %i.ag
  %i.bb = trunc <4 x i32> %i.ba to <4 x i16>
  %i.bc = or disjoint <4 x i16> %i.w, splat (i16 31744)
  %i.bd = and <4 x i32> %i.aw, splat (i32 1023)   ; 2 uses
  %i.be = icmp eq <4 x i32> %i.bd, zeroinitializer
  %i.bf = zext <4 x i1> %i.be to <4 x i16>
  %i.bg = trunc nuw nsw <4 x i32> %i.bd to <4 x i16>
  %i.bh = or <4 x i16> %i.bg, %i.bf
  %i.bi = select <4 x i1> %i.al, <4 x i1> %i.ap, <4 x i1> zeroinitializer
  %i.bj = icmp samesign ult <4 x i32> %i.t, splat (i32 855638017)
  %i.bk = icmp samesign ult <4 x i32> %i.t, splat (i32 2139095041)
  %predphi = select <4 x i1> %i.bk, <4 x i16> zeroinitializer, <4 x i16> %i.bh
  %predphi1 = or disjoint <4 x i16> %i.bc, %predphi
  %predphi2 = select <4 x i1> %i.au, <4 x i16> %i.bb, <4 x i16> %predphi1
  %predphi3 = select <4 x i1> %i.bj, <4 x i16> %i.w, <4 x i16> %predphi2
  %predphi4 = select <4 x i1> %i.bi, <4 x i16> %i.ai, <4 x i16> %predphi3
  %predphi5 = select <4 x i1> %8, <4 x i16> %i.as, <4 x i16> %predphi4
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index
  store <4 x i16> %predphi5, ptr %i.bl, align 2, !tbaa !62
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @__const.LossyDctEncoder_base_construct.jpegQuantTableCbCr, i64 %index
  %wide.load6 = load <4 x i32>, ptr %i.bm, align 16, !tbaa !36
  %i.bn = sitofp <4 x i32> %wide.load6 to <4 x float>
  %i.bo = fmul <4 x float> %broadcast.splat, %i.bn
  %i.bp = fdiv <4 x float> %i.bo, splat (float 1.700000e+01) ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  store <4 x float> %i.bp, ptr %i.bq, align 4, !tbaa !103
  %i.br = bitcast <4 x float> %i.bp to <4 x i32>
  %i.bs = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bp)
  %i.bt = bitcast <4 x float> %i.bs to <4 x i32>  ; 8 uses
  %i.bu = lshr <4 x i32> %i.br, splat (i32 16)    ; 2 uses
  %i.bv = trunc nuw <4 x i32> %i.bu to <4 x i16>
  %i.bw = and <4 x i16> %i.bv, splat (i16 -32768) ; 2 uses
  %i.bx = add nsw <4 x i32> %i.bt, splat (i32 -855638017)
  %i.by = icmp ult <4 x i32> %i.bx, splat (i32 92274687) ; 2 uses
  %i.bz = lshr <4 x i32> %i.bt, splat (i32 23)    ; 2 uses
  %i.ca = sub nuw nsw <4 x i32> splat (i32 126), %i.bz
  %i.cb = and <4 x i32> %i.bt, splat (i32 8388607)
  %i.cc = or disjoint <4 x i32> %i.cb, splat (i32 8388608) ; 2 uses
  %i.cd = add nsw <4 x i32> %i.bz, splat (i32 -94)
  %i.ce = shl <4 x i32> %i.cc, %i.cd              ; 2 uses
  %i.cf = lshr <4 x i32> %i.cc, %i.ca             ; 2 uses
  %i.cg = and <4 x i32> %i.bu, splat (i32 32768)  ; 2 uses
  %i.ch = or <4 x i32> %i.cf, %i.cg
  %i.ci = trunc nuw <4 x i32> %i.ch to <4 x i16>  ; 2 uses
  %i.cj = icmp ugt <4 x i32> %i.ce, splat (i32 -2147483648) ; 2 uses
  %i.ck = xor <4 x i1> %i.cj, splat (i1 true)
  %i.cl = select <4 x i1> %i.by, <4 x i1> %i.ck, <4 x i1> zeroinitializer ; 2 uses
  %i.cm = icmp ne <4 x i32> %i.ce, splat (i32 -2147483648)
  %i.cn = and <4 x i32> %i.cf, splat (i32 1)
  %i.co = icmp eq <4 x i32> %i.cn, zeroinitializer
  %i.cp = select <4 x i1> %i.cm, <4 x i1> splat (i1 true), <4 x i1> %i.co ; 2 uses
  %i.cq = xor <4 x i1> %i.cp, splat (i1 true)
  %i.cr = select <4 x i1> %i.cl, <4 x i1> %i.cq, <4 x i1> zeroinitializer
  %9 = or <4 x i1> %i.cj, %i.cr
  %10 = select <4 x i1> %i.by, <4 x i1> %9, <4 x i1> zeroinitializer
  %i.cs = add nuw <4 x i16> %i.ci, splat (i16 1)
  %i.ct = add nsw <4 x i32> %i.bt, splat (i32 -947912704)
  %i.cu = icmp ult <4 x i32> %i.ct, splat (i32 251654144)
  %i.cv = add nuw nsw <4 x i32> %i.bt, splat (i32 134221823)
  %i.cw = lshr <4 x i32> %i.bt, splat (i32 13)    ; 2 uses
  %i.cx = and <4 x i32> %i.cw, splat (i32 1)
  %i.cy = add nuw nsw <4 x i32> %i.cv, %i.cx
  %i.cz = lshr <4 x i32> %i.cy, splat (i32 13)
  %i.da = or <4 x i32> %i.cz, %i.cg
  %i.db = trunc <4 x i32> %i.da to <4 x i16>
  %i.dc = or disjoint <4 x i16> %i.bw, splat (i16 31744)
  %i.dd = and <4 x i32> %i.cw, splat (i32 1023)   ; 2 uses
  %i.de = icmp eq <4 x i32> %i.dd, zeroinitializer
  %i.df = zext <4 x i1> %i.de to <4 x i16>
  %i.dg = trunc nuw nsw <4 x i32> %i.dd to <4 x i16>
  %i.dh = or <4 x i16> %i.dg, %i.df
  %i.di = select <4 x i1> %i.cl, <4 x i1> %i.cp, <4 x i1> zeroinitializer
  %i.dj = icmp samesign ult <4 x i32> %i.bt, splat (i32 855638017)
  %i.dk = icmp samesign ult <4 x i32> %i.bt, splat (i32 2139095041)
  %predphi7 = select <4 x i1> %i.dk, <4 x i16> zeroinitializer, <4 x i16> %i.dh
  %predphi8 = or disjoint <4 x i16> %i.dc, %predphi7
  %predphi9 = select <4 x i1> %i.cu, <4 x i16> %i.db, <4 x i16> %predphi8
  %predphi10 = select <4 x i1> %i.dj, <4 x i16> %i.bw, <4 x i16> %predphi9
  %predphi11 = select <4 x i1> %i.di, <4 x i16> %i.ci, <4 x i16> %predphi10
  %predphi12 = select <4 x i1> %10, <4 x i16> %i.cs, <4 x i16> %predphi11
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %index
  store <4 x i16> %predphi12, ptr %i.dl, align 2, !tbaa !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, 64
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dn, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc zeroext i16 @algoQuantize(i32 noundef range(i32 0, 65536) %0, i32 noundef range(i32 0, 65536) %1, float noundef %2, float noundef %3) unnamed_addr #16 {
bb.a:
  %i.a = and i32 %0, 32768                        ; 5 uses
  %i.b = and i32 %0, 32767                        ; 55 uses
  %i.c = tail call float @llvm.fabs.f32(float %3) ; 62 uses
  %i.d = and i32 %0, 31744                        ; 7 uses
  %i.e = and i32 %1, 31744                        ; 3 uses
  %i.f = icmp eq i32 %i.d, 31744
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = trunc nuw i32 %0 to i16
  br label %bb.ok

bb.c:                                             ; preds = %bb.a
  %i.h = fcmp olt float %i.c, %2
  br i1 %i.h, label %bb.ok, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sub nsw i32 %i.d, %i.e                   ; 3 uses
  %i.j = lshr exact i32 %i.i, 10                  ; 2 uses
  %i.k = and i32 %1, 1023                         ; 5 uses
  %i.l = or disjoint i32 %i.k, 1024
  %i.m = lshr i32 %i.l, %i.j                      ; 6 uses
  %i.n = icmp eq i32 %i.e, 0
  br i1 %i.n, label %bb.e, label %bb.hv

bb.e:                                             ; preds = %bb.d
  %i.o = icmp eq i32 %i.d, 0
  %i.p = icmp eq i32 %i.i, 1024
  %or.cond = select i1 %i.o, i1 true, i1 %i.p
  %i.q = icmp eq i32 %i.k, 0                      ; 2 uses
  br i1 %or.cond, label %bb.f, label %bb.fk

bb.f:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.oj, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call range(i32 21, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 1024) %i.k, i1 true)
  %i.s = sub nuw nsw i32 32, %i.r                 ; 2 uses
  %i.t = shl nuw nsw i32 1, %i.s                  ; 6 uses
  %i.u = add nuw nsw i32 %i.t, 32767
  %i.v = sub nsw i32 0, %i.t                      ; 5 uses
  %i.w = xor i32 %i.t, %i.v                       ; 3 uses
  %i.x = and i32 %i.u, %i.b
  %.not.i = icmp samesign ugt i32 %i.k, %i.x      ; 2 uses
  %i.y = shl nuw nsw i32 2, %i.s
  %i.z = lshr exact i32 %i.t, 1
  %i.aa = select i1 %.not.i, i32 %i.y, i32 %i.z
  %i.ab = xor i32 %i.aa, %i.w                     ; 3 uses
  %i.ac = trunc nuw nsw i32 %i.b to i16
  %i.ad = tail call range(i16 0, 16) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.ac) ; 6 uses
  %i.ae = zext nneg i16 %i.ad to i32              ; 9 uses
  br i1 %.not.i, label %bb.h, label %bb.bd

bb.h:                                             ; preds = %bb.g
  %i.af = and i32 %i.ab, %i.b                     ; 11 uses
  %i.ag = trunc nuw nsw i32 %i.af to i16
  %i.ah = tail call range(i16 0, 16) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.ag) ; 3 uses
  %i.ai = zext nneg i16 %i.ah to i32              ; 2 uses
  %i.aj = icmp samesign ult i16 %i.ah, %i.ad
  br i1 %i.aj, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ak = shl nuw nsw i32 %i.af, 13               ; 4 uses
  %i.al = icmp samesign ugt i32 %i.af, 1023
  br i1 %i.al, label %bb.j, label %bb.m, !prof !105

bb.j:                                             ; preds = %bb.i
  %i.am = icmp samesign ult i32 %i.af, 31744
  br i1 %i.am, label %bb.k, label %bb.l, !prof !105

bb.k:                                             ; preds = %bb.j
  %i.an = add nuw nsw i32 %i.ak, 939524096
  br label %half_to_float.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ao = or i32 %i.ak, 2139095040
  br label %half_to_float.exit.i

bb.m:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i, label %half_to_float.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ak, i1 true)
  %i.aq = add nsw i32 %i.ap, -8                   ; 2 uses
  %i.ar = shl i32 %i.ak, %i.aq
  %i.as = or i32 %i.ar, 947912704
  %i.at = shl nuw nsw i32 %i.aq, 23
  %i.au = sub nuw i32 %i.as, %i.at
  br label %half_to_float.exit.i

half_to_float.exit.i:                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.i.i.i = phi i32 [ %i.an, %bb.k ], [ %i.ao, %bb.l ], [ %i.au, %bb.n ], [ 0, %bb.m ]
  %i.av = bitcast i32 %.sroa.0.0.i.i.i to float
  %i.aw = fsub float %i.c, %i.av                  ; 2 uses
  %i.ax = fcmp olt float %i.aw, %2
  br i1 %i.ax, label %bb.o, label %bb.x

bb.o:                                             ; preds = %half_to_float.exit.i
  br label %bb.x

bb.p:                                             ; preds = %bb.h
  %i.ay = icmp eq i16 %i.ah, %i.ad
  br i1 %i.ay, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.az = shl nuw nsw i32 %i.af, 13               ; 4 uses
  %i.ba = icmp samesign ugt i32 %i.af, 1023
  br i1 %i.ba, label %bb.r, label %bb.u, !prof !105

bb.r:                                             ; preds = %bb.q
  %i.bb = icmp samesign ult i32 %i.af, 31744
  br i1 %i.bb, label %bb.s, label %bb.t, !prof !105

bb.s:                                             ; preds = %bb.r
  %i.bc = add nuw nsw i32 %i.az, 939524096
  br label %half_to_float.exit297.i

bb.t:                                             ; preds = %bb.r
  %i.bd = or i32 %i.az, 2139095040
  br label %half_to_float.exit297.i

bb.u:                                             ; preds = %bb.q
  %.not.i.i295.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i295.i, label %half_to_float.exit297.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.az, i1 true)
  %i.bf = add nsw i32 %i.be, -8                   ; 2 uses
  %i.bg = shl i32 %i.az, %i.bf
  %i.bh = or i32 %i.bg, 947912704
  %i.bi = shl nuw nsw i32 %i.bf, 23
  %i.bj = sub nuw i32 %i.bh, %i.bi
  br label %half_to_float.exit297.i

half_to_float.exit297.i:                          ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.i.i296.i = phi i32 [ %i.bc, %bb.s ], [ %i.bd, %bb.t ], [ %i.bj, %bb.v ], [ 0, %bb.u ]
  %i.bk = bitcast i32 %.sroa.0.0.i.i296.i to float
  %i.bl = fsub float %i.c, %i.bk                  ; 2 uses
  %i.bm = fcmp olt float %i.bl, %2
  br i1 %i.bm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %half_to_float.exit297.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %half_to_float.exit297.i, %bb.p, %bb.o, %half_to_float.exit.i
  %.0239.i = phi i32 [ %i.af, %bb.o ], [ %i.b, %half_to_float.exit.i ], [ %i.af, %bb.w ], [ %i.b, %half_to_float.exit297.i ], [ %i.b, %bb.p ] ; 3 uses
  %.0232.i = phi i32 [ %i.ai, %bb.o ], [ %i.ae, %half_to_float.exit.i ], [ %i.ai, %bb.w ], [ %i.ae, %half_to_float.exit297.i ], [ %i.ae, %bb.p ] ; 4 uses
  %.0.i = phi float [ %i.aw, %bb.o ], [ %2, %half_to_float.exit.i ], [ %i.bl, %bb.w ], [ %2, %half_to_float.exit297.i ], [ %2, %bb.p ] ; 4 uses
  %i.bn = and i32 %i.w, %i.b                      ; 11 uses
  %i.bo = trunc nuw nsw i32 %i.bn to i16
  %i.bp = tail call range(i16 0, 16) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.bo)
  %i.bq = zext nneg i16 %i.bp to i32              ; 5 uses
  %i.br = icmp samesign ugt i32 %.0232.i, %i.bq
  br i1 %i.br, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.bs = shl nuw nsw i32 %i.bn, 13               ; 4 uses
  %i.bt = icmp samesign ugt i32 %i.bn, 1023
  br i1 %i.bt, label %bb.z, label %bb.ac, !prof !105
end_hunk_0
