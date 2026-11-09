Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/JXRGlueJxr?download=true
inline.NumInlined: 68
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tagWmpDE = type { i16, i16, i32, i32 }
%struct.tagPKPixelInfo = type { ptr, i64, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.tagCWMImageBufferInfo = type { ptr, i64, i64, i32, i32, i64 }
%struct._GUID = type { i32, i16, i16, [8 x i8] }
%struct.tagCWMTranscodingParam = type { i64, i64, i64, i64, i32, i8, i32, i32, i32 }

@IFDEntryTypeSizes = local_unnamed_addr constant [13 x i32] [i32 0, i32 1, i32 1, i32 2, i32 4, i32 8, i32 1, i32 1, i32 2, i32 4, i32 8, i32 4, i32 8], align 16
@SizeofIFDEntry = local_unnamed_addr constant i32 12, align 4
@WriteContainerPre.wmpDEs = internal unnamed_addr constant [30 x %struct.tagWmpDE] [%struct.tagWmpDE { i16 269, i16 2, i32 1, i32 -1 }, %struct.tagWmpDE { i16 270, i16 2, i32 1, i32 -1 }, %struct.tagWmpDE { i16 271, i16 2, i32 1, i32 -1 }, %struct.tagWmpDE { i16 272, i16 2, i32 1, i32 -1 }, %struct.tagWmpDE { i16 285, i16 2, i32 1, i32 -1 }, %struct.tagWmpDE { i16 297, i16 3, i32 2, i32 -1 }, %struct.tagWmpDE { i16 305, i16 2, i32 1, i32 -1 }, %struct.tagWmpDE { i16 306, i16 2, i32 1, i32 -1 }, %struct.tagWmpDE { i16 315, i16 2, i32 1, i32 -1 }, %struct.tagWmpDE { i16 316, i16 2, i32 1, i32 -1 }, %struct.tagWmpDE { i16 18246, i16 3, i32 1, i32 -1 }, %struct.tagWmpDE { i16 18249, i16 3, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -32104, i16 2, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -25445, i16 1, i32 1, i32 -1 }, %struct.tagWmpDE { i16 700, i16 1, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -31813, i16 1, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -31159, i16 1, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -30871, i16 4, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -30861, i16 7, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -30683, i16 4, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -17407, i16 1, i32 16, i32 -1 }, %struct.tagWmpDE { i16 -17406, i16 4, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -17280, i16 4, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -17279, i16 4, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -17278, i16 11, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -17277, i16 11, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -17216, i16 4, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -17215, i16 4, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -17214, i16 4, i32 1, i32 -1 }, %struct.tagWmpDE { i16 -17213, i16 4, i32 1, i32 -1 }], align 16
@.str = private unnamed_addr constant [12 x i8] c"<dc:format>\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"</dc:format>\00", align 1
@szHDPhotoFormat = internal constant [42 x i8] c"<dc:format>image/vnd.ms-photo</dc:format>\00", align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"II\00", align 1
@switch.table.PKImageDecode_Copy_WMP = private unnamed_addr constant [7 x i8] c"\03\04\04\04\05\05\05", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @CalcMetadataSizeLPSTR(i32 %0, ptr nofree readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %i.b = trunc i64 %i.a to i32
  %i.c = add i32 %i.b, 1                          ; 3 uses
  %i.d = icmp ugt i32 %i.c, 4
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %3, align 4, !tbaa !10
  %i.f = add i32 %i.e, %i.c
  store i32 %i.f, ptr %3, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not7 = icmp eq ptr %4, null
  br i1 %.not7, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.c, ptr %4, align 4, !tbaa !10
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.g = load i16, ptr %2, align 2, !tbaa !12
  %i.h = add i16 %i.g, 1
  store i16 %i.h, ptr %2, align 2, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @CalcMetadataSizeLPWSTR(i32 %0, ptr nofree readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @wcslen(ptr noundef %1) #12
  %.tr = trunc i64 %i.a to i32
  %i.b = shl i32 %.tr, 1
  %i.c = add i32 %i.b, 2                          ; 3 uses
  %i.d = icmp ugt i32 %i.c, 4
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %3, align 4, !tbaa !10
  %i.f = add i32 %i.e, %i.c
  store i32 %i.f, ptr %3, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not7 = icmp eq ptr %4, null
  br i1 %.not7, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.c, ptr %4, align 4, !tbaa !10
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.g = load i16, ptr %2, align 2, !tbaa !12
  %i.h = add i16 %i.g, 1
  store i16 %i.h, ptr %2, align 2, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @CalcMetadataSizeUI2(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %2, align 2, !tbaa !12
  %i.b = add i16 %i.a, 1
  store i16 %i.b, ptr %2, align 2, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @CalcMetadataSizeUI4(i32 %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %2, align 2, !tbaa !12
  %i.b = add i16 %i.a, 1
  store i16 %i.b, ptr %2, align 2, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @CalcMetadataOffsetSize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load i32, ptr %i.a, align 8
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #12
  %i.f = trunc i64 %i.e to i32
  %i.g = add i32 %i.f, 1                          ; 2 uses
  %i.h = icmp ugt i32 %i.g, 4
  br i1 %i.h, label %bb.c, label %CalcMetadataSizeLPSTR.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %2, align 4, !tbaa !10
  %i.j = add i32 %i.i, %i.g
  store i32 %i.j, ptr %2, align 4, !tbaa !10
  br label %CalcMetadataSizeLPSTR.exit

bb.d:                                             ; preds = %bb.a
  %i.k = load i16, ptr %1, align 2, !tbaa !12
  %i.l = add i16 %i.k, 1
  store i16 %i.l, ptr %1, align 2, !tbaa !12
  br label %CalcMetadataSizeLPSTR.exit

CalcMetadataSizeLPSTR.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.n = load i32, ptr %i.m, align 8
  %.not.i42 = icmp eq i32 %i.n, 0
  br i1 %.not.i42, label %bb.g, label %bb.e

bb.e:                                             ; preds = %CalcMetadataSizeLPSTR.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.p) #12
  %i.r = trunc i64 %i.q to i32
  %i.s = add i32 %i.r, 1                          ; 2 uses
  %i.t = icmp ugt i32 %i.s, 4
  br i1 %i.t, label %bb.f, label %CalcMetadataSizeLPSTR.exit43

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %2, align 4, !tbaa !10
  %i.v = add i32 %i.u, %i.s
  store i32 %i.v, ptr %2, align 4, !tbaa !10
  br label %CalcMetadataSizeLPSTR.exit43

bb.g:                                             ; preds = %CalcMetadataSizeLPSTR.exit
  %i.w = load i16, ptr %1, align 2, !tbaa !12
  %i.x = add i16 %i.w, 1
  store i16 %i.x, ptr %1, align 2, !tbaa !12
  br label %CalcMetadataSizeLPSTR.exit43

CalcMetadataSizeLPSTR.exit43:                     ; preds = %bb.e, %bb.f, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.z = load i32, ptr %i.y, align 8
  %.not.i44 = icmp eq i32 %i.z, 0
  br i1 %.not.i44, label %bb.j, label %bb.h

bb.h:                                             ; preds = %CalcMetadataSizeLPSTR.exit43
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ab) #12
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = add i32 %i.ad, 1                        ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 4
  br i1 %i.af, label %bb.i, label %CalcMetadataSizeLPSTR.exit45

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %2, align 4, !tbaa !10
  %i.ah = add i32 %i.ag, %i.ae
  store i32 %i.ah, ptr %2, align 4, !tbaa !10
  br label %CalcMetadataSizeLPSTR.exit45

bb.j:                                             ; preds = %CalcMetadataSizeLPSTR.exit43
  %i.ai = load i16, ptr %1, align 2, !tbaa !12
  %i.aj = add i16 %i.ai, 1
  store i16 %i.aj, ptr %1, align 2, !tbaa !12
  br label %CalcMetadataSizeLPSTR.exit45

CalcMetadataSizeLPSTR.exit45:                     ; preds = %bb.h, %bb.i, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.al = load i32, ptr %i.ak, align 8
  %.not.i46 = icmp eq i32 %i.al, 0
  br i1 %.not.i46, label %bb.m, label %bb.k

bb.k:                                             ; preds = %CalcMetadataSizeLPSTR.exit45
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.an) #12
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = add i32 %i.ap, 1                        ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 4
  br i1 %i.ar, label %bb.l, label %CalcMetadataSizeLPSTR.exit47

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %2, align 4, !tbaa !10
  %i.at = add i32 %i.as, %i.aq
  store i32 %i.at, ptr %2, align 4, !tbaa !10
  br label %CalcMetadataSizeLPSTR.exit47

bb.m:                                             ; preds = %CalcMetadataSizeLPSTR.exit45
  %i.au = load i16, ptr %1, align 2, !tbaa !12
  %i.av = add i16 %i.au, 1
  store i16 %i.av, ptr %1, align 2, !tbaa !12
  br label %CalcMetadataSizeLPSTR.exit47

CalcMetadataSizeLPSTR.exit47:                     ; preds = %bb.k, %bb.l, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ax = load i32, ptr %i.aw, align 8
  %.not.i48 = icmp eq i32 %i.ax, 0
  br i1 %.not.i48, label %bb.p, label %bb.n

bb.n:                                             ; preds = %CalcMetadataSizeLPSTR.exit47
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.az) #12
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  %i.bd = icmp ugt i32 %i.bc, 4
  br i1 %i.bd, label %bb.o, label %CalcMetadataSizeLPSTR.exit49

bb.o:                                             ; preds = %bb.n
  %i.be = load i32, ptr %2, align 4, !tbaa !10
  %i.bf = add i32 %i.be, %i.bc
  store i32 %i.bf, ptr %2, align 4, !tbaa !10
  br label %CalcMetadataSizeLPSTR.exit49

bb.p:                                             ; preds = %CalcMetadataSizeLPSTR.exit47
  %i.bg = load i16, ptr %1, align 2, !tbaa !12
  %i.bh = add i16 %i.bg, 1
  store i16 %i.bh, ptr %1, align 2, !tbaa !12
  br label %CalcMetadataSizeLPSTR.exit49

CalcMetadataSizeLPSTR.exit49:                     ; preds = %bb.n, %bb.o, %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bj = load i32, ptr %i.bi, align 8
  %.not.i50 = icmp eq i32 %i.bj, 0
  br i1 %.not.i50, label %bb.s, label %bb.q

bb.q:                                             ; preds = %CalcMetadataSizeLPSTR.exit49
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bl) #12
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = add i32 %i.bn, 1                        ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, 4
  br i1 %i.bp, label %bb.r, label %CalcMetadataSizeLPSTR.exit51

