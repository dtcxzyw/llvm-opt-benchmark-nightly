Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/zstd_opt?download=true
inline.NumInlined: 270
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.repcodes_s = type { [3 x i32] }
%struct.ZSTD_optLdm_t = type { %struct.RawSeqStore_t, i32, i32, i32 }
%struct.RawSeqStore_t = type { ptr, i64, i64, i64, i64 }

@__const.ZSTD_selectBtGetAllMatches.getAllMatchesFns = private unnamed_addr constant [3 x [4 x ptr]] [[4 x ptr] [ptr @ZSTD_btGetAllMatches_noDict_3, ptr @ZSTD_btGetAllMatches_noDict_4, ptr @ZSTD_btGetAllMatches_noDict_5, ptr @ZSTD_btGetAllMatches_noDict_6], [4 x ptr] [ptr @ZSTD_btGetAllMatches_extDict_3, ptr @ZSTD_btGetAllMatches_extDict_4, ptr @ZSTD_btGetAllMatches_extDict_5, ptr @ZSTD_btGetAllMatches_extDict_6], [4 x ptr] [ptr @ZSTD_btGetAllMatches_dictMatchState_3, ptr @ZSTD_btGetAllMatches_dictMatchState_4, ptr @ZSTD_btGetAllMatches_dictMatchState_5, ptr @ZSTD_btGetAllMatches_dictMatchState_6]], align 16
@__const.ZSTD_rescaleFreqs.baseLLfreqs = private unnamed_addr constant [36 x i32] [i32 4, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@__const.ZSTD_rescaleFreqs.baseOFCfreqs = private unnamed_addr constant [32 x i32] [i32 6, i32 2, i32 1, i32 1, i32 2, i32 3, i32 4, i32 4, i32 4, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@LL_bits = internal unnamed_addr constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ZSTD_LLcode.LL_Code = internal unnamed_addr constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10\11\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 16
@ML_bits = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@ZSTD_MLcode.ML_Code = internal unnamed_addr constant [128 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$$$$%%%%&&&&&&&&''''''''(((((((((((((((())))))))))))))))********************************", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ZSTD_updateTree(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32                    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39   ; 2 uses
  %i.k = icmp ult i32 %i.j, %i.h
  br i1 %i.k, label %.lr.ph, label %ZSTD_updateTree_internal.exit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i4 = phi i32 [ %i.o, %.lr.ph ], [ %i.j, %bb.a ] ; 2 uses
  %i.l = zext i32 %.0.i4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  %i.n = tail call fastcc i32 @ZSTD_insertBt1(ptr noundef nonnull %0, ptr noundef %i.m, ptr noundef %2, i32 noundef %i.h, i32 noundef %i.b, i32 noundef 0)
  %i.o = add i32 %i.n, %.0.i4                     ; 2 uses
  %i.p = icmp ult i32 %i.o, %i.h
  br i1 %i.p, label %.lr.ph, label %ZSTD_updateTree_internal.exit, !llvm.loop !0

ZSTD_updateTree_internal.exit:                    ; preds = %.lr.ph, %bb.a
  store i32 %i.h, ptr %i.i, align 4, !tbaa !39
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock_btopt(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.repcodes_s, align 8         ; 11 uses
  %7 = alloca %struct.repcodes_s, align 8         ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %.sroa.19.i = alloca [3 x i32], align 4         ; 6 uses
  %8 = alloca %struct.ZSTD_optLdm_t, align 8      ; 10 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 6 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !41
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr i8, ptr %0, i64 272
  %.val = load i32, ptr %i.m, align 8, !tbaa !37  ; 4 uses
  %i.n = icmp ult i32 %.val, 3
  %i.o = add i32 %.val, -6
  %brmerge.i = icmp ult i32 %i.o, -3
  %.mux.i = select i1 %i.n, i64 0, i64 3
  %i.p = add nsw i32 %.val, -3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = select i1 %brmerge.i, i64 %.mux.i, i64 %i.q
  %i.s = zext nneg i32 %5 to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr @__const.ZSTD_selectBtGetAllMatches.getAllMatchesFns, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.x = load i32, ptr %i.w, align 4, !tbaa !43
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.x, i32 4095) ; 2 uses
  %i.y = icmp eq i32 %.val, 3
  %i.z = select i1 %i.y, i32 3, i32 4             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !39
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45 ; 43 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i8 0, i64 12, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !tbaa.struct !49
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 0, ptr %i.ai, align 8, !tbaa !52
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 0, ptr %i.aj, align 8, !tbaa !53
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 0, ptr %i.ak, align 4, !tbaa !54
  %i.al = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.am = ptrtoint ptr %i.e to i64                ; 3 uses
  %i.an = trunc i64 %4 to i32
  call fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef %8, i32 noundef 0, i32 noundef %i.an)
  tail call fastcc void @ZSTD_rescaleFreqs(ptr noundef nonnull %i.d, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  %i.ao = icmp eq ptr %3, %i.l
  %i.ap = zext i1 %i.ao to i64                    ; 2 uses
  %i.aq = add nsw i64 %4, -8
  %i.ar = icmp sgt i64 %i.aq, %i.ap
  br i1 %i.ar, label %.lr.ph238, label %ZSTD_compressBlock_opt_generic.exit

.lr.ph238:                                        ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bd = getelementptr i8, ptr %0, i64 240       ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.sroa.2.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %.sroa.2.0..sroa_idx.phi.trans.insert.i46 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %i.e, i64 -32 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.z to i64
  %i.br = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.br, 1
  %unroll_iter = and i64 %i.br, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod423 = trunc i64 %i.br to i1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph238, %bb.cd
  %.0442.i236 = phi ptr [ %i.as, %.lr.ph238 ], [ %.4.i, %bb.cd ] ; 6 uses
  %.0444.i235 = phi ptr [ %3, %.lr.ph238 ], [ %.3447.i, %bb.cd ] ; 5 uses
  %.sroa.0214.0.i234 = phi i32 [ 0, %.lr.ph238 ], [ %.sroa.0214.2.i, %bb.cd ] ; 4 uses
  %i.bs = ptrtoint ptr %.0442.i236 to i64         ; 3 uses
  %i.bt = ptrtoint ptr %.0444.i235 to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  %i.bv = trunc i64 %i.bu to i32                  ; 10 uses
  %.not488.i = icmp eq i32 %i.bv, 0
  %i.bw = zext i1 %.not488.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.bx = call i32 %i.v(ptr noundef %i.af, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %.0442.i236, ptr noundef %i.e, ptr noundef %2, i32 noundef %i.bw, i32 noundef %i.z) #11, !inline_history !1
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !44
  %i.by = sub i64 %i.bs, %i.al
  %i.bz = trunc i64 %i.by to i32
  %i.ca = sub i64 %i.am, %i.bs
  %i.cb = trunc i64 %i.ca to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %8, ptr noundef %i.af, ptr noundef %i.b, i32 noundef %i.bz, i32 noundef %i.cb, i32 noundef %i.z)
  %i.cc = load i32, ptr %i.b, align 4, !tbaa !44  ; 3 uses
  %.not489.i = icmp eq i32 %i.cc, 0
  br i1 %.not489.i, label %.thread66, label %bb.f

.thread66:                                        ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %.0442.i236, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.cd

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.at, align 4, !tbaa !56
  store i32 %i.bv, ptr %i.au, align 4, !tbaa !57
  %i.ce = load i32, ptr %i.av, align 8, !tbaa !58
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cg = add i32 %i.bv, 1
  %i.ch = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cg, i1 true)
  %i.ci = shl nuw nsw i32 %i.ch, 8
  %i.cj = xor i32 %i.ci, 7936
  br label %ZSTD_litLengthPrice.exit

bb.h:                                             ; preds = %bb.f
  %i.ck = icmp eq i32 %i.bv, 131072
  br i1 %i.ck, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cl = load i32, ptr %i.aw, align 4, !tbaa !59
  %i.cm = load ptr, ptr %i.ax, align 8, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 140
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !44
  %i.cp = add i32 %i.co, 1
  %i.cq = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cp, i1 true)
  %i.cr = shl nuw nsw i32 %i.cq, 8
  %.neg23.i = add i32 %i.cl, -3584
  %i.cs = add i32 %.neg23.i, %i.cr
  br label %ZSTD_litLengthPrice.exit

bb.j:                                             ; preds = %bb.h
  %i.ct = icmp ugt i32 %i.bv, 63
  br i1 %i.ct, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cu = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bv, i1 true)
  %i.cv = sub nuw nsw i32 50, %i.cu
  br label %ZSTD_LLcode.exit.i

bb.l:                                             ; preds = %bb.j
  %i.cw = and i64 %i.bu, 63
  %i.cx = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !61
  %i.cz = zext i8 %i.cy to i32
  br label %ZSTD_LLcode.exit.i

ZSTD_LLcode.exit.i:                               ; preds = %bb.l, %bb.k
  %i.da = phi i32 [ %i.cv, %bb.k ], [ %i.cz, %bb.l ]
  %i.db = zext nneg i32 %i.da to i64              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !61
  %i.de = zext i8 %i.dd to i32
  %i.df = load i32, ptr %i.aw, align 4, !tbaa !59
  %i.dg = load ptr, ptr %i.ax, align 8, !tbaa !60
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.db
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !44
  %i.dj = add i32 %i.di, 1
  %i.dk = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dj, i1 true)
  %reass.add = add nuw nsw i32 %i.dk, %i.de
  %reass.mul = shl nuw nsw i32 %reass.add, 8
  %i.dl = add i32 %i.df, -7936
  %i.dm = add i32 %i.dl, %reass.mul
  br label %ZSTD_litLengthPrice.exit

ZSTD_litLengthPrice.exit:                         ; preds = %bb.g, %bb.i, %ZSTD_LLcode.exit.i
  %.0.i13 = phi i32 [ %i.dm, %ZSTD_LLcode.exit.i ], [ %i.cs, %bb.i ], [ %i.cj, %bb.g ]
  store i32 %.0.i13, ptr %i.ad, align 4, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ay, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.dn = add i32 %i.cc, -1
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !64 ; 2 uses
  %.not490.i = icmp ugt i32 %i.dr, %spec.select.i
  br i1 %.not490.i, label %.thread144, label %.preheader186

.thread144:                                       ; preds = %ZSTD_litLengthPrice.exit
  %i.ds = load i32, ptr %i.dp, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.az

.preheader186:                                    ; preds = %ZSTD_litLengthPrice.exit, %.preheader186
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader186 ], [ 1, %ZSTD_litLengthPrice.exit ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader186 ], [ 0, %ZSTD_litLengthPrice.exit ]
  %i.dt = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  store i32 1073741824, ptr %i.dt, align 4, !tbaa !62
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 0, ptr %i.du, align 4, !tbaa !56
  %i.dv = trunc nuw nsw i64 %indvars.iv to i32
  %i.dw = add i32 %i.dv, %i.bv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next ; 3 uses
  store i32 1073741824, ptr %i.dy, align 4, !tbaa !62
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i32 0, ptr %i.dz, align 4, !tbaa !56
  %i.ea = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.eb = add i32 %i.ea, %i.bv
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
end_hunk_0
begin_hunk_1_@ZSTD_compressBlock_opt0:bb.a
  %i.pd = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next265.3 ; 2 uses
  store i32 1073741824, ptr %i.pd, align 4, !tbaa !62
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 12
  store i32 1, ptr %i.pe, align 4, !tbaa !57
  %i.pf = icmp samesign ult i64 %indvars.iv.next265.3, %i.oo
  br i1 %i.pf, label %.lr.ph198.us, label %._crit_edge199.us.loopexit, !llvm.loop !5

._crit_edge199.us.loopexit:                       ; preds = %.lr.ph198.us, %.lr.ph198.us.prol.loopexit
  %indvars.iv.next265.lcssa = phi i64 [ %indvars.iv.next265.lcssa.unr, %.lr.ph198.us.prol.loopexit ], [ %indvars.iv.next265.3, %.lr.ph198.us ]
  %i.pg = trunc nuw i64 %indvars.iv.next265.lcssa to i32
  br label %._crit_edge199.us

._crit_edge199.us:                                ; preds = %.._crit_edge199.us_crit_edge, %._crit_edge199.us.loopexit
  %.pre-phi288 = phi i64 [ %.pre287, %.._crit_edge199.us_crit_edge ], [ %i.oo, %._crit_edge199.us.loopexit ]
  %.10.i.lcssa.us = phi i32 [ %.9.i202.us, %.._crit_edge199.us_crit_edge ], [ %i.pg, %._crit_edge199.us.loopexit ] ; 2 uses
  %i.ph = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi288 ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store i32 %.0448.i203.us, ptr %i.pi, align 4, !tbaa !56
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  store i32 %i.nq, ptr %i.pj, align 4, !tbaa !66
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 12
  store i32 0, ptr %i.pk, align 4, !tbaa !57
  store i32 %.reass, ptr %i.ph, align 4, !tbaa !62
  %i.pl = add i32 %.0448.i203.us, -1              ; 2 uses
  %.not497.i.us = icmp ult i32 %i.pl, %i.nx
  br i1 %.not497.i.us, label %._crit_edge206, label %ZSTD_getMatchPrice.exit8.us, !llvm.loop !6

.lr.ph205.split:                                  ; preds = %.lr.ph205
  %i.pm = icmp samesign ugt i32 %i.nz, 19
  %i.pn = shl nuw nsw i32 %i.nz, 9
  %i.po = add nsw i32 %i.pn, -9677
  %i.pp = select i1 %i.pm, i32 %i.po, i32 51
  %i.pq = zext nneg i32 %i.nz to i64
  %i.pr = load i32, ptr %i.az, align 4, !tbaa !67
  %i.ps = load ptr, ptr %i.ba, align 8, !tbaa !68
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %i.pq
  %i.pu = load i32, ptr %i.bb, align 8, !tbaa !69
  %i.pv = load ptr, ptr %i.bc, align 8, !tbaa !70
  %i.pw = add i32 %i.pp, %i.pr
  %invariant.op212 = add i32 %i.pw, %i.pu
  %invariant.op376 = add i32 %invariant.op212, -7936
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph205.split, %._crit_edge199
  %.0448.i203 = phi i32 [ %i.ns, %.lr.ph205.split ], [ %i.sb, %._crit_edge199 ] ; 4 uses
  %.9.i202 = phi i32 [ %.8.i215, %.lr.ph205.split ], [ %.10.i.lcssa, %._crit_edge199 ] ; 4 uses
  %i.px = add i32 %.0448.i203, %.2468.i218        ; 4 uses
  %i.py = add i32 %.0448.i203, -3                 ; 3 uses
  %i.pz = load i32, ptr %i.pt, align 4, !tbaa !44
  %i.qa = add i32 %i.pz, 1
  %i.qb = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.qa, i1 true)
  %i.qc = icmp ugt i32 %i.py, 127
  br i1 %i.qc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.qd = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.py, i1 true)
  %i.qe = sub nuw nsw i32 67, %i.qd
  br label %ZSTD_MLcode.exit34

bb.at:                                            ; preds = %bb.ar
  %i.qf = zext nneg i32 %i.py to i64
  %i.qg = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !61
  %i.qi = zext i8 %i.qh to i32
  br label %ZSTD_MLcode.exit34

ZSTD_MLcode.exit34:                               ; preds = %bb.as, %bb.at
  %i.qj = phi i32 [ %i.qe, %bb.as ], [ %i.qi, %bb.at ]
  %i.qk = zext nneg i32 %i.qj to i64              ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !61
  %i.qn = zext i8 %i.qm to i32
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %i.qk
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !44
  %i.qq = add i32 %i.qp, 1
  %i.qr = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.qq, i1 true)
  %i.qs = shl nuw nsw i32 %i.qr, 8
  %.neg = add nsw i32 %i.qs, -7936
  %reass.add176 = add nuw nsw i32 %i.nz, %i.qn
  %i.qt = add nuw nsw i32 %i.qb, %reass.add176
  %i.qu = shl nuw nsw i32 %i.qt, 8
  %i.qv = add i32 %i.qu, %invariant.op376
  %i.qw = add i32 %i.qv, %.neg
  %i.qx = add nsw i32 %i.mw, %i.qw                ; 2 uses
  %i.qy = icmp ugt i32 %i.px, %.9.i202
  br i1 %i.qy, label %.lr.ph198.preheader, label %bb.au

