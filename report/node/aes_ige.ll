Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/aes_ige?download=true
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@AES_ige_encrypt:bb.a
  %i.aa = load i64, ptr %i.z, align 1, !tbaa !17
  %i.ab = load i64, ptr %i.v, align 1, !tbaa !17
  %i.ac = xor i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %i.v, align 1, !tbaa !17
  %i.ad = add nsw i64 %.0122168, -1               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0127167, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.0131166, i64 16
  %.not144 = icmp eq i64 %i.ad, 0
  br i1 %.not144, label %._crit_edge171, label %.preheader, !llvm.loop !12

._crit_edge171:                                   ; preds = %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.0131166, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(16) %.0127167, i64 16, i1 false)
  br label %bb.k

.lr.ph181.preheader:                              ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %.sroa.6207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.6199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ah = load <2 x i64>, ptr %i.ag, align 1
  %i.ai = load <2 x i64>, ptr %4, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph181.preheader, %.lr.ph181
  %.1179 = phi i64 [ %i.a, %.lr.ph181.preheader ], [ %i.as, %.lr.ph181 ]
  %.1128178 = phi ptr [ %0, %.lr.ph181.preheader ], [ %i.at, %.lr.ph181 ] ; 2 uses
  %.1132177 = phi ptr [ %1, %.lr.ph181.preheader ], [ %i.au, %.lr.ph181 ] ; 2 uses
  %i.ak = phi <2 x i64> [ %i.ai, %.lr.ph181.preheader ], [ %i.ap, %.lr.ph181 ]
  %i.al = phi <2 x i64> [ %i.ah, %.lr.ph181.preheader ], [ %i.am, %.lr.ph181 ]
  %i.am = load <2 x i64>, ptr %.1128178, align 1  ; 4 uses
  %i.an = xor <2 x i64> %i.ak, %i.am
  store <2 x i64> %i.an, ptr %6, align 16, !tbaa !17
  call void @AES_encrypt(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %3) #5
  %i.ao = load <2 x i64>, ptr %6, align 16, !tbaa !17
  %i.ap = xor <2 x i64> %i.ao, %i.al              ; 3 uses
  %i.aq = extractelement <2 x i64> %i.ap, i64 0   ; 2 uses
  store i64 %i.aq, ptr %6, align 16, !tbaa !17
  %i.ar = extractelement <2 x i64> %i.ap, i64 1   ; 2 uses
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1132177, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !18
  %i.as = add nsw i64 %.1179, -1                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1128178, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.1132177, i64 16
  %.not143 = icmp eq i64 %i.as, 0
  br i1 %.not143, label %._crit_edge182, label %.lr.ph181, !llvm.loop !13