bb.r:                                             ; preds = %bb.q
  %i.bq = load i32, ptr %2, align 4, !tbaa !10
  %i.br = add i32 %i.bq, %i.bo
  store i32 %i.br, ptr %2, align 4, !tbaa !10
  br label %CalcMetadataSizeLPSTR.exit51

bb.s:                                             ; preds = %CalcMetadataSizeLPSTR.exit49
  %i.bs = load i16, ptr %1, align 2, !tbaa !12
  %i.bt = add i16 %i.bs, 1
  store i16 %i.bt, ptr %1, align 2, !tbaa !12
  br label %CalcMetadataSizeLPSTR.exit51

CalcMetadataSizeLPSTR.exit51:                     ; preds = %bb.q, %bb.r, %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bv = load i32, ptr %i.bu, align 8
  %.not.i52 = icmp eq i32 %i.bv, 0
  br i1 %.not.i52, label %bb.v, label %bb.t

bb.t:                                             ; preds = %CalcMetadataSizeLPSTR.exit51
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bx) #12
  %i.bz = trunc i64 %i.by to i32
  %i.ca = add i32 %i.bz, 1                        ; 2 uses
  %i.cb = icmp ugt i32 %i.ca, 4
  br i1 %i.cb, label %bb.u, label %CalcMetadataSizeLPSTR.exit53