bb.au:                                            ; preds = %ZSTD_MLcode.exit34
  %i.qz = zext i32 %i.px to i64
  %i.ra = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.qz
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !62
  %i.rc = icmp slt i32 %i.qx, %i.rb
  br i1 %i.rc, label %.._crit_edge199_crit_edge, label %._crit_edge206

.._crit_edge199_crit_edge:                        ; preds = %bb.au
  %.pre289 = zext i32 %i.px to i64
  br label %._crit_edge199

.lr.ph198.preheader:                              ; preds = %ZSTD_MLcode.exit34
  %i.rd = zext i32 %.9.i202 to i64                ; 4 uses
  %i.re = zext i32 %i.px to i64                   ; 4 uses
  %i.rf = sub nsw i64 %i.re, %i.rd
  %xtraiter424 = and i64 %i.rf, 3                 ; 2 uses
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  br i1 %lcmp.mod425.not, label %.lr.ph198.prol.loopexit, label %.lr.ph198.prol

.lr.ph198.prol:                                   ; preds = %.lr.ph198.preheader, %.lr.ph198.prol
  %indvars.iv261.prol = phi i64 [ %indvars.iv.next262.prol, %.lr.ph198.prol ], [ %i.rd, %.lr.ph198.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph198.prol ], [ 0, %.lr.ph198.preheader ]
  %indvars.iv.next262.prol = add nuw nsw i64 %indvars.iv261.prol, 1 ; 4 uses
  %i.rg = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next262.prol ; 2 uses
  store i32 1073741824, ptr %i.rg, align 4, !tbaa !62
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 12
  store i32 1, ptr %i.rh, align 4, !tbaa !57
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter424
  br i1 %prol.iter.cmp.not, label %.lr.ph198.prol.loopexit, label %.lr.ph198.prol, !llvm.loop !117

.lr.ph198.prol.loopexit:                          ; preds = %.lr.ph198.prol, %.lr.ph198.preheader
  %indvars.iv261.unr = phi i64 [ %i.rd, %.lr.ph198.preheader ], [ %indvars.iv.next262.prol, %.lr.ph198.prol ]
  %indvars.iv.next262.lcssa.unr = phi i64 [ poison, %.lr.ph198.preheader ], [ %indvars.iv.next262.prol, %.lr.ph198.prol ]
  %i.ri = sub nsw i64 %i.rd, %i.re
  %i.rj = icmp ugt i64 %i.ri, -4
  br i1 %i.rj, label %._crit_edge199.loopexit, label %.lr.ph198

.lr.ph198:                                        ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198
  %indvars.iv261 = phi i64 [ %indvars.iv.next262.3, %.lr.ph198 ], [ %indvars.iv261.unr, %.lr.ph198.prol.loopexit ] ; 4 uses
  %i.rk = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv261 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 28
  store i32 1073741824, ptr %i.rl, align 4, !tbaa !62
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 40
  store i32 1, ptr %i.rm, align 4, !tbaa !57
  %i.rn = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv261 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 56
  store i32 1073741824, ptr %i.ro, align 4, !tbaa !62
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 68
  store i32 1, ptr %i.rp, align 4, !tbaa !57
  %i.rq = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv261 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 84
  store i32 1073741824, ptr %i.rr, align 4, !tbaa !62
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 96
  store i32 1, ptr %i.rs, align 4, !tbaa !57
  %indvars.iv.next262.3 = add nuw nsw i64 %indvars.iv261, 4 ; 4 uses
  %i.rt = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next262.3 ; 2 uses
  store i32 1073741824, ptr %i.rt, align 4, !tbaa !62
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 12
  store i32 1, ptr %i.ru, align 4, !tbaa !57
  %i.rv = icmp samesign ult i64 %indvars.iv.next262.3, %i.re
  br i1 %i.rv, label %.lr.ph198, label %._crit_edge199.loopexit, !llvm.loop !5

._crit_edge199.loopexit:                          ; preds = %.lr.ph198, %.lr.ph198.prol.loopexit
  %indvars.iv.next262.lcssa = phi i64 [ %indvars.iv.next262.lcssa.unr, %.lr.ph198.prol.loopexit ], [ %indvars.iv.next262.3, %.lr.ph198 ]
  %i.rw = trunc nuw i64 %indvars.iv.next262.lcssa to i32
  br label %._crit_edge199

._crit_edge199:                                   ; preds = %.._crit_edge199_crit_edge, %._crit_edge199.loopexit
  %.pre-phi290 = phi i64 [ %.pre289, %.._crit_edge199_crit_edge ], [ %i.re, %._crit_edge199.loopexit ]
  %.10.i.lcssa = phi i32 [ %.9.i202, %.._crit_edge199_crit_edge ], [ %i.rw, %._crit_edge199.loopexit ] ; 2 uses
  %i.rx = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi290 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  store i32 %.0448.i203, ptr %i.ry, align 4, !tbaa !56
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  store i32 %i.nq, ptr %i.rz, align 4, !tbaa !66
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 12
  store i32 0, ptr %i.sa, align 4, !tbaa !57
  store i32 %i.qx, ptr %i.rx, align 4, !tbaa !62
  %i.sb = add i32 %.0448.i203, -1                 ; 2 uses
  %.not497.i = icmp ult i32 %i.sb, %i.nx
  br i1 %.not497.i, label %._crit_edge206, label %bb.ar, !llvm.loop !6

._crit_edge206:                                   ; preds = %._crit_edge199, %bb.au, %._crit_edge199.us, %bb.aq, %bb.ap
  %.9.i.lcssa = phi i32 [ %.8.i215, %bb.ap ], [ %.9.i202.us, %bb.aq ], [ %.10.i.lcssa.us, %._crit_edge199.us ], [ %.9.i202, %bb.au ], [ %.10.i.lcssa, %._crit_edge199 ] ; 3 uses
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %bb.av, label %bb.an, !llvm.loop !7

bb.av:                                            ; preds = %._crit_edge206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.sc = add i32 %.9.i.lcssa, 1
  %i.sd = zext i32 %i.sc to i64
  %i.se = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.sd
  store i32 1073741824, ptr %i.se, align 4, !tbaa !62
  br label %.thread110

.thread110:                                       ; preds = %..thread110_crit_edge, %bb.ak, %bb.av, %.thread126
  %.pre-phi286 = phi i32 [ %.pre285, %..thread110_crit_edge ], [ %i.mh, %bb.ak ], [ %i.mh, %bb.av ], [ %i.mh, %.thread126 ] ; 2 uses
  %.15.i119 = phi i32 [ %.2461.i219, %..thread110_crit_edge ], [ %.2461.i219, %bb.ak ], [ %.9.i.lcssa, %bb.av ], [ %.2461.i219, %.thread126 ] ; 3 uses
  %.not491.i = icmp ugt i32 %.pre-phi286, %.15.i119
  br i1 %.not491.i, label %bb.aw, label %.lr.ph221, !llvm.loop !8

bb.aw:                                            ; preds = %bb.aj, %.thread110
  %.2461.i.lcssa.ph = phi i32 [ %.15.i119, %.thread110 ], [ %.2461.i219, %bb.aj ] ; 3 uses
  %i.sf = zext i32 %.2461.i.lcssa.ph to i64
  %i.sg = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.sf ; 5 uses
  %.sroa.0214.0.copyload.i = load i32, ptr %i.sg, align 4, !tbaa !44 ; 4 uses
  %.sroa.6217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  %.sroa.6217.0.copyload.i = load i32, ptr %.sroa.6217.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !44 ; 5 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sg, i64 12
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i, align 4, !tbaa !44 ; 4 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sg, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !77
  %i.sh = sub i32 %.2461.i.lcssa.ph, %.sroa.9.0.copyload.i ; 2 uses
  %i.si = icmp eq i32 %.sroa.9.0.copyload.i, 0
  br i1 %i.si, label %bb.ax, label %bb.ay

.thread338:                                       ; preds = %bb.am
  %i.sj = load i32, ptr %i.nh, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.sk = icmp eq i32 %i.nj, 0
  br i1 %i.sk, label %bb.ax, label %._crit_edge273

bb.ax:                                            ; preds = %.thread338, %bb.aw
  %.17.i351 = phi i32 [ %i.nl, %.thread338 ], [ %.2461.i.lcssa.ph, %bb.aw ]
  %.sroa.0214.1.i345 = phi i32 [ %.sroa.0214.0.i234, %.thread338 ], [ %.sroa.0214.0.copyload.i, %bb.aw ]
  %i.sl = zext i32 %.17.i351 to i64
  %i.sm = getelementptr inbounds nuw i8, ptr %.0442.i236, i64 %i.sl
  br label %bb.cd, !llvm.loop !9

bb.ay:                                            ; preds = %bb.aw
  %i.sn = icmp eq i32 %.sroa.13.0.copyload.i, 0
  br i1 %i.sn, label %._crit_edge273, label %bb.bf

._crit_edge273:                                   ; preds = %.thread338, %bb.ay
  %.sroa.0214.1.i346361 = phi i32 [ %.sroa.0214.0.copyload.i, %bb.ay ], [ %.sroa.0214.0.i234, %.thread338 ]
  %.sroa.6217.7.i347360 = phi i32 [ %.sroa.6217.0.copyload.i, %bb.ay ], [ %i.sj, %.thread338 ]
  %.sroa.9.7.i348359 = phi i32 [ %.sroa.9.0.copyload.i, %bb.ay ], [ %i.nj, %.thread338 ]
  %.3469.i350358 = phi i32 [ %i.sh, %bb.ay ], [ %.2468.i218, %.thread338 ] ; 2 uses
  %.phi.trans.insert274 = zext i32 %.3469.i350358 to i64
  %.phi.trans.insert275 = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.phi.trans.insert274
  %.phi.trans.insert276 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert275, i64 12
  %.pre277 = load i32, ptr %.phi.trans.insert276, align 4, !tbaa !57
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge273, %.thread144
  %i.so = phi i32 [ %i.bv, %.thread144 ], [ %.pre277, %._crit_edge273 ]
  %.sroa.0214.1.i139158 = phi i32 [ %.sroa.0214.0.i234, %.thread144 ], [ %.sroa.0214.1.i346361, %._crit_edge273 ]
  %.sroa.6217.7.i140156 = phi i32 [ %i.ds, %.thread144 ], [ %.sroa.6217.7.i347360, %._crit_edge273 ] ; 4 uses
  %.sroa.9.7.i141154 = phi i32 [ %i.dr, %.thread144 ], [ %.sroa.9.7.i348359, %._crit_edge273 ]
  %.3469.i143150 = phi i32 [ 0, %.thread144 ], [ %.3469.i350358, %._crit_edge273 ] ; 2 uses
  %i.sp = zext i32 %.3469.i143150 to i64
  %i.sq = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.sr, i64 12, i1 false)
  %i.ss = icmp ugt i32 %.sroa.6217.7.i140156, 3
  br i1 %i.ss, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.st = load i32, ptr %i.bg, align 4, !tbaa !44
  %i.su = load i32, ptr %6, align 8, !tbaa !44
  store i32 %i.su, ptr %i.bg, align 4, !tbaa !44
  %i.sv = add i32 %.sroa.6217.7.i140156, -3
  br label %.sink.split.i.i38

bb.bb:                                            ; preds = %bb.az
  %i.sw = icmp eq i32 %i.so, 0
  %i.sx = zext i1 %i.sw to i32
  %i.sy = add nsw i32 %.sroa.6217.7.i140156, -1
  %i.sz = add nsw i32 %i.sy, %i.sx                ; 3 uses
  switch i32 %i.sz, label %bb.bd [
    i32 0, label %.ZSTD_updateRep.exit_crit_edge.i45
    i32 3, label %bb.bc
  ]

.ZSTD_updateRep.exit_crit_edge.i45:               ; preds = %bb.bb
  %.sroa.2.0.copyload.pre.i47 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i46, align 8
  br label %.thread159

bb.bc:                                            ; preds = %bb.bb
  %i.ta = load i32, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.tb = add i32 %i.ta, -1
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.tc = zext i32 %i.sz to i64
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !tbaa !44
  %.pre.i.i48 = load i32, ptr %6, align 8, !tbaa !44
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.tf = phi i32 [ %i.ta, %bb.bc ], [ %.pre.i.i48, %bb.bd ]
  %i.tg = phi i32 [ %i.tb, %bb.bc ], [ %i.te, %bb.bd ]
  %.not22.i.i35 = icmp eq i32 %i.sz, 1
  %.val.i36 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i46, align 8
  %.val2.i37 = load i32, ptr %i.bg, align 4
  %i.th = select i1 %.not22.i.i35, i32 %.val.i36, i32 %.val2.i37
  store i32 %i.tf, ptr %i.bg, align 4, !tbaa !44
  br label %.sink.split.i.i38

.sink.split.i.i38:                                ; preds = %bb.be, %bb.ba
  %.sroa.2.0.copyload4.i39 = phi i32 [ %i.th, %bb.be ], [ %i.st, %bb.ba ]
  %.sink.i.i40 = phi i32 [ %i.tg, %bb.be ], [ %i.sv, %bb.ba ]
  store i32 %.sink.i.i40, ptr %6, align 8, !tbaa !44
  br label %.thread159

.thread159:                                       ; preds = %.sink.split.i.i38, %.ZSTD_updateRep.exit_crit_edge.i45
  %.sroa.2.0.copyload.i41 = phi i32 [ %.sroa.2.0.copyload.pre.i47, %.ZSTD_updateRep.exit_crit_edge.i45 ], [ %.sroa.2.0.copyload4.i39, %.sink.split.i.i38 ]
  %.sroa.0.0.copyload.i42 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload.i42, ptr %2, align 4
  store i32 %.sroa.2.0.copyload.i41, ptr %.sroa.443.0..sroa_idx.i, align 4
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false)
  %i.ti = sub i32 %i.sh, %.sroa.13.0.copyload.i   ; 2 uses
  %i.tj = add i32 %i.ti, 1
  %i.tk = zext i32 %i.tj to i64
  %i.tl = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.tk ; 5 uses
  store i32 %.sroa.0214.0.copyload.i, ptr %i.tl, align 4, !tbaa !44
  %.sroa.6217.0..sroa_idx218.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 4
  store i32 %.sroa.6217.0.copyload.i, ptr %.sroa.6217.0..sroa_idx218.i, align 4, !tbaa !44
  %.sroa.9.0..sroa_idx222.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store i32 %.sroa.9.0.copyload.i, ptr %.sroa.9.0..sroa_idx222.i, align 4, !tbaa !44
  %.sroa.13.0..sroa_idx227.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 12
  store i32 %.sroa.13.0.copyload.i, ptr %.sroa.13.0..sroa_idx227.i, align 4, !tbaa !44
  %.sroa.19.0..sroa_idx234.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx234.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !77
  br label %bb.bg