._crit_edge182:                                   ; preds = %.lr.ph181
  store i64 %i.aq, ptr %4, align 1
  store i64 %i.ar, ptr %.sroa.6207.0..sroa_idx, align 1
  %i.av = extractelement <2 x i64> %i.am, i64 0
  store i64 %i.av, ptr %i.ag, align 1
  %i.aw = extractelement <2 x i64> %i.am, i64 1
  store i64 %i.aw, ptr %.sroa.6199.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  br i1 %.not142, label %.lr.ph161.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0152 = phi ptr [ %.2133148, %.lr.ph ], [ %i.ax, %.lr.ph.preheader ]
  %.0119151 = phi ptr [ %.2129149, %.lr.ph ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.2150 = phi i64 [ %i.bj, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %.2129149 = phi ptr [ %i.bk, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %.2133148 = phi ptr [ %i.bl, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.ay = load <2 x i64>, ptr %.2129149, align 1, !tbaa !17
  %i.az = load <2 x i64>, ptr %.0152, align 1, !tbaa !17
  %i.ba = xor <2 x i64> %i.az, %i.ay
  store <2 x i64> %i.ba, ptr %7, align 16, !tbaa !17
  call void @AES_decrypt(ptr noundef nonnull %7, ptr noundef nonnull %.2133148, ptr noundef nonnull %3) #5
  %i.bb = load i64, ptr %.0119151, align 1, !tbaa !17
  %i.bc = load i64, ptr %.2133148, align 1, !tbaa !17
  %i.bd = xor i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %.2133148, align 1, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.0119151, i64 8
  %i.bf = load i64, ptr %i.be, align 1, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %.2133148, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 1, !tbaa !17
  %i.bi = xor i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.bg, align 1, !tbaa !17
  %i.bj = add nsw i64 %.2150, -1                  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.2129149, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %.2133148, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  %.not141 = icmp eq i64 %i.bj, 0
  br i1 %.not141, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.2129149, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ax, ptr noundef nonnull align 1 dereferenceable(16) %.2133148, i64 16, i1 false)
  br label %bb.k

.lr.ph161.preheader:                              ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bn = load <2 x i64>, ptr %i.bm, align 1
  %i.bo = load <2 x i64>, ptr %4, align 1
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %.lr.ph161
  %.3159 = phi i64 [ %i.a, %.lr.ph161.preheader ], [ %i.bx, %.lr.ph161 ]
  %.3130158 = phi ptr [ %0, %.lr.ph161.preheader ], [ %i.by, %.lr.ph161 ] ; 2 uses
  %.3134157 = phi ptr [ %1, %.lr.ph161.preheader ], [ %i.bz, %.lr.ph161 ] ; 2 uses
  %i.bp = phi <2 x i64> [ %i.bn, %.lr.ph161.preheader ], [ %i.bu, %.lr.ph161 ]
  %i.bq = phi <2 x i64> [ %i.bo, %.lr.ph161.preheader ], [ %i.br, %.lr.ph161 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(16) %.3130158, i64 16, i1 false), !tbaa.struct !18
  %i.br = load <2 x i64>, ptr %8, align 16        ; 4 uses
  %i.bs = xor <2 x i64> %i.br, %i.bp
  store <2 x i64> %i.bs, ptr %8, align 16, !tbaa !17
  call void @AES_decrypt(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %3) #5
  %i.bt = load <2 x i64>, ptr %8, align 16, !tbaa !17
  %i.bu = xor <2 x i64> %i.bt, %i.bq              ; 3 uses
  %i.bv = extractelement <2 x i64> %i.bu, i64 0   ; 2 uses
  store i64 %i.bv, ptr %8, align 16, !tbaa !17
  %i.bw = extractelement <2 x i64> %i.bu, i64 1   ; 2 uses
  store i64 %i.bw, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.3134157, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !18
  %i.bx = add nsw i64 %.3159, -1                  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.3130158, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %.3134157, i64 16
  %.not140 = icmp eq i64 %i.bx, 0
  br i1 %.not140, label %._crit_edge162, label %.lr.ph161, !llvm.loop !15

._crit_edge162:                                   ; preds = %.lr.ph161
  %i.ca = extractelement <2 x i64> %i.br, i64 0
  store i64 %i.ca, ptr %4, align 1
  %i.cb = extractelement <2 x i64> %i.br, i64 1
  store i64 %i.cb, ptr %.sroa.6193.0..sroa_idx, align 1
  store i64 %i.bv, ptr %i.bm, align 1
  store i64 %i.bw, ptr %.sroa.6.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge182, %._crit_edge171, %._crit_edge162, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @AES_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @AES_decrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @AES_bi_ige_encrypt(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.c = insertelement <4 x ptr> %i.b, ptr %1, i64 1
  %i.d = insertelement <4 x ptr> %i.c, ptr %3, i64 2
  %i.e = insertelement <4 x ptr> %i.d, ptr %5, i64 3
  %i.f = icmp eq <4 x ptr> %i.e, splat (ptr null)
  %i.g = bitcast <4 x i1> %i.f to i4
  %i.h = icmp eq i4 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_die(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 194) #4
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %6, 1
  %or.cond7 = icmp ult i32 %6, 2
  br i1 %or.cond7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 195) #4
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = and i64 %2, 15
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 196) #4
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = icmp ugt i64 %2, 15
  br i1 %i.l, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  br i1 %i.i, label %.preheader.preheader, label %.lr.ph.preheader

.preheader.preheader:                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = load i8, ptr %0, align 1, !tbaa !11
  %i.o = load i8, ptr %5, align 1, !tbaa !11
  %i.p = xor i8 %i.o, %i.n
  store i8 %i.p, ptr %1, align 1, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !11
  %i.u = xor i8 %i.t, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  store i8 %i.u, ptr %i.v, align 1, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11
  %i.aa = xor i8 %i.z, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = xor i8 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !11
  %i.am = xor i8 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  store i8 %i.am, ptr %i.an, align 1, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.as = xor i8 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  store i8 %i.as, ptr %i.at, align 1, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ay = xor i8 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 3 uses
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !11
  %i.be = xor i8 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 3 uses
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bk = xor i8 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.bq = xor i8 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 3 uses
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !11
  %i.bw = xor i8 %i.bv, %i.bt
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !11
  %i.cc = xor i8 %i.cb, %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 3 uses
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ci = xor i8 %i.ch, %i.cf
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 13
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.co = xor i8 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 3 uses
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11
  %i.cu = xor i8 %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 3 uses
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !11
  %i.da = xor i8 %i.cz, %i.cx
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 15 ; 3 uses
  store i8 %i.da, ptr %i.db, align 1, !tbaa !11
  tail call void @AES_encrypt(ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %3) #5
  %i.dc = load i8, ptr %i.m, align 1, !tbaa !11
  %i.dd = load i8, ptr %1, align 1, !tbaa !11
  %i.de = xor i8 %i.dd, %i.dc                     ; 2 uses
  store i8 %i.de, ptr %1, align 1, !tbaa !11
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !11
  %i.dh = load i8, ptr %i.v, align 1, !tbaa !11
  %i.di = xor i8 %i.dh, %i.dg
  store i8 %i.di, ptr %i.v, align 1, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !11
  %i.dl = load i8, ptr %i.ab, align 1, !tbaa !11
  %i.dm = xor i8 %i.dl, %i.dk
  store i8 %i.dm, ptr %i.ab, align 1, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 19
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !11
  %i.dp = load i8, ptr %i.ah, align 1, !tbaa !11
  %i.dq = xor i8 %i.dp, %i.do
  store i8 %i.dq, ptr %i.ah, align 1, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !11
  %i.dt = load i8, ptr %i.an, align 1, !tbaa !11
  %i.du = xor i8 %i.dt, %i.ds
  store i8 %i.du, ptr %i.an, align 1, !tbaa !11
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 21
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !11
  %i.dx = load i8, ptr %i.at, align 1, !tbaa !11
  %i.dy = xor i8 %i.dx, %i.dw
  store i8 %i.dy, ptr %i.at, align 1, !tbaa !11
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 22
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !11
  %i.eb = load i8, ptr %i.az, align 1, !tbaa !11
  %i.ec = xor i8 %i.eb, %i.ea
  store i8 %i.ec, ptr %i.az, align 1, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 23
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !11
  %i.ef = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.eg = xor i8 %i.ef, %i.ee
  store i8 %i.eg, ptr %i.bf, align 1, !tbaa !11
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !11
  %i.ej = load i8, ptr %i.bl, align 1, !tbaa !11
  %i.ek = xor i8 %i.ej, %i.ei
  store i8 %i.ek, ptr %i.bl, align 1, !tbaa !11
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.em = load i8, ptr %i.el, align 1, !tbaa !11
  %i.en = load i8, ptr %i.br, align 1, !tbaa !11
  %i.eo = xor i8 %i.en, %i.em
  store i8 %i.eo, ptr %i.br, align 1, !tbaa !11
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !11
  %i.er = load i8, ptr %i.bx, align 1, !tbaa !11
  %i.es = xor i8 %i.er, %i.eq
  store i8 %i.es, ptr %i.bx, align 1, !tbaa !11
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 27
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !11
  %i.ev = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.ew = xor i8 %i.ev, %i.eu
  store i8 %i.ew, ptr %i.cd, align 1, !tbaa !11
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !11
  %i.ez = load i8, ptr %i.cj, align 1, !tbaa !11
  %i.fa = xor i8 %i.ez, %i.ey
  store i8 %i.fa, ptr %i.cj, align 1, !tbaa !11
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 29
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !11
  %i.fd = load i8, ptr %i.cp, align 1, !tbaa !11
  %i.fe = xor i8 %i.fd, %i.fc
  store i8 %i.fe, ptr %i.cp, align 1, !tbaa !11
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 30
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !11
  %i.fh = load i8, ptr %i.cv, align 1, !tbaa !11
  %i.fi = xor i8 %i.fh, %i.fg
  store i8 %i.fi, ptr %i.cv, align 1, !tbaa !11
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 31
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !11
  %i.fl = load i8, ptr %i.db, align 1, !tbaa !11
  %i.fm = xor i8 %i.fl, %i.fk
  store i8 %i.fm, ptr %i.db, align 1, !tbaa !11
  %i.fn = add i64 %2, -16                         ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fp = icmp ugt i64 %i.fn, 15
  br i1 %i.fp, label %.preheader, label %.lr.ph167.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.fq = phi i8 [ %i.jl, %.preheader ], [ %i.de, %.preheader.preheader ]
  %.sroa.0.0.in = phi ptr [ %.0124154, %.preheader ], [ %0, %.preheader.preheader ] ; 17 uses
end_hunk_0
begin_hunk_1_@AES_bi_ige_encrypt:bb.a
  %i.kh = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !11
  %i.kj = getelementptr inbounds i8, ptr %.0127.lcssa.ph, i64 -12 ; 4 uses
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !11
  %i.kl = xor i8 %i.kk, %i.ki
  store i8 %i.kl, ptr %i.kj, align 1, !tbaa !11
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 37
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !11
  %i.ko = getelementptr inbounds i8, ptr %.0127.lcssa.ph, i64 -11 ; 4 uses
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !11
  %i.kq = xor i8 %i.kp, %i.kn
  store i8 %i.kq, ptr %i.ko, align 1, !tbaa !11
  %i.kr = getelementptr inbounds nuw i8, ptr %5, i64 38
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !11
  %i.kt = getelementptr inbounds i8, ptr %.0127.lcssa.ph, i64 -10 ; 4 uses
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !11
  %i.kv = xor i8 %i.ku, %i.ks
  store i8 %i.kv, ptr %i.kt, align 1, !tbaa !11
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 39
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !11
  %i.ky = getelementptr inbounds i8, ptr %.0127.lcssa.ph, i64 -9 ; 4 uses
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !11
  %i.la = xor i8 %i.kz, %i.kx
  store i8 %i.la, ptr %i.ky, align 1, !tbaa !11
  %i.lb = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !11
  %i.ld = getelementptr inbounds i8, ptr %.0127.lcssa.ph, i64 -8 ; 4 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !11
  %i.lf = xor i8 %i.le, %i.lc
  store i8 %i.lf, ptr %i.ld, align 1, !tbaa !11
  %i.lg = getelementptr inbounds nuw i8, ptr %5, i64 41
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !11
  %i.li = getelementptr inbounds i8, ptr %.0127.lcssa.ph, i64 -7 ; 4 uses
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !11
  %i.lk = xor i8 %i.lj, %i.lh
  store i8 %i.lk, ptr %i.li, align 1, !tbaa !11
  %i.ll = getelementptr inbounds nuw i8, ptr %5, i64 42
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !11
  %i.ln = getelementptr inbounds i8, ptr %.0127.lcssa.ph, i64 -6 ; 4 uses
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !11
  %i.lp = xor i8 %i.lo, %i.lm
  store i8 %i.lp, ptr %i.ln, align 1, !tbaa !11
  %i.lq = getelementptr inbounds nuw i8, ptr %5, i64 43
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !11
  %i.ls = getelementptr inbounds i8, ptr %.0127.lcssa.ph, i64 -5 ; 4 uses
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !11
  %i.lu = xor i8 %i.lt, %i.lr
  store i8 %i.lu, ptr %i.ls, align 1, !tbaa !11
  %i.lv = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !11
  %i.lx = getelementptr inbounds i8, ptr %.0127.lcssa.ph, i64 -4 ; 4 uses
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !11
  %i.lz = xor i8 %i.ly, %i.lw
  store i8 %i.lz, ptr %i.lx, align 1, !tbaa !11
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 45
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !11
  %i.mc = getelementptr inbounds i8, ptr %.0127.lcssa.ph, i64 -3 ; 4 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !11
  %i.me = xor i8 %i.md, %i.mb
  store i8 %i.me, ptr %i.mc, align 1, !tbaa !11
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 46
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !11
  %i.mh = getelementptr inbounds i8, ptr %.0127.lcssa.ph, i64 -2 ; 4 uses
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !11
  %i.mj = xor i8 %i.mi, %i.mg
  store i8 %i.mj, ptr %i.mh, align 1, !tbaa !11
  %i.mk = getelementptr inbounds nuw i8, ptr %5, i64 47
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !11
  %i.mm = getelementptr inbounds i8, ptr %.0127.lcssa.ph, i64 -1 ; 4 uses
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !11
  %i.mo = xor i8 %i.mn, %i.ml
  store i8 %i.mo, ptr %i.mm, align 1, !tbaa !11
  tail call void @AES_encrypt(ptr noundef nonnull %i.jo, ptr noundef nonnull %i.jo, ptr noundef nonnull %3) #5
  %i.mp = load i8, ptr %i.jm, align 1, !tbaa !11
  %i.mq = load i8, ptr %i.jo, align 1, !tbaa !11
  %i.mr = xor i8 %i.mq, %i.mp
  store i8 %i.mr, ptr %i.jo, align 1, !tbaa !11
  %i.ms = getelementptr inbounds nuw i8, ptr %5, i64 49
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !11
  %i.mu = load i8, ptr %i.ju, align 1, !tbaa !11
  %i.mv = xor i8 %i.mu, %i.mt
  store i8 %i.mv, ptr %i.ju, align 1, !tbaa !11
  %i.mw = getelementptr inbounds nuw i8, ptr %5, i64 50
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !11
  %i.my = load i8, ptr %i.jz, align 1, !tbaa !11
  %i.mz = xor i8 %i.my, %i.mx
  store i8 %i.mz, ptr %i.jz, align 1, !tbaa !11
  %i.na = getelementptr inbounds nuw i8, ptr %5, i64 51
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !11
  %i.nc = load i8, ptr %i.ke, align 1, !tbaa !11
  %i.nd = xor i8 %i.nc, %i.nb
  store i8 %i.nd, ptr %i.ke, align 1, !tbaa !11
  %i.ne = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !11
  %i.ng = load i8, ptr %i.kj, align 1, !tbaa !11
  %i.nh = xor i8 %i.ng, %i.nf
  store i8 %i.nh, ptr %i.kj, align 1, !tbaa !11
  %i.ni = getelementptr inbounds nuw i8, ptr %5, i64 53
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !11
  %i.nk = load i8, ptr %i.ko, align 1, !tbaa !11
  %i.nl = xor i8 %i.nk, %i.nj
  store i8 %i.nl, ptr %i.ko, align 1, !tbaa !11
  %i.nm = getelementptr inbounds nuw i8, ptr %5, i64 54
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !11
  %i.no = load i8, ptr %i.kt, align 1, !tbaa !11
  %i.np = xor i8 %i.no, %i.nn
  store i8 %i.np, ptr %i.kt, align 1, !tbaa !11
  %i.nq = getelementptr inbounds nuw i8, ptr %5, i64 55
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !11
  %i.ns = load i8, ptr %i.ky, align 1, !tbaa !11
  %i.nt = xor i8 %i.ns, %i.nr
  store i8 %i.nt, ptr %i.ky, align 1, !tbaa !11
  %i.nu = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !11
  %i.nw = load i8, ptr %i.ld, align 1, !tbaa !11
  %i.nx = xor i8 %i.nw, %i.nv
  store i8 %i.nx, ptr %i.ld, align 1, !tbaa !11
  %i.ny = getelementptr inbounds nuw i8, ptr %5, i64 57
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !11
  %i.oa = load i8, ptr %i.li, align 1, !tbaa !11
  %i.ob = xor i8 %i.oa, %i.nz
  store i8 %i.ob, ptr %i.li, align 1, !tbaa !11
  %i.oc = getelementptr inbounds nuw i8, ptr %5, i64 58
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !11
  %i.oe = load i8, ptr %i.ln, align 1, !tbaa !11
  %i.of = xor i8 %i.oe, %i.od
  store i8 %i.of, ptr %i.ln, align 1, !tbaa !11
  %i.og = getelementptr inbounds nuw i8, ptr %5, i64 59
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !11
  %i.oi = load i8, ptr %i.ls, align 1, !tbaa !11
  %i.oj = xor i8 %i.oi, %i.oh
  store i8 %i.oj, ptr %i.ls, align 1, !tbaa !11
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !11
  %i.om = load i8, ptr %i.lx, align 1, !tbaa !11
  %i.on = xor i8 %i.om, %i.ol
  store i8 %i.on, ptr %i.lx, align 1, !tbaa !11
  %i.oo = getelementptr inbounds nuw i8, ptr %5, i64 61
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !11
  %i.oq = load i8, ptr %i.mc, align 1, !tbaa !11
  %i.or = xor i8 %i.oq, %i.op
  store i8 %i.or, ptr %i.mc, align 1, !tbaa !11
  %i.os = getelementptr inbounds nuw i8, ptr %5, i64 62
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !11
  %i.ou = load i8, ptr %i.mh, align 1, !tbaa !11
  %i.ov = xor i8 %i.ou, %i.ot
  store i8 %i.ov, ptr %i.mh, align 1, !tbaa !11
  %i.ow = getelementptr inbounds nuw i8, ptr %5, i64 63
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !11
  %i.oy = load i8, ptr %i.mm, align 1, !tbaa !11
  %i.oz = xor i8 %i.oy, %i.ox
  store i8 %i.oz, ptr %i.mm, align 1, !tbaa !11
  %.sroa.8.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.sroa.16.0..sroa_idx205 = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %.sroa.18.0..sroa_idx211 = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %.sroa.22.0..sroa_idx223 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.pa = add i64 %2, -16                         ; 2 uses
  %i.pb = icmp ugt i64 %i.pa, 15
  br i1 %i.pb, label %.lr.ph167.peel.next, label %.loopexit

.lr.ph167.peel.next:                              ; preds = %.lr.ph167.preheader
  %i.pc = load <8 x i8>, ptr %.sroa.22.0..sroa_idx223, align 8
  %i.pd = load <2 x i8>, ptr %.sroa.18.0..sroa_idx211, align 2
  %.sroa.16.0.copyload206 = load i8, ptr %.sroa.16.0..sroa_idx205, align 1
  %i.pe = load <4 x i8>, ptr %.sroa.8.0..sroa_idx181, align 1
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.peel.next, %.lr.ph167
  %.sroa.16.1 = phi i8 [ %.sroa.16.0.copyload206, %.lr.ph167.peel.next ], [ %.sroa.16.0.copyload202, %.lr.ph167 ]
  %.1113164 = phi ptr [ %i.jo, %.lr.ph167.peel.next ], [ %i.pj, %.lr.ph167 ] ; 2 uses
  %.1117163 = phi i64 [ %i.pa, %.lr.ph167.peel.next ], [ %i.pz, %.lr.ph167 ]
  %i.pf = phi <8 x i8> [ %i.pc, %.lr.ph167.peel.next ], [ %i.py, %.lr.ph167 ]
  %i.pg = phi <4 x i8> [ %i.pe, %.lr.ph167.peel.next ], [ %i.pn, %.lr.ph167 ]
  %i.ph = phi <2 x i8> [ %i.pd, %.lr.ph167.peel.next ], [ %i.po, %.lr.ph167 ]
  %i.pi = load <16 x i8>, ptr %i.a, align 16
  %i.pj = getelementptr inbounds i8, ptr %.1113164, i64 -16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.pj, i64 16, i1 false)
  %i.pk = load <16 x i8>, ptr %.1113164, align 1, !tbaa !11
  %i.pl = load <16 x i8>, ptr %i.pj, align 1, !tbaa !11
  %i.pm = xor <16 x i8> %i.pl, %i.pk
  store <16 x i8> %i.pm, ptr %i.pj, align 1, !tbaa !11
  tail call void @AES_encrypt(ptr noundef nonnull %i.pj, ptr noundef nonnull %i.pj, ptr noundef nonnull %3) #5
  %i.pn = load <4 x i8>, ptr %.sroa.8.0..sroa_idx181, align 1
  %.sroa.16.0.copyload202 = load i8, ptr %.sroa.16.0..sroa_idx205, align 1
  %i.po = load <2 x i8>, ptr %.sroa.18.0..sroa_idx211, align 2
  %i.pp = load <16 x i8>, ptr %i.pj, align 1, !tbaa !11
  %i.pq = shufflevector <4 x i8> %i.pg, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pr = shufflevector <16 x i8> %i.pi, <16 x i8> %i.pq, <16 x i32> <i32 0, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ps = insertelement <16 x i8> %i.pr, i8 %.sroa.16.1, i64 5
  %i.pt = shufflevector <2 x i8> %i.ph, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pu = shufflevector <16 x i8> %i.ps, <16 x i8> %i.pt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pv = shufflevector <8 x i8> %i.pf, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pw = shufflevector <16 x i8> %i.pu, <16 x i8> %i.pv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.px = xor <16 x i8> %i.pp, %i.pw
  store <16 x i8> %i.px, ptr %i.pj, align 1, !tbaa !11
  %i.py = load <8 x i8>, ptr %.sroa.22.0..sroa_idx223, align 8
  %i.pz = add i64 %.1117163, -16                  ; 2 uses
  %i.qa = icmp ugt i64 %i.pz, 15
  br i1 %i.qa, label %.lr.ph167, label %.loopexit, !llvm.loop !20

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 16 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.qe = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.qf = getelementptr inbounds i8, ptr %i.qc, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.qf, i64 16, i1 false)
  %.sroa.38.0..sroa_idx433 = getelementptr inbounds i8, ptr %i.qc, i64 -8
  %i.qg = load <8 x i8>, ptr %.sroa.38.0..sroa_idx433, align 1
  %i.qh = load <16 x i8>, ptr %i.qd, align 1, !tbaa !11
  %i.qi = load <16 x i8>, ptr %i.a, align 16, !tbaa !11
  %i.qj = xor <16 x i8> %i.qi, %i.qh
  store <16 x i8> %i.qj, ptr %i.a, align 16, !tbaa !11
  %i.qk = getelementptr inbounds i8, ptr %i.qb, i64 -16 ; 5 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.qm = getelementptr inbounds i8, ptr %i.qb, i64 -15 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %5, i64 34
  %i.qo = getelementptr inbounds i8, ptr %i.qb, i64 -14 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %5, i64 35
  %i.qq = getelementptr inbounds i8, ptr %i.qb, i64 -13 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.qs = getelementptr inbounds i8, ptr %i.qb, i64 -12 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %5, i64 37
  %i.qu = getelementptr inbounds i8, ptr %i.qb, i64 -11 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %5, i64 38
  %i.qw = getelementptr inbounds i8, ptr %i.qb, i64 -10 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %5, i64 39
  %i.qy = getelementptr inbounds i8, ptr %i.qb, i64 -9 ; 2 uses
  %i.qz = load <8 x i8>, ptr %i.qf, align 1
  call void @AES_decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.qk, ptr noundef nonnull %3) #5
  %i.ra = load i8, ptr %i.qe, align 1, !tbaa !11
  %i.rb = load i8, ptr %i.qk, align 1, !tbaa !11
  %i.rc = xor i8 %i.rb, %i.ra                     ; 2 uses
  store i8 %i.rc, ptr %i.qk, align 1, !tbaa !11
  %i.rd = load i8, ptr %i.ql, align 1, !tbaa !11
  %i.re = load i8, ptr %i.qm, align 1, !tbaa !11
  %i.rf = xor i8 %i.re, %i.rd                     ; 2 uses
  store i8 %i.rf, ptr %i.qm, align 1, !tbaa !11
  %i.rg = load i8, ptr %i.qn, align 1, !tbaa !11
  %i.rh = load i8, ptr %i.qo, align 1, !tbaa !11
  %i.ri = xor i8 %i.rh, %i.rg                     ; 2 uses
  store i8 %i.ri, ptr %i.qo, align 1, !tbaa !11
  %i.rj = load i8, ptr %i.qp, align 1, !tbaa !11
  %i.rk = load i8, ptr %i.qq, align 1, !tbaa !11
  %i.rl = xor i8 %i.rk, %i.rj                     ; 2 uses
  store i8 %i.rl, ptr %i.qq, align 1, !tbaa !11
  %i.rm = load i8, ptr %i.qr, align 1, !tbaa !11
  %i.rn = load i8, ptr %i.qs, align 1, !tbaa !11
  %i.ro = xor i8 %i.rn, %i.rm                     ; 2 uses
  store i8 %i.ro, ptr %i.qs, align 1, !tbaa !11
  %i.rp = load i8, ptr %i.qt, align 1, !tbaa !11
  %i.rq = load i8, ptr %i.qu, align 1, !tbaa !11
  %i.rr = xor i8 %i.rq, %i.rp                     ; 2 uses
  store i8 %i.rr, ptr %i.qu, align 1, !tbaa !11
  %i.rs = load i8, ptr %i.qv, align 1, !tbaa !11
  %i.rt = load i8, ptr %i.qw, align 1, !tbaa !11
  %i.ru = xor i8 %i.rt, %i.rs                     ; 2 uses
  store i8 %i.ru, ptr %i.qw, align 1, !tbaa !11
  %i.rv = load i8, ptr %i.qx, align 1, !tbaa !11
  %i.rw = load i8, ptr %i.qy, align 1, !tbaa !11
  %i.rx = xor i8 %i.rw, %i.rv                     ; 2 uses
  store i8 %i.rx, ptr %i.qy, align 1, !tbaa !11
  %i.ry = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !11
  %i.sa = getelementptr inbounds i8, ptr %i.qb, i64 -8 ; 2 uses
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !11
  %i.sc = getelementptr inbounds nuw i8, ptr %5, i64 41
  %i.sd = getelementptr inbounds i8, ptr %i.qb, i64 -7 ; 2 uses
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !11
  %i.sf = xor i8 %i.sb, %i.rz                     ; 2 uses
  store i8 %i.sf, ptr %i.sa, align 1, !tbaa !11
  %i.sg = load i8, ptr %i.sc, align 1, !tbaa !11
  %i.sh = xor i8 %i.se, %i.sg                     ; 2 uses
  store i8 %i.sh, ptr %i.sd, align 1, !tbaa !11
  %i.si = getelementptr inbounds nuw i8, ptr %5, i64 42
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !11
  %i.sk = getelementptr inbounds i8, ptr %i.qb, i64 -6 ; 2 uses
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !11
  %i.sm = xor i8 %i.sl, %i.sj
  store i8 %i.sm, ptr %i.sk, align 1, !tbaa !11
  %i.sn = getelementptr inbounds nuw i8, ptr %5, i64 43
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !11
  %i.sp = getelementptr inbounds i8, ptr %i.qb, i64 -5 ; 2 uses
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !11
  %i.sr = xor i8 %i.sq, %i.so
  store i8 %i.sr, ptr %i.sp, align 1, !tbaa !11
  %i.ss = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !11
  %i.su = getelementptr inbounds i8, ptr %i.qb, i64 -4 ; 2 uses
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !11
  %i.sw = xor i8 %i.sv, %i.st
  store i8 %i.sw, ptr %i.su, align 1, !tbaa !11
  %i.sx = getelementptr inbounds nuw i8, ptr %5, i64 45
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !11
  %i.sz = getelementptr inbounds i8, ptr %i.qb, i64 -3 ; 2 uses
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !11
  %i.tb = xor i8 %i.ta, %i.sy
  store i8 %i.tb, ptr %i.sz, align 1, !tbaa !11
  %i.tc = getelementptr inbounds nuw i8, ptr %5, i64 46
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !11
  %i.te = getelementptr inbounds i8, ptr %i.qb, i64 -2 ; 2 uses
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !11
  %i.tg = xor i8 %i.tf, %i.td
  store i8 %i.tg, ptr %i.te, align 1, !tbaa !11
  %i.th = getelementptr inbounds nuw i8, ptr %5, i64 47
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !11
  %i.tj = getelementptr inbounds i8, ptr %i.qb, i64 -1 ; 2 uses
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !11
  %i.tl = xor i8 %i.tk, %i.ti
  store i8 %i.tl, ptr %i.tj, align 1, !tbaa !11
  %i.tm = add i64 %2, -16                         ; 2 uses
  %i.tn = icmp ugt i64 %i.tm, 15
  br i1 %i.tn, label %.lr.ph.preheader489, label %.lr.ph150.preheader