bb.u:                                             ; preds = %bb.t
  %i.cc = load i32, ptr %2, align 4, !tbaa !10
  %i.cd = add i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %2, align 4, !tbaa !10
  br label %CalcMetadataSizeLPSTR.exit53

bb.v:                                             ; preds = %CalcMetadataSizeLPSTR.exit51
  %i.ce = load i16, ptr %1, align 2, !tbaa !12
  %i.cf = add i16 %i.ce, 1
  store i16 %i.cf, ptr %1, align 2, !tbaa !12
  br label %CalcMetadataSizeLPSTR.exit53

CalcMetadataSizeLPSTR.exit53:                     ; preds = %bb.t, %bb.u, %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ch = load i32, ptr %i.cg, align 8
  %.not.i54 = icmp eq i32 %i.ch, 0
  br i1 %.not.i54, label %bb.w, label %CalcMetadataSizeUI2.exit

bb.w:                                             ; preds = %CalcMetadataSizeLPSTR.exit53
  %i.ci = load i16, ptr %1, align 2, !tbaa !12
  %i.cj = add i16 %i.ci, 1
  store i16 %i.cj, ptr %1, align 2, !tbaa !12
  br label %CalcMetadataSizeUI2.exit

CalcMetadataSizeUI2.exit:                         ; preds = %CalcMetadataSizeLPSTR.exit53, %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cl = load i32, ptr %i.ck, align 8
  %.not.i55 = icmp eq i32 %i.cl, 0
  br i1 %.not.i55, label %bb.x, label %CalcMetadataSizeUI2.exit56