bb.bg:                                            ; preds = %.thread159, %bb.bf
  %.4470.i169 = phi i32 [ %.3469.i143150, %.thread159 ], [ %i.ti, %bb.bf ] ; 3 uses
  %.sroa.13.7.i142151168 = phi i32 [ 0, %.thread159 ], [ %.sroa.13.0.copyload.i, %bb.bf ]
  %.sroa.9.7.i141153167 = phi i32 [ %.sroa.9.7.i141154, %.thread159 ], [ %.sroa.9.0.copyload.i, %bb.bf ]
  %.sroa.6217.7.i140155166 = phi i32 [ %.sroa.6217.7.i140156, %.thread159 ], [ %.sroa.6217.0.copyload.i, %bb.bf ]
  %.sroa.0214.1.i139157165 = phi i32 [ %.sroa.0214.1.i139158, %.thread159 ], [ %.sroa.0214.0.copyload.i, %bb.bf ] ; 2 uses
  %9 = add i32 %.4470.i169, 2                     ; 6 uses
  %.pre-phi282 = zext i32 %9 to i64
  %i.tm = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi282 ; 5 uses
  store i32 %.sroa.0214.1.i139157165, ptr %i.tm, align 4, !tbaa !44
  %.sroa.6217.0..sroa_idx220.i = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  store i32 %.sroa.6217.7.i140155166, ptr %.sroa.6217.0..sroa_idx220.i, align 4, !tbaa !44
  %.sroa.9.0..sroa_idx224.i = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  store i32 %.sroa.9.7.i141153167, ptr %.sroa.9.0..sroa_idx224.i, align 4, !tbaa !44
  %.sroa.13.0..sroa_idx229.i = getelementptr inbounds nuw i8, ptr %i.tm, i64 12
  store i32 %.sroa.13.7.i142151168, ptr %.sroa.13.0..sroa_idx229.i, align 4, !tbaa !44
  %.sroa.19.0..sroa_idx235.i = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx235.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !77
  %i.tn = zext i32 %.4470.i169 to i64             ; 2 uses
  %i.to = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.tn ; 3 uses
  %i.tp = load i64, ptr %i.to, align 4, !tbaa !44
  %.sroa.4.0..sroa_idx.i386 = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %.sroa.4.0.copyload.i387 = load i32, ptr %.sroa.4.0..sroa_idx.i386, align 4, !tbaa !44 ; 2 uses
  %.sroa.6.0..sroa_idx.i388 = getelementptr inbounds nuw i8, ptr %i.to, i64 12
  %.sroa.6.0.copyload.i389 = load i32, ptr %.sroa.6.0..sroa_idx.i388, align 4, !tbaa !44 ; 2 uses
  %i.tq = zext i32 %9 to i64
  %i.tr = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.tq
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 12
  store i32 %.sroa.6.0.copyload.i389, ptr %i.ts, align 4, !tbaa !57
  %.not390 = icmp eq i32 %.sroa.4.0.copyload.i387, 0
  br i1 %.not390, label %.preheader184, label %.lr.ph396

.lr.ph396:                                        ; preds = %bb.bg, %.lr.ph396
  %.sroa.6.0.copyload.i394 = phi i32 [ %.sroa.6.0.copyload.i, %.lr.ph396 ], [ %.sroa.6.0.copyload.i389, %bb.bg ] ; 2 uses
  %.sroa.4.0.copyload.i393 = phi i32 [ %.sroa.4.0.copyload.i, %.lr.ph396 ], [ %.sroa.4.0.copyload.i387, %bb.bg ] ; 2 uses
  %i.tt = phi i64 [ %i.ud, %.lr.ph396 ], [ %i.tp, %bb.bg ]
  %i.tu = phi i64 [ %i.ub, %.lr.ph396 ], [ %i.tn, %bb.bg ]
  %.0439.i392 = phi i32 [ %i.ua, %.lr.ph396 ], [ %.4470.i169, %bb.bg ]
  %.0440.i391 = phi i32 [ %i.tw, %.lr.ph396 ], [ %9, %bb.bg ]
  %i.tv = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.tu
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.tw = add i32 %.0440.i391, -1                 ; 4 uses
  %i.tx = zext i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.tx ; 4 uses
  store i64 %i.tt, ptr %i.ty, align 4, !tbaa !44
  %.sroa.4.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store i32 %.sroa.4.0.copyload.i393, ptr %.sroa.4.0..sroa_idx20.i, align 4, !tbaa !44
  %.sroa.6.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.ty, i64 12
  store i32 %.sroa.6.0.copyload.i394, ptr %.sroa.6.0..sroa_idx23.i, align 4, !tbaa !44
  %.sroa.8.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx26.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx.i, i64 12, i1 false)
  %i.tz = add i32 %.sroa.4.0.copyload.i393, %.sroa.6.0.copyload.i394
  %i.ua = sub i32 %.0439.i392, %i.tz              ; 2 uses
  %i.ub = zext i32 %i.ua to i64                   ; 2 uses
  %i.uc = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ub ; 3 uses
  %i.ud = load i64, ptr %i.uc, align 4, !tbaa !44
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uc, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %i.ue = zext i32 %i.tw to i64
  %i.uf = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ue
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 12
  store i32 %.sroa.6.0.copyload.i, ptr %i.ug, align 4, !tbaa !57
  %.not = icmp eq i32 %.sroa.4.0.copyload.i, 0
  br i1 %.not, label %.preheader184, label %.lr.ph396

.preheader184:                                    ; preds = %.lr.ph396, %bb.bg
  %.0440.i.lcssa = phi i32 [ %9, %bb.bg ], [ %i.tw, %.lr.ph396 ] ; 2 uses
  %.not499.i225 = icmp ugt i32 %.0440.i.lcssa, %9
  br i1 %.not499.i225, label %._crit_edge231, label %.lr.ph230

.lr.ph230:                                        ; preds = %.preheader184, %bb.cb
  %.0.i229 = phi i32 [ %i.abm, %bb.cb ], [ %.0440.i.lcssa, %.preheader184 ] ; 2 uses
  %.1445.i226 = phi ptr [ %.2446.i, %bb.cb ], [ %.0444.i235, %.preheader184 ] ; 17 uses
  %.1445.i226399 = ptrtoaddr ptr %.1445.i226 to i64 ; 3 uses
  %i.uh = zext i32 %.0.i229 to i64
  %i.ui = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.uh ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 12
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !57 ; 14 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !56 ; 4 uses
  %i.un = icmp eq i32 %i.um, 0
  br i1 %i.un, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph230
  %i.uo = zext i32 %i.uk to i64
  %i.up = getelementptr inbounds nuw i8, ptr %.1445.i226, i64 %i.uo
  br label %bb.cb

bb.bi:                                            ; preds = %.lr.ph230
  %i.uq = add i32 %i.um, %i.uk
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !66 ; 2 uses
  %.val.i50 = load i32, ptr %i.bd, align 8, !tbaa !71
  %.not22.i = icmp eq i32 %.val.i50, 2
  br i1 %.not22.i, label %bb.bl, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bi
  %.not.i51 = icmp eq i32 %i.uk, 0
  br i1 %.not.i51, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ut = load ptr, ptr %i.d, align 8, !tbaa !73  ; 5 uses
  %wide.trip.count.i = zext i32 %i.uk to i64      ; 2 uses
  %xtraiter429 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.uu = icmp ult i32 %i.uk, 4
  br i1 %i.uu, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter432 = and i64 %wide.trip.count.i, 4294967292
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.bj ] ; 5 uses
  %niter433 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter433.next.3, %bb.bj ]
  %i.uv = getelementptr inbounds nuw i8, ptr %.1445.i226, i64 %indvars.iv.i
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !61
  %i.ux = zext i8 %i.uw to i64
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.ux ; 2 uses
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !44
  %i.va = add i32 %i.uz, 2
  store i32 %i.va, ptr %i.uy, align 4, !tbaa !44
  %i.vb = getelementptr inbounds nuw i8, ptr %.1445.i226, i64 %indvars.iv.i
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 1
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !61
  %i.ve = zext i8 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.ve ; 2 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !44
  %i.vh = add i32 %i.vg, 2
  store i32 %i.vh, ptr %i.vf, align 4, !tbaa !44
  %i.vi = getelementptr inbounds nuw i8, ptr %.1445.i226, i64 %indvars.iv.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 2
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !61
  %i.vl = zext i8 %i.vk to i64
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.vl ; 2 uses
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !44
  %i.vo = add i32 %i.vn, 2
  store i32 %i.vo, ptr %i.vm, align 4, !tbaa !44
  %i.vp = getelementptr inbounds nuw i8, ptr %.1445.i226, i64 %indvars.iv.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 3
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !61
  %i.vs = zext i8 %i.vr to i64
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.vs ; 2 uses
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !44
  %i.vv = add i32 %i.vu, 2
  store i32 %i.vv, ptr %i.vt, align 4, !tbaa !44
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter433.next.3 = add i64 %niter433, 4         ; 2 uses
  %niter433.ncmp.3 = icmp eq i64 %niter433.next.3, %unroll_iter432
  br i1 %niter433.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.bj, !llvm.loop !10

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.bj
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod430.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod431 = icmp ne i64 %xtraiter429, 0
  call void @llvm.assume(i1 %lcmp.mod431)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.bk ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bk ]
  %i.vw = getelementptr inbounds nuw i8, ptr %.1445.i226, i64 %indvars.iv.i.epil
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !61
  %i.vy = zext i8 %i.vx to i64
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.vy ; 2 uses
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !44
  %i.wb = add i32 %i.wa, 2
  store i32 %i.wb, ptr %i.vz, align 4, !tbaa !44
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter429
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.bk, !llvm.loop !118

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.bk, %.preheader.i
  %i.wc = shl i32 %i.uk, 1
  %i.wd = load i32, ptr %i.bh, align 8, !tbaa !78
  %i.we = add i32 %i.wd, %i.wc
  store i32 %i.we, ptr %i.bh, align 8, !tbaa !78
  br label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.i, %bb.bi
  %i.wf = icmp ugt i32 %i.uk, 63
  br i1 %i.wf, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.wg = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.uk, i1 true)
  %i.wh = sub nuw nsw i32 50, %i.wg
  br label %ZSTD_LLcode.exit.i52

bb.bn:                                            ; preds = %bb.bl
  %i.wi = zext nneg i32 %i.uk to i64
  %i.wj = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %i.wi
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !61
  %i.wl = zext i8 %i.wk to i32
  br label %ZSTD_LLcode.exit.i52

ZSTD_LLcode.exit.i52:                             ; preds = %bb.bn, %bb.bm
  %i.wm = phi i32 [ %i.wh, %bb.bm ], [ %i.wl, %bb.bn ]
  %i.wn = load ptr, ptr %i.ax, align 8, !tbaa !60
  %i.wo = zext nneg i32 %i.wm to i64
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %i.wo ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !44
  %i.wr = add i32 %i.wq, 1
  store i32 %i.wr, ptr %i.wp, align 4, !tbaa !44
  %i.ws = load i32, ptr %i.bi, align 4, !tbaa !79
  %i.wt = add i32 %i.ws, 1
  store i32 %i.wt, ptr %i.bi, align 4, !tbaa !79
  %i.wu = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.us, i1 true)
  %i.wv = xor i32 %i.wu, 31
  %i.ww = load ptr, ptr %i.ba, align 8, !tbaa !68
  %i.wx = zext nneg i32 %i.wv to i64
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.ww, i64 %i.wx ; 2 uses
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !44
  %i.xa = add i32 %i.wz, 1
  store i32 %i.xa, ptr %i.wy, align 4, !tbaa !44
  %i.xb = load i32, ptr %i.bj, align 4, !tbaa !80
  %i.xc = add i32 %i.xb, 1
  store i32 %i.xc, ptr %i.bj, align 4, !tbaa !80
  %i.xd = add i32 %i.um, -3                       ; 3 uses
  %i.xe = icmp ugt i32 %i.xd, 127
  br i1 %i.xe, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %ZSTD_LLcode.exit.i52
  %i.xf = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xd, i1 true)
  %i.xg = sub nuw nsw i32 67, %i.xf
  br label %ZSTD_updateStats.exit

bb.bp:                                            ; preds = %ZSTD_LLcode.exit.i52
  %i.xh = zext nneg i32 %i.xd to i64
  %i.xi = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %i.xh
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !61
  %i.xk = zext i8 %i.xj to i32
  br label %ZSTD_updateStats.exit

ZSTD_updateStats.exit:                            ; preds = %bb.bo, %bb.bp
  %i.xl = phi i32 [ %i.xg, %bb.bo ], [ %i.xk, %bb.bp ]
  %i.xm = load ptr, ptr %i.bc, align 8, !tbaa !70
  %i.xn = zext nneg i32 %i.xl to i64
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.xn ; 2 uses
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !44
  %i.xq = add i32 %i.xp, 1
  store i32 %i.xq, ptr %i.xo, align 4, !tbaa !44
  %i.xr = load i32, ptr %i.bk, align 8, !tbaa !81
  %i.xs = add i32 %i.xr, 1
  store i32 %i.xs, ptr %i.bk, align 8, !tbaa !81
  %i.xt = zext i32 %i.uk to i64                   ; 7 uses
  %i.xu = zext i32 %i.um to i64
  %i.xv = getelementptr inbounds nuw i8, ptr %.1445.i226, i64 %i.xt ; 3 uses
  %.not.i9 = icmp ugt ptr %i.xv, %i.bl
  %i.xw = load ptr, ptr %i.bm, align 8, !tbaa !84 ; 5 uses
  br i1 %.not.i9, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %ZSTD_updateStats.exit
  %.1445.i.val = load <2 x i64>, ptr %.1445.i226, align 1, !tbaa !61
  store <2 x i64> %.1445.i.val, ptr %i.xw, align 1, !tbaa !61
  %i.xx = icmp ugt i32 %i.uk, 16
  br i1 %i.xx, label %bb.br, label %ZSTD_storeSeq.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.xy = load ptr, ptr %i.bm, align 8, !tbaa !84 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %i.ya = getelementptr inbounds nuw i8, ptr %.1445.i226, i64 16 ; 2 uses
  %i.yb = getelementptr i8, ptr %i.xy, i64 %i.xt
  %.val12 = load <2 x i64>, ptr %i.ya, align 1, !tbaa !61
  store <2 x i64> %.val12, ptr %i.xz, align 1, !tbaa !61
  %i.yc = icmp ult i32 %i.uk, 33
end_hunk_1
begin_hunk_2_@ZSTD_compressBlock_opt0:bb.a
  %.014.i = phi ptr [ %.1445.i226, %bb.bu ], [ %i.bl, %bb.bv ], [ %i.bl, %bb.bx ] ; 7 uses
  %.0.i55 = phi ptr [ %i.xw, %bb.bu ], [ %i.yk, %bb.bv ], [ %i.yk, %bb.bx ] ; 6 uses
  %i.yr = icmp ult ptr %.014.i, %i.xv
  br i1 %i.yr, label %iter.check, label %ZSTD_storeSeq.exit

iter.check:                                       ; preds = %ZSTD_wildcopy.exit.i
  %.014.i398 = ptrtoaddr ptr %.014.i to i64       ; 2 uses
  %.0.i55397 = ptrtoaddr ptr %.0.i55 to i64
  %i.ys = add i64 %.1445.i226399, %i.xt
  %i.yt = sub i64 %i.ys, %.014.i398               ; 7 uses
  %min.iters.check = icmp ult i64 %i.yt, 8
  %i.yu = sub i64 %.014.i398, %.0.i55397
  %diff.check = icmp ugt i64 %i.yu, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i57.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check400 = icmp ult i64 %i.yt, 32
  br i1 %min.iters.check400, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.yv = and i64 %i.yt, 24
  %n.vec = and i64 %i.yt, -32                     ; 5 uses
  %i.yw = getelementptr i8, ptr %.0.i55, i64 %n.vec
  %i.yx = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i55, i64 %index ; 2 uses
  %next.gep401 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.yy = getelementptr i8, ptr %next.gep401, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep401, align 1, !tbaa !61
  %wide.load402 = load <16 x i8>, ptr %i.yy, align 1, !tbaa !61
  %i.yz = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !61
  store <16 x i8> %wide.load402, ptr %i.yz, align 1, !tbaa !61
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.za = icmp eq i64 %index.next, %n.vec
  br i1 %i.za, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yt, %n.vec
  br i1 %cmp.n, label %ZSTD_storeSeq.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.yv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i57.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec404 = and i64 %i.yt, -8                   ; 4 uses
  %i.zb = getelementptr i8, ptr %.0.i55, i64 %n.vec404
  %i.zc = getelementptr i8, ptr %.014.i, i64 %n.vec404
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index405 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next409, %vec.epilog.vector.body ] ; 3 uses
  %next.gep406 = getelementptr i8, ptr %.0.i55, i64 %index405
  %next.gep407 = getelementptr i8, ptr %.014.i, i64 %index405
  %wide.load408 = load <8 x i8>, ptr %next.gep407, align 1, !tbaa !61
  store <8 x i8> %wide.load408, ptr %next.gep406, align 1, !tbaa !61
  %index.next409 = add nuw i64 %index405, 8       ; 2 uses
  %i.zd = icmp eq i64 %index.next409, %n.vec404
  br i1 %i.zd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n410 = icmp eq i64 %i.yt, %n.vec404
  br i1 %cmp.n410, label %ZSTD_storeSeq.exit, label %.lr.ph.i57.preheader

