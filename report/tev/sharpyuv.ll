Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/sharpyuv?download=true
inline.NumInlined: 53
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@SharpYuvConvertWithOptions:bb.a
  %i.abw = mul nsw i32 %i.zk, %i.abt
  %i.abx = add i32 %i.abu, %i.tx
  %i.aby = add i32 %i.abx, %i.abv
  %i.abz = add i32 %i.aby, %i.abw
  %i.aca = add i32 %i.abz, %i.cg
  %i.acb = ashr i32 %i.aca, %i.tv
  %i.acc = mul nsw i32 %i.zl, %i.abp
  %i.acd = mul nsw i32 %i.zm, %i.abr
  %i.ace = mul nsw i32 %i.zn, %i.abt
  %i.acf = add i32 %i.acc, %i.tx
  %i.acg = add i32 %i.acf, %i.acd
  %i.ach = add i32 %i.acg, %i.ace
  %i.aci = add i32 %i.ach, %i.cl
  %i.acj = ashr i32 %i.aci, %i.tv
  %i.ack = trunc i32 %i.acb to i16
  %i.acl = tail call i16 @llvm.smax.i16(i16 %i.ack, i16 0)
  %i.acm = tail call i16 @llvm.umin.i16(i16 %i.acl, i16 255)
  %i.acn = trunc nuw i16 %i.acm to i8
  %i.aco = getelementptr inbounds nuw i8, ptr %.097.us.i.i, i64 %indvars.iv142.i.i
  store i8 %i.acn, ptr %i.aco, align 1, !tbaa !18
  %i.acp = trunc i32 %i.acj to i16
  %i.acq = tail call i16 @llvm.smax.i16(i16 %i.acp, i16 0)
  %i.acr = tail call i16 @llvm.umin.i16(i16 %i.acq, i16 255)
  %i.acs = trunc nuw i16 %i.acr to i8
  %i.act = getelementptr inbounds nuw i8, ptr %.098.us.i.i, i64 %indvars.iv142.i.i
  store i8 %i.acs, ptr %i.act, align 1, !tbaa !18
  %indvars.iv.next143.i.i = add nuw nsw i64 %indvars.iv142.i.i, 1 ; 2 uses
  %exitcond147.not.i.i = icmp eq i64 %indvars.iv.next143.i.i, %wide.trip.count146.i.i
  br i1 %exitcond147.not.i.i, label %.split117.us.us.i.i, label %scalar.ph222, !llvm.loop !37

.split117.us.us.i.i:                              ; preds = %scalar.ph222, %middle.block252
  %i.acu = getelementptr inbounds nuw [2 x i8], ptr %.195.us.i.i, i64 %i.dh
  %i.acv = getelementptr inbounds i8, ptr %.097.us.i.i, i64 %i.yx
  %i.acw = getelementptr inbounds i8, ptr %.098.us.i.i, i64 %i.yy
  %i.acx = add nuw nsw i32 %.1.us.i.i, 1          ; 2 uses
  %exitcond149.not.i.i = icmp eq i32 %i.acx, %smax148.i.i
  br i1 %exitcond149.not.i.i, label %DoSharpArgbToYuv.exit, label %.split115.us.us.i.i, !llvm.loop !38

.split115.i.i:                                    ; preds = %.split117.i.i, %.split115.preheader.i.i
  %.098.i.i = phi ptr [ %i.afq, %.split117.i.i ], [ %10, %.split115.preheader.i.i ] ; 3 uses
  %.097.i.i = phi ptr [ %i.afp, %.split117.i.i ], [ %8, %.split115.preheader.i.i ] ; 3 uses
  %.195.i.i = phi ptr [ %i.afo, %.split117.i.i ], [ %i.dl, %.split115.preheader.i.i ] ; 5 uses
  %.1.i.i = phi i32 [ %i.afr, %.split117.i.i ], [ 0, %.split115.preheader.i.i ]
  %invariant.gep.i280.i = getelementptr [2 x i8], ptr %.195.i.i, i64 %i.er ; 2 uses
  %invariant.gep167.i.i = getelementptr [2 x i8], ptr %.195.i.i, i64 %i.cy ; 2 uses
  %brmerge263 = select i1 %min.iters.check182, i1 true, i1 %i.zz
  br i1 %brmerge263, label %scalar.ph181.preheader, label %vector.body205

