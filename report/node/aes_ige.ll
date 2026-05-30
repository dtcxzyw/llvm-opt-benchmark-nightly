begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.aes_block_t = type { [2 x i64] }

@.str = private unnamed_addr constant [43 x i8] c"assertion failed: in && out && key && ivec\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"../../deps/openssl/openssl/crypto/aes/aes_ige.c\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"assertion failed: (AES_ENCRYPT == enc) || (AES_DECRYPT == enc)\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"assertion failed: (length % AES_BLOCK_SIZE) == 0\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @AES_ige_encrypt(ptr noundef readonly captures(address) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.aes_block_t, align 16       ; 9 uses
  %7 = alloca %struct.aes_block_t, align 16       ; 4 uses
  %8 = alloca %struct.aes_block_t, align 16       ; 11 uses
  %i.a = lshr i64 %2, 4                           ; 4 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.d = insertelement <4 x ptr> %i.c, ptr %1, i64 1
  %i.e = insertelement <4 x ptr> %i.d, ptr %3, i64 2
  %i.f = insertelement <4 x ptr> %i.e, ptr %4, i64 3
  %i.g = icmp eq <4 x ptr> %i.f, splat (ptr null)
  %i.h = bitcast <4 x i1> %i.g to i4
  %i.i = icmp eq i4 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @OPENSSL_die(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 58) #4
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %5, 1
  %or.cond7 = icmp ult i32 %5, 2
  br i1 %or.cond7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 59) #4
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = and i64 %2, 15
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 60) #4
  unreachable

bb.h:                                             ; preds = %bb.f
  %.not142 = icmp eq ptr %0, %1                   ; 2 uses
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.not142, label %.lr.ph181.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.pre215 = load i64, ptr %4, align 1, !tbaa !9
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.n = phi i64 [ %i.y, %.preheader ], [ %.pre215, %.preheader.preheader ]
  %.0170 = phi ptr [ %i.ae, %.preheader ], [ %0, %.preheader.preheader ] ; 5 uses
  %.0119169 = phi ptr [ %i.af, %.preheader ], [ %1, %.preheader.preheader ] ; 9 uses
  %.0129168 = phi i64 [ %i.ad, %.preheader ], [ %i.a, %.preheader.preheader ]
  %.0133167 = phi ptr [ %.0170, %.preheader ], [ %i.m, %.preheader.preheader ] ; 2 uses
  %.0134166 = phi ptr [ %.0119169, %.preheader ], [ %4, %.preheader.preheader ]
  %i.o = load i64, ptr %.0170, align 1, !tbaa !9
  %i.p = xor i64 %i.n, %i.o
  store i64 %i.p, ptr %.0119169, align 1, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %.0170, i64 8
  %i.r = load i64, ptr %i.q, align 1, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %.0134166, i64 8
  %i.t = load i64, ptr %i.s, align 1, !tbaa !9
  %i.u = xor i64 %i.t, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %.0119169, i64 8 ; 3 uses
  store i64 %i.u, ptr %i.v, align 1, !tbaa !9
  tail call void @AES_encrypt(ptr noundef nonnull %.0119169, ptr noundef nonnull %.0119169, ptr noundef nonnull %3) #5
  %i.w = load i64, ptr %.0133167, align 1, !tbaa !9
  %i.x = load i64, ptr %.0119169, align 1, !tbaa !9
  %i.y = xor i64 %i.x, %i.w                       ; 2 uses
  store i64 %i.y, ptr %.0119169, align 1, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %.0133167, i64 8
  %i.aa = load i64, ptr %i.z, align 1, !tbaa !9
  %i.ab = load i64, ptr %i.v, align 1, !tbaa !9
  %i.ac = xor i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %i.v, align 1, !tbaa !9
  %i.ad = add nsw i64 %.0129168, -1               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0170, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.0119169, i64 16
  %.not144 = icmp eq i64 %i.ad, 0
  br i1 %.not144, label %._crit_edge171, label %.preheader, !llvm.loop !11

._crit_edge171:                                   ; preds = %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.0119169, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(16) %.0170, i64 16, i1 false)
  br label %bb.k