.lr.ph.i57.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i55, %iter.check ], [ %i.yw, %vec.epilog.iter.check ], [ %i.zb, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.yx, %vec.epilog.iter.check ], [ %i.zc, %vec.epilog.middle.block ] ; 3 uses
  %i.ze = add i64 %.1445.i226399, %i.xt
  %.11520.i.ph434 = ptrtoaddr ptr %.11520.i.ph to i64 ; 2 uses
  %i.zf = sub i64 %i.ze, %.11520.i.ph434
  %i.zg = add i64 %.1445.i226399, -1
  %i.zh = add i64 %i.zg, %i.xt
  %i.zi = sub i64 %i.zh, %.11520.i.ph434
  %xtraiter435 = and i64 %i.zf, 7                 ; 2 uses
  %lcmp.mod436.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod436.not, label %.lr.ph.i57.prol.loopexit, label %.lr.ph.i57.prol

.lr.ph.i57.prol:                                  ; preds = %.lr.ph.i57.preheader, %.lr.ph.i57.prol
  %.121.i.prol = phi ptr [ %i.zl, %.lr.ph.i57.prol ], [ %.121.i.ph, %.lr.ph.i57.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.zj, %.lr.ph.i57.prol ], [ %.11520.i.ph, %.lr.ph.i57.preheader ] ; 2 uses
  %prol.iter437 = phi i64 [ %prol.iter437.next, %.lr.ph.i57.prol ], [ 0, %.lr.ph.i57.preheader ]
  %i.zj = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.zk = load i8, ptr %.11520.i.prol, align 1, !tbaa !61
  %i.zl = getelementptr inbounds nuw i8, ptr %.121.i.prol, i64 1 ; 2 uses
  store i8 %i.zk, ptr %.121.i.prol, align 1, !tbaa !61
  %prol.iter437.next = add i64 %prol.iter437, 1   ; 2 uses
  %prol.iter437.cmp.not = icmp eq i64 %prol.iter437.next, %xtraiter435
  br i1 %prol.iter437.cmp.not, label %.lr.ph.i57.prol.loopexit, label %.lr.ph.i57.prol, !llvm.loop !121

.lr.ph.i57.prol.loopexit:                         ; preds = %.lr.ph.i57.prol, %.lr.ph.i57.preheader
  %.121.i.unr = phi ptr [ %.121.i.ph, %.lr.ph.i57.preheader ], [ %i.zl, %.lr.ph.i57.prol ]
  %.11520.i.unr = phi ptr [ %.11520.i.ph, %.lr.ph.i57.preheader ], [ %i.zj, %.lr.ph.i57.prol ]
  %i.zm = icmp ult i64 %i.zi, 7
  br i1 %i.zm, label %ZSTD_storeSeq.exit, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.lr.ph.i57.prol.loopexit, %.lr.ph.i57
  %.121.i = phi ptr [ %i.aak, %.lr.ph.i57 ], [ %.121.i.unr, %.lr.ph.i57.prol.loopexit ] ; 9 uses
  %.11520.i = phi ptr [ %i.aai, %.lr.ph.i57 ], [ %.11520.i.unr, %.lr.ph.i57.prol.loopexit ] ; 9 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.11520.i, i64 1
  %i.zo = load i8, ptr %.11520.i, align 1, !tbaa !61
  %i.zp = getelementptr inbounds nuw i8, ptr %.121.i, i64 1
  store i8 %i.zo, ptr %.121.i, align 1, !tbaa !61
  %i.zq = getelementptr inbounds nuw i8, ptr %.11520.i, i64 2
  %i.zr = load i8, ptr %i.zn, align 1, !tbaa !61
  %i.zs = getelementptr inbounds nuw i8, ptr %.121.i, i64 2
  store i8 %i.zr, ptr %i.zp, align 1, !tbaa !61
  %i.zt = getelementptr inbounds nuw i8, ptr %.11520.i, i64 3
  %i.zu = load i8, ptr %i.zq, align 1, !tbaa !61
  %i.zv = getelementptr inbounds nuw i8, ptr %.121.i, i64 3
  store i8 %i.zu, ptr %i.zs, align 1, !tbaa !61
  %i.zw = getelementptr inbounds nuw i8, ptr %.11520.i, i64 4
  %i.zx = load i8, ptr %i.zt, align 1, !tbaa !61
  %i.zy = getelementptr inbounds nuw i8, ptr %.121.i, i64 4
  store i8 %i.zx, ptr %i.zv, align 1, !tbaa !61
  %i.zz = getelementptr inbounds nuw i8, ptr %.11520.i, i64 5
  %i.aaa = load i8, ptr %i.zw, align 1, !tbaa !61
  %i.aab = getelementptr inbounds nuw i8, ptr %.121.i, i64 5
  store i8 %i.aaa, ptr %i.zy, align 1, !tbaa !61
  %i.aac = getelementptr inbounds nuw i8, ptr %.11520.i, i64 6
  %i.aad = load i8, ptr %i.zz, align 1, !tbaa !61
  %i.aae = getelementptr inbounds nuw i8, ptr %.121.i, i64 6
  store i8 %i.aad, ptr %i.aab, align 1, !tbaa !61
  %i.aaf = getelementptr inbounds nuw i8, ptr %.11520.i, i64 7
  %i.aag = load i8, ptr %i.aac, align 1, !tbaa !61
  %i.aah = getelementptr inbounds nuw i8, ptr %.121.i, i64 7
  store i8 %i.aag, ptr %i.aae, align 1, !tbaa !61
  %i.aai = getelementptr inbounds nuw i8, ptr %.11520.i, i64 8 ; 2 uses
  %i.aaj = load i8, ptr %i.aaf, align 1, !tbaa !61
  %i.aak = getelementptr inbounds nuw i8, ptr %.121.i, i64 8
  store i8 %i.aaj, ptr %i.aah, align 1, !tbaa !61
  %exitcond.not.i58.7 = icmp eq ptr %i.aai, %i.xv
  br i1 %exitcond.not.i58.7, label %ZSTD_storeSeq.exit, label %.lr.ph.i57, !llvm.loop !122

ZSTD_storeSeq.exit.thread:                        ; preds = %bb.br, %bb.bq
  %i.aal = load ptr, ptr %i.bm, align 8, !tbaa !84
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.xt
  store ptr %i.aam, ptr %i.bm, align 8, !tbaa !84
  %.pre278 = load ptr, ptr %i.bp, align 8, !tbaa !88
  br label %bb.bz

ZSTD_storeSeq.exit:                               ; preds = %bb.bt, %.lr.ph.i57.prol.loopexit, %.lr.ph.i57, %middle.block, %vec.epilog.middle.block, %ZSTD_wildcopy.exit.i
  %i.aan = load ptr, ptr %i.bm, align 8, !tbaa !84
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.xt
  store ptr %i.aao, ptr %i.bm, align 8, !tbaa !84
  %i.aap = icmp ugt i32 %i.uk, 65535
  %.pre279 = load ptr, ptr %i.bp, align 8, !tbaa !88 ; 3 uses
  br i1 %i.aap, label %bb.by, label %bb.bz, !prof !89

bb.by:                                            ; preds = %ZSTD_storeSeq.exit
  store i32 1, ptr %i.bo, align 8, !tbaa !90
  %i.aaq = load ptr, ptr %1, align 8, !tbaa !91
  %i.aar = ptrtoint ptr %.pre279 to i64
  %i.aas = ptrtoint ptr %i.aaq to i64
  %i.aat = sub i64 %i.aar, %i.aas
  %i.aau = lshr exact i64 %i.aat, 3
  %i.aav = trunc i64 %i.aau to i32
  store i32 %i.aav, ptr %i.bq, align 4, !tbaa !92
  br label %bb.bz

bb.bz:                                            ; preds = %ZSTD_storeSeq.exit.thread, %bb.by, %ZSTD_storeSeq.exit
  %i.aaw = phi ptr [ %.pre278, %ZSTD_storeSeq.exit.thread ], [ %.pre279, %bb.by ], [ %.pre279, %ZSTD_storeSeq.exit ] ; 5 uses
  %i.aax = trunc i32 %i.uk to i16
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 4
  store i16 %i.aax, ptr %i.aay, align 4, !tbaa !95
  store i32 %i.us, ptr %i.aaw, align 4, !tbaa !96
  %i.aaz = add nsw i64 %i.xu, -3                  ; 2 uses
  %i.aba = icmp ugt i64 %i.aaz, 65535
  br i1 %i.aba, label %bb.ca, label %ZSTD_storeSeqOnly.exit, !prof !74

bb.ca:                                            ; preds = %bb.bz
  store i32 2, ptr %i.bo, align 8, !tbaa !90
  %i.abb = load ptr, ptr %1, align 8, !tbaa !91
  %i.abc = ptrtoint ptr %i.aaw to i64
  %i.abd = ptrtoint ptr %i.abb to i64
  %i.abe = sub i64 %i.abc, %i.abd
  %i.abf = lshr exact i64 %i.abe, 3
  %i.abg = trunc i64 %i.abf to i32
  store i32 %i.abg, ptr %i.bq, align 4, !tbaa !92
  br label %ZSTD_storeSeqOnly.exit

ZSTD_storeSeqOnly.exit:                           ; preds = %bb.bz, %bb.ca
  %i.abh = trunc i64 %i.aaz to i16
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aaw, i64 6
  store i16 %i.abh, ptr %i.abi, align 2, !tbaa !97
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  store ptr %i.abj, ptr %i.bp, align 8, !tbaa !88
  %i.abk = zext i32 %i.uq to i64
  %i.abl = getelementptr inbounds nuw i8, ptr %.1445.i226, i64 %i.abk ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %ZSTD_storeSeqOnly.exit, %bb.bh
  %.2446.i = phi ptr [ %.1445.i226, %bb.bh ], [ %i.abl, %ZSTD_storeSeqOnly.exit ] ; 2 uses
  %.3.i = phi ptr [ %i.up, %bb.bh ], [ %i.abl, %ZSTD_storeSeqOnly.exit ]
  %i.abm = add i32 %.0.i229, 1                    ; 2 uses
  %.not499.i = icmp ugt i32 %i.abm, %9
  br i1 %.not499.i, label %._crit_edge231, label %.lr.ph230, !llvm.loop !12

._crit_edge231:                                   ; preds = %bb.cb, %.preheader184
  %.1445.i.lcssa = phi ptr [ %.0444.i235, %.preheader184 ], [ %.2446.i, %bb.cb ]
  %.2.i.lcssa = phi ptr [ %.0442.i236, %.preheader184 ], [ %.3.i, %bb.cb ]
  %.val.i59 = load i32, ptr %i.bd, align 8, !tbaa !71
  %.not19.i = icmp eq i32 %.val.i59, 2
  br i1 %.not19.i, label %ZSTD_setBasePrices.exit, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge231
  %i.abn = load i32, ptr %i.bh, align 8, !tbaa !78
  %i.abo = add i32 %i.abn, 1
  %i.abp = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.abo, i1 true)
  %i.abq = shl nuw nsw i32 %i.abp, 8
  %i.abr = xor i32 %i.abq, 7936
  store i32 %i.abr, ptr %i.be, align 8, !tbaa !72
  br label %ZSTD_setBasePrices.exit

ZSTD_setBasePrices.exit:                          ; preds = %._crit_edge231, %bb.cc
  %i.abs = load i32, ptr %i.bi, align 4, !tbaa !79
  %i.abt = add i32 %i.abs, 1
  %i.abu = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.abt, i1 true)
  %i.abv = shl nuw nsw i32 %i.abu, 8
  %i.abw = xor i32 %i.abv, 7936
  %i.abx = load i32, ptr %i.bk, align 8, !tbaa !81
  %i.aby = add i32 %i.abx, 1
  %i.abz = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.aby, i1 true)
  %i.aca = shl nuw nsw i32 %i.abz, 8
  %i.acb = xor i32 %i.aca, 7936
  %i.acc = load i32, ptr %i.bj, align 4, !tbaa !80
  %i.acd = add i32 %i.acc, 1
  %i.ace = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.acd, i1 true)
  %i.acf = shl nuw nsw i32 %i.ace, 8
  %i.acg = xor i32 %i.acf, 7936
  store i32 %i.abw, ptr %i.aw, align 4, !tbaa !59
  store i32 %i.acb, ptr %i.bb, align 8, !tbaa !69
  store i32 %i.acg, ptr %i.az, align 4, !tbaa !67
  br label %bb.cd

bb.cd:                                            ; preds = %.thread66, %ZSTD_setBasePrices.exit, %bb.ax
  %.sroa.0214.2.i = phi i32 [ %.sroa.0214.0.i234, %.thread66 ], [ %.sroa.0214.1.i139157165, %ZSTD_setBasePrices.exit ], [ %.sroa.0214.1.i345, %bb.ax ]
  %.3447.i = phi ptr [ %.0444.i235, %.thread66 ], [ %.1445.i.lcssa, %ZSTD_setBasePrices.exit ], [ %.0444.i235, %bb.ax ] ; 2 uses
  %.4.i = phi ptr [ %i.cd, %.thread66 ], [ %.2.i.lcssa, %ZSTD_setBasePrices.exit ], [ %i.sm, %bb.ax ] ; 2 uses
  %i.ach = icmp ult ptr %.4.i, %i.f
  br i1 %i.ach, label %bb.e, label %ZSTD_compressBlock_opt_generic.exit.loopexit

ZSTD_compressBlock_opt_generic.exit.loopexit:     ; preds = %bb.cd
  %.pre280 = ptrtoint ptr %.3447.i to i64
  br label %ZSTD_compressBlock_opt_generic.exit

ZSTD_compressBlock_opt_generic.exit:              ; preds = %ZSTD_compressBlock_opt_generic.exit.loopexit, %bb.d
  %.pre-phi = phi i64 [ %.pre280, %ZSTD_compressBlock_opt_generic.exit.loopexit ], [ %i.al, %bb.d ]
  %i.aci = sub i64 %i.am, %.pre-phi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %i.aci
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock_btultra(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.repcodes_s, align 8         ; 11 uses
  %7 = alloca %struct.repcodes_s, align 8         ; 11 uses
  %8 = alloca %struct.repcodes_s, align 8         ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %.sroa.19.i = alloca [3 x i32], align 4         ; 6 uses
  %9 = alloca %struct.ZSTD_optLdm_t, align 8      ; 10 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 7 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !41
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr i8, ptr %0, i64 272
  %.val = load i32, ptr %i.m, align 8, !tbaa !37  ; 4 uses
  %i.n = icmp ult i32 %.val, 3
  %i.o = add i32 %.val, -6
  %brmerge.i = icmp ult i32 %i.o, -3
  %.mux.i = select i1 %i.n, i64 0, i64 3
  %i.p = add nsw i32 %.val, -3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = select i1 %brmerge.i, i64 %.mux.i, i64 %i.q
  %i.s = zext nneg i32 %5 to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr @__const.ZSTD_selectBtGetAllMatches.getAllMatchesFns, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.x = load i32, ptr %i.w, align 4, !tbaa !43
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.x, i32 4095) ; 2 uses
  %i.y = icmp eq i32 %.val, 3
  %i.z = select i1 %i.y, i32 3, i32 4             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !39
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45 ; 44 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i8 0, i64 12, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i64 40, i1 false), !tbaa.struct !49
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 40, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 0, ptr %i.ai, align 8, !tbaa !52
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 0, ptr %i.aj, align 8, !tbaa !53
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 0, ptr %i.ak, align 4, !tbaa !54
  %i.al = ptrtoint ptr %3 to i64                  ; 3 uses
  %i.am = ptrtoint ptr %i.e to i64                ; 3 uses
  %i.an = trunc i64 %4 to i32
  call fastcc void @ZSTD_opt_getNextMatchAndUpdateSeqStore(ptr noundef %9, i32 noundef 0, i32 noundef %i.an)
  tail call fastcc void @ZSTD_rescaleFreqs(ptr noundef nonnull %i.d, ptr noundef %3, i64 noundef %4, i32 noundef 2)
  %i.ao = icmp eq ptr %3, %i.l
  %i.ap = zext i1 %i.ao to i64                    ; 2 uses
  %i.aq = add nsw i64 %4, -8
  %i.ar = icmp sgt i64 %i.aq, %i.ap
  br i1 %i.ar, label %.lr.ph352, label %ZSTD_compressBlock_opt_generic.exit