vector.body205:                                   ; preds = %.split115.i.i, %vector.body205
  %index206 = phi i64 [ %index.next210, %vector.body205 ], [ 0, %.split115.i.i ] ; 6 uses
  %i.acy = getelementptr inbounds nuw [2 x i8], ptr %.195.i.i, i64 %index206
  %wide.load207 = load <8 x i16>, ptr %i.acy, align 2, !tbaa !14
  %i.acz = sext <8 x i16> %wide.load207 to <8 x i32> ; 2 uses
  %i.ada = getelementptr [2 x i8], ptr %invariant.gep.i280.i, i64 %index206
  %wide.load208 = load <8 x i16>, ptr %i.ada, align 2, !tbaa !14
  %i.adb = sext <8 x i16> %wide.load208 to <8 x i32> ; 2 uses
  %i.adc = getelementptr [2 x i8], ptr %invariant.gep167.i.i, i64 %index206
  %wide.load209 = load <8 x i16>, ptr %i.adc, align 2, !tbaa !14
  %i.add = sext <8 x i16> %wide.load209 to <8 x i32> ; 2 uses
  %i.ade = mul nsw <8 x i32> %broadcast.splat186, %i.acz
  %i.adf = mul nsw <8 x i32> %broadcast.splat188, %i.adb
  %i.adg = mul nsw <8 x i32> %broadcast.splat190, %i.add
  %i.adh = add <8 x i32> %broadcast.splat192, %i.ade
  %i.adi = add <8 x i32> %i.adh, %i.adf
  %i.adj = add <8 x i32> %i.adi, %i.adg
  %i.adk = ashr <8 x i32> %i.adj, %broadcast.splat194 ; 2 uses
  %i.adl = mul nsw <8 x i32> %broadcast.splat196, %i.acz
  %i.adm = mul nsw <8 x i32> %broadcast.splat198, %i.adb
  %i.adn = mul nsw <8 x i32> %broadcast.splat200, %i.add
  %i.ado = add <8 x i32> %broadcast.splat202, %i.adl
  %i.adp = add <8 x i32> %i.ado, %i.adm
  %i.adq = add <8 x i32> %i.adp, %i.adn
  %i.adr = ashr <8 x i32> %i.adq, %broadcast.splat194 ; 2 uses
  %i.ads = and <8 x i32> %i.adk, splat (i32 32768)
  %i.adt = icmp eq <8 x i32> %i.ads, zeroinitializer
  %i.adu = and <8 x i32> %i.adk, splat (i32 65535)
  %i.adv = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat204, <8 x i32> %i.adu)
  %i.adw = trunc nuw <8 x i32> %i.adv to <8 x i16>
  %i.adx = select <8 x i1> %i.adt, <8 x i16> %i.adw, <8 x i16> zeroinitializer
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %.097.i.i, i64 %index206
  store <8 x i16> %i.adx, ptr %i.ady, align 2, !tbaa !14, !alias.scope !47, !noalias !48
  %i.adz = and <8 x i32> %i.adr, splat (i32 32768)
  %i.aea = icmp eq <8 x i32> %i.adz, zeroinitializer
  %i.aeb = and <8 x i32> %i.adr, splat (i32 65535)
  %i.aec = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat204, <8 x i32> %i.aeb)
  %i.aed = trunc nuw <8 x i32> %i.aec to <8 x i16>
  %i.aee = select <8 x i1> %i.aea, <8 x i16> %i.aed, <8 x i16> zeroinitializer
  %i.aef = getelementptr inbounds nuw [2 x i8], ptr %.098.i.i, i64 %index206
  store <8 x i16> %i.aee, ptr %i.aef, align 2, !tbaa !14, !alias.scope !48
  %index.next210 = add nuw i64 %index206, 8       ; 2 uses
  %i.aeg = icmp eq i64 %index.next210, %n.vec184
  br i1 %i.aeg, label %middle.block211, label %vector.body205, !llvm.loop !42

middle.block211:                                  ; preds = %vector.body205
  br i1 %cmp.n212, label %.split117.i.i, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %.split115.i.i, %middle.block211
  %indvars.iv134.i.i.ph = phi i64 [ %n.vec184, %middle.block211 ], [ 0, %.split115.i.i ]
  br label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.preheader, %scalar.ph181
  %indvars.iv134.i.i = phi i64 [ %indvars.iv.next135.i.i, %scalar.ph181 ], [ %indvars.iv134.i.i.ph, %scalar.ph181.preheader ] ; 6 uses
  %i.aeh = getelementptr inbounds nuw [2 x i8], ptr %.195.i.i, i64 %indvars.iv134.i.i
  %i.aei = load i16, ptr %i.aeh, align 2, !tbaa !14
  %i.aej = sext i16 %i.aei to i32                 ; 2 uses
  %gep.i281.i = getelementptr [2 x i8], ptr %invariant.gep.i280.i, i64 %indvars.iv134.i.i
  %i.aek = load i16, ptr %gep.i281.i, align 2, !tbaa !14
  %i.ael = sext i16 %i.aek to i32                 ; 2 uses
  %gep168.i.i = getelementptr [2 x i8], ptr %invariant.gep167.i.i, i64 %indvars.iv134.i.i
  %i.aem = load i16, ptr %gep168.i.i, align 2, !tbaa !14
  %i.aen = sext i16 %i.aem to i32                 ; 2 uses
  %i.aeo = mul nsw i32 %i.aaa, %i.aej
  %i.aep = mul nsw i32 %i.aab, %i.ael
  %i.aeq = mul nsw i32 %i.aac, %i.aen
  %i.aer = add i32 %i.zo, %i.aeo
  %i.aes = add i32 %i.aer, %i.aep
  %i.aet = add i32 %i.aes, %i.aeq
  %i.aeu = ashr i32 %i.aet, %i.tv                 ; 2 uses
  %i.aev = mul nsw i32 %i.aad, %i.aej
  %i.aew = mul nsw i32 %i.aae, %i.ael
  %i.aex = mul nsw i32 %i.aaf, %i.aen
  %i.aey = add i32 %i.zp, %i.aev
  %i.aez = add i32 %i.aey, %i.aew
  %i.afa = add i32 %i.aez, %i.aex
  %i.afb = ashr i32 %i.afa, %i.tv                 ; 2 uses
  %i.afc = and i32 %i.aeu, 32768
  %.not104.i.i = icmp eq i32 %i.afc, 0
  %i.afd = and i32 %i.aeu, 65535
  %i.afe = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.afd)
  %i.aff = trunc nuw i32 %i.afe to i16
  %i.afg = select i1 %.not104.i.i, i16 %i.aff, i16 0
  %i.afh = getelementptr inbounds nuw [2 x i8], ptr %.097.i.i, i64 %indvars.iv134.i.i
  store i16 %i.afg, ptr %i.afh, align 2, !tbaa !14
  %i.afi = and i32 %i.afb, 32768
  %.not105.i.i = icmp eq i32 %i.afi, 0
  %i.afj = and i32 %i.afb, 65535
  %i.afk = tail call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.g, i32 %i.afj)
  %i.afl = trunc nuw i32 %i.afk to i16
  %i.afm = select i1 %.not105.i.i, i16 %i.afl, i16 0
  %i.afn = getelementptr inbounds nuw [2 x i8], ptr %.098.i.i, i64 %indvars.iv134.i.i
  store i16 %i.afm, ptr %i.afn, align 2, !tbaa !14
  %indvars.iv.next135.i.i = add nuw nsw i64 %indvars.iv134.i.i, 1 ; 2 uses
  %exitcond139.not.i.i = icmp eq i64 %indvars.iv.next135.i.i, %wide.trip.count146.i.i
  br i1 %exitcond139.not.i.i, label %.split117.i.i, label %scalar.ph181, !llvm.loop !43