.lr.ph181.preheader:                              ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %.sroa.6207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.6199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ah = load <2 x i64>, ptr %i.ag, align 1
  %i.ai = load <2 x i64>, ptr %4, align 1
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph181.preheader, %.lr.ph181
  %.1179 = phi ptr [ %0, %.lr.ph181.preheader ], [ %i.aq, %.lr.ph181 ] ; 2 uses
  %.1120178 = phi ptr [ %1, %.lr.ph181.preheader ], [ %i.ar, %.lr.ph181 ] ; 2 uses
  %.1130177 = phi i64 [ %i.a, %.lr.ph181.preheader ], [ %i.ap, %.lr.ph181 ]
  %i.aj = phi <2 x i64> [ %i.ai, %.lr.ph181.preheader ], [ %i.ao, %.lr.ph181 ]
  %i.ak = phi <2 x i64> [ %i.ah, %.lr.ph181.preheader ], [ %i.al, %.lr.ph181 ]
  %i.al = load <2 x i64>, ptr %.1179, align 1     ; 4 uses
  %i.am = xor <2 x i64> %i.aj, %i.al
  store <2 x i64> %i.am, ptr %6, align 16, !tbaa !9
  call void @AES_encrypt(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %3) #5
  %i.an = load <2 x i64>, ptr %6, align 16, !tbaa !9
  %i.ao = xor <2 x i64> %i.an, %i.ak              ; 3 uses
  %10 = extractelement <2 x i64> %i.ao, i64 0     ; 2 uses
  store i64 %10, ptr %6, align 16, !tbaa !9
  %11 = extractelement <2 x i64> %i.ao, i64 1     ; 2 uses
  store i64 %11, ptr %9, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1120178, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !13
  %i.ap = add nsw i64 %.1130177, -1               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.1179, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.1120178, i64 16
  %.not143 = icmp eq i64 %i.ap, 0
  br i1 %.not143, label %._crit_edge182, label %.lr.ph181, !llvm.loop !15