bb.x:                                             ; preds = %CalcMetadataSizeUI2.exit
  %i.cm = load i16, ptr %1, align 2, !tbaa !12
  %i.cn = add i16 %i.cm, 1
  store i16 %i.cn, ptr %1, align 2, !tbaa !12
  br label %CalcMetadataSizeUI2.exit56

CalcMetadataSizeUI2.exit56:                       ; preds = %CalcMetadataSizeUI2.exit, %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cp = load i32, ptr %i.co, align 8
  %.not.i57 = icmp eq i32 %i.cp, 0
  br i1 %.not.i57, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %CalcMetadataSizeUI2.exit56
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call i64 @wcslen(ptr noundef readonly %i.cr) #12
  %.tr.i = trunc i64 %i.cs to i32
  %i.ct = shl i32 %.tr.i, 1
  %i.cu = add i32 %i.ct, 2                        ; 2 uses
  %i.cv = icmp ugt i32 %i.cu, 4
  br i1 %i.cv, label %bb.z, label %CalcMetadataSizeLPWSTR.exit

bb.z:                                             ; preds = %bb.y
  %i.cw = load i32, ptr %2, align 4, !tbaa !10
  %i.cx = add i32 %i.cw, %i.cu
  store i32 %i.cx, ptr %2, align 4, !tbaa !10
  br label %CalcMetadataSizeLPWSTR.exit

bb.aa:                                            ; preds = %CalcMetadataSizeUI2.exit56
  %i.cy = load i16, ptr %1, align 2, !tbaa !12
  %i.cz = add i16 %i.cy, 1
  store i16 %i.cz, ptr %1, align 2, !tbaa !12
  br label %CalcMetadataSizeLPWSTR.exit

CalcMetadataSizeLPWSTR.exit:                      ; preds = %bb.y, %bb.z, %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.db = load i32, ptr %i.da, align 8
  %.not.i58 = icmp eq i32 %i.db, 0
  br i1 %.not.i58, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %CalcMetadataSizeLPWSTR.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dd) #12
  %i.df = trunc i64 %i.de to i32
  %i.dg = add i32 %i.df, 1                        ; 2 uses
  %i.dh = icmp ugt i32 %i.dg, 4
  br i1 %i.dh, label %bb.ac, label %CalcMetadataSizeLPSTR.exit59

bb.ac:                                            ; preds = %bb.ab
  %i.di = load i32, ptr %2, align 4, !tbaa !10
  %i.dj = add i32 %i.di, %i.dg
  store i32 %i.dj, ptr %2, align 4, !tbaa !10
  br label %CalcMetadataSizeLPSTR.exit59

bb.ad:                                            ; preds = %CalcMetadataSizeLPWSTR.exit
  %i.dk = load i16, ptr %1, align 2, !tbaa !12
  %i.dl = add i16 %i.dk, 1
  store i16 %i.dl, ptr %1, align 2, !tbaa !12
  br label %CalcMetadataSizeLPSTR.exit59