.split117.i.i:                                    ; preds = %scalar.ph181, %middle.block211
  %i.afo = getelementptr inbounds nuw [2 x i8], ptr %.195.i.i, i64 %i.dh
  %i.afp = getelementptr inbounds i8, ptr %.097.i.i, i64 %i.yx
  %i.afq = getelementptr inbounds i8, ptr %.098.i.i, i64 %i.yy
  %i.afr = add nuw nsw i32 %.1.i.i, 1             ; 2 uses
  %exitcond141.not.i.i = icmp eq i32 %i.afr, %smax148.i.i
  br i1 %exitcond141.not.i.i, label %DoSharpArgbToYuv.exit, label %.split115.i.i, !llvm.loop !38

DoSharpArgbToYuv.exit:                            ; preds = %.split117.i.i, %.split117.us.us.i.i, %.loopexit
  %.0210.i = phi i32 [ 0, %.loopexit ], [ 1, %.split117.us.us.i.i ], [ 1, %.split117.i.i ]
  tail call void @free(ptr noundef %i.dc) #10
  tail call void @free(ptr noundef %i.dl) #10
  tail call void @free(ptr noundef %i.dd) #10
  tail call void @free(ptr noundef %i.dm) #10
  tail call void @free(ptr noundef %i.df) #10
  tail call void @free(ptr noundef %i.do) #10
  tail call void @free(ptr noundef %i.cx) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.g, %bb.e, %bb.c, %bb.b, %bb.a, %DoSharpArgbToYuv.exit
  %.0102 = phi i32 [ %.0210.i, %DoSharpArgbToYuv.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ]
  ret i32 %.0102
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @SharpYuvOptionsInitInternal(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %0, null
  %or.cond.not22 = and i1 %i.b, %i.a
  %i.c = and i32 %2, -65536
  %or.cond7.not = icmp eq i32 %i.c, 262144
  %or.cond20 = and i1 %or.cond.not22, %or.cond7.not
  br i1 %or.cond20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %1, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 13, ptr %i.d, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ImportOneRow(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6) unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 6 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 6 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.d = ptrtoaddr ptr %6 to i64                  ; 14 uses
  %i.e = add i32 %5, 1                            ; 2 uses
  %i.f = and i32 %i.e, -2                         ; 4 uses
  %i.g = icmp eq i32 %4, 8
  %i.h = icmp slt i32 %4, 13
  %i.i = sub nsw i32 14, %4
  %i.j = select i1 %i.h, i32 2, i32 %i.i          ; 6 uses
  %i.k = sub nsw i32 0, %i.j                      ; 4 uses
  %i.l = shl i32 %i.f, 1                          ; 2 uses
  br i1 %i.g, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.m = sext i32 %3 to i64
  %i.n = sext i32 %i.f to i64                     ; 2 uses
  %i.o = sext i32 %i.l to i64                     ; 2 uses
  %smax82 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count83 = zext nneg i32 %smax82 to i64 ; 9 uses
  %invariant.gep93 = getelementptr [2 x i8], ptr %6, i64 %i.n ; 7 uses
  %invariant.gep95 = getelementptr [2 x i8], ptr %6, i64 %i.o ; 7 uses
  %min.iters.check216 = icmp sgt i32 %5, 55
  %ident.check164.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check216, %ident.check164.not
  br i1 %or.cond, label %vector.memcheck217, label %.split.us.preheader276

vector.memcheck217:                               ; preds = %.split.us.preheader
  %i.p = shl nuw nsw i64 %wide.trip.count83, 1
  %i.q = getelementptr i8, ptr %6, i64 %i.p       ; 5 uses
  %i.r = add nsw i64 %i.n, %wide.trip.count83
  %i.s = shl nsw i64 %i.r, 1
  %i.t = getelementptr i8, ptr %6, i64 %i.s       ; 5 uses
  %i.u = add nsw i64 %i.o, %wide.trip.count83
  %i.v = shl nsw i64 %i.u, 1
  %i.w = getelementptr i8, ptr %6, i64 %i.v       ; 5 uses
  %i.x = getelementptr i8, ptr %0, i64 %wide.trip.count83 ; 3 uses
  %i.y = getelementptr i8, ptr %1, i64 %wide.trip.count83 ; 3 uses
  %i.z = getelementptr i8, ptr %2, i64 %wide.trip.count83 ; 3 uses
  %bound0 = icmp ult ptr %6, %i.t
  %bound1 = icmp ult ptr %invariant.gep93, %i.q
  %found.conflict = and i1 %bound0, %bound1
  %bound0218 = icmp ult ptr %6, %i.w
  %bound1219 = icmp ult ptr %invariant.gep95, %i.q
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %found.conflict, %found.conflict220
  %bound0222 = icmp ult ptr %6, %i.x
  %bound1223 = icmp ult ptr %0, %i.q
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx225 = or i1 %conflict.rdx221, %found.conflict224
  %bound0226 = icmp ult ptr %6, %i.y
  %bound1227 = icmp ult ptr %1, %i.q
  %found.conflict228 = and i1 %bound0226, %bound1227
  %conflict.rdx229 = or i1 %conflict.rdx225, %found.conflict228
  %bound0230 = icmp ult ptr %6, %i.z
  %bound1231 = icmp ult ptr %2, %i.q
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx233 = or i1 %conflict.rdx229, %found.conflict232
  %bound0234 = icmp ult ptr %invariant.gep93, %i.w
  %bound1235 = icmp ult ptr %invariant.gep95, %i.t
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %conflict.rdx233, %found.conflict236
  %bound0238 = icmp ult ptr %invariant.gep93, %i.x
  %bound1239 = icmp ult ptr %0, %i.t
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %conflict.rdx237, %found.conflict240
  %bound0242 = icmp ult ptr %invariant.gep93, %i.y
  %bound1243 = icmp ult ptr %1, %i.t
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241, %found.conflict244
  %bound0246 = icmp ult ptr %invariant.gep93, %i.z
  %bound1247 = icmp ult ptr %2, %i.t
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  %bound0250 = icmp ult ptr %invariant.gep95, %i.x
  %bound1251 = icmp ult ptr %0, %i.w
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  %bound0254 = icmp ult ptr %invariant.gep95, %i.y
  %bound1255 = icmp ult ptr %1, %i.w
  %found.conflict256 = and i1 %bound0254, %bound1255
  %conflict.rdx257 = or i1 %conflict.rdx253, %found.conflict256
  %bound0258 = icmp ult ptr %invariant.gep95, %i.z
  %bound1259 = icmp ult ptr %2, %i.w
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %conflict.rdx257, %found.conflict260
  br i1 %conflict.rdx261, label %.split.us.preheader276, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck217
  %n.vec263 = and i64 %wide.trip.count83, 2147483640 ; 3 uses
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph262
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next269, %vector.body264 ] ; 7 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %index265
  %wide.load266 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !18, !alias.scope !62
  %i.ab = zext <8 x i8> %wide.load266 to <8 x i16>
  %i.ac = shl nuw nsw <8 x i16> %i.ab, splat (i16 2)
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index265
  store <8 x i16> %i.ac, ptr %i.ad, align 2, !tbaa !14, !alias.scope !63, !noalias !64
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %index265
  %wide.load267 = load <8 x i8>, ptr %i.ae, align 1, !tbaa !18, !alias.scope !65
  %i.af = zext <8 x i8> %wide.load267 to <8 x i16>
  %i.ag = shl nuw nsw <8 x i16> %i.af, splat (i16 2)
  %i.ah = getelementptr [2 x i8], ptr %invariant.gep93, i64 %index265
  store <8 x i16> %i.ag, ptr %i.ah, align 2, !tbaa !14, !alias.scope !66, !noalias !67
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %index265
  %wide.load268 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !18, !alias.scope !68
  %i.aj = zext <8 x i8> %wide.load268 to <8 x i16>
  %i.ak = shl nuw nsw <8 x i16> %i.aj, splat (i16 2)
  %i.al = getelementptr [2 x i8], ptr %invariant.gep95, i64 %index265
  store <8 x i16> %i.ak, ptr %i.al, align 2, !tbaa !14, !alias.scope !69, !noalias !70
  %index.next269 = add nuw i64 %index265, 8       ; 2 uses
  %i.am = icmp eq i64 %index.next269, %n.vec263
  br i1 %i.am, label %middle.block270, label %vector.body264, !llvm.loop !56