.lr.ph352:                                        ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bd = getelementptr i8, ptr %0, i64 240       ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %.sroa.2.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 4 uses
  %.sroa.2.0..sroa_idx.phi.trans.insert.i89 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %.sroa.2.0..sroa_idx.phi.trans.insert.i110 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %i.e, i64 -32 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.z to i64
  %i.bs = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.bs, 1
  %unroll_iter = and i64 %i.bs, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod550 = trunc i64 %i.bs to i1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph352, %bb.cv
  %.0442.i350 = phi ptr [ %i.as, %.lr.ph352 ], [ %.4.i, %bb.cv ] ; 6 uses
  %.0444.i349 = phi ptr [ %3, %.lr.ph352 ], [ %.3447.i, %bb.cv ] ; 5 uses
  %.sroa.0214.0.i348 = phi i32 [ 0, %.lr.ph352 ], [ %.sroa.0214.2.i, %bb.cv ] ; 4 uses
  %i.bt = ptrtoint ptr %.0442.i350 to i64         ; 3 uses
  %i.bu = ptrtoint ptr %.0444.i349 to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = trunc i64 %i.bv to i32                  ; 10 uses
  %.not488.i = icmp eq i32 %i.bw, 0
  %i.bx = zext i1 %.not488.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.by = call i32 %i.v(ptr noundef %i.af, ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %.0442.i350, ptr noundef %i.e, ptr noundef %2, i32 noundef %i.bx, i32 noundef %i.z) #11, !inline_history !1
  store i32 %i.by, ptr %i.b, align 4, !tbaa !44
  %i.bz = sub i64 %i.bt, %i.al
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = sub i64 %i.am, %i.bt
  %i.cc = trunc i64 %i.cb to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %9, ptr noundef %i.af, ptr noundef %i.b, i32 noundef %i.ca, i32 noundef %i.cc, i32 noundef %i.z)
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !44  ; 3 uses
  %.not489.i = icmp eq i32 %i.cd, 0
  br i1 %.not489.i, label %.thread130, label %bb.f

.thread130:                                       ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %.0442.i350, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.cv

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.at, align 4, !tbaa !56
  store i32 %i.bw, ptr %i.au, align 4, !tbaa !57
  %i.cf = load i32, ptr %i.av, align 8, !tbaa !58
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ch = add i32 %i.bw, 1                        ; 2 uses
  %i.ci = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ch, i1 true)
  %i.cj = xor i32 %i.ci, 31                       ; 2 uses
  %i.ck = shl nuw nsw i32 %i.cj, 8
  %i.cl = shl i32 %i.ch, 8
  %i.cm = lshr i32 %i.cl, %i.cj
  %i.cn = add i32 %i.ck, %i.cm
  br label %ZSTD_litLengthPrice.exit

bb.h:                                             ; preds = %bb.f
  %i.co = icmp eq i32 %i.bw, 131072
  br i1 %i.co, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = load i32, ptr %i.aw, align 4, !tbaa !59
  %i.cq = load ptr, ptr %i.ax, align 8, !tbaa !60
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 140
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !44
  %i.ct = add i32 %i.cs, 1                        ; 2 uses
  %i.cu = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ct, i1 true)
  %i.cv = xor i32 %i.cu, 31                       ; 2 uses
  %i.cw = shl i32 %i.ct, 8
  %i.cx = lshr i32 %i.cw, %i.cv
  %.neg22.i = add i32 %i.cp, 4352
  %i.cy = shl nuw nsw i32 %i.cv, 8
  %i.cz = add i32 %i.cx, %i.cy
  %i.da = sub i32 %.neg22.i, %i.cz
  br label %ZSTD_litLengthPrice.exit

bb.j:                                             ; preds = %bb.h
  %i.db = icmp ugt i32 %i.bw, 63
  br i1 %i.db, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dc = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %i.dd = sub nuw nsw i32 50, %i.dc
  br label %ZSTD_LLcode.exit.i

bb.l:                                             ; preds = %bb.j
  %i.de = and i64 %i.bv, 63
  %i.df = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !61
  %i.dh = zext i8 %i.dg to i32
  br label %ZSTD_LLcode.exit.i

ZSTD_LLcode.exit.i:                               ; preds = %bb.l, %bb.k
  %i.di = phi i32 [ %i.dd, %bb.k ], [ %i.dh, %bb.l ]
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr @LL_bits, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !61
  %i.dm = zext i8 %i.dl to i32
  %i.dn = load i32, ptr %i.aw, align 4, !tbaa !59
  %i.do = load ptr, ptr %i.ax, align 8, !tbaa !60
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dj
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !44
  %i.dr = add i32 %i.dq, 1                        ; 2 uses
  %i.ds = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dr, i1 true)
  %i.dt = xor i32 %i.ds, 31                       ; 2 uses
  %i.du = shl i32 %i.dr, 8
  %i.dv = lshr i32 %i.du, %i.dt
  %reass.add = sub nsw i32 %i.dm, %i.dt
  %reass.mul = shl nsw i32 %reass.add, 8
  %i.dw = sub i32 %i.dn, %i.dv
  %i.dx = add i32 %i.dw, %reass.mul
  br label %ZSTD_litLengthPrice.exit

ZSTD_litLengthPrice.exit:                         ; preds = %bb.g, %bb.i, %ZSTD_LLcode.exit.i
  %.0.i13 = phi i32 [ %i.dx, %ZSTD_LLcode.exit.i ], [ %i.da, %bb.i ], [ %i.cn, %bb.g ]
  store i32 %.0.i13, ptr %i.ad, align 4, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ay, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.dy = add i32 %i.cd, -1
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !64 ; 2 uses
  %.not490.i = icmp ugt i32 %i.ec, %spec.select.i
  br i1 %.not490.i, label %.thread217, label %.preheader305

.thread217:                                       ; preds = %ZSTD_litLengthPrice.exit
  %i.ed = load i32, ptr %i.ea, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.br

.preheader305:                                    ; preds = %ZSTD_litLengthPrice.exit, %.preheader305
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader305 ], [ 1, %ZSTD_litLengthPrice.exit ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader305 ], [ 0, %ZSTD_litLengthPrice.exit ]
  %i.ee = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  store i32 1073741824, ptr %i.ee, align 4, !tbaa !62
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 0, ptr %i.ef, align 4, !tbaa !56
end_hunk_2
begin_hunk_3_@ZSTD_compressBlock_opt2:bb.a
  %i.xd = trunc nuw i64 %indvars.iv.next380.lcssa to i32
  br label %._crit_edge317.us

._crit_edge317.us:                                ; preds = %.._crit_edge317.us_crit_edge, %._crit_edge317.us.loopexit
  %.pre-phi399 = phi i64 [ %.pre398, %.._crit_edge317.us_crit_edge ], [ %i.wl, %._crit_edge317.us.loopexit ]
  %.10.i.lcssa.us = phi i32 [ %.9.i320.us, %.._crit_edge317.us_crit_edge ], [ %i.xd, %._crit_edge317.us.loopexit ]
  %i.xe = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi399 ; 4 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store i32 %.0448.i321.us, ptr %i.xf, align 4, !tbaa !56
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  store i32 %i.vk, ptr %i.xg, align 4, !tbaa !66
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 12
  store i32 0, ptr %i.xh, align 4, !tbaa !57
  store i32 %i.we, ptr %i.xe, align 4, !tbaa !62
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge317.us, %bb.bg
  %.12.i.us = phi i32 [ %.10.i.lcssa.us, %._crit_edge317.us ], [ %.9.i320.us, %bb.bg ] ; 2 uses
  %i.xi = add i32 %.0448.i321.us, -1              ; 2 uses
  %.not497.i.us = icmp ult i32 %i.xi, %i.vr
  br i1 %.not497.i.us, label %._crit_edge324, label %ZSTD_getMatchPrice.exit8.us, !llvm.loop !6

.lr.ph323.split:                                  ; preds = %.lr.ph323
  %i.xj = zext nneg i32 %i.vt to i64
  %i.xk = load i32, ptr %i.az, align 4, !tbaa !67
  %i.xl = load ptr, ptr %i.ba, align 8, !tbaa !68
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %i.xj
  %i.xn = load i32, ptr %i.bb, align 8, !tbaa !69
  %i.xo = load ptr, ptr %i.bc, align 8, !tbaa !70
  %.neg272 = add i32 %i.xk, 51
  %invariant.op327 = add i32 %.neg272, %i.xn
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph323.split, %bb.bm
  %.0448.i321 = phi i32 [ %i.vm, %.lr.ph323.split ], [ %i.zz, %bb.bm ] ; 4 uses
  %.9.i320 = phi i32 [ %.8.i329, %.lr.ph323.split ], [ %.12.i, %bb.bm ] ; 4 uses
  %i.xp = add i32 %.0448.i321, %.2468.i332        ; 4 uses
  %i.xq = add i32 %.0448.i321, -3                 ; 3 uses
  %i.xr = load i32, ptr %i.xm, align 4, !tbaa !44
  %i.xs = add i32 %i.xr, 1                        ; 2 uses
  %i.xt = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xs, i1 true)
  %i.xu = xor i32 %i.xt, 31                       ; 2 uses
  %i.xv = shl i32 %i.xs, 8
  %i.xw = lshr i32 %i.xv, %i.xu
  %i.xx = icmp ugt i32 %i.xq, 127
  br i1 %i.xx, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.xy = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xq, i1 true)
  %i.xz = sub nuw nsw i32 67, %i.xy
  br label %ZSTD_MLcode.exit98

bb.bk:                                            ; preds = %bb.bi
  %i.ya = zext nneg i32 %i.xq to i64
  %i.yb = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %i.ya
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !61
  %i.yd = zext i8 %i.yc to i32
  br label %ZSTD_MLcode.exit98

ZSTD_MLcode.exit98:                               ; preds = %bb.bj, %bb.bk
  %i.ye = phi i32 [ %i.xz, %bb.bj ], [ %i.yd, %bb.bk ]
  %i.yf = zext nneg i32 %i.ye to i64              ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !61
  %i.yi = zext i8 %i.yh to i32
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.yf
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !44
  %i.yl = add i32 %i.yk, 1                        ; 2 uses
  %i.ym = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.yl, i1 true)
  %i.yn = xor i32 %i.ym, 31                       ; 2 uses
  %i.yo = shl i32 %i.yl, 8
  %i.yp = lshr i32 %i.yo, %i.yn
  %i.yq = add nuw nsw i32 %i.vt, %i.yi
  %i.yr = add nuw nsw i32 %i.xu, %i.yn
  %reass.add281 = sub nsw i32 %i.yq, %i.yr
  %reass.mul282 = shl nsw i32 %reass.add281, 8
  %i.ys = add i32 %i.xw, %i.yp
  %i.yt = sub i32 %invariant.op327, %i.ys
  %i.yu = add i32 %i.yt, %reass.mul282
  %i.yv = add nsw i32 %i.uq, %i.yu                ; 2 uses
  %i.yw = icmp ugt i32 %i.xp, %.9.i320
  br i1 %i.yw, label %.lr.ph316.preheader, label %bb.bl

bb.bl:                                            ; preds = %ZSTD_MLcode.exit98
  %i.yx = zext i32 %i.xp to i64
  %i.yy = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.yx
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !62
  %i.za = icmp slt i32 %i.yv, %i.yz
  br i1 %i.za, label %.._crit_edge317_crit_edge, label %bb.bm

.._crit_edge317_crit_edge:                        ; preds = %bb.bl
  %.pre400 = zext i32 %i.xp to i64
  br label %._crit_edge317

.lr.ph316.preheader:                              ; preds = %ZSTD_MLcode.exit98
  %i.zb = zext i32 %.9.i320 to i64                ; 4 uses
  %i.zc = zext i32 %i.xp to i64                   ; 4 uses
  %i.zd = sub nsw i64 %i.zc, %i.zb
  %xtraiter551 = and i64 %i.zd, 3                 ; 2 uses
  %lcmp.mod552.not = icmp eq i64 %xtraiter551, 0
  br i1 %lcmp.mod552.not, label %.lr.ph316.prol.loopexit, label %.lr.ph316.prol

.lr.ph316.prol:                                   ; preds = %.lr.ph316.preheader, %.lr.ph316.prol
  %indvars.iv376.prol = phi i64 [ %indvars.iv.next377.prol, %.lr.ph316.prol ], [ %i.zb, %.lr.ph316.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph316.prol ], [ 0, %.lr.ph316.preheader ]
  %indvars.iv.next377.prol = add nuw nsw i64 %indvars.iv376.prol, 1 ; 4 uses
  %i.ze = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next377.prol ; 2 uses
  store i32 1073741824, ptr %i.ze, align 4, !tbaa !62
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 12
  store i32 1, ptr %i.zf, align 4, !tbaa !57
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter551
  br i1 %prol.iter.cmp.not, label %.lr.ph316.prol.loopexit, label %.lr.ph316.prol, !llvm.loop !124

.lr.ph316.prol.loopexit:                          ; preds = %.lr.ph316.prol, %.lr.ph316.preheader
  %indvars.iv376.unr = phi i64 [ %i.zb, %.lr.ph316.preheader ], [ %indvars.iv.next377.prol, %.lr.ph316.prol ]
  %indvars.iv.next377.lcssa.unr = phi i64 [ poison, %.lr.ph316.preheader ], [ %indvars.iv.next377.prol, %.lr.ph316.prol ]
  %i.zg = sub nsw i64 %i.zb, %i.zc
  %i.zh = icmp ugt i64 %i.zg, -4
  br i1 %i.zh, label %._crit_edge317.loopexit, label %.lr.ph316

.lr.ph316:                                        ; preds = %.lr.ph316.prol.loopexit, %.lr.ph316
  %indvars.iv376 = phi i64 [ %indvars.iv.next377.3, %.lr.ph316 ], [ %indvars.iv376.unr, %.lr.ph316.prol.loopexit ] ; 4 uses
  %i.zi = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv376 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 28
  store i32 1073741824, ptr %i.zj, align 4, !tbaa !62
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zi, i64 40
  store i32 1, ptr %i.zk, align 4, !tbaa !57
  %i.zl = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv376 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 56
  store i32 1073741824, ptr %i.zm, align 4, !tbaa !62
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 68
  store i32 1, ptr %i.zn, align 4, !tbaa !57
  %i.zo = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv376 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 84
  store i32 1073741824, ptr %i.zp, align 4, !tbaa !62
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zo, i64 96
  store i32 1, ptr %i.zq, align 4, !tbaa !57
  %indvars.iv.next377.3 = add nuw nsw i64 %indvars.iv376, 4 ; 4 uses
  %i.zr = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next377.3 ; 2 uses
  store i32 1073741824, ptr %i.zr, align 4, !tbaa !62
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 12
  store i32 1, ptr %i.zs, align 4, !tbaa !57
  %i.zt = icmp samesign ult i64 %indvars.iv.next377.3, %i.zc
  br i1 %i.zt, label %.lr.ph316, label %._crit_edge317.loopexit, !llvm.loop !5