CalcMetadataSizeLPSTR.exit59:                     ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.dn = load i32, ptr %i.dm, align 8
  %.not.i60 = icmp eq i32 %i.dn, 0
  br i1 %.not.i60, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %CalcMetadataSizeLPSTR.exit59
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dp) #12
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = add i32 %i.dr, 1                        ; 2 uses
  %i.dt = icmp ugt i32 %i.ds, 4
  br i1 %i.dt, label %bb.af, label %CalcMetadataSizeLPSTR.exit61

bb.af:                                            ; preds = %bb.ae
  %i.du = load i32, ptr %2, align 4, !tbaa !10
  %i.dv = add i32 %i.du, %i.ds
  store i32 %i.dv, ptr %2, align 4, !tbaa !10
  br label %CalcMetadataSizeLPSTR.exit61

bb.ag:                                            ; preds = %CalcMetadataSizeLPSTR.exit59
  %i.dw = load i16, ptr %1, align 2, !tbaa !12
  %i.dx = add i16 %i.dw, 1
  store i16 %i.dx, ptr %1, align 2, !tbaa !12
  br label %CalcMetadataSizeLPSTR.exit61

CalcMetadataSizeLPSTR.exit61:                     ; preds = %bb.ae, %bb.af, %bb.ag
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dz = load i32, ptr %i.dy, align 8
  %.not.i62 = icmp eq i32 %i.dz, 0
  br i1 %.not.i62, label %bb.ah, label %CalcMetadataSizeUI4.exit

bb.ah:                                            ; preds = %CalcMetadataSizeLPSTR.exit61
  %i.ea = load i16, ptr %1, align 2, !tbaa !12
  %i.eb = add i16 %i.ea, 1
  store i16 %i.eb, ptr %1, align 2, !tbaa !12
  br label %CalcMetadataSizeUI4.exit

CalcMetadataSizeUI4.exit:                         ; preds = %CalcMetadataSizeLPSTR.exit61, %bb.ah
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ed = load i32, ptr %i.ec, align 8
  %.not.i63 = icmp eq i32 %i.ed, 0
  br i1 %.not.i63, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %CalcMetadataSizeUI4.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ef) #12
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = add i32 %i.eh, 1                        ; 2 uses
  %i.ej = icmp ugt i32 %i.ei, 4
  br i1 %i.ej, label %bb.aj, label %CalcMetadataSizeLPSTR.exit64

bb.aj:                                            ; preds = %bb.ai
  %i.ek = load i32, ptr %2, align 4, !tbaa !10
  %i.el = add i32 %i.ek, %i.ei
  store i32 %i.el, ptr %2, align 4, !tbaa !10
  br label %CalcMetadataSizeLPSTR.exit64

bb.ak:                                            ; preds = %CalcMetadataSizeUI4.exit
  %i.em = load i16, ptr %1, align 2, !tbaa !12
  %i.en = add i16 %i.em, 1
  store i16 %i.en, ptr %1, align 2, !tbaa !12
  br label %CalcMetadataSizeLPSTR.exit64

CalcMetadataSizeLPSTR.exit64:                     ; preds = %bb.ai, %bb.aj, %bb.ak
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @CopyDescMetadata(ptr noundef initializes((0, 4)) %0, i32 %1, ptr %2) local_unnamed_addr #4 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !14
  switch i32 %1, label %bb.i [
    i32 30, label %bb.b
    i32 31, label %bb.d
    i32 18, label %bb.f
    i32 19, label %bb.g
    i32 0, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  store i32 30, ptr %0, align 8, !tbaa !14
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call i64 @PKAlloc(ptr noundef nonnull %i.c, i64 noundef %i.b) #13 ; 3 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr nonnull align 1 %2, i64 %i.b, i1 false)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  store i32 31, ptr %0, align 8, !tbaa !14
  %i.g = tail call i64 @wcslen(ptr noundef %2) #12
  %i.h = shl i64 %i.g, 1
  %i.i = add i64 %i.h, 2                          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = tail call i64 @PKAlloc(ptr noundef nonnull %i.j, i64 noundef %i.i) #13 ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.m, ptr align 2 %2, i64 %i.i, i1 false)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %2 to i64
  %.sroa.3.8.extract.trunc24 = trunc i64 %i.n to i16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.3.8.extract.trunc24, ptr %i.o, align 8, !tbaa !15
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.p = ptrtoint ptr %2 to i64
  %.sroa.3.8.extract.trunc = trunc i64 %i.p to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.3.8.extract.trunc, ptr %i.q, align 8, !tbaa !15
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.d, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  %.0 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.h ], [ %i.d, %bb.c ], [ %i.d, %bb.b ], [ %i.k, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ -2, %bb.a ]
  ret i64 %.0
}