middle.block270:                                  ; preds = %vector.body264
  %cmp.n271 = icmp eq i64 %n.vec263, %wide.trip.count83
  br i1 %cmp.n271, label %.split67.us, label %.split.us.preheader276

.split.us.preheader276:                           ; preds = %vector.memcheck217, %.split.us.preheader, %middle.block270
  %indvars.iv79.ph = phi i64 [ 0, %vector.memcheck217 ], [ 0, %.split.us.preheader ], [ %n.vec263, %middle.block270 ]
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader276, %.split.us
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %.split.us ], [ %indvars.iv79.ph, %.split.us.preheader276 ] ; 5 uses
  %i.an = mul nsw i64 %indvars.iv79, %i.m         ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !18
  %i.aq = zext i8 %i.ap to i16
  %i.ar = shl nuw nsw i16 %i.aq, 2
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv79
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !14
  %i.at = getelementptr inbounds i8, ptr %1, i64 %i.an
  %i.au = load i8, ptr %i.at, align 1, !tbaa !18
  %i.av = zext i8 %i.au to i16
  %i.aw = shl nuw nsw i16 %i.av, 2
  %gep94 = getelementptr [2 x i8], ptr %invariant.gep93, i64 %indvars.iv79
  store i16 %i.aw, ptr %gep94, align 2, !tbaa !14
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.an
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !18
  %i.az = zext i8 %i.ay to i16
  %i.ba = shl nuw nsw i16 %i.az, 2
  %gep96 = getelementptr [2 x i8], ptr %invariant.gep95, i64 %indvars.iv79
  store i16 %i.ba, ptr %gep96, align 2, !tbaa !14
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count83
  br i1 %exitcond84.not, label %.split67.us, label %.split.us, !llvm.loop !57