._crit_edge317.loopexit:                          ; preds = %.lr.ph316, %.lr.ph316.prol.loopexit
  %indvars.iv.next377.lcssa = phi i64 [ %indvars.iv.next377.lcssa.unr, %.lr.ph316.prol.loopexit ], [ %indvars.iv.next377.3, %.lr.ph316 ]
  %i.zu = trunc nuw i64 %indvars.iv.next377.lcssa to i32
  br label %._crit_edge317

._crit_edge317:                                   ; preds = %.._crit_edge317_crit_edge, %._crit_edge317.loopexit
  %.pre-phi401 = phi i64 [ %.pre400, %.._crit_edge317_crit_edge ], [ %i.zc, %._crit_edge317.loopexit ]
  %.10.i.lcssa = phi i32 [ %.9.i320, %.._crit_edge317_crit_edge ], [ %i.zu, %._crit_edge317.loopexit ]
  %i.zv = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi401 ; 4 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  store i32 %.0448.i321, ptr %i.zw, align 4, !tbaa !56
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 4
  store i32 %i.vk, ptr %i.zx, align 4, !tbaa !66
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zv, i64 12
  store i32 0, ptr %i.zy, align 4, !tbaa !57
  store i32 %i.yv, ptr %i.zv, align 4, !tbaa !62
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge317
  %.12.i = phi i32 [ %.10.i.lcssa, %._crit_edge317 ], [ %.9.i320, %bb.bl ] ; 2 uses
  %i.zz = add i32 %.0448.i321, -1                 ; 2 uses
  %.not497.i = icmp ult i32 %i.zz, %i.vr
  br i1 %.not497.i, label %._crit_edge324, label %bb.bi, !llvm.loop !6

._crit_edge324:                                   ; preds = %bb.bm, %bb.bh, %bb.bf
  %.9.i.lcssa = phi i32 [ %.8.i329, %bb.bf ], [ %.12.i.us, %bb.bh ], [ %.12.i, %bb.bm ] ; 3 uses
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %exitcond386.not = icmp eq i64 %indvars.iv.next383, %wide.trip.count385
  br i1 %exitcond386.not, label %bb.bn, label %.preheader, !llvm.loop !7

bb.bn:                                            ; preds = %._crit_edge324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.aaa = add i32 %.9.i.lcssa, 1
  %i.aab = zext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aab
  store i32 1073741824, ptr %i.aac, align 4, !tbaa !62
  br label %.thread183

.thread183:                                       ; preds = %bb.bn, %bb.az, %.thread199
  %.15.i192 = phi i32 [ %.6465.i, %.thread199 ], [ %.9.i.lcssa, %bb.bn ], [ %.6465.i, %bb.az ] ; 3 uses
  %i.aad = add i32 %.2468.i332, 1                 ; 2 uses
  %.not491.i = icmp ugt i32 %i.aad, %.15.i192
  br i1 %.not491.i, label %bb.bo, label %.lr.ph335, !llvm.loop !8

bb.bo:                                            ; preds = %bb.ba, %.thread183
  %.16.i.ph = phi i32 [ %.15.i192, %.thread183 ], [ %.2468.i332, %bb.ba ] ; 3 uses
  %i.aae = zext i32 %.16.i.ph to i64
  %i.aaf = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aae ; 5 uses
  %.sroa.0214.0.copyload.i = load i32, ptr %i.aaf, align 4, !tbaa !44 ; 4 uses
  %.sroa.6217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %.sroa.6217.0.copyload.i = load i32, ptr %.sroa.6217.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !44 ; 5 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaf, i64 12
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i, align 4, !tbaa !44 ; 4 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !77
  %i.aag = sub i32 %.16.i.ph, %.sroa.9.0.copyload.i ; 2 uses
  %i.aah = icmp eq i32 %.sroa.9.0.copyload.i, 0
  br i1 %i.aah, label %bb.bp, label %bb.bq

.thread461:                                       ; preds = %bb.bd
  %i.aai = load i32, ptr %i.vb, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.aaj = icmp eq i32 %i.vd, 0
  br i1 %i.aaj, label %bb.bp, label %._crit_edge388

bb.bp:                                            ; preds = %.thread461, %bb.bo
  %.17.i474 = phi i32 [ %i.vf, %.thread461 ], [ %.16.i.ph, %bb.bo ]
  %.sroa.0214.1.i468 = phi i32 [ %.sroa.0214.0.i348, %.thread461 ], [ %.sroa.0214.0.copyload.i, %bb.bo ]
  %i.aak = zext i32 %.17.i474 to i64
  %i.aal = getelementptr inbounds nuw i8, ptr %.0442.i350, i64 %i.aak
  br label %bb.cv, !llvm.loop !9

bb.bq:                                            ; preds = %bb.bo
  %i.aam = icmp eq i32 %.sroa.13.0.copyload.i, 0
  br i1 %i.aam, label %._crit_edge388, label %bb.bx

._crit_edge388:                                   ; preds = %.thread461, %bb.bq
  %.sroa.0214.1.i469484 = phi i32 [ %.sroa.0214.0.copyload.i, %bb.bq ], [ %.sroa.0214.0.i348, %.thread461 ]
  %.sroa.6217.7.i470483 = phi i32 [ %.sroa.6217.0.copyload.i, %bb.bq ], [ %i.aai, %.thread461 ]
  %.sroa.9.7.i471482 = phi i32 [ %.sroa.9.0.copyload.i, %bb.bq ], [ %i.vd, %.thread461 ]
  %.3469.i473481 = phi i32 [ %i.aag, %bb.bq ], [ %.2468.i332, %.thread461 ] ; 2 uses
  %.phi.trans.insert389 = zext i32 %.3469.i473481 to i64
  %.phi.trans.insert390 = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.phi.trans.insert389
  %.phi.trans.insert391 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert390, i64 12
  %.pre392 = load i32, ptr %.phi.trans.insert391, align 4, !tbaa !57
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge388, %.thread217
  %i.aan = phi i32 [ %i.bw, %.thread217 ], [ %.pre392, %._crit_edge388 ]
  %.sroa.0214.1.i212231 = phi i32 [ %.sroa.0214.0.i348, %.thread217 ], [ %.sroa.0214.1.i469484, %._crit_edge388 ]
  %.sroa.6217.7.i213229 = phi i32 [ %i.ed, %.thread217 ], [ %.sroa.6217.7.i470483, %._crit_edge388 ] ; 4 uses
  %.sroa.9.7.i214227 = phi i32 [ %i.ec, %.thread217 ], [ %.sroa.9.7.i471482, %._crit_edge388 ]
  %.3469.i216223 = phi i32 [ 0, %.thread217 ], [ %.3469.i473481, %._crit_edge388 ] ; 2 uses
  %i.aao = zext i32 %.3469.i216223 to i64
  %i.aap = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aao
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.aaq, i64 12, i1 false)
  %i.aar = icmp ugt i32 %.sroa.6217.7.i213229, 3
  br i1 %i.aar, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.aas = load i32, ptr %i.bh, align 4, !tbaa !44
  %i.aat = load i32, ptr %6, align 8, !tbaa !44
  store i32 %i.aat, ptr %i.bh, align 4, !tbaa !44
  %i.aau = add i32 %.sroa.6217.7.i213229, -3
  br label %.sink.split.i.i102

bb.bt:                                            ; preds = %bb.br
  %i.aav = icmp eq i32 %i.aan, 0
  %i.aaw = zext i1 %i.aav to i32
  %i.aax = add nsw i32 %.sroa.6217.7.i213229, -1
  %i.aay = add nsw i32 %i.aax, %i.aaw             ; 3 uses
  switch i32 %i.aay, label %bb.bv [
    i32 0, label %.ZSTD_updateRep.exit_crit_edge.i109
    i32 3, label %bb.bu
  ]

.ZSTD_updateRep.exit_crit_edge.i109:              ; preds = %bb.bt
  %.sroa.2.0.copyload.pre.i111 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i110, align 8
  br label %.thread232

bb.bu:                                            ; preds = %bb.bt
  %i.aaz = load i32, ptr %6, align 8, !tbaa !44   ; 2 uses
  %i.aba = add i32 %i.aaz, -1
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.abb = zext i32 %i.aay to i64
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.abb
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !44
  %.pre.i.i112 = load i32, ptr %6, align 8, !tbaa !44
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.abe = phi i32 [ %i.aaz, %bb.bu ], [ %.pre.i.i112, %bb.bv ]
  %i.abf = phi i32 [ %i.aba, %bb.bu ], [ %i.abd, %bb.bv ]
  %.not22.i.i99 = icmp eq i32 %i.aay, 1
  %.val.i100 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i110, align 8
  %.val2.i101 = load i32, ptr %i.bh, align 4
  %i.abg = select i1 %.not22.i.i99, i32 %.val.i100, i32 %.val2.i101
  store i32 %i.abe, ptr %i.bh, align 4, !tbaa !44
  br label %.sink.split.i.i102

.sink.split.i.i102:                               ; preds = %bb.bw, %bb.bs
  %.sroa.2.0.copyload4.i103 = phi i32 [ %i.abg, %bb.bw ], [ %i.aas, %bb.bs ]
  %.sink.i.i104 = phi i32 [ %i.abf, %bb.bw ], [ %i.aau, %bb.bs ]
  store i32 %.sink.i.i104, ptr %6, align 8, !tbaa !44
  br label %.thread232

.thread232:                                       ; preds = %.sink.split.i.i102, %.ZSTD_updateRep.exit_crit_edge.i109
  %.sroa.2.0.copyload.i105 = phi i32 [ %.sroa.2.0.copyload.pre.i111, %.ZSTD_updateRep.exit_crit_edge.i109 ], [ %.sroa.2.0.copyload4.i103, %.sink.split.i.i102 ]
  %.sroa.0.0.copyload.i106 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload.i106, ptr %2, align 4
  store i32 %.sroa.2.0.copyload.i105, ptr %.sroa.443.0..sroa_idx.i, align 4
  br label %bb.by

bb.bx:                                            ; preds = %bb.bq
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false)
  %i.abh = sub i32 %i.aag, %.sroa.13.0.copyload.i ; 2 uses
  %i.abi = add i32 %i.abh, 1
  %i.abj = zext i32 %i.abi to i64
  %i.abk = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abj ; 5 uses
  store i32 %.sroa.0214.0.copyload.i, ptr %i.abk, align 4, !tbaa !44
  %.sroa.6217.0..sroa_idx218.i = getelementptr inbounds nuw i8, ptr %i.abk, i64 4
  store i32 %.sroa.6217.0.copyload.i, ptr %.sroa.6217.0..sroa_idx218.i, align 4, !tbaa !44
  %.sroa.9.0..sroa_idx222.i = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  store i32 %.sroa.9.0.copyload.i, ptr %.sroa.9.0..sroa_idx222.i, align 4, !tbaa !44
  %.sroa.13.0..sroa_idx227.i = getelementptr inbounds nuw i8, ptr %i.abk, i64 12
  store i32 %.sroa.13.0.copyload.i, ptr %.sroa.13.0..sroa_idx227.i, align 4, !tbaa !44
  %.sroa.19.0..sroa_idx234.i = getelementptr inbounds nuw i8, ptr %i.abk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx234.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !77
  br label %bb.by

bb.by:                                            ; preds = %.thread232, %bb.bx
  %.4470.i242 = phi i32 [ %.3469.i216223, %.thread232 ], [ %i.abh, %bb.bx ] ; 3 uses
  %.sroa.13.7.i215224241 = phi i32 [ 0, %.thread232 ], [ %.sroa.13.0.copyload.i, %bb.bx ]
  %.sroa.9.7.i214226240 = phi i32 [ %.sroa.9.7.i214227, %.thread232 ], [ %.sroa.9.0.copyload.i, %bb.bx ]
  %.sroa.6217.7.i213228239 = phi i32 [ %.sroa.6217.7.i213229, %.thread232 ], [ %.sroa.6217.0.copyload.i, %bb.bx ]
  %.sroa.0214.1.i212230238 = phi i32 [ %.sroa.0214.1.i212231, %.thread232 ], [ %.sroa.0214.0.copyload.i, %bb.bx ] ; 2 uses
  %10 = add i32 %.4470.i242, 2                    ; 6 uses
  %.pre-phi397 = zext i32 %10 to i64
  %i.abl = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi397 ; 5 uses
  store i32 %.sroa.0214.1.i212230238, ptr %i.abl, align 4, !tbaa !44
  %.sroa.6217.0..sroa_idx220.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 4
  store i32 %.sroa.6217.7.i213228239, ptr %.sroa.6217.0..sroa_idx220.i, align 4, !tbaa !44
  %.sroa.9.0..sroa_idx224.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  store i32 %.sroa.9.7.i214226240, ptr %.sroa.9.0..sroa_idx224.i, align 4, !tbaa !44
  %.sroa.13.0..sroa_idx229.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 12
  store i32 %.sroa.13.7.i215224241, ptr %.sroa.13.0..sroa_idx229.i, align 4, !tbaa !44
  %.sroa.19.0..sroa_idx235.i = getelementptr inbounds nuw i8, ptr %i.abl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx235.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !77
  %i.abm = zext i32 %.4470.i242 to i64            ; 2 uses
  %i.abn = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abm ; 3 uses
  %i.abo = load i64, ptr %i.abn, align 4, !tbaa !44
  %.sroa.4.0..sroa_idx.i508 = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  %.sroa.4.0.copyload.i509 = load i32, ptr %.sroa.4.0..sroa_idx.i508, align 4, !tbaa !44 ; 2 uses
  %.sroa.6.0..sroa_idx.i510 = getelementptr inbounds nuw i8, ptr %i.abn, i64 12
  %.sroa.6.0.copyload.i511 = load i32, ptr %.sroa.6.0..sroa_idx.i510, align 4, !tbaa !44 ; 2 uses
  %i.abp = zext i32 %10 to i64
  %i.abq = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abp
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 12
  store i32 %.sroa.6.0.copyload.i511, ptr %i.abr, align 4, !tbaa !57
  %.not512 = icmp eq i32 %.sroa.4.0.copyload.i509, 0
  br i1 %.not512, label %.preheader303, label %.lr.ph518

.lr.ph518:                                        ; preds = %bb.by, %.lr.ph518
  %.sroa.6.0.copyload.i516 = phi i32 [ %.sroa.6.0.copyload.i, %.lr.ph518 ], [ %.sroa.6.0.copyload.i511, %bb.by ] ; 2 uses
  %.sroa.4.0.copyload.i515 = phi i32 [ %.sroa.4.0.copyload.i, %.lr.ph518 ], [ %.sroa.4.0.copyload.i509, %bb.by ] ; 2 uses
  %i.abs = phi i64 [ %i.acc, %.lr.ph518 ], [ %i.abo, %bb.by ]
  %i.abt = phi i64 [ %i.aca, %.lr.ph518 ], [ %i.abm, %bb.by ]
  %.0439.i514 = phi i32 [ %i.abz, %.lr.ph518 ], [ %.4470.i242, %bb.by ]
  %.0440.i513 = phi i32 [ %i.abv, %.lr.ph518 ], [ %10, %bb.by ]
  %i.abu = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abt
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abu, i64 16
  %i.abv = add i32 %.0440.i513, -1                ; 4 uses
  %i.abw = zext i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abw ; 4 uses
  store i64 %i.abs, ptr %i.abx, align 4, !tbaa !44
  %.sroa.4.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  store i32 %.sroa.4.0.copyload.i515, ptr %.sroa.4.0..sroa_idx20.i, align 4, !tbaa !44
  %.sroa.6.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.abx, i64 12
  store i32 %.sroa.6.0.copyload.i516, ptr %.sroa.6.0..sroa_idx23.i, align 4, !tbaa !44
  %.sroa.8.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx26.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx.i, i64 12, i1 false)
  %i.aby = add i32 %.sroa.4.0.copyload.i515, %.sroa.6.0.copyload.i516
  %i.abz = sub i32 %.0439.i514, %i.aby            ; 2 uses
  %i.aca = zext i32 %i.abz to i64                 ; 2 uses
  %i.acb = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aca ; 3 uses
  %i.acc = load i64, ptr %i.acb, align 4, !tbaa !44
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acb, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %i.acd = zext i32 %i.abv to i64
  %i.ace = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.acd
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 12
  store i32 %.sroa.6.0.copyload.i, ptr %i.acf, align 4, !tbaa !57
  %.not = icmp eq i32 %.sroa.4.0.copyload.i, 0
  br i1 %.not, label %.preheader303, label %.lr.ph518