._crit_edge182:                                   ; preds = %.lr.ph181
  store i64 %10, ptr %4, align 1
  store i64 %11, ptr %.sroa.6207.0..sroa_idx, align 1
  %i.as = extractelement <2 x i64> %i.al, i64 0
  store i64 %i.as, ptr %i.ag, align 1
  %i.at = extractelement <2 x i64> %i.al, i64 1
  store i64 %i.at, ptr %.sroa.6199.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  br i1 %.not142, label %.lr.ph161.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.au, align 1, !tbaa !9
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.2152 = phi ptr [ %i.bi, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %.2121151 = phi ptr [ %i.bj, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 6 uses
  %.0124149 = phi ptr [ %.2152, %.lr.ph ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %.2131148 = phi i64 [ %i.bh, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.aw = phi <2 x i64> [ %i.bl, %.lr.ph ], [ %i.av, %.lr.ph.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.ax = getelementptr inbounds nuw i8, ptr %.0124149, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.2121151, i64 8 ; 2 uses
  %i.az = load <2 x i64>, ptr %.2152, align 1, !tbaa !9
  %i.ba = xor <2 x i64> %i.aw, %i.az
  store <2 x i64> %i.ba, ptr %7, align 16, !tbaa !9
  call void @AES_decrypt(ptr noundef nonnull %7, ptr noundef nonnull %.2121151, ptr noundef nonnull %3) #5
  %i.bb = load i64, ptr %.0124149, align 1, !tbaa !9
  %i.bc = load i64, ptr %.2121151, align 1, !tbaa !9
  %i.bd = xor i64 %i.bc, %i.bb                    ; 2 uses
  store i64 %i.bd, ptr %.2121151, align 1, !tbaa !9
  %i.be = load i64, ptr %i.ax, align 1, !tbaa !9
  %i.bf = load i64, ptr %i.ay, align 1, !tbaa !9
  %i.bg = xor i64 %i.bf, %i.be                    ; 2 uses
  store i64 %i.bg, ptr %i.ay, align 1, !tbaa !9
  %i.bh = add nsw i64 %.2131148, -1               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.2152, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.2121151, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  %.not141 = icmp eq i64 %i.bh, 0
  %i.bk = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %i.bl = insertelement <2 x i64> %i.bk, i64 %i.bg, i64 1
  br i1 %.not141, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.2152, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.au, ptr noundef nonnull align 1 dereferenceable(16) %.2121151, i64 16, i1 false)
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
  %.3159 = phi ptr [ %0, %.lr.ph161.preheader ], [ %i.bw, %.lr.ph161 ] ; 2 uses
  %.3122158 = phi ptr [ %1, %.lr.ph161.preheader ], [ %i.bx, %.lr.ph161 ] ; 2 uses
  %.3132157 = phi i64 [ %i.a, %.lr.ph161.preheader ], [ %i.bv, %.lr.ph161 ]
  %i.bp = phi <2 x i64> [ %i.bn, %.lr.ph161.preheader ], [ %i.bu, %.lr.ph161 ]
  %i.bq = phi <2 x i64> [ %i.bo, %.lr.ph161.preheader ], [ %i.br, %.lr.ph161 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(16) %.3159, i64 16, i1 false), !tbaa.struct !13
  %i.br = load <2 x i64>, ptr %8, align 16        ; 4 uses
  %i.bs = xor <2 x i64> %i.br, %i.bp
  store <2 x i64> %i.bs, ptr %8, align 16, !tbaa !9
  call void @AES_decrypt(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %3) #5
  %i.bt = load <2 x i64>, ptr %8, align 16, !tbaa !9
  %i.bu = xor <2 x i64> %i.bt, %i.bq              ; 3 uses
  %12 = extractelement <2 x i64> %i.bu, i64 0     ; 2 uses
  store i64 %12, ptr %8, align 16, !tbaa !9
  %13 = extractelement <2 x i64> %i.bu, i64 1     ; 2 uses
  store i64 %13, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.3122158, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !13
  %i.bv = add nsw i64 %.3132157, -1               ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.3159, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.3122158, i64 16
  %.not140 = icmp eq i64 %i.bv, 0
  br i1 %.not140, label %._crit_edge162, label %.lr.ph161, !llvm.loop !17

._crit_edge162:                                   ; preds = %.lr.ph161
  %i.by = extractelement <2 x i64> %i.br, i64 0
  store i64 %i.by, ptr %4, align 1
  %i.bz = extractelement <2 x i64> %i.br, i64 1
  store i64 %i.bz, ptr %.sroa.6193.0..sroa_idx, align 1
  store i64 %12, ptr %i.bm, align 1
  store i64 %13, ptr %.sroa.6.0..sroa_idx, align 1
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
define dso_local void @AES_bi_ige_encrypt(ptr noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef readnone captures(none) %4, ptr noundef readonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #0 {
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
  %i.l = icmp ugt i64 %2, 15                      ; 2 uses
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.l, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = load i8, ptr %0, align 1, !tbaa !14
  %i.o = load i8, ptr %5, align 1, !tbaa !14
  %i.p = xor i8 %i.o, %i.n
  store i8 %i.p, ptr %1, align 1, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = xor i8 %i.t, %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  store i8 %i.u, ptr %i.v, align 1, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = xor i8 %i.z, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = xor i8 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = xor i8 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  store i8 %i.am, ptr %i.an, align 1, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = xor i8 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  store i8 %i.as, ptr %i.at, align 1, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !14
  %i.ay = xor i8 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 3 uses
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.be = xor i8 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 3 uses
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !14
  %i.bk = xor i8 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %i.bq = xor i8 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 3 uses
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !14
  %i.bw = xor i8 %i.bv, %i.bt
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !14
  %i.cc = xor i8 %i.cb, %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 3 uses
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !14
  %i.ci = xor i8 %i.ch, %i.cf
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 13
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !14
  %i.co = xor i8 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 3 uses
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !14
  %i.cu = xor i8 %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 3 uses
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !14
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !14
  %i.da = xor i8 %i.cz, %i.cx
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 15 ; 3 uses
  store i8 %i.da, ptr %i.db, align 1, !tbaa !14
  tail call void @AES_encrypt(ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %3) #5
  %i.dc = load i8, ptr %i.m, align 1, !tbaa !14
  %i.dd = load i8, ptr %1, align 1, !tbaa !14
  %i.de = xor i8 %i.dd, %i.dc                     ; 2 uses
  store i8 %i.de, ptr %1, align 1, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !14
  %i.dh = load i8, ptr %i.v, align 1, !tbaa !14
  %i.di = xor i8 %i.dh, %i.dg
  store i8 %i.di, ptr %i.v, align 1, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !14
  %i.dl = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.dm = xor i8 %i.dl, %i.dk
  store i8 %i.dm, ptr %i.ab, align 1, !tbaa !14
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 19
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !14
  %i.dp = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.dq = xor i8 %i.dp, %i.do
  store i8 %i.dq, ptr %i.ah, align 1, !tbaa !14
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !14
  %i.dt = load i8, ptr %i.an, align 1, !tbaa !14
end_hunk_0