.split:                                           ; preds = %bb.a
  %i.bb = icmp sgt i32 %4, 8
  %i.bc = sdiv i32 %3, 2
  %i.bd = select i1 %i.bb, i32 %i.bc, i32 %3      ; 2 uses
  %i.be = icmp slt i32 %i.j, 0
  %i.bf = sext i32 %i.bd to i64                   ; 2 uses
  %i.bg = sext i32 %i.f to i64                    ; 3 uses
  %i.bh = sext i32 %i.l to i64                    ; 3 uses
  %smax76 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count77 = zext nneg i32 %smax76 to i64 ; 6 uses
  %invariant.gep89 = getelementptr [2 x i8], ptr %6, i64 %i.bg ; 4 uses
  %invariant.gep91 = getelementptr [2 x i8], ptr %6, i64 %i.bh ; 4 uses
  %min.iters.check149 = icmp sgt i32 %5, 47
  %ident.check123.not = icmp eq i32 %i.bd, 1
  %or.cond275 = and i1 %min.iters.check149, %ident.check123.not ; 2 uses
  br i1 %i.be, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  br i1 %or.cond275, label %vector.memcheck, label %.split.split.preheader279

vector.memcheck:                                  ; preds = %.split.split.preheader
  %i.bi = shl nsw i64 %i.bg, 1                    ; 4 uses
  %i.bj = add nsw i64 %i.bi, -1
  %diff.check = icmp ult i64 %i.bj, 15
  %i.bk = shl nsw i64 %i.bh, 1                    ; 4 uses
  %i.bl = add nsw i64 %i.bk, -1
  %diff.check99 = icmp ult i64 %i.bl, 15
  %conflict.rdx = or i1 %diff.check, %diff.check99
  %i.bm = sub i64 %i.c, %i.d
  %diff.check100 = icmp ugt i64 %i.bm, -16
  %conflict.rdx101 = or i1 %conflict.rdx, %diff.check100
  %i.bn = sub i64 %i.d, %i.b
  %diff.check102 = icmp ugt i64 %i.bn, -16
  %conflict.rdx103 = or i1 %conflict.rdx101, %diff.check102
  %i.bo = sub i64 %i.d, %i.a
  %diff.check104 = icmp ugt i64 %i.bo, -16
  %conflict.rdx105 = or i1 %conflict.rdx103, %diff.check104
  %i.bp = sub nsw i64 %i.bi, %i.bk
  %diff.check106 = icmp ugt i64 %i.bp, -16
  %conflict.rdx107 = or i1 %conflict.rdx105, %diff.check106
  %i.bq = add i64 %i.bi, %i.d                     ; 2 uses
  %i.br = sub i64 %i.c, %i.bq
  %diff.check108 = icmp ugt i64 %i.br, -16
  %conflict.rdx109 = or i1 %conflict.rdx107, %diff.check108
  %i.bs = sub i64 %i.b, %i.bq
  %diff.check110 = icmp ugt i64 %i.bs, -16
  %conflict.rdx111 = or i1 %conflict.rdx109, %diff.check110
  %7 = add i64 %i.bi, %i.d
  %i.bt = sub i64 %7, %i.a
  %diff.check112 = icmp ugt i64 %i.bt, -16
  %conflict.rdx113 = or i1 %conflict.rdx111, %diff.check112
  %i.bu = add i64 %i.bk, %i.d                     ; 2 uses
  %i.bv = sub i64 %i.c, %i.bu
  %diff.check114 = icmp ugt i64 %i.bv, -16
  %conflict.rdx115 = or i1 %conflict.rdx113, %diff.check114
  %i.bw = sub i64 %i.b, %i.bu
  %diff.check116 = icmp ugt i64 %i.bw, -16
  %conflict.rdx117 = or i1 %conflict.rdx115, %diff.check116
  %8 = add i64 %i.bk, %i.d
  %i.bx = sub i64 %i.a, %8
  %diff.check118 = icmp ugt i64 %i.bx, -16
  %conflict.rdx119 = or i1 %conflict.rdx117, %diff.check118
  br i1 %conflict.rdx119, label %.split.split.preheader279, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count77, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.by = getelementptr inbounds [2 x i8], ptr %0, i64 %index
  %wide.load = load <8 x i16>, ptr %i.by, align 2, !tbaa !14
  %i.bz = zext <8 x i16> %wide.load to <8 x i32>
  %i.ca = shl <8 x i32> %i.bz, %broadcast.splat
  %i.cb = trunc <8 x i32> %i.ca to <8 x i16>
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index
  store <8 x i16> %i.cb, ptr %i.cc, align 2, !tbaa !14
  %i.cd = getelementptr inbounds [2 x i8], ptr %1, i64 %index
  %wide.load120 = load <8 x i16>, ptr %i.cd, align 2, !tbaa !14
  %i.ce = zext <8 x i16> %wide.load120 to <8 x i32>
  %i.cf = shl <8 x i32> %i.ce, %broadcast.splat
  %i.cg = trunc <8 x i32> %i.cf to <8 x i16>
  %i.ch = getelementptr [2 x i8], ptr %invariant.gep89, i64 %index
  store <8 x i16> %i.cg, ptr %i.ch, align 2, !tbaa !14
  %i.ci = getelementptr inbounds [2 x i8], ptr %2, i64 %index
  %wide.load121 = load <8 x i16>, ptr %i.ci, align 2, !tbaa !14
  %i.cj = zext <8 x i16> %wide.load121 to <8 x i32>
  %i.ck = shl <8 x i32> %i.cj, %broadcast.splat
  %i.cl = trunc <8 x i32> %i.ck to <8 x i16>
  %i.cm = getelementptr [2 x i8], ptr %invariant.gep91, i64 %index
  store <8 x i16> %i.cl, ptr %i.cm, align 2, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count77
  br i1 %cmp.n, label %.split67.us, label %.split.split.preheader279