.preheader303:                                    ; preds = %.lr.ph518, %bb.by
  %.0440.i.lcssa = phi i32 [ %10, %bb.by ], [ %i.abv, %.lr.ph518 ] ; 2 uses
  %.not499.i339 = icmp ugt i32 %.0440.i.lcssa, %10
  br i1 %.not499.i339, label %._crit_edge345, label %.lr.ph344

.lr.ph344:                                        ; preds = %.preheader303, %bb.ct
  %.0.i343 = phi i32 [ %i.ajl, %bb.ct ], [ %.0440.i.lcssa, %.preheader303 ] ; 2 uses
  %.1445.i340 = phi ptr [ %.2446.i, %bb.ct ], [ %.0444.i349, %.preheader303 ] ; 17 uses
  %.1445.i340521 = ptrtoaddr ptr %.1445.i340 to i64 ; 3 uses
  %i.acg = zext i32 %.0.i343 to i64
  %i.ach = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.acg ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 12
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !57 ; 14 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !56 ; 4 uses
  %i.acm = icmp eq i32 %i.acl, 0
  br i1 %i.acm, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.lr.ph344
  %i.acn = zext i32 %i.acj to i64
  %i.aco = getelementptr inbounds nuw i8, ptr %.1445.i340, i64 %i.acn
  br label %bb.ct

bb.ca:                                            ; preds = %.lr.ph344
  %i.acp = add i32 %i.acl, %i.acj
  %i.acq = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !66 ; 2 uses
  %.val.i114 = load i32, ptr %i.bd, align 8, !tbaa !71
  %.not22.i = icmp eq i32 %.val.i114, 2
  br i1 %.not22.i, label %bb.cd, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ca
  %.not.i115 = icmp eq i32 %i.acj, 0
  br i1 %.not.i115, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.acs = load ptr, ptr %i.d, align 8, !tbaa !73 ; 5 uses
  %wide.trip.count.i = zext i32 %i.acj to i64     ; 2 uses
  %xtraiter556 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.act = icmp ult i32 %i.acj, 4
  br i1 %i.act, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter559 = and i64 %wide.trip.count.i, 4294967292
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.cb ] ; 5 uses
  %niter560 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter560.next.3, %bb.cb ]
  %i.acu = getelementptr inbounds nuw i8, ptr %.1445.i340, i64 %indvars.iv.i
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !61
  %i.acw = zext i8 %i.acv to i64
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.acw ; 2 uses
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !44
  %i.acz = add i32 %i.acy, 2
  store i32 %i.acz, ptr %i.acx, align 4, !tbaa !44
  %i.ada = getelementptr inbounds nuw i8, ptr %.1445.i340, i64 %indvars.iv.i
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 1
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !61
  %i.add = zext i8 %i.adc to i64
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.add ; 2 uses
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !44
  %i.adg = add i32 %i.adf, 2
  store i32 %i.adg, ptr %i.ade, align 4, !tbaa !44
  %i.adh = getelementptr inbounds nuw i8, ptr %.1445.i340, i64 %indvars.iv.i
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 2
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !61
  %i.adk = zext i8 %i.adj to i64
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.adk ; 2 uses
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !44
  %i.adn = add i32 %i.adm, 2
  store i32 %i.adn, ptr %i.adl, align 4, !tbaa !44
  %i.ado = getelementptr inbounds nuw i8, ptr %.1445.i340, i64 %indvars.iv.i
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 3
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !61
  %i.adr = zext i8 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.adr ; 2 uses
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !44
  %i.adu = add i32 %i.adt, 2
  store i32 %i.adu, ptr %i.ads, align 4, !tbaa !44
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter560.next.3 = add i64 %niter560, 4         ; 2 uses
  %niter560.ncmp.3 = icmp eq i64 %niter560.next.3, %unroll_iter559
  br i1 %niter560.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.cb, !llvm.loop !10

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.cb
  %lcmp.mod557.not = icmp eq i64 %xtraiter556, 0
  br i1 %lcmp.mod557.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod558 = icmp ne i64 %xtraiter556, 0
  call void @llvm.assume(i1 %lcmp.mod558)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.cc ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cc ]
  %i.adv = getelementptr inbounds nuw i8, ptr %.1445.i340, i64 %indvars.iv.i.epil
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !61
  %i.adx = zext i8 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.adx ; 2 uses
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !44
  %i.aea = add i32 %i.adz, 2
  store i32 %i.aea, ptr %i.ady, align 4, !tbaa !44
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter556
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.cc, !llvm.loop !125

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.cc, %.preheader.i
  %i.aeb = shl i32 %i.acj, 1
  %i.aec = load i32, ptr %i.bi, align 8, !tbaa !78
  %i.aed = add i32 %i.aec, %i.aeb
  store i32 %i.aed, ptr %i.bi, align 8, !tbaa !78
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge.i, %bb.ca
  %i.aee = icmp ugt i32 %i.acj, 63
  br i1 %i.aee, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.aef = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.acj, i1 true)
  %i.aeg = sub nuw nsw i32 50, %i.aef
  br label %ZSTD_LLcode.exit.i116

bb.cf:                                            ; preds = %bb.cd
  %i.aeh = zext nneg i32 %i.acj to i64
  %i.aei = getelementptr inbounds nuw i8, ptr @ZSTD_LLcode.LL_Code, i64 %i.aeh
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !61
  %i.aek = zext i8 %i.aej to i32
  br label %ZSTD_LLcode.exit.i116

ZSTD_LLcode.exit.i116:                            ; preds = %bb.cf, %bb.ce
  %i.ael = phi i32 [ %i.aeg, %bb.ce ], [ %i.aek, %bb.cf ]
  %i.aem = load ptr, ptr %i.ax, align 8, !tbaa !60
  %i.aen = zext nneg i32 %i.ael to i64
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %i.aen ; 2 uses
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !44
  %i.aeq = add i32 %i.aep, 1
  store i32 %i.aeq, ptr %i.aeo, align 4, !tbaa !44
  %i.aer = load i32, ptr %i.bj, align 4, !tbaa !79
  %i.aes = add i32 %i.aer, 1
  store i32 %i.aes, ptr %i.bj, align 4, !tbaa !79
  %i.aet = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.acr, i1 true)
  %i.aeu = xor i32 %i.aet, 31
  %i.aev = load ptr, ptr %i.ba, align 8, !tbaa !68
  %i.aew = zext nneg i32 %i.aeu to i64
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %i.aew ; 2 uses
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !44
  %i.aez = add i32 %i.aey, 1
  store i32 %i.aez, ptr %i.aex, align 4, !tbaa !44
  %i.afa = load i32, ptr %i.bk, align 4, !tbaa !80
  %i.afb = add i32 %i.afa, 1
  store i32 %i.afb, ptr %i.bk, align 4, !tbaa !80
  %i.afc = add i32 %i.acl, -3                     ; 3 uses
  %i.afd = icmp ugt i32 %i.afc, 127
  br i1 %i.afd, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %ZSTD_LLcode.exit.i116
  %i.afe = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.afc, i1 true)
  %i.aff = sub nuw nsw i32 67, %i.afe
  br label %ZSTD_updateStats.exit

bb.ch:                                            ; preds = %ZSTD_LLcode.exit.i116
  %i.afg = zext nneg i32 %i.afc to i64
  %i.afh = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %i.afg
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !61
  %i.afj = zext i8 %i.afi to i32
  br label %ZSTD_updateStats.exit

ZSTD_updateStats.exit:                            ; preds = %bb.cg, %bb.ch
  %i.afk = phi i32 [ %i.aff, %bb.cg ], [ %i.afj, %bb.ch ]
  %i.afl = load ptr, ptr %i.bc, align 8, !tbaa !70
  %i.afm = zext nneg i32 %i.afk to i64
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.afl, i64 %i.afm ; 2 uses
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !44
  %i.afp = add i32 %i.afo, 1
  store i32 %i.afp, ptr %i.afn, align 4, !tbaa !44
  %i.afq = load i32, ptr %i.bl, align 8, !tbaa !81
  %i.afr = add i32 %i.afq, 1
  store i32 %i.afr, ptr %i.bl, align 8, !tbaa !81
  %i.afs = zext i32 %i.acj to i64                 ; 7 uses
  %i.aft = zext i32 %i.acl to i64
  %i.afu = getelementptr inbounds nuw i8, ptr %.1445.i340, i64 %i.afs ; 3 uses
  %.not.i9 = icmp ugt ptr %i.afu, %i.bm
  %i.afv = load ptr, ptr %i.bn, align 8, !tbaa !84 ; 5 uses
  br i1 %.not.i9, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %ZSTD_updateStats.exit
  %.1445.i.val = load <2 x i64>, ptr %.1445.i340, align 1, !tbaa !61
  store <2 x i64> %.1445.i.val, ptr %i.afv, align 1, !tbaa !61
  %i.afw = icmp ugt i32 %i.acj, 16
  br i1 %i.afw, label %bb.cj, label %ZSTD_storeSeq.exit.thread

bb.cj:                                            ; preds = %bb.ci
  %i.afx = load ptr, ptr %i.bn, align 8, !tbaa !84 ; 3 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 16
  %i.afz = getelementptr inbounds nuw i8, ptr %.1445.i340, i64 16 ; 2 uses
  %i.aga = getelementptr i8, ptr %i.afx, i64 %i.afs
  %.val12 = load <2 x i64>, ptr %i.afz, align 1, !tbaa !61
  store <2 x i64> %.val12, ptr %i.afy, align 1, !tbaa !61
  %i.agb = icmp ult i32 %i.acj, 33
end_hunk_3
begin_hunk_4_@ZSTD_compressBlock_opt2:bb.a
  %.014.i = phi ptr [ %.1445.i340, %bb.cm ], [ %i.bm, %bb.cn ], [ %i.bm, %bb.cp ] ; 7 uses
  %.0.i119 = phi ptr [ %i.afv, %bb.cm ], [ %i.agj, %bb.cn ], [ %i.agj, %bb.cp ] ; 6 uses
  %i.agq = icmp ult ptr %.014.i, %i.afu
  br i1 %i.agq, label %iter.check, label %ZSTD_storeSeq.exit

iter.check:                                       ; preds = %ZSTD_wildcopy.exit.i
  %.014.i520 = ptrtoaddr ptr %.014.i to i64       ; 2 uses
  %.0.i119519 = ptrtoaddr ptr %.0.i119 to i64
  %i.agr = add i64 %.1445.i340521, %i.afs
  %i.ags = sub i64 %i.agr, %.014.i520             ; 7 uses
  %min.iters.check = icmp ult i64 %i.ags, 8
  %i.agt = sub i64 %.014.i520, %.0.i119519
  %diff.check = icmp ugt i64 %i.agt, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i121.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check522 = icmp ult i64 %i.ags, 32
  br i1 %min.iters.check522, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.agu = and i64 %i.ags, 24
  %n.vec = and i64 %i.ags, -32                    ; 5 uses
  %i.agv = getelementptr i8, ptr %.0.i119, i64 %n.vec
  %i.agw = getelementptr i8, ptr %.014.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i119, i64 %index ; 2 uses
  %next.gep523 = getelementptr i8, ptr %.014.i, i64 %index ; 2 uses
  %i.agx = getelementptr i8, ptr %next.gep523, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep523, align 1, !tbaa !61
  %wide.load524 = load <16 x i8>, ptr %i.agx, align 1, !tbaa !61
  %i.agy = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !61
  store <16 x i8> %wide.load524, ptr %i.agy, align 1, !tbaa !61
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.agz = icmp eq i64 %index.next, %n.vec
  br i1 %i.agz, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ags, %n.vec
  br i1 %cmp.n, label %ZSTD_storeSeq.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.agu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i121.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec526 = and i64 %i.ags, -8                  ; 4 uses
  %i.aha = getelementptr i8, ptr %.0.i119, i64 %n.vec526
  %i.ahb = getelementptr i8, ptr %.014.i, i64 %n.vec526
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index527 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next531, %vec.epilog.vector.body ] ; 3 uses
  %next.gep528 = getelementptr i8, ptr %.0.i119, i64 %index527
  %next.gep529 = getelementptr i8, ptr %.014.i, i64 %index527
  %wide.load530 = load <8 x i8>, ptr %next.gep529, align 1, !tbaa !61
  store <8 x i8> %wide.load530, ptr %next.gep528, align 1, !tbaa !61
  %index.next531 = add nuw i64 %index527, 8       ; 2 uses
  %i.ahc = icmp eq i64 %index.next531, %n.vec526
  br i1 %i.ahc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !127

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n532 = icmp eq i64 %i.ags, %n.vec526
  br i1 %cmp.n532, label %ZSTD_storeSeq.exit, label %.lr.ph.i121.preheader

.lr.ph.i121.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.121.i.ph = phi ptr [ %.0.i119, %iter.check ], [ %i.agv, %vec.epilog.iter.check ], [ %i.aha, %vec.epilog.middle.block ] ; 2 uses
  %.11520.i.ph = phi ptr [ %.014.i, %iter.check ], [ %i.agw, %vec.epilog.iter.check ], [ %i.ahb, %vec.epilog.middle.block ] ; 3 uses
  %i.ahd = add i64 %.1445.i340521, %i.afs
  %.11520.i.ph561 = ptrtoaddr ptr %.11520.i.ph to i64 ; 2 uses
  %i.ahe = sub i64 %i.ahd, %.11520.i.ph561
  %i.ahf = add i64 %.1445.i340521, -1
  %i.ahg = add i64 %i.ahf, %i.afs
  %i.ahh = sub i64 %i.ahg, %.11520.i.ph561
  %xtraiter562 = and i64 %i.ahe, 7                ; 2 uses
  %lcmp.mod563.not = icmp eq i64 %xtraiter562, 0
  br i1 %lcmp.mod563.not, label %.lr.ph.i121.prol.loopexit, label %.lr.ph.i121.prol

.lr.ph.i121.prol:                                 ; preds = %.lr.ph.i121.preheader, %.lr.ph.i121.prol
  %.121.i.prol = phi ptr [ %i.ahk, %.lr.ph.i121.prol ], [ %.121.i.ph, %.lr.ph.i121.preheader ] ; 2 uses
  %.11520.i.prol = phi ptr [ %i.ahi, %.lr.ph.i121.prol ], [ %.11520.i.ph, %.lr.ph.i121.preheader ] ; 2 uses
  %prol.iter564 = phi i64 [ %prol.iter564.next, %.lr.ph.i121.prol ], [ 0, %.lr.ph.i121.preheader ]
  %i.ahi = getelementptr inbounds nuw i8, ptr %.11520.i.prol, i64 1 ; 2 uses
  %i.ahj = load i8, ptr %.11520.i.prol, align 1, !tbaa !61
  %i.ahk = getelementptr inbounds nuw i8, ptr %.121.i.prol, i64 1 ; 2 uses
  store i8 %i.ahj, ptr %.121.i.prol, align 1, !tbaa !61
  %prol.iter564.next = add i64 %prol.iter564, 1   ; 2 uses
  %prol.iter564.cmp.not = icmp eq i64 %prol.iter564.next, %xtraiter562
  br i1 %prol.iter564.cmp.not, label %.lr.ph.i121.prol.loopexit, label %.lr.ph.i121.prol, !llvm.loop !128