declare i64 @PKAlloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define void @FreeDescMetadata(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !14
  %i.b = and i32 %i.a, -2
  %switch = icmp eq i32 %i.b, 30
  br i1 %switch, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call i64 @PKFree(ptr noundef nonnull %i.c) #13 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  ret void
}

declare i64 @PKFree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i64 @WriteDescMetadata(ptr nofree noundef readonly captures(none) %0, i32 %1, ptr %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.h = load i32, ptr %i.g, align 4, !tbaa !30
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %bb.g [
    i32 0, label %bb.f
    i32 30, label %CalcMetadataSizeLPSTR.exit
    i32 31, label %CalcMetadataSizeLPWSTR.exit
    i32 18, label %bb.d
    i32 19, label %bb.e
  ]

CalcMetadataSizeLPSTR.exit:                       ; preds = %bb.c
  %i.j = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #12
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.l, ptr %i.m, align 4, !tbaa !32
  %i.n = load i32, ptr %4, align 4, !tbaa !10
  %i.o = add i32 %i.n, %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.o, ptr %i.p, align 4, !tbaa !33
  %i.q = call i64 @WriteWmpDE(ptr noundef %i.c, ptr noundef %5, ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #13 ; 3 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.f

CalcMetadataSizeLPWSTR.exit:                      ; preds = %bb.c
  %i.s = tail call i64 @wcslen(ptr noundef readonly %2) #12
  %.tr.i = trunc i64 %i.s to i32
  %i.t = shl i32 %.tr.i, 1
  %i.u = add i32 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !32
  %i.w = load i32, ptr %4, align 4, !tbaa !10
  %i.x = add i32 %i.w, %i.e
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.x, ptr %i.y, align 4, !tbaa !33
  %i.z = call i64 @WriteWmpDE(ptr noundef %i.c, ptr noundef %5, ptr noundef %3, ptr noundef %2, ptr noundef nonnull %i.a) #13 ; 3 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.ab, align 4, !tbaa !32
  %i.ac = ptrtoint ptr %2 to i64
  %.sroa.6.8.extract.trunc48 = trunc i64 %i.ac to i32
  %i.ad = and i32 %.sroa.6.8.extract.trunc48, 65535
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !33
  %i.af = tail call i64 @WriteWmpDE(ptr noundef %i.c, ptr noundef %5, ptr noundef %3, ptr noundef null, ptr noundef null) #13 ; 3 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.ah, align 4, !tbaa !32
  %i.ai = ptrtoint ptr %2 to i64
  %.sroa.6.8.extract.trunc = trunc i64 %i.ai to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.6.8.extract.trunc, ptr %i.aj, align 4, !tbaa !33
  %i.ak = tail call i64 @WriteWmpDE(ptr noundef %i.c, ptr noundef %5, ptr noundef %3, ptr noundef null, ptr noundef null) #13 ; 3 uses
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %CalcMetadataSizeLPWSTR.exit, %CalcMetadataSizeLPSTR.exit, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ %i.af, %bb.d ], [ %i.q, %CalcMetadataSizeLPSTR.exit ], [ %i.z, %CalcMetadataSizeLPWSTR.exit ], [ %i.ak, %bb.e ]
  %i.am = load i32, ptr %i.a, align 4, !tbaa !10
  %i.an = load i32, ptr %4, align 4, !tbaa !10
  %i.ao = add i32 %i.an, %i.am
  store i32 %i.ao, ptr %4, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %CalcMetadataSizeLPWSTR.exit, %CalcMetadataSizeLPSTR.exit, %bb.a, %bb.b, %bb.f
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ak, %bb.e ], [ %.0, %bb.f ], [ %i.af, %bb.d ], [ %i.q, %CalcMetadataSizeLPSTR.exit ], [ %i.z, %CalcMetadataSizeLPWSTR.exit ], [ -2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i64 %.1
}