.split.split.preheader279:                        ; preds = %vector.memcheck, %.split.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.split.preheader ], [ %n.vec, %middle.block ]
  br label %.split.split

.split.split.us.preheader:                        ; preds = %.split
  br i1 %or.cond275, label %vector.memcheck124, label %.split.split.us.preheader277

vector.memcheck124:                               ; preds = %.split.split.us.preheader
  %i.co = shl nsw i64 %i.bg, 1                    ; 4 uses
  %i.cp = add nsw i64 %i.co, -1
  %diff.check125.a = icmp ult i64 %i.cp, 15
  %i.cq = shl nsw i64 %i.bh, 1                    ; 4 uses
  %i.cr = add nsw i64 %i.cq, -1
  %diff.check126 = icmp ult i64 %i.cr, 15
  %conflict.rdx127 = or i1 %diff.check125.a, %diff.check126
  %i.cs = sub i64 %i.c, %i.d
  %diff.check128 = icmp ugt i64 %i.cs, -16
  %conflict.rdx129 = or i1 %conflict.rdx127, %diff.check128
  %i.ct = sub i64 %i.d, %i.b
  %diff.check130 = icmp ugt i64 %i.ct, -16
  %conflict.rdx131 = or i1 %conflict.rdx129, %diff.check130
  %i.cu = sub i64 %i.d, %i.a
  %diff.check132 = icmp ugt i64 %i.cu, -16
  %conflict.rdx133 = or i1 %conflict.rdx131, %diff.check132
  %i.cv = sub nsw i64 %i.co, %i.cq
  %diff.check134 = icmp ugt i64 %i.cv, -16
  %conflict.rdx135 = or i1 %conflict.rdx133, %diff.check134
  %i.cw = add i64 %i.co, %i.d                     ; 2 uses
  %i.cx = sub i64 %i.c, %i.cw
  %diff.check136 = icmp ugt i64 %i.cx, -16
  %conflict.rdx137 = or i1 %conflict.rdx135, %diff.check136
  %i.cy = sub i64 %i.b, %i.cw
  %diff.check138 = icmp ugt i64 %i.cy, -16
  %conflict.rdx139 = or i1 %conflict.rdx137, %diff.check138
  %9 = add i64 %i.co, %i.d
  %i.cz = sub i64 %9, %i.a
  %diff.check140 = icmp ugt i64 %i.cz, -16
  %conflict.rdx141 = or i1 %conflict.rdx139, %diff.check140
  %i.da = add i64 %i.cq, %i.d                     ; 2 uses
  %i.db = sub i64 %i.c, %i.da
  %diff.check142 = icmp ugt i64 %i.db, -16
  %conflict.rdx143 = or i1 %conflict.rdx141, %diff.check142
  %i.dc = sub i64 %i.b, %i.da
  %diff.check144 = icmp ugt i64 %i.dc, -16
  %conflict.rdx145 = or i1 %conflict.rdx143, %diff.check144
  %10 = add i64 %i.cq, %i.d
  %i.dd = sub i64 %i.a, %10
  %diff.check146 = icmp ugt i64 %i.dd, -16
  %conflict.rdx147 = or i1 %conflict.rdx145, %diff.check146
  br i1 %conflict.rdx147, label %.split.split.us.preheader277, label %vector.ph150