.lr.ph.preheader489:                              ; preds = %.lr.ph.preheader
  %i.to = insertelement <2 x i8> poison, i8 %i.sf, i64 0
  %i.tp = insertelement <2 x i8> %i.to, i8 %i.sh, i64 1
  %i.tq = insertelement <8 x i8> poison, i8 %i.rc, i64 0
  %i.tr = insertelement <8 x i8> %i.tq, i8 %i.rf, i64 1
  %i.ts = insertelement <8 x i8> %i.tr, i8 %i.ri, i64 2
  %i.tt = insertelement <8 x i8> %i.ts, i8 %i.rl, i64 3
  %i.tu = insertelement <8 x i8> %i.tt, i8 %i.ro, i64 4
  %i.tv = insertelement <8 x i8> %i.tu, i8 %i.rr, i64 5
  %i.tw = insertelement <8 x i8> %i.tv, i8 %i.ru, i64 6
  %i.tx = insertelement <8 x i8> %i.tw, i8 %i.rx, i64 7
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader489, %.lr.ph
  %.2142 = phi ptr [ %i.uf, %.lr.ph ], [ %i.qk, %.lr.ph.preheader489 ] ; 4 uses
  %.2118140 = phi i64 [ %i.ux, %.lr.ph ], [ %i.tm, %.lr.ph.preheader489 ]
  %.1125139 = phi ptr [ %i.uc, %.lr.ph ], [ %i.qf, %.lr.ph.preheader489 ] ; 2 uses
  %i.ty = phi <8 x i8> [ %i.uu, %.lr.ph ], [ %i.tx, %.lr.ph.preheader489 ]
  %i.tz = phi <8 x i8> [ %i.ug, %.lr.ph ], [ %i.qz, %.lr.ph.preheader489 ]
  %i.ua = phi <8 x i8> [ %i.us, %.lr.ph ], [ %i.qg, %.lr.ph.preheader489 ]
  %i.ub = phi <2 x i8> [ %i.uz, %.lr.ph ], [ %i.tp, %.lr.ph.preheader489 ]
  %i.uc = getelementptr inbounds i8, ptr %.1125139, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.uc, i64 16, i1 false)
  %.sroa.38.0..sroa_idx = getelementptr inbounds i8, ptr %.1125139, i64 -8
  %i.ud = getelementptr inbounds nuw i8, ptr %.2142, i64 10
  %i.ue = getelementptr inbounds nuw i8, ptr %.2142, i64 14
  %i.uf = getelementptr inbounds i8, ptr %.2142, i64 -16 ; 5 uses
  %i.ug = load <8 x i8>, ptr %i.uc, align 1
  %i.uh = load <4 x i8>, ptr %i.ud, align 1, !tbaa !11
  %i.ui = load <2 x i8>, ptr %i.ue, align 1, !tbaa !11
  %i.uj = load <16 x i8>, ptr %i.a, align 16, !tbaa !11
  %i.uk = shufflevector <2 x i8> %i.ui, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ul = shufflevector <4 x i8> %i.uh, <4 x i8> %i.uk, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>
  %i.um = shufflevector <2 x i8> %i.ub, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.un = shufflevector <16 x i8> %i.ul, <16 x i8> %i.um, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.uo = shufflevector <8 x i8> %i.ty, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.up = shufflevector <16 x i8> %i.uo, <16 x i8> %i.un, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.uq = xor <16 x i8> %i.uj, %i.up
  store <16 x i8> %i.uq, ptr %i.a, align 16, !tbaa !11
  %i.ur = getelementptr inbounds i8, ptr %.2142, i64 -8 ; 2 uses
  %i.us = load <8 x i8>, ptr %.sroa.38.0..sroa_idx, align 1
  call void @AES_decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %i.uf, ptr noundef nonnull %3) #5
  %i.ut = load <8 x i8>, ptr %i.uf, align 1, !tbaa !11
  %i.uu = xor <8 x i8> %i.ut, %i.tz               ; 2 uses
  store <8 x i8> %i.uu, ptr %i.uf, align 1, !tbaa !11
  %i.uv = load <8 x i8>, ptr %i.ur, align 1, !tbaa !11
  %i.uw = xor <8 x i8> %i.uv, %i.ua               ; 2 uses
  store <8 x i8> %i.uw, ptr %i.ur, align 1, !tbaa !11
  %i.ux = add i64 %.2118140, -16                  ; 2 uses
  %i.uy = icmp ugt i64 %i.ux, 15
  %i.uz = shufflevector <8 x i8> %i.uw, <8 x i8> poison, <2 x i32> <i32 0, i32 1>
  br i1 %i.uy, label %.lr.ph, label %.lr.ph150.preheader, !llvm.loop !21