declare i64 @WriteWmpDE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i64 @WriteContainerPre(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.tagPKPixelInfo, align 8     ; 4 uses
  %i.a = alloca i64, align 8                      ; 56 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 17 uses
  %2 = alloca %struct.tagWmpDE, align 8           ; 74 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  %i.h = alloca [364 x i8], align 16              ; 7 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %i.j = alloca i32, align 4                      ; 3 uses
  %i.k = alloca i32, align 4                      ; 3 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 3 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 44 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i16 18761, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 0, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i16 0, ptr %i.d, align 2, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i32 0, ptr %i.e, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store ptr null, ptr %i.f, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store ptr null, ptr %i.g, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(364) %i.h, i8 0, i64 364, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37
  %i.t = call i64 %i.s(ptr noundef %i.p, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 8 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.y = call i64 %i.x(ptr noundef nonnull %i.p, ptr noundef nonnull %i.b, i64 noundef 2) #13 ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ab = add i64 %i.aa, 2                        ; 2 uses
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !34
  %i.ac = call i64 @PutUShort(ptr noundef nonnull %i.p, i64 noundef %i.ab, i16 noundef zeroext 444) #13 ; 2 uses
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !34
  %i.af = add i64 %i.ae, 2                        ; 2 uses
  store i64 %i.af, ptr %i.a, align 8, !tbaa !34
  %i.ag = call i64 @PutULong(ptr noundef nonnull %i.p, i64 noundef %i.af, i32 noundef 32) #13 ; 2 uses
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !34
  %i.aj = add i64 %i.ai, 4                        ; 2 uses
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !34
  %i.ak = trunc i64 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !130
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !41
  %i.an = call i64 @PixelFormatLookup(ptr noundef nonnull %1, i8 noundef zeroext 0) #13 ; 0 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ap = load i32, ptr %i.am, align 8, !tbaa !10
  %i.aq = call i64 @PutULong(ptr noundef nonnull %i.p, i64 noundef %i.ao, i32 noundef %i.ap) #13 ; 2 uses
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load i64, ptr %i.a, align 8, !tbaa !34
  %i.at = add i64 %i.as, 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.av = load i16, ptr %i.au, align 4, !tbaa !12
  %i.aw = call i64 @PutUShort(ptr noundef nonnull %i.p, i64 noundef %i.at, i16 noundef zeroext %i.av) #13 ; 2 uses
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !34
  %i.az = add i64 %i.ay, 6
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !12
  %i.bc = call i64 @PutUShort(ptr noundef nonnull %i.p, i64 noundef %i.az, i16 noundef zeroext %i.bb) #13 ; 2 uses
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bg = call i64 %i.be(ptr noundef nonnull %i.p, ptr noundef nonnull %i.bf, i64 noundef 8) #13 ; 2 uses
  %i.bh = icmp slt i64 %i.bg, 0
  br i1 %i.bh, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.bj = add i64 %i.bi, 16                       ; 2 uses
  store i64 %i.bj, ptr %i.a, align 8, !tbaa !34
  %i.bk = call i64 @CalcMetadataOffsetSize(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) ; 0 uses
  %i.bl = load i16, ptr %i.d, align 2, !tbaa !12
  %i.bm = icmp ult i64 %i.bj, 32
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.bo = sub nsw i64 16, %i.bi
  %i.bp = call i64 %i.bn(ptr noundef nonnull %i.p, ptr noundef nonnull %i.h, i64 noundef %i.bo) #13 ; 2 uses
  %i.bq = icmp slt i64 %i.bp, 0
  br i1 %i.bq, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i64 32, ptr %i.a, align 8, !tbaa !34
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 66632 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !42
  %.not436 = icmp eq i32 %i.bs, 0
  br i1 %.not436, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !43
  %.not437 = icmp eq i8 %i.bu, 2
  br i1 %.not437, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi i16 [ 28, %bb.n ], [ 30, %bb.m ]
  %.0362 = sub i16 %.pn, %i.bl
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !44 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0                    ; 2 uses
  %i.by = sext i1 %i.bx to i16
  %spec.select = add i16 %.0362, %i.by
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !45 ; 2 uses
end_hunk_0