vector.ph150:                                     ; preds = %vector.memcheck124
  %n.vec151 = and i64 %wide.trip.count77, 2147483640 ; 3 uses
  %broadcast.splatinsert152 = insertelement <8 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat153 = shufflevector <8 x i32> %broadcast.splatinsert152, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph150
  %index155 = phi i64 [ 0, %vector.ph150 ], [ %index.next159, %vector.body154 ] ; 7 uses
  %i.de = getelementptr inbounds [2 x i8], ptr %0, i64 %index155
  %wide.load156 = load <8 x i16>, ptr %i.de, align 2, !tbaa !14
  %i.df = zext <8 x i16> %wide.load156 to <8 x i32>
  %i.dg = lshr <8 x i32> %i.df, %broadcast.splat153
  %i.dh = trunc nuw <8 x i32> %i.dg to <8 x i16>
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index155
  store <8 x i16> %i.dh, ptr %i.di, align 2, !tbaa !14
  %i.dj = getelementptr inbounds [2 x i8], ptr %1, i64 %index155
  %wide.load157 = load <8 x i16>, ptr %i.dj, align 2, !tbaa !14
  %i.dk = zext <8 x i16> %wide.load157 to <8 x i32>
  %i.dl = lshr <8 x i32> %i.dk, %broadcast.splat153
  %i.dm = trunc nuw <8 x i32> %i.dl to <8 x i16>
  %i.dn = getelementptr [2 x i8], ptr %invariant.gep89, i64 %index155
  store <8 x i16> %i.dm, ptr %i.dn, align 2, !tbaa !14
  %i.do = getelementptr inbounds [2 x i8], ptr %2, i64 %index155
  %wide.load158 = load <8 x i16>, ptr %i.do, align 2, !tbaa !14
  %i.dp = zext <8 x i16> %wide.load158 to <8 x i32>
  %i.dq = lshr <8 x i32> %i.dp, %broadcast.splat153
  %i.dr = trunc nuw <8 x i32> %i.dq to <8 x i16>
  %i.ds = getelementptr [2 x i8], ptr %invariant.gep91, i64 %index155
  store <8 x i16> %i.dr, ptr %i.ds, align 2, !tbaa !14
  %index.next159 = add nuw i64 %index155, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next159, %n.vec151
  br i1 %i.dt, label %middle.block160, label %vector.body154, !llvm.loop !59

middle.block160:                                  ; preds = %vector.body154
  %cmp.n161 = icmp eq i64 %n.vec151, %wide.trip.count77
  br i1 %cmp.n161, label %.split67.us, label %.split.split.us.preheader277

.split.split.us.preheader277:                     ; preds = %vector.memcheck124, %.split.split.us.preheader, %middle.block160
  %indvars.iv73.ph = phi i64 [ 0, %vector.memcheck124 ], [ 0, %.split.split.us.preheader ], [ %n.vec151, %middle.block160 ]
  br label %.split.split.us

.split.split.us:                                  ; preds = %.split.split.us.preheader277, %.split.split.us
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.split.split.us ], [ %indvars.iv73.ph, %.split.split.us.preheader277 ] ; 5 uses
  %i.du = mul nsw i64 %indvars.iv73, %i.bf        ; 3 uses
  %i.dv = getelementptr inbounds [2 x i8], ptr %0, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !14
  %i.dx = zext i16 %i.dw to i32
  %i.dy = lshr i32 %i.dx, %i.k
  %i.dz = trunc nuw i32 %i.dy to i16
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv73
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !14
  %i.eb = getelementptr inbounds [2 x i8], ptr %1, i64 %i.du
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !14
  %i.ed = zext i16 %i.ec to i32
  %i.ee = lshr i32 %i.ed, %i.k
  %i.ef = trunc nuw i32 %i.ee to i16
  %gep90 = getelementptr [2 x i8], ptr %invariant.gep89, i64 %indvars.iv73
  store i16 %i.ef, ptr %gep90, align 2, !tbaa !14
  %i.eg = getelementptr inbounds [2 x i8], ptr %2, i64 %i.du
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !14
  %i.ei = zext i16 %i.eh to i32
  %i.ej = lshr i32 %i.ei, %i.k
  %i.ek = trunc nuw i32 %i.ej to i16
  %gep92 = getelementptr [2 x i8], ptr %invariant.gep91, i64 %indvars.iv73
  store i16 %i.ek, ptr %gep92, align 2, !tbaa !14
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count77
  br i1 %exitcond78.not, label %.split67.us, label %.split.split.us, !llvm.loop !60