.lr.ph150.preheader:                              ; preds = %.lr.ph, %.lr.ph.preheader
  %.2129.lcssa.ph = phi ptr [ %i.qk, %.lr.ph.preheader ], [ %i.uf, %.lr.ph ] ; 21 uses
  %i.va = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %.2129.lcssa.ph, i64 16, i1 false)
  %.sroa.10397.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 1 ; 2 uses
  %.sroa.14402.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 2 ; 2 uses
  %.sroa.18407.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 3 ; 2 uses
  %.sroa.22412.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 4 ; 2 uses
  %.sroa.26417.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 5 ; 2 uses
  %.sroa.30422.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 6 ; 2 uses
  %.sroa.34427.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 7 ; 2 uses
  %.sroa.38.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 8 ; 2 uses
  %.sroa.42.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 9 ; 2 uses
  %.sroa.46.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 10 ; 2 uses
  %.sroa.50.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 11 ; 2 uses
  %.sroa.54.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 12 ; 2 uses
  %.sroa.58.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 13 ; 2 uses
  %.sroa.62.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 14 ; 2 uses
  %.sroa.66.0..2129.lcssa.sroa_idx = getelementptr inbounds nuw i8, ptr %.2129.lcssa.ph, i64 15 ; 2 uses
  %i.vb = load <16 x i8>, ptr %.2129.lcssa.ph, align 1
  %i.vc = load <16 x i8>, ptr %i.va, align 1, !tbaa !11
  %i.vd = load <16 x i8>, ptr %i.a, align 16, !tbaa !11
  %i.ve = xor <16 x i8> %i.vd, %i.vc
  store <16 x i8> %i.ve, ptr %i.a, align 16, !tbaa !11
  call void @AES_decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %.2129.lcssa.ph, ptr noundef nonnull %3) #5
  %i.vf = load i8, ptr %5, align 1, !tbaa !11
  %i.vg = load i8, ptr %.2129.lcssa.ph, align 1, !tbaa !11
  %i.vh = xor i8 %i.vg, %i.vf
  store i8 %i.vh, ptr %.2129.lcssa.ph, align 1, !tbaa !11
  %i.vi = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !11
  %i.vk = load i8, ptr %.sroa.10397.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.vl = xor i8 %i.vk, %i.vj
  store i8 %i.vl, ptr %.sroa.10397.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.vm = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !11
  %i.vo = load i8, ptr %.sroa.14402.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.vp = xor i8 %i.vo, %i.vn
  store i8 %i.vp, ptr %.sroa.14402.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.vq = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !11
  %i.vs = load i8, ptr %.sroa.18407.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.vt = xor i8 %i.vs, %i.vr
  store i8 %i.vt, ptr %.sroa.18407.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.vu = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !11
  %i.vw = load i8, ptr %.sroa.22412.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.vx = xor i8 %i.vw, %i.vv
  store i8 %i.vx, ptr %.sroa.22412.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.vy = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !11
  %i.wa = load i8, ptr %.sroa.26417.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.wb = xor i8 %i.wa, %i.vz
  store i8 %i.wb, ptr %.sroa.26417.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.wc = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !11
  %i.we = load i8, ptr %.sroa.30422.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.wf = xor i8 %i.we, %i.wd
  store i8 %i.wf, ptr %.sroa.30422.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.wg = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !11
  %i.wi = load i8, ptr %.sroa.34427.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.wj = xor i8 %i.wi, %i.wh
  store i8 %i.wj, ptr %.sroa.34427.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.wk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !11
  %i.wm = load i8, ptr %.sroa.38.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.wn = xor i8 %i.wm, %i.wl
  store i8 %i.wn, ptr %.sroa.38.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.wo = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !11
  %i.wq = load i8, ptr %.sroa.42.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.wr = xor i8 %i.wq, %i.wp
  store i8 %i.wr, ptr %.sroa.42.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.ws = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !11
  %i.wu = load i8, ptr %.sroa.46.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.wv = xor i8 %i.wu, %i.wt
  store i8 %i.wv, ptr %.sroa.46.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.ww = getelementptr inbounds nuw i8, ptr %5, i64 11
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !11
  %i.wy = load i8, ptr %.sroa.50.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.wz = xor i8 %i.wy, %i.wx
  store i8 %i.wz, ptr %.sroa.50.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.xa = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !11
  %i.xc = load i8, ptr %.sroa.54.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.xd = xor i8 %i.xc, %i.xb
  store i8 %i.xd, ptr %.sroa.54.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.xe = getelementptr inbounds nuw i8, ptr %5, i64 13
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !11
  %i.xg = load i8, ptr %.sroa.58.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.xh = xor i8 %i.xg, %i.xf
  store i8 %i.xh, ptr %.sroa.58.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.xi = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !11
  %i.xk = load i8, ptr %.sroa.62.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.xl = xor i8 %i.xk, %i.xj
  store i8 %i.xl, ptr %.sroa.62.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.xm = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !11
  %i.xo = load i8, ptr %.sroa.66.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.xp = xor i8 %i.xo, %i.xn
  store i8 %i.xp, ptr %.sroa.66.0..2129.lcssa.sroa_idx, align 1, !tbaa !11
  %i.xq = add i64 %2, -16                         ; 2 uses
  %i.xr = icmp ugt i64 %i.xq, 15
  br i1 %i.xr, label %.lr.ph150, label %.loopexit

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %.lr.ph150
  %.3148 = phi ptr [ %.3130145, %.lr.ph150 ], [ %.2129.lcssa.ph, %.lr.ph150.preheader ] ; 2 uses
  %.3119146 = phi i64 [ %i.xz, %.lr.ph150 ], [ %i.xq, %.lr.ph150.preheader ]
  %i.xs = phi <16 x i8> [ %i.xw, %.lr.ph150 ], [ %i.vb, %.lr.ph150.preheader ]
  %.3130145 = getelementptr inbounds nuw i8, ptr %.3148, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %.3130145, i64 16, i1 false)
  %i.xt = load <16 x i8>, ptr %.3148, align 1, !tbaa !11
  %i.xu = load <16 x i8>, ptr %i.a, align 16, !tbaa !11
  %i.xv = xor <16 x i8> %i.xu, %i.xt
  store <16 x i8> %i.xv, ptr %i.a, align 16, !tbaa !11
  %i.xw = load <16 x i8>, ptr %.3130145, align 1
  call void @AES_decrypt(ptr noundef nonnull %i.a, ptr noundef nonnull %.3130145, ptr noundef nonnull %3) #5
  %i.xx = load <16 x i8>, ptr %.3130145, align 1, !tbaa !11
  %i.xy = xor <16 x i8> %i.xx, %i.xs
  store <16 x i8> %i.xy, ptr %.3130145, align 1, !tbaa !11
  %i.xz = add i64 %.3119146, -16                  ; 2 uses
  %i.ya = icmp ugt i64 %i.xz, 15
  br i1 %i.ya, label %.lr.ph150, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph150, %.lr.ph167, %bb.g, %.lr.ph150.preheader, %.lr.ph167.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = !{!"long", !6, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{i64 0, i64 16, !11}
!19 = distinct !{!19, !10, !23}
!20 = distinct !{!20, !10, !23}
!21 = distinct !{!21, !10, !23}
!22 = distinct !{!22, !10, !23}
!23 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