.lr.ph.i121.prol.loopexit:                        ; preds = %.lr.ph.i121.prol, %.lr.ph.i121.preheader
  %.121.i.unr = phi ptr [ %.121.i.ph, %.lr.ph.i121.preheader ], [ %i.ahk, %.lr.ph.i121.prol ]
  %.11520.i.unr = phi ptr [ %.11520.i.ph, %.lr.ph.i121.preheader ], [ %i.ahi, %.lr.ph.i121.prol ]
  %i.ahl = icmp ult i64 %i.ahh, 7
  br i1 %i.ahl, label %ZSTD_storeSeq.exit, label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %.lr.ph.i121.prol.loopexit, %.lr.ph.i121
  %.121.i = phi ptr [ %i.aij, %.lr.ph.i121 ], [ %.121.i.unr, %.lr.ph.i121.prol.loopexit ] ; 9 uses
  %.11520.i = phi ptr [ %i.aih, %.lr.ph.i121 ], [ %.11520.i.unr, %.lr.ph.i121.prol.loopexit ] ; 9 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %.11520.i, i64 1
  %i.ahn = load i8, ptr %.11520.i, align 1, !tbaa !61
  %i.aho = getelementptr inbounds nuw i8, ptr %.121.i, i64 1
  store i8 %i.ahn, ptr %.121.i, align 1, !tbaa !61
  %i.ahp = getelementptr inbounds nuw i8, ptr %.11520.i, i64 2
  %i.ahq = load i8, ptr %i.ahm, align 1, !tbaa !61
  %i.ahr = getelementptr inbounds nuw i8, ptr %.121.i, i64 2
  store i8 %i.ahq, ptr %i.aho, align 1, !tbaa !61
  %i.ahs = getelementptr inbounds nuw i8, ptr %.11520.i, i64 3
  %i.aht = load i8, ptr %i.ahp, align 1, !tbaa !61
  %i.ahu = getelementptr inbounds nuw i8, ptr %.121.i, i64 3
  store i8 %i.aht, ptr %i.ahr, align 1, !tbaa !61
  %i.ahv = getelementptr inbounds nuw i8, ptr %.11520.i, i64 4
  %i.ahw = load i8, ptr %i.ahs, align 1, !tbaa !61
  %i.ahx = getelementptr inbounds nuw i8, ptr %.121.i, i64 4
  store i8 %i.ahw, ptr %i.ahu, align 1, !tbaa !61
  %i.ahy = getelementptr inbounds nuw i8, ptr %.11520.i, i64 5
  %i.ahz = load i8, ptr %i.ahv, align 1, !tbaa !61
  %i.aia = getelementptr inbounds nuw i8, ptr %.121.i, i64 5
  store i8 %i.ahz, ptr %i.ahx, align 1, !tbaa !61
  %i.aib = getelementptr inbounds nuw i8, ptr %.11520.i, i64 6
  %i.aic = load i8, ptr %i.ahy, align 1, !tbaa !61
  %i.aid = getelementptr inbounds nuw i8, ptr %.121.i, i64 6
  store i8 %i.aic, ptr %i.aia, align 1, !tbaa !61
  %i.aie = getelementptr inbounds nuw i8, ptr %.11520.i, i64 7
  %i.aif = load i8, ptr %i.aib, align 1, !tbaa !61
  %i.aig = getelementptr inbounds nuw i8, ptr %.121.i, i64 7
  store i8 %i.aif, ptr %i.aid, align 1, !tbaa !61
  %i.aih = getelementptr inbounds nuw i8, ptr %.11520.i, i64 8 ; 2 uses
  %i.aii = load i8, ptr %i.aie, align 1, !tbaa !61
  %i.aij = getelementptr inbounds nuw i8, ptr %.121.i, i64 8
  store i8 %i.aii, ptr %i.aig, align 1, !tbaa !61
  %exitcond.not.i122.7 = icmp eq ptr %i.aih, %i.afu
  br i1 %exitcond.not.i122.7, label %ZSTD_storeSeq.exit, label %.lr.ph.i121, !llvm.loop !129

ZSTD_storeSeq.exit.thread:                        ; preds = %bb.cj, %bb.ci
  %i.aik = load ptr, ptr %i.bn, align 8, !tbaa !84
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 %i.afs
  store ptr %i.ail, ptr %i.bn, align 8, !tbaa !84
  %.pre393 = load ptr, ptr %i.bq, align 8, !tbaa !88
  br label %bb.cr

ZSTD_storeSeq.exit:                               ; preds = %bb.cl, %.lr.ph.i121.prol.loopexit, %.lr.ph.i121, %middle.block, %vec.epilog.middle.block, %ZSTD_wildcopy.exit.i
  %i.aim = load ptr, ptr %i.bn, align 8, !tbaa !84
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 %i.afs
  store ptr %i.ain, ptr %i.bn, align 8, !tbaa !84
  %i.aio = icmp ugt i32 %i.acj, 65535
  %.pre394 = load ptr, ptr %i.bq, align 8, !tbaa !88 ; 3 uses
  br i1 %i.aio, label %bb.cq, label %bb.cr, !prof !89

bb.cq:                                            ; preds = %ZSTD_storeSeq.exit
  store i32 1, ptr %i.bp, align 8, !tbaa !90
  %i.aip = load ptr, ptr %1, align 8, !tbaa !91
  %i.aiq = ptrtoint ptr %.pre394 to i64
  %i.air = ptrtoint ptr %i.aip to i64
  %i.ais = sub i64 %i.aiq, %i.air
  %i.ait = lshr exact i64 %i.ais, 3
  %i.aiu = trunc i64 %i.ait to i32
  store i32 %i.aiu, ptr %i.br, align 4, !tbaa !92
  br label %bb.cr

bb.cr:                                            ; preds = %ZSTD_storeSeq.exit.thread, %bb.cq, %ZSTD_storeSeq.exit
  %i.aiv = phi ptr [ %.pre393, %ZSTD_storeSeq.exit.thread ], [ %.pre394, %bb.cq ], [ %.pre394, %ZSTD_storeSeq.exit ] ; 5 uses
  %i.aiw = trunc i32 %i.acj to i16
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiv, i64 4
  store i16 %i.aiw, ptr %i.aix, align 4, !tbaa !95
  store i32 %i.acr, ptr %i.aiv, align 4, !tbaa !96
  %i.aiy = add nsw i64 %i.aft, -3                 ; 2 uses
  %i.aiz = icmp ugt i64 %i.aiy, 65535
  br i1 %i.aiz, label %bb.cs, label %ZSTD_storeSeqOnly.exit, !prof !74

bb.cs:                                            ; preds = %bb.cr
  store i32 2, ptr %i.bp, align 8, !tbaa !90
  %i.aja = load ptr, ptr %1, align 8, !tbaa !91
  %i.ajb = ptrtoint ptr %i.aiv to i64
  %i.ajc = ptrtoint ptr %i.aja to i64
  %i.ajd = sub i64 %i.ajb, %i.ajc
  %i.aje = lshr exact i64 %i.ajd, 3
  %i.ajf = trunc i64 %i.aje to i32
  store i32 %i.ajf, ptr %i.br, align 4, !tbaa !92
  br label %ZSTD_storeSeqOnly.exit

ZSTD_storeSeqOnly.exit:                           ; preds = %bb.cr, %bb.cs
  %i.ajg = trunc i64 %i.aiy to i16
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aiv, i64 6
  store i16 %i.ajg, ptr %i.ajh, align 2, !tbaa !97
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8
  store ptr %i.aji, ptr %i.bq, align 8, !tbaa !88
  %i.ajj = zext i32 %i.acp to i64
  %i.ajk = getelementptr inbounds nuw i8, ptr %.1445.i340, i64 %i.ajj ; 2 uses
  br label %bb.ct

bb.ct:                                            ; preds = %ZSTD_storeSeqOnly.exit, %bb.bz
  %.2446.i = phi ptr [ %.1445.i340, %bb.bz ], [ %i.ajk, %ZSTD_storeSeqOnly.exit ] ; 2 uses
  %.3.i = phi ptr [ %i.aco, %bb.bz ], [ %i.ajk, %ZSTD_storeSeqOnly.exit ]
  %i.ajl = add i32 %.0.i343, 1                    ; 2 uses
  %.not499.i = icmp ugt i32 %i.ajl, %10
  br i1 %.not499.i, label %._crit_edge345, label %.lr.ph344, !llvm.loop !12

._crit_edge345:                                   ; preds = %bb.ct, %.preheader303
  %.1445.i.lcssa = phi ptr [ %.0444.i349, %.preheader303 ], [ %.2446.i, %bb.ct ]
  %.2.i.lcssa = phi ptr [ %.0442.i350, %.preheader303 ], [ %.3.i, %bb.ct ]
  %.val.i123 = load i32, ptr %i.bd, align 8, !tbaa !71
  %.not19.i = icmp eq i32 %.val.i123, 2
  br i1 %.not19.i, label %ZSTD_setBasePrices.exit, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge345
  %i.ajm = load i32, ptr %i.bi, align 8, !tbaa !78
  %i.ajn = add i32 %i.ajm, 1                      ; 2 uses
  %i.ajo = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ajn, i1 true)
  %i.ajp = xor i32 %i.ajo, 31                     ; 2 uses
  %i.ajq = shl nuw nsw i32 %i.ajp, 8
  %i.ajr = shl i32 %i.ajn, 8
  %i.ajs = lshr i32 %i.ajr, %i.ajp
  %i.ajt = add i32 %i.ajq, %i.ajs
  store i32 %i.ajt, ptr %i.be, align 8, !tbaa !72
  br label %ZSTD_setBasePrices.exit

ZSTD_setBasePrices.exit:                          ; preds = %._crit_edge345, %bb.cu
  %i.aju = load i32, ptr %i.bj, align 4, !tbaa !79
  %i.ajv = add i32 %i.aju, 1                      ; 2 uses
  %i.ajw = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ajv, i1 true)
  %i.ajx = xor i32 %i.ajw, 31                     ; 2 uses
  %i.ajy = shl nuw nsw i32 %i.ajx, 8
  %i.ajz = shl i32 %i.ajv, 8
  %i.aka = lshr i32 %i.ajz, %i.ajx
  %i.akb = add i32 %i.ajy, %i.aka
  %i.akc = load i32, ptr %i.bl, align 8, !tbaa !81
  %i.akd = add i32 %i.akc, 1                      ; 2 uses
  %i.ake = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.akd, i1 true)
  %i.akf = xor i32 %i.ake, 31                     ; 2 uses
  %i.akg = shl nuw nsw i32 %i.akf, 8
  %i.akh = shl i32 %i.akd, 8
  %i.aki = lshr i32 %i.akh, %i.akf
  %i.akj = add i32 %i.akg, %i.aki
  %i.akk = load i32, ptr %i.bk, align 4, !tbaa !80
  %i.akl = add i32 %i.akk, 1                      ; 2 uses
  %i.akm = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.akl, i1 true)
  %i.akn = xor i32 %i.akm, 31                     ; 2 uses
  %i.ako = shl nuw nsw i32 %i.akn, 8
  %i.akp = shl i32 %i.akl, 8
  %i.akq = lshr i32 %i.akp, %i.akn
  %i.akr = add i32 %i.ako, %i.akq
  store i32 %i.akb, ptr %i.aw, align 4, !tbaa !59
  store i32 %i.akj, ptr %i.bb, align 8, !tbaa !69
  store i32 %i.akr, ptr %i.az, align 4, !tbaa !67
  br label %bb.cv

bb.cv:                                            ; preds = %.thread130, %ZSTD_setBasePrices.exit, %bb.bp
  %.sroa.0214.2.i = phi i32 [ %.sroa.0214.0.i348, %.thread130 ], [ %.sroa.0214.1.i212230238, %ZSTD_setBasePrices.exit ], [ %.sroa.0214.1.i468, %bb.bp ]
  %.3447.i = phi ptr [ %.0444.i349, %.thread130 ], [ %.1445.i.lcssa, %ZSTD_setBasePrices.exit ], [ %.0444.i349, %bb.bp ] ; 2 uses
  %.4.i = phi ptr [ %i.ce, %.thread130 ], [ %.2.i.lcssa, %ZSTD_setBasePrices.exit ], [ %i.aal, %bb.bp ] ; 2 uses
  %i.aks = icmp ult ptr %.4.i, %i.f
  br i1 %i.aks, label %bb.e, label %ZSTD_compressBlock_opt_generic.exit.loopexit

ZSTD_compressBlock_opt_generic.exit.loopexit:     ; preds = %bb.cv
  %.pre395 = ptrtoint ptr %.3447.i to i64
  br label %ZSTD_compressBlock_opt_generic.exit

ZSTD_compressBlock_opt_generic.exit:              ; preds = %ZSTD_compressBlock_opt_generic.exit.loopexit, %bb.d
  %.pre-phi = phi i64 [ %.pre395, %ZSTD_compressBlock_opt_generic.exit.loopexit ], [ %i.al, %bb.d ]
  %i.akt = sub i64 %i.am, %.pre-phi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %i.akt
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock_btultra2(ptr noundef initializes((224, 228)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = ptrtoint ptr %3 to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.i = load i32, ptr %i.h, align 4, !tbaa !132
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88
  %i.m = load ptr, ptr %1, align 8, !tbaa !91
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !41   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !98
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %i.p, %i.g
  %i.u = icmp ugt i64 %4, 8
  %or.cond = and i1 %i.u, %i.t
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.v = call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef %3, i64 noundef range(i64 9, 0) %4, i32 noundef 0) ; 0 uses
  call void @ZSTD_resetSeqStore(ptr noundef nonnull %1) #11
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.x = sub i64 0, %4
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store ptr %i.y, ptr %i.b, align 8, !tbaa !38
  %i.z = trunc i64 %4 to i32
  %i.aa = load i32, ptr %i.o, align 8, !tbaa !41
  %i.ab = add i32 %i.aa, %i.z                     ; 3 uses
  store i32 %i.ab, ptr %i.o, align 8, !tbaa !41
  store i32 %i.ab, ptr %i.q, align 4, !tbaa !98
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ad = call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %i.ad
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock_btopt_dictMatchState(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 2)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock_btopt_extDict(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_compressBlock_opt0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock_btultra_dictMatchState(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 2)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_compressBlock_btultra_extDict(ptr noundef initializes((224, 228)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i64 @ZSTD_compressBlock_opt2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @ZSTD_insertBt1(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i32, ptr %i.e, align 8, !tbaa !100  ; 5 uses
  switch i32 %4, label %bb.b [
    i32 8, label %bb.f
    i32 5, label %bb.c
    i32 6, label %bb.d
    i32 7, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 1, !tbaa !44
  %i.g = mul i32 %.val, -1640531535
  %i.h = sub i32 32, %i.f
  %i.i = lshr i32 %i.g, %i.h
  %i.j = zext i32 %i.i to i64
  br label %ZSTD_hashPtr.exit

bb.c:                                             ; preds = %bb.a
  %.val145 = load i64, ptr %1, align 1, !tbaa !48
  %i.k = mul i64 %.val145, -3523014627271114752
  %i.l = sub i32 64, %i.f
  %i.m = zext nneg i32 %i.l to i64
  %i.n = lshr i64 %i.k, %i.m
  br label %ZSTD_hashPtr.exit

bb.d:                                             ; preds = %bb.a
  %.val146 = load i64, ptr %1, align 1, !tbaa !48
  %i.o = mul i64 %.val146, -3523014627193847808
end_hunk_4