.split.split:                                     ; preds = %.split.split.preheader279, %.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split.split ], [ %indvars.iv.ph, %.split.split.preheader279 ] ; 5 uses
  %i.el = mul nsw i64 %indvars.iv, %i.bf          ; 3 uses
  %i.em = getelementptr inbounds [2 x i8], ptr %0, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2, !tbaa !14
  %i.eo = zext i16 %i.en to i32
  %i.ep = shl i32 %i.eo, %i.j
  %i.eq = trunc i32 %i.ep to i16
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !14
  %i.es = getelementptr inbounds [2 x i8], ptr %1, i64 %i.el
  %i.et = load i16, ptr %i.es, align 2, !tbaa !14
  %i.eu = zext i16 %i.et to i32
  %i.ev = shl i32 %i.eu, %i.j
  %i.ew = trunc i32 %i.ev to i16
  %gep = getelementptr [2 x i8], ptr %invariant.gep89, i64 %indvars.iv
  store i16 %i.ew, ptr %gep, align 2, !tbaa !14
  %i.ex = getelementptr inbounds [2 x i8], ptr %2, i64 %i.el
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !14
  %i.ez = zext i16 %i.ey to i32
  %i.fa = shl i32 %i.ez, %i.j
  %i.fb = trunc i32 %i.fa to i16
  %gep88 = getelementptr [2 x i8], ptr %invariant.gep91, i64 %indvars.iv
  store i16 %i.fb, ptr %gep88, align 2, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count77
  br i1 %exitcond.not, label %.split67.us, label %.split.split, !llvm.loop !61

.split67.us:                                      ; preds = %.split.split, %.split.split.us, %.split.us, %middle.block, %middle.block160, %middle.block270
  %i.fc = and i32 %5, 1
  %.not = icmp eq i32 %i.fc, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split67.us
  %i.fd = sext i32 %5 to i64
  %i.fe = getelementptr [2 x i8], ptr %6, i64 %i.fd ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 -2
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !14
  store i16 %i.fg, ptr %i.fe, align 2, !tbaa !14
  %i.fh = add nsw i32 %i.f, %5
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr [2 x i8], ptr %6, i64 %i.fi ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 -2
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !14
  store i16 %i.fl, ptr %i.fj, align 2, !tbaa !14
  %i.fm = shl nsw i32 %i.e, 1
  %i.fn = add nsw i32 %i.fm, %5
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr [2 x i8], ptr %6, i64 %i.fo ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 -2
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !14
  store i16 %i.fr, ptr %i.fp, align 2, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split67.us
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @UpdateChroma(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 -1073741824, 1073741824) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %4, 13
  %i.b = sub nsw i32 14, %4
  %i.c = select i1 %i.a, i32 2, i32 %i.b
  %i.d = add nsw i32 %i.c, %4                     ; 15 uses
  %i.e = shl nsw i32 %3, 1                        ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 3 uses
  %i.g = or disjoint i32 %i.e, 1
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = shl nsw i32 %3, 2                        ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = or disjoint i32 %i.i, 1
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = sext i32 %3 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %3, i32 1)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.051 = phi i32 [ 0, %bb.a ], [ %i.cg, %bb.b ]
  %.050 = phi ptr [ %2, %bb.a ], [ %i.cd, %bb.b ] ; 4 uses
  %.049 = phi ptr [ %1, %bb.a ], [ %i.cf, %bb.b ] ; 7 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.ce, %bb.b ]   ; 7 uses
  %i.n = load i16, ptr %.0, align 2, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !14
  %i.q = load i16, ptr %.049, align 2, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %.049, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !14
  %i.t = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.n, i32 noundef %i.d, i32 noundef %5) #10
  %i.u = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.p, i32 noundef %i.d, i32 noundef %5) #10
  %i.v = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.q, i32 noundef %i.d, i32 noundef %5) #10
  %i.w = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.s, i32 noundef %i.d, i32 noundef %5) #10
  %i.x = add i32 %i.t, 2
  %i.y = add i32 %i.x, %i.u
  %i.z = add i32 %i.y, %i.v
  %i.aa = add i32 %i.z, %i.w
  %i.ab = lshr i32 %i.aa, 2
  %i.ac = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.ab, i32 noundef %i.d, i32 noundef %5) #10 ; 2 uses
  %i.ad = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.f
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !14
  %i.af = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.h
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !14
  %i.ah = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.f
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !14
  %i.aj = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.h
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !14
  %i.al = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ae, i32 noundef %i.d, i32 noundef %5) #10
  %i.am = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ag, i32 noundef %i.d, i32 noundef %5) #10
  %i.an = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ai, i32 noundef %i.d, i32 noundef %5) #10
  %i.ao = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ak, i32 noundef %i.d, i32 noundef %5) #10
  %i.ap = add i32 %i.al, 2
  %i.aq = add i32 %i.ap, %i.am
  %i.ar = add i32 %i.aq, %i.an
  %i.as = add i32 %i.ar, %i.ao
  %i.at = lshr i32 %i.as, 2
  %i.au = tail call zeroext i16 @SharpYuvLinearToGamma(i32 noundef %i.at, i32 noundef %i.d, i32 noundef %5) #10 ; 2 uses
  %i.av = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.j
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !14
  %i.ax = getelementptr inbounds [2 x i8], ptr %.0, i64 %i.l
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !14
  %i.az = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.j
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !14
  %i.bb = getelementptr inbounds [2 x i8], ptr %.049, i64 %i.l
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !14
  %i.bd = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.aw, i32 noundef %i.d, i32 noundef %5) #10
  %i.be = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ay, i32 noundef %i.d, i32 noundef %5) #10
  %i.bf = tail call i32 @SharpYuvGammaToLinear(i16 noundef zeroext %i.ba, i32 noundef %i.d, i32 noundef %5) #10
end_hunk_0
