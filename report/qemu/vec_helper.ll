Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vec_helper?download=true
inline.NumInlined: 1641
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 113
loop-unroll.NumUnrolled: 184
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ARMVectorReg = type { [32 x i64] }
%struct.FloatParts64 = type { i8, i8, i32, %union.anon.39 }
%union.anon.39 = type { i64 }
%struct.float_status = type { i64 }

@expand_pred_b_data = dso_local local_unnamed_addr constant [256 x i64] [i64 0, i64 255, i64 65280, i64 65535, i64 16711680, i64 16711935, i64 16776960, i64 16777215, i64 4278190080, i64 4278190335, i64 4278255360, i64 4278255615, i64 4294901760, i64 4294902015, i64 4294967040, i64 4294967295, i64 1095216660480, i64 1095216660735, i64 1095216725760, i64 1095216726015, i64 1095233372160, i64 1095233372415, i64 1095233437440, i64 1095233437695, i64 1099494850560, i64 1099494850815, i64 1099494915840, i64 1099494916095, i64 1099511562240, i64 1099511562495, i64 1099511627520, i64 1099511627775, i64 280375465082880, i64 280375465083135, i64 280375465148160, i64 280375465148415, i64 280375481794560, i64 280375481794815, i64 280375481859840, i64 280375481860095, i64 280379743272960, i64 280379743273215, i64 280379743338240, i64 280379743338495, i64 280379759984640, i64 280379759984895, i64 280379760049920, i64 280379760050175, i64 281470681743360, i64 281470681743615, i64 281470681808640, i64 281470681808895, i64 281470698455040, i64 281470698455295, i64 281470698520320, i64 281470698520575, i64 281474959933440, i64 281474959933695, i64 281474959998720, i64 281474959998975, i64 281474976645120, i64 281474976645375, i64 281474976710400, i64 281474976710655, i64 71776119061217280, i64 71776119061217535, i64 71776119061282560, i64 71776119061282815, i64 71776119077928960, i64 71776119077929215, i64 71776119077994240, i64 71776119077994495, i64 71776123339407360, i64 71776123339407615, i64 71776123339472640, i64 71776123339472895, i64 71776123356119040, i64 71776123356119295, i64 71776123356184320, i64 71776123356184575, i64 71777214277877760, i64 71777214277878015, i64 71777214277943040, i64 71777214277943295, i64 71777214294589440, i64 71777214294589695, i64 71777214294654720, i64 71777214294654975, i64 71777218556067840, i64 71777218556068095, i64 71777218556133120, i64 71777218556133375, i64 71777218572779520, i64 71777218572779775, i64 71777218572844800, i64 71777218572845055, i64 72056494526300160, i64 72056494526300415, i64 72056494526365440, i64 72056494526365695, i64 72056494543011840, i64 72056494543012095, i64 72056494543077120, i64 72056494543077375, i64 72056498804490240, i64 72056498804490495, i64 72056498804555520, i64 72056498804555775, i64 72056498821201920, i64 72056498821202175, i64 72056498821267200, i64 72056498821267455, i64 72057589742960640, i64 72057589742960895, i64 72057589743025920, i64 72057589743026175, i64 72057589759672320, i64 72057589759672575, i64 72057589759737600, i64 72057589759737855, i64 72057594021150720, i64 72057594021150975, i64 72057594021216000, i64 72057594021216255, i64 72057594037862400, i64 72057594037862655, i64 72057594037927680, i64 72057594037927935, i64 -72057594037927936, i64 -72057594037927681, i64 -72057594037862656, i64 -72057594037862401, i64 -72057594021216256, i64 -72057594021216001, i64 -72057594021150976, i64 -72057594021150721, i64 -72057589759737856, i64 -72057589759737601, i64 -72057589759672576, i64 -72057589759672321, i64 -72057589743026176, i64 -72057589743025921, i64 -72057589742960896, i64 -72057589742960641, i64 -72056498821267456, i64 -72056498821267201, i64 -72056498821202176, i64 -72056498821201921, i64 -72056498804555776, i64 -72056498804555521, i64 -72056498804490496, i64 -72056498804490241, i64 -72056494543077376, i64 -72056494543077121, i64 -72056494543012096, i64 -72056494543011841, i64 -72056494526365696, i64 -72056494526365441, i64 -72056494526300416, i64 -72056494526300161, i64 -71777218572845056, i64 -71777218572844801, i64 -71777218572779776, i64 -71777218572779521, i64 -71777218556133376, i64 -71777218556133121, i64 -71777218556068096, i64 -71777218556067841, i64 -71777214294654976, i64 -71777214294654721, i64 -71777214294589696, i64 -71777214294589441, i64 -71777214277943296, i64 -71777214277943041, i64 -71777214277878016, i64 -71777214277877761, i64 -71776123356184576, i64 -71776123356184321, i64 -71776123356119296, i64 -71776123356119041, i64 -71776123339472896, i64 -71776123339472641, i64 -71776123339407616, i64 -71776123339407361, i64 -71776119077994496, i64 -71776119077994241, i64 -71776119077929216, i64 -71776119077928961, i64 -71776119061282816, i64 -71776119061282561, i64 -71776119061217536, i64 -71776119061217281, i64 -281474976710656, i64 -281474976710401, i64 -281474976645376, i64 -281474976645121, i64 -281474959998976, i64 -281474959998721, i64 -281474959933696, i64 -281474959933441, i64 -281470698520576, i64 -281470698520321, i64 -281470698455296, i64 -281470698455041, i64 -281470681808896, i64 -281470681808641, i64 -281470681743616, i64 -281470681743361, i64 -280379760050176, i64 -280379760049921, i64 -280379759984896, i64 -280379759984641, i64 -280379743338496, i64 -280379743338241, i64 -280379743273216, i64 -280379743272961, i64 -280375481860096, i64 -280375481859841, i64 -280375481794816, i64 -280375481794561, i64 -280375465148416, i64 -280375465148161, i64 -280375465083136, i64 -280375465082881, i64 -1099511627776, i64 -1099511627521, i64 -1099511562496, i64 -1099511562241, i64 -1099494916096, i64 -1099494915841, i64 -1099494850816, i64 -1099494850561, i64 -1095233437696, i64 -1095233437441, i64 -1095233372416, i64 -1095233372161, i64 -1095216726016, i64 -1095216725761, i64 -1095216660736, i64 -1095216660481, i64 -4294967296, i64 -4294967041, i64 -4294902016, i64 -4294901761, i64 -4278255616, i64 -4278255361, i64 -4278190336, i64 -4278190081, i64 -16777216, i64 -16776961, i64 -16711936, i64 -16711681, i64 -65536, i64 -65281, i64 -256, i64 -1], align 16
@expand_pred_h_data = dso_local local_unnamed_addr constant [86 x i64] [i64 0, i64 65535, i64 0, i64 0, i64 4294901760, i64 4294967295, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 281470681743360, i64 281470681808895, i64 0, i64 0, i64 281474976645120, i64 281474976710655, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 -281474976710656, i64 -281474976645121, i64 0, i64 0, i64 -281470681808896, i64 -281470681743361, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 -4294967296, i64 -4294901761, i64 0, i64 0, i64 -65536, i64 -1], align 16
@.str.1 = private unnamed_addr constant [48 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/bitops.h\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"start >= 0 && length > 0 && length <= 64 - start\00", align 1
@__PRETTY_FUNCTION__.deposit64 = private unnamed_addr constant [49 x i8] c"uint64_t deposit64(uint64_t, int, int, uint64_t)\00", align 1
@cpuinfo = external local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local signext i8 @do_sqrdmlah_b(i8 noundef signext %0, i8 noundef signext %1, i8 noundef signext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i8 %0 to i32
  %i.b = sext i8 %1 to i32
  %i.c = mul nsw i32 %i.b, %i.a                   ; 2 uses
  %i.d = sub nsw i32 0, %i.c
  %spec.select = select i1 %3, i32 %i.d, i32 %i.c
  %i.e = sext i8 %2 to i32
  %i.f = shl nsw i32 %i.e, 7
  %i.g = select i1 %4, i32 64, i32 0
  %i.h = add nsw i32 %spec.select, %i.f
  %i.i = add nsw i32 %i.h, %i.g
  %i.j = ashr i32 %i.i, 7
  %i.k = tail call i32 @llvm.smax.i32(i32 %i.j, i32 -128)
  %.1 = tail call i32 @llvm.smin.i32(i32 %i.k, i32 127)
  %i.l = trunc nsw i32 %.1 to i8
  ret i8 %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqrdmlah_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = ptrtoaddr ptr %3 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.i
  %diff.check = icmp ugt i64 %i.l, -16
  %i.m = sub i64 %i.j, %i.i
  %diff.check16 = icmp ugt i64 %i.m, -16
  %conflict.rdx = or i1 %diff.check, %diff.check16
  %i.n = sub i64 %i.h, %i.i
  %diff.check17 = icmp ugt i64 %i.n, -16
  %conflict.rdx18 = or i1 %conflict.rdx, %diff.check17
  br i1 %conflict.rdx18, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load19 = load <16 x i8>, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load20 = load <16 x i8>, ptr %i.r, align 1
  %i.s = sext <16 x i8> %wide.load to <16 x i32>
  %i.t = sext <16 x i8> %wide.load19 to <16 x i32>
  %i.u = mul nsw <16 x i32> %i.t, %i.s
  %i.v = sext <16 x i8> %wide.load20 to <16 x i32>
  %i.w = shl nsw <16 x i32> %i.v, splat (i32 7)
  %i.x = add nsw <16 x i32> %i.u, splat (i32 64)
  %i.y = add nsw <16 x i32> %i.x, %i.w
  %i.z = ashr <16 x i32> %i.y, splat (i32 7)
  %i.aa = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.z, <16 x i32> splat (i32 -128))
  %i.ab = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.aa, <16 x i32> splat (i32 127))
  %i.ac = trunc nsw <16 x i32> %i.ab to <16 x i8>
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.ac, ptr %i.ad, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !17

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index22.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.015.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index22 = phi i64 [ %index.next26, %vec.epilog.vector.body ], [ %index22.ph, %vec.epilog.vector.body.preheader ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %index22
  %wide.load23 = load <8 x i8>, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %index22
  %wide.load24 = load <8 x i8>, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %index22
  %wide.load25 = load <8 x i8>, ptr %i.ah, align 1
  %i.ai = sext <8 x i8> %wide.load23 to <8 x i32>
  %i.aj = sext <8 x i8> %wide.load24 to <8 x i32>
  %i.ak = mul nsw <8 x i32> %i.aj, %i.ai
  %i.al = sext <8 x i8> %wide.load25 to <8 x i32>
  %i.am = shl nsw <8 x i32> %i.al, splat (i32 7)
  %i.an = add nsw <8 x i32> %i.ak, splat (i32 64)
  %i.ao = add nsw <8 x i32> %i.an, %i.am
  %i.ap = ashr <8 x i32> %i.ao, splat (i32 7)
  %i.aq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ap, <8 x i32> splat (i32 -128))
  %i.ar = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aq, <8 x i32> splat (i32 127))
  %i.as = trunc nsw <8 x i32> %i.ar to <8 x i8>
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %index22
  store <8 x i8> %i.as, ptr %i.at, align 1
  %index.next26 = add nuw i64 %index22, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next26, %i.g
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.015 = phi i64 [ %i.bm, %vec.epilog.scalar.ph ], [ %.015.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %.015
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %.015
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = sext i8 %i.aw to i32
  %i.bc = sext i8 %i.ay to i32
  %i.bd = mul nsw i32 %i.bc, %i.bb
  %i.be = sext i8 %i.ba to i32
  %i.bf = shl nsw i32 %i.be, 7
  %i.bg = add nsw i32 %i.bd, 64
  %i.bh = add nsw i32 %i.bg, %i.bf
  %i.bi = ashr i32 %i.bh, 7
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 -128)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 127)
  %i.bk = trunc nsw i32 %.1.i to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = add nuw nsw i64 %.015, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %i.g
  br i1 %exitcond.not, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqrdmlsh_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = ptrtoaddr ptr %3 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.i
  %diff.check = icmp ugt i64 %i.l, -16
  %i.m = sub i64 %i.j, %i.i
  %diff.check16 = icmp ugt i64 %i.m, -16
  %conflict.rdx = or i1 %diff.check, %diff.check16
  %i.n = sub i64 %i.h, %i.i
  %diff.check17 = icmp ugt i64 %i.n, -16
  %conflict.rdx18 = or i1 %conflict.rdx, %diff.check17
  br i1 %conflict.rdx18, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load19 = load <16 x i8>, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load20 = load <16 x i8>, ptr %i.r, align 1
  %i.s = sext <16 x i8> %wide.load to <16 x i32>
  %i.t = sext <16 x i8> %wide.load19 to <16 x i32>
  %i.u = mul nsw <16 x i32> %i.t, %i.s
  %i.v = sext <16 x i8> %wide.load20 to <16 x i32>
  %i.w = shl nsw <16 x i32> %i.v, splat (i32 7)
  %i.x = sub nsw <16 x i32> %i.w, %i.u
  %i.y = add nsw <16 x i32> %i.x, splat (i32 64)
  %i.z = ashr <16 x i32> %i.y, splat (i32 7)
  %i.aa = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.z, <16 x i32> splat (i32 -128))
  %i.ab = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.aa, <16 x i32> splat (i32 127))
  %i.ac = trunc nsw <16 x i32> %i.ab to <16 x i8>
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.ac, ptr %i.ad, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !17

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index22.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.015.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index22 = phi i64 [ %index.next26, %vec.epilog.vector.body ], [ %index22.ph, %vec.epilog.vector.body.preheader ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %index22
  %wide.load23 = load <8 x i8>, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %index22
  %wide.load24 = load <8 x i8>, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %index22
  %wide.load25 = load <8 x i8>, ptr %i.ah, align 1
  %i.ai = sext <8 x i8> %wide.load23 to <8 x i32>
  %i.aj = sext <8 x i8> %wide.load24 to <8 x i32>
  %i.ak = mul nsw <8 x i32> %i.aj, %i.ai
  %i.al = sext <8 x i8> %wide.load25 to <8 x i32>
  %i.am = shl nsw <8 x i32> %i.al, splat (i32 7)
  %i.an = sub nsw <8 x i32> %i.am, %i.ak
  %i.ao = add nsw <8 x i32> %i.an, splat (i32 64)
  %i.ap = ashr <8 x i32> %i.ao, splat (i32 7)
  %i.aq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ap, <8 x i32> splat (i32 -128))
  %i.ar = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aq, <8 x i32> splat (i32 127))
  %i.as = trunc nsw <8 x i32> %i.ar to <8 x i8>
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %index22
  store <8 x i8> %i.as, ptr %i.at, align 1
  %index.next26 = add nuw i64 %index22, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next26, %i.g
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.015 = phi i64 [ %i.bl, %vec.epilog.scalar.ph ], [ %.015.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.015
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %.015
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %.015
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = sext i8 %i.aw to i32
  %i.bc = sext i8 %i.ay to i32
  %i.bd = mul nsw i32 %i.bc, %i.bb
  %i.be = sext i8 %i.ba to i32
  %i.bf = shl nsw i32 %i.be, 7
  %reass.sub = sub nsw i32 %i.bf, %i.bd
  %i.bg = add nsw i32 %reass.sub, 64
  %i.bh = ashr i32 %i.bg, 7
  %i.bi = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 -128)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %i.bi, i32 127)
  %i.bj = trunc nsw i32 %.1.i to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.015
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = add nuw nsw i64 %.015, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.g
  br i1 %exitcond.not, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqdmulh_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -16
  %i.l = sub i64 %i.h, %i.i
  %diff.check13 = icmp ugt i64 %i.l, -16
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load14 = load <16 x i8>, ptr %i.o, align 1
  %i.p = sext <16 x i8> %wide.load to <16 x i16>
  %i.q = sext <16 x i8> %wide.load14 to <16 x i16>
  %i.r = mul nsw <16 x i16> %i.q, %i.p
  %i.s = ashr <16 x i16> %i.r, splat (i16 7)
  %i.t = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.s, <16 x i16> splat (i16 127))
  %i.u = trunc nsw <16 x i16> %i.t to <16 x i8>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.u, ptr %i.v, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !17

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index16.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.012.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index16 = phi i64 [ %index.next19, %vec.epilog.vector.body ], [ %index16.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %index16
  %wide.load17 = load <8 x i8>, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %index16
  %wide.load18 = load <8 x i8>, ptr %i.y, align 1
  %i.z = sext <8 x i8> %wide.load17 to <8 x i16>
  %i.aa = sext <8 x i8> %wide.load18 to <8 x i16>
  %i.ab = mul nsw <8 x i16> %i.aa, %i.z
  %i.ac = ashr <8 x i16> %i.ab, splat (i16 7)
  %i.ad = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ac, <8 x i16> splat (i16 127))
  %i.ae = trunc nsw <8 x i16> %i.ad to <8 x i8>
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %index16
  store <8 x i8> %i.ae, ptr %i.af, align 1
  %index.next19 = add nuw i64 %index16, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next19, %i.g
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.012 = phi i64 [ %.012.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bc, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.012
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ai to i16
  %i.am = sext i8 %i.ak to i16
  %i.an = mul nsw i16 %i.am, %i.al
  %i.ao = ashr i16 %i.an, 7
  %.1.i = tail call i16 @llvm.smin.i16(i16 %i.ao, i16 127)
  %i.ap = trunc nsw i16 %.1.i to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = or disjoint i64 %.012, 1                ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = sext i8 %i.at to i16
  %i.ax = sext i8 %i.av to i16
  %i.ay = mul nsw i16 %i.ax, %i.aw
  %i.az = ashr i16 %i.ay, 7
  %.1.i.1 = tail call i16 @llvm.smin.i16(i16 %i.az, i16 127)
  %i.ba = trunc nsw i16 %.1.i.1 to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = add nuw nsw i64 %.012, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bc, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !33

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_sqrdmulh_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -16
  %i.l = sub i64 %i.h, %i.i
  %diff.check13 = icmp ugt i64 %i.l, -16
  %conflict.rdx = or i1 %diff.check, %diff.check13
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load14 = load <16 x i8>, ptr %i.o, align 1
  %i.p = sext <16 x i8> %wide.load to <16 x i32>
  %i.q = sext <16 x i8> %wide.load14 to <16 x i32>
  %i.r = mul nsw <16 x i32> %i.q, %i.p
  %i.s = add nsw <16 x i32> %i.r, splat (i32 64)
  %i.t = ashr <16 x i32> %i.s, splat (i32 7)
  %i.u = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.t, <16 x i32> splat (i32 127))
  %i.v = trunc nsw <16 x i32> %i.u to <16 x i8>
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.v, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !17

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index16.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.012.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index16 = phi i64 [ %index.next19, %vec.epilog.vector.body ], [ %index16.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %index16
  %wide.load17 = load <8 x i8>, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %index16
  %wide.load18 = load <8 x i8>, ptr %i.z, align 1
  %i.aa = sext <8 x i8> %wide.load17 to <8 x i32>
  %i.ab = sext <8 x i8> %wide.load18 to <8 x i32>
  %i.ac = mul nsw <8 x i32> %i.ab, %i.aa
  %i.ad = add nsw <8 x i32> %i.ac, splat (i32 64)
  %i.ae = ashr <8 x i32> %i.ad, splat (i32 7)
  %i.af = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ae, <8 x i32> splat (i32 127))
  %i.ag = trunc nsw <8 x i32> %i.af to <8 x i8>
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %index16
  store <8 x i8> %i.ag, ptr %i.ah, align 1
  %index.next19 = add nuw i64 %index16, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next19, %i.g
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.012 = phi i64 [ %.012.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bg, %vec.epilog.scalar.ph ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.012
  %i.am = load i8, ptr %i.al, align 1
  %i.an = sext i8 %i.ak to i32
  %i.ao = sext i8 %i.am to i32
  %i.ap = mul nsw i32 %i.ao, %i.an
  %i.aq = add nsw i32 %i.ap, 64
  %i.ar = ashr i32 %i.aq, 7
  %.1.i = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 127)
  %i.as = trunc nsw i32 %.1.i to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i8 %i.as, ptr %i.at, align 1
  %i.au = or disjoint i64 %.012, 1                ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.au
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = sext i8 %i.aw to i32
  %i.ba = sext i8 %i.ay to i32
  %i.bb = mul nsw i32 %i.ba, %i.az
  %i.bc = add nsw i32 %i.bb, 64
  %i.bd = ashr i32 %i.bc, 7
  %.1.i.1 = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 127)
  %i.be = trunc nsw i32 %.1.i.1 to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  store i8 %i.be, ptr %i.bf, align 1
  %i.bg = add nuw nsw i64 %.012, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bg, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local signext i16 @do_sqrdmlah_h(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i16 %0 to i32
  %i.b = sext i16 %1 to i32
  %i.c = mul nsw i32 %i.b, %i.a                   ; 2 uses
  %i.d = sub nsw i32 0, %i.c
  %spec.select = select i1 %3, i32 %i.d, i32 %i.c
  %i.e = sext i16 %2 to i32
  %i.f = shl nsw i32 %i.e, 15
  %i.g = select i1 %4, i32 16384, i32 0
  %i.h = add nsw i32 %spec.select, %i.f
  %i.i = add nsw i32 %i.h, %i.g
  %i.j = ashr i32 %i.i, 15                        ; 3 uses
  %i.k = add nsw i32 %i.j, 32768
  %.not = icmp ult i32 %i.k, 65536
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %5, align 4
  %i.l = icmp slt i32 %i.j, 0
  %i.m = select i1 %i.l, i32 -32768, i32 32767
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %i.m, %bb.b ], [ %i.j, %bb.a ]
  %i.n = trunc nsw i32 %.1 to i16
  ret i16 %i.n
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qrdmlah_s16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %i.b = shl i32 %1, 16
  %i.c = ashr exact i32 %i.b, 16
  %i.d = shl i32 %2, 16
  %i.e = ashr exact i32 %i.d, 16
  %i.f = mul nsw i32 %i.e, %i.c
  %i.g = shl i32 %3, 16
  %i.h = ashr exact i32 %i.g, 1
  %i.i = or disjoint i32 %i.h, 16384
  %i.j = add i32 %i.i, %i.f
  %i.k = ashr i32 %i.j, 15                        ; 3 uses
  %i.l = add nsw i32 %i.k, 32768
  %.not.i = icmp ult i32 %i.l, 65536
  br i1 %.not.i, label %do_sqrdmlah_h.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4
  %i.m = icmp slt i32 %i.k, 0
  %i.n = select i1 %i.m, i32 -32768, i32 32767
  br label %do_sqrdmlah_h.exit

do_sqrdmlah_h.exit:                               ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %i.n, %bb.b ], [ %i.k, %bb.a ]
  %i.o = ashr i32 %1, 16
  %i.p = ashr i32 %2, 16
  %i.q = mul nsw i32 %i.p, %i.o
  %i.r = ashr i32 %3, 1
  %i.s = and i32 %i.r, -32768
  %i.t = add nsw i32 %i.q, 16384
  %i.u = add i32 %i.t, %i.s
  %i.v = ashr i32 %i.u, 15                        ; 3 uses
  %i.w = add nsw i32 %i.v, 32768
  %.not.i10 = icmp ult i32 %i.w, 65536
  br i1 %.not.i10, label %do_sqrdmlah_h.exit12, label %bb.c

bb.c:                                             ; preds = %do_sqrdmlah_h.exit
  store i32 1, ptr %i.a, align 4
  %i.x = icmp slt i32 %i.v, 0
  %i.y = select i1 %i.x, i32 -32768, i32 32767
  br label %do_sqrdmlah_h.exit12

do_sqrdmlah_h.exit12:                             ; preds = %do_sqrdmlah_h.exit, %bb.c
  %.1.i11 = phi i32 [ %i.y, %bb.c ], [ %i.v, %do_sqrdmlah_h.exit ]
  %i.z = and i32 %.1.i, 65535
  %i.aa = shl nsw i32 %.1.i11, 16
  %i.ab = or disjoint i32 %i.aa, %i.z
  ret i32 %i.ab
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_qrdmlah_s16(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
end_hunk_0
begin_hunk_1_@helper_gvec_ah_fmls_idx_s:bb.a
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 16)
  %i.i = lshr exact i64 %i.h, 2                   ; 2 uses
  %i.j = ashr i32 %5, 10
  %i.k = sext i32 %i.j to i64
  %i.l = lshr exact i64 %i.g, 2
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.038 = phi i64 [ 0, %bb.a ], [ %i.v, %bb.d ]   ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.038
  %i.m = load i32, ptr %gep, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.03537 = phi i64 [ 0, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.n = add nuw nsw i64 %.03537, %.038           ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.n
  %i.r = load i32, ptr %i.q, align 4
  %i.s = tail call i32 @float32_muladd(i32 noundef %i.p, i32 noundef %i.m, i32 noundef %i.r, i32 noundef 2, ptr noundef %4) #18
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  store i32 %i.s, ptr %i.t, align 4
  %i.u = add nuw nsw i64 %.03537, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.i
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !360

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.038, %i.i              ; 2 uses
  %i.w = icmp samesign ult i64 %i.v, %i.l
  br i1 %i.w, label %bb.b, label %bb.e, !llvm.loop !361

bb.e:                                             ; preds = %bb.d
  %i.x = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.x, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.y = add nuw nsw i32 %i.e, 8
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %0, i64 %i.g
  %i.ab = xor i64 %i.g, -1
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = and i64 %i.ac, -8
  %i.ae = add nsw i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ae, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_fmls_idx_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %5, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 16)
  %i.i = lshr exact i64 %i.h, 3                   ; 2 uses
  %i.j = ashr i32 %5, 10
  %i.k = sext i32 %i.j to i64
  %i.l = lshr exact i64 %i.g, 3
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.038 = phi i64 [ 0, %bb.a ], [ %i.v, %bb.d ]   ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.038
  %i.m = load i64, ptr %gep, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.03537 = phi i64 [ 0, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.n = add nuw nsw i64 %.03537, %.038           ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.n
  %i.r = load i64, ptr %i.q, align 8
  %i.s = tail call i64 @float64_muladd(i64 noundef %i.p, i64 noundef %i.m, i64 noundef %i.r, i32 noundef 2, ptr noundef %4) #18
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  store i64 %i.s, ptr %i.t, align 8
  %i.u = add nuw nsw i64 %.03537, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.i
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !362

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.038, %i.i              ; 2 uses
  %i.w = icmp samesign ult i64 %i.v, %i.l
  br i1 %i.w, label %bb.b, label %bb.e, !llvm.loop !363

bb.e:                                             ; preds = %bb.d
  %i.x = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.x, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.y = add nuw nsw i32 %i.e, 8
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %0, i64 %i.g
  %i.ab = xor i64 %i.g, -1
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = and i64 %i.ac, -8
  %i.ae = add nsw i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ae, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_bfmls_idx(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %5, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 16)
  %i.i = lshr exact i64 %i.h, 1                   ; 2 uses
  %i.j = ashr i32 %5, 10
  %i.k = sext i32 %i.j to i64
  %i.l = lshr exact i64 %i.g, 1
  %invariant.gep = getelementptr [2 x i8], ptr %2, i64 %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.038 = phi i64 [ 0, %bb.a ], [ %i.v, %bb.d ]   ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.038
  %i.m = load i16, ptr %gep, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.03537 = phi i64 [ 0, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.n = add nuw nsw i64 %.03537, %.038           ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.n
  %i.r = load i16, ptr %i.q, align 2
  %i.s = tail call zeroext i16 @bfloat16_muladd(i16 noundef zeroext %i.p, i16 noundef zeroext %i.m, i16 noundef zeroext %i.r, i32 noundef 2, ptr noundef %4) #18
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.n
  store i16 %i.s, ptr %i.t, align 2
  %i.u = add nuw nsw i64 %.03537, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.i
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !364

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.038, %i.i              ; 2 uses
  %i.w = icmp samesign ult i64 %i.v, %i.l
  br i1 %i.w, label %bb.b, label %bb.e, !llvm.loop !365

bb.e:                                             ; preds = %bb.d
  %i.x = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.x, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.y = add nuw nsw i32 %i.e, 8
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %0, i64 %i.g
  %i.ab = xor i64 %i.g, -1
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = and i64 %i.ac, -8
  %i.ae = add nsw i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ae, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uqadd_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %3 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -16
  %i.l = sub i64 %i.h, %i.i
  %diff.check29 = icmp ugt i64 %i.l, -16
  %conflict.rdx = or i1 %diff.check, %diff.check29
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = zext <16 x i8> %wide.load to <16 x i32>
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load30 = load <16 x i8>, ptr %i.p, align 1
  %i.q = zext <16 x i8> %wide.load30 to <16 x i32>
  %i.r = add nuw nsw <16 x i32> %i.q, %i.o
  %.fr40 = freeze <16 x i32> %i.r                 ; 2 uses
  %i.s = icmp ugt <16 x i32> %.fr40, splat (i32 255)
  %i.t = or <16 x i1> %vec.phi, %i.s              ; 2 uses
  %i.u = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %.fr40, <16 x i32> splat (i32 255))
  %i.v = trunc nuw <16 x i32> %i.u to <16 x i8>
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.v, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !366

middle.block:                                     ; preds = %vector.body
  %i.y = bitcast <16 x i1> %i.t to i16
  %i.z = icmp ne i16 %i.y, 0                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.027.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %.02226.ph = phi i1 [ %i.z, %vec.epilog.iter.check ], [ false, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.z, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 4 uses
  %vec.phi33 = phi <8 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr41, %vec.epilog.vector.body ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %index32
  %wide.load34 = load <8 x i8>, ptr %i.aa, align 1
  %i.ab = zext <8 x i8> %wide.load34 to <8 x i32>
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %index32
  %wide.load35 = load <8 x i8>, ptr %i.ac, align 1
  %i.ad = zext <8 x i8> %wide.load35 to <8 x i32>
  %i.ae = add nuw nsw <8 x i32> %i.ad, %i.ab      ; 2 uses
  %i.af = icmp samesign ugt <8 x i32> %i.ae, splat (i32 255)
  %i.ag = or <8 x i1> %vec.phi33, %i.af
  %.fr41 = freeze <8 x i1> %i.ag                  ; 2 uses
  %i.ah = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ae, <8 x i32> splat (i32 255))
  %i.ai = trunc nuw <8 x i32> %i.ah to <8 x i8>
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %index32
  store <8 x i8> %i.ai, ptr %i.aj, align 1
  %index.next36 = add nuw i64 %index32, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next36, %i.g
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !367

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.al = bitcast <8 x i1> %.fr41 to i8
  %i.am = icmp ne i8 %i.al, 0
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.027 = phi i64 [ %.027.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bj, %vec.epilog.scalar.ph ] ; 5 uses
  %.02226 = phi i1 [ %.02226.ph, %vec.epilog.scalar.ph.preheader ], [ %spec.select.1, %vec.epilog.scalar.ph ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.027
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %.027
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = add nuw nsw i32 %i.as, %i.ap            ; 2 uses
  %i.au = icmp samesign ugt i32 %i.at, 255
  %spec.select25 = tail call i32 @llvm.umin.i32(i32 %i.at, i32 255)
  %i.av = trunc nuw i32 %spec.select25 to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = or disjoint i64 %.027, 1                ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ax
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bd, %i.ba            ; 2 uses
  %i.bf = icmp samesign ugt i32 %i.be, 255
  %i.bg = select i1 %i.bf, i1 true, i1 %i.au
  %spec.select.1 = select i1 %i.bg, i1 true, i1 %.02226 ; 2 uses
  %spec.select25.1 = tail call i32 @llvm.umin.i32(i32 %i.be, i32 255)
  %i.bh = trunc nuw i32 %spec.select25.1 to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = add nuw nsw i64 %.027, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bj, %i.g
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !368

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %i.am, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %spec.select.1, %vec.epilog.scalar.ph ]
  br i1 %spec.select.lcssa, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.loopexit
  store i32 1, ptr %1, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %i.bk = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bk, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.bl = add nuw nsw i32 %i.e, 8
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %0, i64 %i.g
  %i.bo = xor i64 %i.g, -1
  %i.bp = add nsw i64 %i.bo, %i.bm
  %i.bq = and i64 %i.bp, -8
  %i.br = add nsw i64 %i.bq, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bn, i8 0, i64 %i.br, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uqadd_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 4 uses
  %i.i = ptrtoaddr ptr %3 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.i, %i.j
  %diff.check27 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi28 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %wide.load29 = load <8 x i16>, ptr %i.o, align 2
  %i.p = zext <8 x i16> %wide.load to <8 x i32>
  %i.q = zext <8 x i16> %wide.load29 to <8 x i32>
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load30 = load <8 x i16>, ptr %i.r, align 2
  %wide.load31 = load <8 x i16>, ptr %i.s, align 2
  %i.t = zext <8 x i16> %wide.load30 to <8 x i32>
  %i.u = zext <8 x i16> %wide.load31 to <8 x i32>
  %i.v = add nuw nsw <8 x i32> %i.t, %i.p         ; 2 uses
  %i.w = add nuw nsw <8 x i32> %i.u, %i.q         ; 2 uses
  %i.x = icmp samesign ugt <8 x i32> %i.v, splat (i32 65535)
  %i.y = icmp samesign ugt <8 x i32> %i.w, splat (i32 65535)
  %i.z = or <8 x i1> %vec.phi, %i.x               ; 2 uses
  %i.aa = or <8 x i1> %vec.phi28, %i.y            ; 2 uses
  %i.ab = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.v, <8 x i32> splat (i32 65535))
  %i.ac = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.w, <8 x i32> splat (i32 65535))
  %i.ad = trunc nuw <8 x i32> %i.ab to <8 x i16>
  %i.ae = trunc nuw <8 x i32> %i.ac to <8 x i16>
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <8 x i16> %i.ad, ptr %i.af, align 2
  store <8 x i16> %i.ae, ptr %i.ag, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !369

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.aa, %i.z
  %bin.rdx.fr = freeze <8 x i1> %bin.rdx
  %i.ai = bitcast <8 x i1> %bin.rdx.fr to i8
  %i.aj = icmp ne i8 %i.ai, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ak = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.ph, !prof !19

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.026.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %.02225.ph = phi i1 [ %i.aj, %vec.epilog.iter.check ], [ false, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.aj, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 4 uses
  %vec.phi34 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.ar, %vec.epilog.vector.body ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index33
  %wide.load35 = load <4 x i16>, ptr %i.al, align 2
  %i.am = zext <4 x i16> %wide.load35 to <4 x i32>
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index33
  %wide.load36 = load <4 x i16>, ptr %i.an, align 2
  %i.ao = zext <4 x i16> %wide.load36 to <4 x i32>
  %i.ap = add nuw nsw <4 x i32> %i.ao, %i.am
  %.fr41 = freeze <4 x i32> %i.ap                 ; 2 uses
  %i.aq = icmp ugt <4 x i32> %.fr41, splat (i32 65535)
  %i.ar = or <4 x i1> %vec.phi34, %i.aq           ; 2 uses
  %i.as = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %.fr41, <4 x i32> splat (i32 65535))
  %i.at = trunc nuw <4 x i32> %i.as to <4 x i16>
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index33
  store <4 x i16> %i.at, ptr %i.au, align 2
  %index.next37 = add nuw i64 %index33, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next37, %i.h
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !370

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aw = bitcast <4 x i1> %i.ar to i4
  %i.ax = icmp ne i4 %i.aw, 0
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.bu, %vec.epilog.scalar.ph ] ; 5 uses
  %.02225 = phi i1 [ %.02225.ph, %vec.epilog.scalar.ph.preheader.new ], [ %spec.select.1, %vec.epilog.scalar.ph ]
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.026
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.026
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bd, %i.ba            ; 2 uses
  %i.bf = icmp samesign ugt i32 %i.be, 65535
  %spec.select24 = tail call i32 @llvm.umin.i32(i32 %i.be, i32 65535)
  %i.bg = trunc nuw i32 %spec.select24 to i16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.026
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = or disjoint i64 %.026, 1                ; 3 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = zext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bi
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bo, %i.bl            ; 2 uses
  %i.bq = icmp samesign ugt i32 %i.bp, 65535
  %i.br = select i1 %i.bq, i1 true, i1 %i.bf
  %spec.select.1 = select i1 %i.br, i1 true, i1 %.02225 ; 2 uses
  %spec.select24.1 = tail call i32 @llvm.umin.i32(i32 %i.bp, i32 65535)
  %i.bs = trunc nuw i32 %spec.select24.1 to i16
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bi
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bu, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !371

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %i.ax, %vec.epilog.middle.block ], [ %i.aj, %middle.block ], [ %spec.select.1, %vec.epilog.scalar.ph ]
  br i1 %spec.select.lcssa, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.loopexit
  store i32 1, ptr %1, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %i.bv = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bv, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.bw = add nuw nsw i32 %i.e, 8
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr i8, ptr %0, i64 %i.g
  %i.bz = xor i64 %i.g, -1
  %i.ca = add nsw i64 %i.bz, %i.bx
  %i.cb = and i64 %i.ca, -8
  %i.cc = add nsw i64 %i.cb, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.by, i8 0, i64 %i.cc, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uqadd_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %3 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.k, %i.i
  %diff.check27 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %scalar.ph.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi28 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4
  %wide.load29 = load <4 x i32>, ptr %i.o, align 4
  %i.p = zext <4 x i32> %wide.load to <4 x i64>
  %i.q = zext <4 x i32> %wide.load29 to <4 x i64>
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load30 = load <4 x i32>, ptr %i.r, align 4
  %wide.load31 = load <4 x i32>, ptr %i.s, align 4
  %i.t = zext <4 x i32> %wide.load30 to <4 x i64>
  %i.u = zext <4 x i32> %wide.load31 to <4 x i64>
  %i.v = add nuw nsw <4 x i64> %i.t, %i.p         ; 2 uses
  %i.w = add nuw nsw <4 x i64> %i.u, %i.q         ; 2 uses
  %i.x = icmp samesign ugt <4 x i64> %i.v, splat (i64 4294967295)
  %i.y = icmp samesign ugt <4 x i64> %i.w, splat (i64 4294967295)
  %i.z = or <4 x i1> %vec.phi, %i.x               ; 2 uses
  %i.aa = or <4 x i1> %vec.phi28, %i.y            ; 2 uses
  %i.ab = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.v, <4 x i64> splat (i64 4294967295))
  %i.ac = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.w, <4 x i64> splat (i64 4294967295))
  %i.ad = trunc nuw <4 x i64> %i.ab to <4 x i32>
  %i.ae = trunc nuw <4 x i64> %i.ac to <4 x i32>
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x i32> %i.ad, ptr %i.af, align 4
  store <4 x i32> %i.ae, ptr %i.ag, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !372

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.aa, %i.z
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.ai = bitcast <4 x i1> %bin.rdx.fr to i4
  %i.aj = icmp ne i4 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %vector.memcheck, %bb.a, %middle.block
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  %.02225.ph = phi i1 [ false, %vector.memcheck ], [ false, %bb.a ], [ %i.aj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %scalar.ph.preheader.new ], [ %i.bg, %scalar.ph ] ; 5 uses
  %.02225 = phi i1 [ %.02225.ph, %scalar.ph.preheader.new ], [ %spec.select.1, %scalar.ph ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.026
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = add nuw nsw i64 %i.ap, %i.am            ; 2 uses
  %i.ar = icmp samesign ugt i64 %i.aq, 4294967295
  %spec.select24 = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 4294967295)
  %i.as = trunc nuw i64 %spec.select24 to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026
  store i32 %i.as, ptr %i.at, align 4
  %i.au = or disjoint i64 %.026, 1                ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.au
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, %i.ax            ; 2 uses
  %i.bc = icmp samesign ugt i64 %i.bb, 4294967295
  %i.bd = select i1 %i.bc, i1 true, i1 %i.ar
  %spec.select.1 = select i1 %i.bd, i1 true, i1 %.02225 ; 2 uses
  %spec.select24.1 = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 4294967295)
  %i.be = trunc nuw i64 %spec.select24.1 to i32
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bg, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !373

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i1 [ %i.aj, %middle.block ], [ %spec.select.1, %scalar.ph ]
  br i1 %spec.select.lcssa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  store i32 1, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  %i.bh = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bh, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.bi = add nuw nsw i32 %i.e, 8
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %0, i64 %i.g
  %i.bl = xor i64 %i.g, -1
  %i.bm = add nsw i64 %i.bl, %i.bj
  %i.bn = and i64 %i.bm, -8
  %i.bo = add nsw i64 %i.bn, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bk, i8 0, i64 %i.bo, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sqadd_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %3 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -16
  %i.l = sub i64 %i.h, %i.i
  %diff.check29 = icmp ugt i64 %i.l, -16
  %conflict.rdx = or i1 %diff.check, %diff.check29
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = sext <16 x i8> %wide.load to <16 x i32>
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load30 = load <16 x i8>, ptr %i.p, align 1
  %i.q = sext <16 x i8> %wide.load30 to <16 x i32>
  %i.r = add nsw <16 x i32> %i.q, %i.o
  %.fr = freeze <16 x i32> %i.r                   ; 2 uses
  %i.s = add <16 x i32> %.fr, splat (i32 -128)
  %i.t = icmp ult <16 x i32> %i.s, splat (i32 -256)
  %i.u = or <16 x i1> %vec.phi, %i.t              ; 2 uses
  %i.v = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %.fr, <16 x i32> splat (i32 -128))
  %i.w = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.v, <16 x i32> splat (i32 127))
  %i.x = trunc nsw <16 x i32> %i.w to <16 x i8>
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.x, ptr %i.y, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %i.aa = bitcast <16 x i1> %i.u to i16
  %i.ab = icmp ne i16 %i.aa, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.027.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %.02226.ph = phi i1 [ %i.ab, %vec.epilog.iter.check ], [ false, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.ab, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 4 uses
  %vec.phi33 = phi <8 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr42, %vec.epilog.vector.body ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %index32
  %wide.load34 = load <8 x i8>, ptr %i.ac, align 1
  %i.ad = sext <8 x i8> %wide.load34 to <8 x i32>
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %index32
  %wide.load35 = load <8 x i8>, ptr %i.ae, align 1
  %i.af = sext <8 x i8> %wide.load35 to <8 x i32>
  %i.ag = add nsw <8 x i32> %i.af, %i.ad          ; 2 uses
  %i.ah = add nsw <8 x i32> %i.ag, splat (i32 -128)
  %i.ai = icmp ult <8 x i32> %i.ah, splat (i32 -256)
  %i.aj = or <8 x i1> %vec.phi33, %i.ai
  %.fr42 = freeze <8 x i1> %i.aj                  ; 2 uses
  %i.ak = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ag, <8 x i32> splat (i32 -128))
  %i.al = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ak, <8 x i32> splat (i32 127))
  %i.am = trunc nsw <8 x i32> %i.al to <8 x i8>
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %index32
  store <8 x i8> %i.am, ptr %i.an, align 1
  %index.next36 = add nuw i64 %index32, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next36, %i.g
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !375

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ap = bitcast <8 x i1> %.fr42 to i8
  %i.aq = icmp ne i8 %i.ap, 0
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.027 = phi i64 [ %.027.ph, %vec.epilog.scalar.ph.preheader ], [ %i.br, %vec.epilog.scalar.ph ] ; 5 uses
  %.02226 = phi i1 [ %.02226.ph, %vec.epilog.scalar.ph.preheader ], [ %.1.1, %vec.epilog.scalar.ph ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.027
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = sext i8 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 %.027
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = sext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, %i.at                ; 2 uses
  %i.ay = add nsw i32 %i.ax, -128
  %i.az = icmp ult i32 %i.ay, -256
  %i.ba = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 -128)
  %.021 = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 127)
  %i.bb = trunc nsw i32 %.021 to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = or disjoint i64 %.027, 1                ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = sext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 %i.bd
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = sext i8 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, %i.bg                ; 2 uses
  %i.bl = add nsw i32 %i.bk, -128
  %i.bm = icmp ult i32 %i.bl, -256
  %i.bn = select i1 %i.bm, i1 true, i1 %i.az
  %.1.1 = select i1 %i.bn, i1 true, i1 %.02226    ; 2 uses
  %i.bo = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 -128)
  %.021.1 = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 127)
  %i.bp = trunc nsw i32 %.021.1 to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = add nuw nsw i64 %.027, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.br, %i.g
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !376

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.1.lcssa = phi i1 [ %i.aq, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %.1.1, %vec.epilog.scalar.ph ]
  br i1 %.1.lcssa, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.loopexit
  store i32 1, ptr %1, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %i.bs = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bs, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.bt = add nuw nsw i32 %i.e, 8
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %0, i64 %i.g
  %i.bw = xor i64 %i.g, -1
  %i.bx = add nsw i64 %i.bw, %i.bu
  %i.by = and i64 %i.bx, -8
  %i.bz = add nsw i64 %i.by, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bv, i8 0, i64 %i.bz, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sqadd_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 4 uses
  %i.i = ptrtoaddr ptr %3 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.i, %i.j
  %diff.check27 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi28 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %wide.load29 = load <8 x i16>, ptr %i.o, align 2
  %i.p = sext <8 x i16> %wide.load to <8 x i32>
  %i.q = sext <8 x i16> %wide.load29 to <8 x i32>
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load30 = load <8 x i16>, ptr %i.r, align 2
  %wide.load31 = load <8 x i16>, ptr %i.s, align 2
  %i.t = sext <8 x i16> %wide.load30 to <8 x i32>
  %i.u = sext <8 x i16> %wide.load31 to <8 x i32>
  %i.v = add nsw <8 x i32> %i.t, %i.p             ; 2 uses
  %i.w = add nsw <8 x i32> %i.u, %i.q             ; 2 uses
  %i.x = add nsw <8 x i32> %i.v, splat (i32 -32768)
  %i.y = add nsw <8 x i32> %i.w, splat (i32 -32768)
  %i.z = icmp ult <8 x i32> %i.x, splat (i32 -65536)
  %i.aa = icmp ult <8 x i32> %i.y, splat (i32 -65536)
  %i.ab = or <8 x i1> %vec.phi, %i.z              ; 2 uses
  %i.ac = or <8 x i1> %vec.phi28, %i.aa           ; 2 uses
  %i.ad = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.v, <8 x i32> splat (i32 -32768))
  %i.ae = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.w, <8 x i32> splat (i32 -32768))
  %i.af = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ad, <8 x i32> splat (i32 32767))
  %i.ag = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ae, <8 x i32> splat (i32 32767))
  %i.ah = trunc nsw <8 x i32> %i.af to <8 x i16>
  %i.ai = trunc nsw <8 x i32> %i.ag to <8 x i16>
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <8 x i16> %i.ah, ptr %i.aj, align 2
  store <8 x i16> %i.ai, ptr %i.ak, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !377

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.ac, %i.ab
  %bin.rdx.fr = freeze <8 x i1> %bin.rdx
  %i.am = bitcast <8 x i1> %bin.rdx.fr to i8
  %i.an = icmp ne i8 %i.am, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ao = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.ph, !prof !19

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.026.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %.02225.ph = phi i1 [ %i.an, %vec.epilog.iter.check ], [ false, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.an, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 4 uses
  %vec.phi34 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.aw, %vec.epilog.vector.body ]
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index33
  %wide.load35 = load <4 x i16>, ptr %i.ap, align 2
  %i.aq = sext <4 x i16> %wide.load35 to <4 x i32>
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index33
  %wide.load36 = load <4 x i16>, ptr %i.ar, align 2
  %i.as = sext <4 x i16> %wide.load36 to <4 x i32>
  %i.at = add nsw <4 x i32> %i.as, %i.aq
  %.fr = freeze <4 x i32> %i.at                   ; 2 uses
  %i.au = add <4 x i32> %.fr, splat (i32 -32768)
  %i.av = icmp ult <4 x i32> %i.au, splat (i32 -65536)
  %i.aw = or <4 x i1> %vec.phi34, %i.av           ; 2 uses
  %i.ax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.fr, <4 x i32> splat (i32 -32768))
  %i.ay = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ax, <4 x i32> splat (i32 32767))
  %i.az = trunc nsw <4 x i32> %i.ay to <4 x i16>
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index33
  store <4 x i16> %i.az, ptr %i.ba, align 2
  %index.next37 = add nuw i64 %index33, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next37, %i.h
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !378

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bc = bitcast <4 x i1> %i.aw to i4
  %i.bd = icmp ne i4 %i.bc, 0
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.ce, %vec.epilog.scalar.ph ] ; 5 uses
  %.02225 = phi i1 [ %.02225.ph, %vec.epilog.scalar.ph.preheader.new ], [ %.1.1, %vec.epilog.scalar.ph ]
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.026
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = sext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.026
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = sext i16 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, %i.bg                ; 2 uses
  %i.bl = add nsw i32 %i.bk, -32768
  %i.bm = icmp ult i32 %i.bl, -65536
  %i.bn = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 -32768)
  %.021 = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 32767)
  %i.bo = trunc nsw i32 %.021 to i16
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.026
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = or disjoint i64 %.026, 1                ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = sext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bq
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = sext i16 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, %i.bt                ; 2 uses
  %i.by = add nsw i32 %i.bx, -32768
  %i.bz = icmp ult i32 %i.by, -65536
  %i.ca = select i1 %i.bz, i1 true, i1 %i.bm
  %.1.1 = select i1 %i.ca, i1 true, i1 %.02225    ; 2 uses
  %i.cb = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 -32768)
  %.021.1 = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 32767)
  %i.cc = trunc nsw i32 %.021.1 to i16
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bq
  store i16 %i.cc, ptr %i.cd, align 2
  %i.ce = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ce, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !379

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.1.lcssa = phi i1 [ %i.bd, %vec.epilog.middle.block ], [ %i.an, %middle.block ], [ %.1.1, %vec.epilog.scalar.ph ]
  br i1 %.1.lcssa, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.loopexit
  store i32 1, ptr %1, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %i.cf = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.cf, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.cg = add nuw nsw i32 %i.e, 8
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %0, i64 %i.g
  %i.cj = xor i64 %i.g, -1
  %i.ck = add nsw i64 %i.cj, %i.ch
  %i.cl = and i64 %i.ck, -8
  %i.cm = add nsw i64 %i.cl, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ci, i8 0, i64 %i.cm, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sqadd_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
.new:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.new
  %.026 = phi i64 [ 0, %.new ], [ %i.ai, %bb.a ]  ; 5 uses
  %.02225 = phi i1 [ false, %.new ], [ %.1.1, %bb.a ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.a ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.026
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = add nsw i64 %i.n, %i.k                   ; 2 uses
  %i.p = add nsw i64 %i.o, -2147483648
  %i.q = icmp ult i64 %i.p, -4294967296
  %i.r = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.021 = tail call i64 @llvm.smin.i64(i64 %i.r, i64 2147483647)
  %i.s = trunc nsw i64 %.021 to i32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026
  store i32 %i.s, ptr %i.t, align 4
  %i.u = or disjoint i64 %.026, 1                 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.u
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = add nsw i64 %i.aa, %i.x                 ; 2 uses
  %i.ac = add nsw i64 %i.ab, -2147483648
  %i.ad = icmp ult i64 %i.ac, -4294967296
  %i.ae = select i1 %i.ad, i1 true, i1 %i.q
  %.1.1 = select i1 %i.ae, i1 true, i1 %.02225    ; 2 uses
  %i.af = tail call i64 @llvm.smax.i64(i64 %i.ab, i64 -2147483648)
  %.021.1 = tail call i64 @llvm.smin.i64(i64 %i.af, i64 2147483647)
  %i.ag = trunc nsw i64 %.021.1 to i32
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = add nuw nsw i64 %.026, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.h
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.a, !llvm.loop !380

.unr-lcssa:                                       ; preds = %bb.a
  br i1 %.1.1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.unr-lcssa
  store i32 1, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.unr-lcssa
  %i.aj = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aj, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.ak = add nuw nsw i32 %i.e, 8
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %0, i64 %i.g
  %i.an = xor i64 %i.g, -1
  %i.ao = add nsw i64 %i.an, %i.al
  %i.ap = and i64 %i.ao, -8
  %i.aq = add nsw i64 %i.ap, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %i.aq, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uqsub_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %3 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -16
  %i.l = sub i64 %i.h, %i.i
  %diff.check29 = icmp ugt i64 %i.l, -16
  %conflict.rdx = or i1 %diff.check, %diff.check29
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = zext <16 x i8> %wide.load to <16 x i32>
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load30 = load <16 x i8>, ptr %i.p, align 1
  %i.q = zext <16 x i8> %wide.load30 to <16 x i32>
  %i.r = sub nsw <16 x i32> %i.o, %i.q
  %.fr40 = freeze <16 x i32> %i.r                 ; 2 uses
  %i.s = icmp slt <16 x i32> %.fr40, zeroinitializer
  %i.t = or <16 x i1> %vec.phi, %i.s              ; 2 uses
  %i.u = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %.fr40, <16 x i32> zeroinitializer)
  %i.v = trunc nuw <16 x i32> %i.u to <16 x i8>
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.v, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !381

middle.block:                                     ; preds = %vector.body
  %i.y = bitcast <16 x i1> %i.t to i16
  %i.z = icmp ne i16 %i.y, 0                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.027.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %.02226.ph = phi i1 [ %i.z, %vec.epilog.iter.check ], [ false, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.z, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 4 uses
  %vec.phi33 = phi <8 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr41, %vec.epilog.vector.body ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %index32
  %wide.load34 = load <8 x i8>, ptr %i.aa, align 1
  %i.ab = zext <8 x i8> %wide.load34 to <8 x i32>
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %index32
  %wide.load35 = load <8 x i8>, ptr %i.ac, align 1
  %i.ad = zext <8 x i8> %wide.load35 to <8 x i32>
  %i.ae = sub nsw <8 x i32> %i.ab, %i.ad          ; 2 uses
  %i.af = icmp slt <8 x i32> %i.ae, zeroinitializer
  %i.ag = or <8 x i1> %vec.phi33, %i.af
  %.fr41 = freeze <8 x i1> %i.ag                  ; 2 uses
  %i.ah = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ae, <8 x i32> zeroinitializer)
  %i.ai = trunc nuw <8 x i32> %i.ah to <8 x i8>
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %index32
  store <8 x i8> %i.ai, ptr %i.aj, align 1
  %index.next36 = add nuw i64 %index32, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next36, %i.g
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !382

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.al = bitcast <8 x i1> %.fr41 to i8
  %i.am = icmp ne i8 %i.al, 0
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.027 = phi i64 [ %.027.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bh, %vec.epilog.scalar.ph ] ; 5 uses
  %.02226 = phi i1 [ %.02226.ph, %vec.epilog.scalar.ph.preheader ], [ %.1.1, %vec.epilog.scalar.ph ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.027
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %.027
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 %i.ap, %i.as                ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  %.02125 = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0)
  %.021 = trunc nuw i32 %.02125 to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i8 %.021, ptr %i.av, align 1
  %i.aw = or disjoint i64 %.027, 1                ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 %i.aw
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = sub nsw i32 %i.az, %i.bc                ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  %i.bf = select i1 %i.be, i1 true, i1 %i.au
  %.1.1 = select i1 %i.bf, i1 true, i1 %.02226    ; 2 uses
  %.02125.1 = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %.021.1 = trunc nuw i32 %.02125.1 to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  store i8 %.021.1, ptr %i.bg, align 1
  %i.bh = add nuw nsw i64 %.027, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bh, %i.g
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !383

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.1.lcssa = phi i1 [ %i.am, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %.1.1, %vec.epilog.scalar.ph ]
  br i1 %.1.lcssa, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.loopexit
  store i32 1, ptr %1, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %i.bi = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bi, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.bj = add nuw nsw i32 %i.e, 8
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %0, i64 %i.g
  %i.bm = xor i64 %i.g, -1
  %i.bn = add nsw i64 %i.bm, %i.bk
  %i.bo = and i64 %i.bn, -8
  %i.bp = add nsw i64 %i.bo, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bl, i8 0, i64 %i.bp, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uqsub_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 4 uses
  %i.i = ptrtoaddr ptr %3 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.i, %i.j
  %diff.check27 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi28 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %wide.load29 = load <8 x i16>, ptr %i.o, align 2
  %i.p = zext <8 x i16> %wide.load to <8 x i32>
  %i.q = zext <8 x i16> %wide.load29 to <8 x i32>
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load30 = load <8 x i16>, ptr %i.r, align 2
  %wide.load31 = load <8 x i16>, ptr %i.s, align 2
  %i.t = zext <8 x i16> %wide.load30 to <8 x i32>
  %i.u = zext <8 x i16> %wide.load31 to <8 x i32>
  %i.v = sub nsw <8 x i32> %i.p, %i.t             ; 2 uses
  %i.w = sub nsw <8 x i32> %i.q, %i.u             ; 2 uses
  %i.x = icmp slt <8 x i32> %i.v, zeroinitializer
  %i.y = icmp slt <8 x i32> %i.w, zeroinitializer
  %i.z = or <8 x i1> %vec.phi, %i.x               ; 2 uses
  %i.aa = or <8 x i1> %vec.phi28, %i.y            ; 2 uses
  %i.ab = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.v, <8 x i32> zeroinitializer)
  %i.ac = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.w, <8 x i32> zeroinitializer)
  %i.ad = trunc nuw <8 x i32> %i.ab to <8 x i16>
  %i.ae = trunc nuw <8 x i32> %i.ac to <8 x i16>
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <8 x i16> %i.ad, ptr %i.af, align 2
  store <8 x i16> %i.ae, ptr %i.ag, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !384

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.aa, %i.z
  %bin.rdx.fr = freeze <8 x i1> %bin.rdx
  %i.ai = bitcast <8 x i1> %bin.rdx.fr to i8
  %i.aj = icmp ne i8 %i.ai, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ak = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.ph, !prof !19

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.026.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %.02225.ph = phi i1 [ %i.aj, %vec.epilog.iter.check ], [ false, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.aj, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 4 uses
  %vec.phi34 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.ar, %vec.epilog.vector.body ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index33
  %wide.load35 = load <4 x i16>, ptr %i.al, align 2
  %i.am = zext <4 x i16> %wide.load35 to <4 x i32>
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index33
  %wide.load36 = load <4 x i16>, ptr %i.an, align 2
  %i.ao = zext <4 x i16> %wide.load36 to <4 x i32>
  %i.ap = sub nsw <4 x i32> %i.am, %i.ao
  %.fr41 = freeze <4 x i32> %i.ap                 ; 2 uses
  %i.aq = icmp slt <4 x i32> %.fr41, zeroinitializer
  %i.ar = or <4 x i1> %vec.phi34, %i.aq           ; 2 uses
  %i.as = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.fr41, <4 x i32> zeroinitializer)
  %i.at = trunc nuw <4 x i32> %i.as to <4 x i16>
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index33
  store <4 x i16> %i.at, ptr %i.au, align 2
  %index.next37 = add nuw i64 %index33, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next37, %i.h
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !385

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aw = bitcast <4 x i1> %i.ar to i4
  %i.ax = icmp ne i4 %i.aw, 0
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.bs, %vec.epilog.scalar.ph ] ; 5 uses
  %.02225 = phi i1 [ %.02225.ph, %vec.epilog.scalar.ph.preheader.new ], [ %.1.1, %vec.epilog.scalar.ph ]
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.026
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.026
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.bc to i32
  %i.be = sub nsw i32 %i.ba, %i.bd                ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  %.02124 = tail call i32 @llvm.smax.i32(i32 %i.be, i32 0)
  %.021 = trunc nuw i32 %.02124 to i16
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.026
  store i16 %.021, ptr %i.bg, align 2
  %i.bh = or disjoint i64 %.026, 1                ; 3 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = zext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bh
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = zext i16 %i.bm to i32
  %i.bo = sub nsw i32 %i.bk, %i.bn                ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  %i.bq = select i1 %i.bp, i1 true, i1 %i.bf
  %.1.1 = select i1 %i.bq, i1 true, i1 %.02225    ; 2 uses
  %.02124.1 = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 0)
  %.021.1 = trunc nuw i32 %.02124.1 to i16
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bh
  store i16 %.021.1, ptr %i.br, align 2
  %i.bs = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bs, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !386

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.1.lcssa = phi i1 [ %i.ax, %vec.epilog.middle.block ], [ %i.aj, %middle.block ], [ %.1.1, %vec.epilog.scalar.ph ]
  br i1 %.1.lcssa, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.loopexit
  store i32 1, ptr %1, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %i.bt = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bt, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.bu = add nuw nsw i32 %i.e, 8
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %0, i64 %i.g
  %i.bx = xor i64 %i.g, -1
  %i.by = add nsw i64 %i.bx, %i.bv
  %i.bz = and i64 %i.by, -8
  %i.ca = add nsw i64 %i.bz, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bw, i8 0, i64 %i.ca, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uqsub_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %3 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.k, %i.i
  %diff.check27 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %scalar.ph.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi28 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4
  %wide.load29 = load <4 x i32>, ptr %i.o, align 4
  %i.p = zext <4 x i32> %wide.load to <4 x i64>
  %i.q = zext <4 x i32> %wide.load29 to <4 x i64>
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load30 = load <4 x i32>, ptr %i.r, align 4
  %wide.load31 = load <4 x i32>, ptr %i.s, align 4
  %i.t = zext <4 x i32> %wide.load30 to <4 x i64>
  %i.u = zext <4 x i32> %wide.load31 to <4 x i64>
  %i.v = sub nsw <4 x i64> %i.p, %i.t             ; 2 uses
  %i.w = sub nsw <4 x i64> %i.q, %i.u             ; 2 uses
  %i.x = icmp slt <4 x i64> %i.v, zeroinitializer
  %i.y = icmp slt <4 x i64> %i.w, zeroinitializer
  %i.z = or <4 x i1> %vec.phi, %i.x               ; 2 uses
  %i.aa = or <4 x i1> %vec.phi28, %i.y            ; 2 uses
  %i.ab = tail call <4 x i64> @llvm.smax.v4i64(<4 x i64> %i.v, <4 x i64> zeroinitializer)
  %i.ac = tail call <4 x i64> @llvm.smax.v4i64(<4 x i64> %i.w, <4 x i64> zeroinitializer)
  %i.ad = trunc nuw <4 x i64> %i.ab to <4 x i32>
  %i.ae = trunc nuw <4 x i64> %i.ac to <4 x i32>
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x i32> %i.ad, ptr %i.af, align 4
  store <4 x i32> %i.ae, ptr %i.ag, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.aa, %i.z
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.ai = bitcast <4 x i1> %bin.rdx.fr to i4
  %i.aj = icmp ne i4 %i.ai, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %vector.memcheck, %bb.a, %middle.block
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  %.02225.ph = phi i1 [ false, %vector.memcheck ], [ false, %bb.a ], [ %i.aj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %scalar.ph.preheader.new ], [ %i.be, %scalar.ph ] ; 5 uses
  %.02225 = phi i1 [ %.02225.ph, %scalar.ph.preheader.new ], [ %.1.1, %scalar.ph ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.026
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = sub nsw i64 %i.am, %i.ap                ; 2 uses
  %i.ar = icmp slt i64 %i.aq, 0
  %.02124 = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 0)
  %.021 = trunc nuw i64 %.02124 to i32
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026
  store i32 %.021, ptr %i.as, align 4
  %i.at = or disjoint i64 %.026, 1                ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.at
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = sub nsw i64 %i.aw, %i.az                ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  %i.bc = select i1 %i.bb, i1 true, i1 %i.ar
  %.1.1 = select i1 %i.bc, i1 true, i1 %.02225    ; 2 uses
  %.02124.1 = tail call i64 @llvm.smax.i64(i64 %i.ba, i64 0)
  %.021.1 = trunc nuw i64 %.02124.1 to i32
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  store i32 %.021.1, ptr %i.bd, align 4
  %i.be = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.be, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !388

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.1.lcssa = phi i1 [ %i.aj, %middle.block ], [ %.1.1, %scalar.ph ]
  br i1 %.1.lcssa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  store i32 1, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  %i.bf = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bf, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.bg = add nuw nsw i32 %i.e, 8
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr i8, ptr %0, i64 %i.g
  %i.bj = xor i64 %i.g, -1
  %i.bk = add nsw i64 %i.bj, %i.bh
  %i.bl = and i64 %i.bk, -8
  %i.bm = add nsw i64 %i.bl, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bi, i8 0, i64 %i.bm, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sqsub_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %3 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -16
  %i.l = sub i64 %i.h, %i.i
  %diff.check29 = icmp ugt i64 %i.l, -16
  %conflict.rdx = or i1 %diff.check, %diff.check29
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = sext <16 x i8> %wide.load to <16 x i32>
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load30 = load <16 x i8>, ptr %i.p, align 1
  %i.q = sext <16 x i8> %wide.load30 to <16 x i32>
  %i.r = sub nsw <16 x i32> %i.o, %i.q
  %.fr = freeze <16 x i32> %i.r                   ; 2 uses
  %i.s = add <16 x i32> %.fr, splat (i32 -128)
  %i.t = icmp ult <16 x i32> %i.s, splat (i32 -256)
  %i.u = or <16 x i1> %vec.phi, %i.t              ; 2 uses
  %i.v = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %.fr, <16 x i32> splat (i32 -128))
  %i.w = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.v, <16 x i32> splat (i32 127))
  %i.x = trunc nsw <16 x i32> %i.w to <16 x i8>
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.x, ptr %i.y, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !389

middle.block:                                     ; preds = %vector.body
  %i.aa = bitcast <16 x i1> %i.u to i16
  %i.ab = icmp ne i16 %i.aa, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.027.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %.02226.ph = phi i1 [ %i.ab, %vec.epilog.iter.check ], [ false, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.ab, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 4 uses
  %vec.phi33 = phi <8 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr42, %vec.epilog.vector.body ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %index32
  %wide.load34 = load <8 x i8>, ptr %i.ac, align 1
  %i.ad = sext <8 x i8> %wide.load34 to <8 x i32>
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %index32
  %wide.load35 = load <8 x i8>, ptr %i.ae, align 1
  %i.af = sext <8 x i8> %wide.load35 to <8 x i32>
  %i.ag = sub nsw <8 x i32> %i.ad, %i.af          ; 2 uses
  %i.ah = add nsw <8 x i32> %i.ag, splat (i32 -128)
  %i.ai = icmp ult <8 x i32> %i.ah, splat (i32 -256)
  %i.aj = or <8 x i1> %vec.phi33, %i.ai
  %.fr42 = freeze <8 x i1> %i.aj                  ; 2 uses
  %i.ak = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ag, <8 x i32> splat (i32 -128))
  %i.al = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ak, <8 x i32> splat (i32 127))
  %i.am = trunc nsw <8 x i32> %i.al to <8 x i8>
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %index32
  store <8 x i8> %i.am, ptr %i.an, align 1
  %index.next36 = add nuw i64 %index32, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next36, %i.g
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !390

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ap = bitcast <8 x i1> %.fr42 to i8
  %i.aq = icmp ne i8 %i.ap, 0
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.027 = phi i64 [ %.027.ph, %vec.epilog.scalar.ph.preheader ], [ %i.br, %vec.epilog.scalar.ph ] ; 5 uses
  %.02226 = phi i1 [ %.02226.ph, %vec.epilog.scalar.ph.preheader ], [ %.1.1, %vec.epilog.scalar.ph ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.027
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = sext i8 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 %.027
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = sext i8 %i.av to i32
  %i.ax = sub nsw i32 %i.at, %i.aw                ; 2 uses
  %i.ay = add nsw i32 %i.ax, -128
  %i.az = icmp ult i32 %i.ay, -256
  %i.ba = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 -128)
  %.021 = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 127)
  %i.bb = trunc nsw i32 %.021 to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = or disjoint i64 %.027, 1                ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = sext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 %i.bd
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = sext i8 %i.bi to i32
  %i.bk = sub nsw i32 %i.bg, %i.bj                ; 2 uses
  %i.bl = add nsw i32 %i.bk, -128
  %i.bm = icmp ult i32 %i.bl, -256
  %i.bn = select i1 %i.bm, i1 true, i1 %i.az
  %.1.1 = select i1 %i.bn, i1 true, i1 %.02226    ; 2 uses
  %i.bo = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 -128)
  %.021.1 = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 127)
  %i.bp = trunc nsw i32 %.021.1 to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = add nuw nsw i64 %.027, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.br, %i.g
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !391

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.1.lcssa = phi i1 [ %i.aq, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %.1.1, %vec.epilog.scalar.ph ]
  br i1 %.1.lcssa, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.loopexit
  store i32 1, ptr %1, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %i.bs = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bs, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.bt = add nuw nsw i32 %i.e, 8
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %0, i64 %i.g
  %i.bw = xor i64 %i.g, -1
  %i.bx = add nsw i64 %i.bw, %i.bu
  %i.by = and i64 %i.bx, -8
  %i.bz = add nsw i64 %i.by, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bv, i8 0, i64 %i.bz, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sqsub_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 4 uses
  %i.i = ptrtoaddr ptr %3 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.i, %i.j
  %diff.check27 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi28 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %wide.load29 = load <8 x i16>, ptr %i.o, align 2
  %i.p = sext <8 x i16> %wide.load to <8 x i32>
  %i.q = sext <8 x i16> %wide.load29 to <8 x i32>
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load30 = load <8 x i16>, ptr %i.r, align 2
  %wide.load31 = load <8 x i16>, ptr %i.s, align 2
  %i.t = sext <8 x i16> %wide.load30 to <8 x i32>
  %i.u = sext <8 x i16> %wide.load31 to <8 x i32>
  %i.v = sub nsw <8 x i32> %i.p, %i.t             ; 2 uses
  %i.w = sub nsw <8 x i32> %i.q, %i.u             ; 2 uses
  %i.x = add nsw <8 x i32> %i.v, splat (i32 -32768)
  %i.y = add nsw <8 x i32> %i.w, splat (i32 -32768)
  %i.z = icmp ult <8 x i32> %i.x, splat (i32 -65536)
  %i.aa = icmp ult <8 x i32> %i.y, splat (i32 -65536)
  %i.ab = or <8 x i1> %vec.phi, %i.z              ; 2 uses
  %i.ac = or <8 x i1> %vec.phi28, %i.aa           ; 2 uses
  %i.ad = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.v, <8 x i32> splat (i32 -32768))
  %i.ae = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.w, <8 x i32> splat (i32 -32768))
  %i.af = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ad, <8 x i32> splat (i32 32767))
  %i.ag = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ae, <8 x i32> splat (i32 32767))
  %i.ah = trunc nsw <8 x i32> %i.af to <8 x i16>
  %i.ai = trunc nsw <8 x i32> %i.ag to <8 x i16>
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <8 x i16> %i.ah, ptr %i.aj, align 2
  store <8 x i16> %i.ai, ptr %i.ak, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !392

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.ac, %i.ab
  %bin.rdx.fr = freeze <8 x i1> %bin.rdx
  %i.am = bitcast <8 x i1> %bin.rdx.fr to i8
  %i.an = icmp ne i8 %i.am, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ao = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.ph, !prof !19

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.026.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %.02225.ph = phi i1 [ %i.an, %vec.epilog.iter.check ], [ false, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.an, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 4 uses
  %vec.phi34 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.aw, %vec.epilog.vector.body ]
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index33
  %wide.load35 = load <4 x i16>, ptr %i.ap, align 2
  %i.aq = sext <4 x i16> %wide.load35 to <4 x i32>
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index33
  %wide.load36 = load <4 x i16>, ptr %i.ar, align 2
  %i.as = sext <4 x i16> %wide.load36 to <4 x i32>
  %i.at = sub nsw <4 x i32> %i.aq, %i.as
  %.fr = freeze <4 x i32> %i.at                   ; 2 uses
  %i.au = add <4 x i32> %.fr, splat (i32 -32768)
  %i.av = icmp ult <4 x i32> %i.au, splat (i32 -65536)
  %i.aw = or <4 x i1> %vec.phi34, %i.av           ; 2 uses
  %i.ax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.fr, <4 x i32> splat (i32 -32768))
  %i.ay = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ax, <4 x i32> splat (i32 32767))
  %i.az = trunc nsw <4 x i32> %i.ay to <4 x i16>
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index33
  store <4 x i16> %i.az, ptr %i.ba, align 2
  %index.next37 = add nuw i64 %index33, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next37, %i.h
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !393

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bc = bitcast <4 x i1> %i.aw to i4
  %i.bd = icmp ne i4 %i.bc, 0
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.ce, %vec.epilog.scalar.ph ] ; 5 uses
  %.02225 = phi i1 [ %.02225.ph, %vec.epilog.scalar.ph.preheader.new ], [ %.1.1, %vec.epilog.scalar.ph ]
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.026
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = sext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.026
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = sext i16 %i.bi to i32
  %i.bk = sub nsw i32 %i.bg, %i.bj                ; 2 uses
  %i.bl = add nsw i32 %i.bk, -32768
  %i.bm = icmp ult i32 %i.bl, -65536
  %i.bn = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 -32768)
  %.021 = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 32767)
  %i.bo = trunc nsw i32 %.021 to i16
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.026
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = or disjoint i64 %.026, 1                ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = sext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bq
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = sext i16 %i.bv to i32
  %i.bx = sub nsw i32 %i.bt, %i.bw                ; 2 uses
  %i.by = add nsw i32 %i.bx, -32768
  %i.bz = icmp ult i32 %i.by, -65536
  %i.ca = select i1 %i.bz, i1 true, i1 %i.bm
  %.1.1 = select i1 %i.ca, i1 true, i1 %.02225    ; 2 uses
  %i.cb = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 -32768)
  %.021.1 = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 32767)
  %i.cc = trunc nsw i32 %.021.1 to i16
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bq
  store i16 %i.cc, ptr %i.cd, align 2
  %i.ce = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ce, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !394

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.1.lcssa = phi i1 [ %i.bd, %vec.epilog.middle.block ], [ %i.an, %middle.block ], [ %.1.1, %vec.epilog.scalar.ph ]
  br i1 %.1.lcssa, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.loopexit
  store i32 1, ptr %1, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %i.cf = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.cf, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.cg = add nuw nsw i32 %i.e, 8
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %0, i64 %i.g
  %i.cj = xor i64 %i.g, -1
  %i.ck = add nsw i64 %i.cj, %i.ch
  %i.cl = and i64 %i.ck, -8
  %i.cm = add nsw i64 %i.cl, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ci, i8 0, i64 %i.cm, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sqsub_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
.new:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.new
  %.026 = phi i64 [ 0, %.new ], [ %i.ai, %bb.a ]  ; 5 uses
  %.02225 = phi i1 [ false, %.new ], [ %.1.1, %bb.a ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.a ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.026
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = sub nsw i64 %i.k, %i.n                   ; 2 uses
  %i.p = add nsw i64 %i.o, -2147483648
  %i.q = icmp ult i64 %i.p, -4294967296
  %i.r = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.021 = tail call i64 @llvm.smin.i64(i64 %i.r, i64 2147483647)
  %i.s = trunc nsw i64 %.021 to i32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026
  store i32 %i.s, ptr %i.t, align 4
  %i.u = or disjoint i64 %.026, 1                 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.u
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = sub nsw i64 %i.x, %i.aa                 ; 2 uses
  %i.ac = add nsw i64 %i.ab, -2147483648
  %i.ad = icmp ult i64 %i.ac, -4294967296
  %i.ae = select i1 %i.ad, i1 true, i1 %i.q
  %.1.1 = select i1 %i.ae, i1 true, i1 %.02225    ; 2 uses
  %i.af = tail call i64 @llvm.smax.i64(i64 %i.ab, i64 -2147483648)
  %.021.1 = tail call i64 @llvm.smin.i64(i64 %i.af, i64 2147483647)
  %i.ag = trunc nsw i64 %.021.1 to i32
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = add nuw nsw i64 %.026, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.h
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.a, !llvm.loop !395

.unr-lcssa:                                       ; preds = %bb.a
  br i1 %.1.1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.unr-lcssa
  store i32 1, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.unr-lcssa
  %i.aj = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aj, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.ak = add nuw nsw i32 %i.e, 8
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %0, i64 %i.g
  %i.an = xor i64 %i.g, -1
  %i.ao = add nsw i64 %i.an, %i.al
  %i.ap = and i64 %i.ao, -8
  %i.aq = add nsw i64 %i.ap, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %i.aq, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_usqadd_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %3 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -16
  %i.l = sub i64 %i.h, %i.i
  %diff.check29 = icmp ugt i64 %i.l, -16
  %conflict.rdx = or i1 %diff.check, %diff.check29
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = zext <16 x i8> %wide.load to <16 x i32>
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load30 = load <16 x i8>, ptr %i.p, align 1
  %i.q = sext <16 x i8> %wide.load30 to <16 x i32>
  %i.r = add nsw <16 x i32> %i.q, %i.o
  %.fr40 = freeze <16 x i32> %i.r                 ; 2 uses
  %i.s = icmp ugt <16 x i32> %.fr40, splat (i32 255)
  %i.t = or <16 x i1> %vec.phi, %i.s              ; 2 uses
  %i.u = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %.fr40, <16 x i32> zeroinitializer)
  %i.v = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.u, <16 x i32> splat (i32 255))
  %i.w = trunc nuw <16 x i32> %i.v to <16 x i8>
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.w, ptr %i.x, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !396

middle.block:                                     ; preds = %vector.body
  %i.z = bitcast <16 x i1> %i.t to i16
  %i.aa = icmp ne i16 %i.z, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.027.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %.02226.ph = phi i1 [ %i.aa, %vec.epilog.iter.check ], [ false, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.aa, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 4 uses
  %vec.phi33 = phi <8 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr41, %vec.epilog.vector.body ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %index32
  %wide.load34 = load <8 x i8>, ptr %i.ab, align 1
  %i.ac = zext <8 x i8> %wide.load34 to <8 x i32>
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %index32
  %wide.load35 = load <8 x i8>, ptr %i.ad, align 1
  %i.ae = sext <8 x i8> %wide.load35 to <8 x i32>
  %i.af = add nsw <8 x i32> %i.ae, %i.ac          ; 2 uses
  %i.ag = icmp ugt <8 x i32> %i.af, splat (i32 255)
  %i.ah = or <8 x i1> %vec.phi33, %i.ag
  %.fr41 = freeze <8 x i1> %i.ah                  ; 2 uses
  %i.ai = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.af, <8 x i32> zeroinitializer)
  %i.aj = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ai, <8 x i32> splat (i32 255))
  %i.ak = trunc nuw <8 x i32> %i.aj to <8 x i8>
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %index32
  store <8 x i8> %i.ak, ptr %i.al, align 1
  %index.next36 = add nuw i64 %index32, 8         ; 2 uses
  %i.am = icmp eq i64 %index.next36, %i.g
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !397

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.an = bitcast <8 x i1> %.fr41 to i8
  %i.ao = icmp ne i8 %i.an, 0
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.027 = phi i64 [ %.027.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bp, %vec.epilog.scalar.ph ] ; 5 uses
  %.02226 = phi i1 [ %.02226.ph, %vec.epilog.scalar.ph.preheader ], [ %.1.1, %vec.epilog.scalar.ph ]
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %.027
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %.027
  %i.at = load i8, ptr %i.as, align 1
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, %i.ar                ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 255
  %i.ax = tail call i32 @llvm.smax.i32(i32 %i.av, i32 0)
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 255)
  %i.az = trunc nuw i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i8 %i.az, ptr %i.ba, align 1
  %i.bb = or disjoint i64 %.027, 1                ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = sext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, %i.be                ; 2 uses
  %i.bj = icmp ugt i32 %i.bi, 255
  %i.bk = select i1 %i.bj, i1 true, i1 %i.aw
  %.1.1 = select i1 %i.bk, i1 true, i1 %.02226    ; 2 uses
  %i.bl = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0)
  %i.bm = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 255)
  %i.bn = trunc nuw i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bp = add nuw nsw i64 %.027, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bp, %i.g
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !398

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.1.lcssa = phi i1 [ %i.ao, %vec.epilog.middle.block ], [ %i.aa, %middle.block ], [ %.1.1, %vec.epilog.scalar.ph ]
  br i1 %.1.lcssa, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.loopexit
  store i32 1, ptr %1, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %i.bq = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bq, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.br = add nuw nsw i32 %i.e, 8
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr i8, ptr %0, i64 %i.g
  %i.bu = xor i64 %i.g, -1
  %i.bv = add nsw i64 %i.bu, %i.bs
  %i.bw = and i64 %i.bv, -8
  %i.bx = add nsw i64 %i.bw, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bt, i8 0, i64 %i.bx, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_usqadd_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 4 uses
  %i.i = ptrtoaddr ptr %3 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.i, %i.j
  %diff.check27 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi28 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %wide.load29 = load <8 x i16>, ptr %i.o, align 2
  %i.p = zext <8 x i16> %wide.load to <8 x i32>
  %i.q = zext <8 x i16> %wide.load29 to <8 x i32>
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load30 = load <8 x i16>, ptr %i.r, align 2
  %wide.load31 = load <8 x i16>, ptr %i.s, align 2
  %i.t = sext <8 x i16> %wide.load30 to <8 x i32>
  %i.u = sext <8 x i16> %wide.load31 to <8 x i32>
  %i.v = add nsw <8 x i32> %i.t, %i.p             ; 2 uses
  %i.w = add nsw <8 x i32> %i.u, %i.q             ; 2 uses
  %i.x = icmp ugt <8 x i32> %i.v, splat (i32 65535)
  %i.y = icmp ugt <8 x i32> %i.w, splat (i32 65535)
  %i.z = or <8 x i1> %vec.phi, %i.x               ; 2 uses
  %i.aa = or <8 x i1> %vec.phi28, %i.y            ; 2 uses
  %i.ab = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.v, <8 x i32> zeroinitializer)
  %i.ac = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.w, <8 x i32> zeroinitializer)
  %i.ad = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ab, <8 x i32> splat (i32 65535))
  %i.ae = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ac, <8 x i32> splat (i32 65535))
  %i.af = trunc nuw <8 x i32> %i.ad to <8 x i16>
  %i.ag = trunc nuw <8 x i32> %i.ae to <8 x i16>
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <8 x i16> %i.af, ptr %i.ah, align 2
  store <8 x i16> %i.ag, ptr %i.ai, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.aa, %i.z
  %bin.rdx.fr = freeze <8 x i1> %bin.rdx
  %i.ak = bitcast <8 x i1> %bin.rdx.fr to i8
  %i.al = icmp ne i8 %i.ak, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.am = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.ph, !prof !19

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.026.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %.02225.ph = phi i1 [ %i.al, %vec.epilog.iter.check ], [ false, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.al, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 4 uses
  %vec.phi34 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.at, %vec.epilog.vector.body ]
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index33
  %wide.load35 = load <4 x i16>, ptr %i.an, align 2
  %i.ao = zext <4 x i16> %wide.load35 to <4 x i32>
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index33
  %wide.load36 = load <4 x i16>, ptr %i.ap, align 2
  %i.aq = sext <4 x i16> %wide.load36 to <4 x i32>
  %i.ar = add nsw <4 x i32> %i.aq, %i.ao
  %.fr41 = freeze <4 x i32> %i.ar                 ; 2 uses
  %i.as = icmp ugt <4 x i32> %.fr41, splat (i32 65535)
  %i.at = or <4 x i1> %vec.phi34, %i.as           ; 2 uses
  %i.au = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.fr41, <4 x i32> zeroinitializer)
  %i.av = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.au, <4 x i32> splat (i32 65535))
  %i.aw = trunc nuw <4 x i32> %i.av to <4 x i16>
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index33
  store <4 x i16> %i.aw, ptr %i.ax, align 2
  %index.next37 = add nuw i64 %index33, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next37, %i.h
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !400

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.az = bitcast <4 x i1> %i.at to i4
  %i.ba = icmp ne i4 %i.az, 0
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.cb, %vec.epilog.scalar.ph ] ; 5 uses
  %.02225 = phi i1 [ %.02225.ph, %vec.epilog.scalar.ph.preheader.new ], [ %.1.1, %vec.epilog.scalar.ph ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.026
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.bc to i32
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.026
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = sext i16 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, %i.bd                ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, 65535
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 0)
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 65535)
  %i.bl = trunc nuw i32 %i.bk to i16
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.026
  store i16 %i.bl, ptr %i.bm, align 2
  %i.bn = or disjoint i64 %.026, 1                ; 3 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = zext i16 %i.bp to i32
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bn
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = sext i16 %i.bs to i32
  %i.bu = add nsw i32 %i.bt, %i.bq                ; 2 uses
  %i.bv = icmp ugt i32 %i.bu, 65535
  %i.bw = select i1 %i.bv, i1 true, i1 %i.bi
  %.1.1 = select i1 %i.bw, i1 true, i1 %.02225    ; 2 uses
  %i.bx = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 65535)
  %i.bz = trunc nuw i32 %i.by to i16
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bn
  store i16 %i.bz, ptr %i.ca, align 2
  %i.cb = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cb, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !401

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.1.lcssa = phi i1 [ %i.ba, %vec.epilog.middle.block ], [ %i.al, %middle.block ], [ %.1.1, %vec.epilog.scalar.ph ]
  br i1 %.1.lcssa, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.loopexit
  store i32 1, ptr %1, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %i.cc = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.cc, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.cd = add nuw nsw i32 %i.e, 8
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %0, i64 %i.g
  %i.cg = xor i64 %i.g, -1
  %i.ch = add nsw i64 %i.cg, %i.ce
  %i.ci = and i64 %i.ch, -8
  %i.cj = add nsw i64 %i.ci, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cf, i8 0, i64 %i.cj, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_usqadd_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
.new:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.new
  %.026 = phi i64 [ 0, %.new ], [ %i.ai, %bb.a ]  ; 5 uses
  %.02225 = phi i1 [ false, %.new ], [ %.1.1, %bb.a ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.a ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.026
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = add nsw i64 %i.n, %i.k                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, 4294967295
  %i.q = tail call i64 @llvm.smax.i64(i64 %i.o, i64 0)
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.q, i64 4294967295)
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026
  store i32 %i.s, ptr %i.t, align 4
  %i.u = or disjoint i64 %.026, 1                 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.u
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = add nsw i64 %i.aa, %i.x                 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 4294967295
  %i.ad = select i1 %i.ac, i1 true, i1 %i.p
  %.1.1 = select i1 %i.ad, i1 true, i1 %.02225    ; 2 uses
  %i.ae = tail call i64 @llvm.smax.i64(i64 %i.ab, i64 0)
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 4294967295)
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = add nuw nsw i64 %.026, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.h
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.a, !llvm.loop !402

.unr-lcssa:                                       ; preds = %bb.a
  br i1 %.1.1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.unr-lcssa
  store i32 1, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.unr-lcssa
  %i.aj = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aj, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.ak = add nuw nsw i32 %i.e, 8
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %0, i64 %i.g
  %i.an = xor i64 %i.g, -1
  %i.ao = add nsw i64 %i.an, %i.al
  %i.ap = and i64 %i.ao, -8
  %i.aq = add nsw i64 %i.ap, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %i.aq, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_suqadd_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %3 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -16
  %i.l = sub i64 %i.h, %i.i
  %diff.check29 = icmp ugt i64 %i.l, -16
  %conflict.rdx = or i1 %diff.check, %diff.check29
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = sext <16 x i8> %wide.load to <16 x i32>
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %index
  %wide.load30 = load <16 x i8>, ptr %i.p, align 1
  %i.q = zext <16 x i8> %wide.load30 to <16 x i32>
  %i.r = add nsw <16 x i32> %i.q, %i.o
  %.fr40 = freeze <16 x i32> %i.r                 ; 2 uses
  %i.s = icmp sgt <16 x i32> %.fr40, splat (i32 127)
  %i.t = or <16 x i1> %vec.phi, %i.s              ; 2 uses
  %i.u = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %.fr40, <16 x i32> splat (i32 127))
  %i.v = trunc nsw <16 x i32> %i.u to <16 x i8>
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.v, ptr %i.w, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !403

middle.block:                                     ; preds = %vector.body
  %i.y = bitcast <16 x i1> %i.t to i16
  %i.z = icmp ne i16 %i.y, 0                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.027.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %.02226.ph = phi i1 [ %i.z, %vec.epilog.iter.check ], [ false, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.z, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 4 uses
  %vec.phi33 = phi <8 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr41, %vec.epilog.vector.body ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %index32
  %wide.load34 = load <8 x i8>, ptr %i.aa, align 1
  %i.ab = sext <8 x i8> %wide.load34 to <8 x i32>
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %index32
  %wide.load35 = load <8 x i8>, ptr %i.ac, align 1
  %i.ad = zext <8 x i8> %wide.load35 to <8 x i32>
  %i.ae = add nsw <8 x i32> %i.ad, %i.ab          ; 2 uses
  %i.af = icmp sgt <8 x i32> %i.ae, splat (i32 127)
  %i.ag = or <8 x i1> %vec.phi33, %i.af
  %.fr41 = freeze <8 x i1> %i.ag                  ; 2 uses
  %i.ah = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ae, <8 x i32> splat (i32 127))
  %i.ai = trunc nsw <8 x i32> %i.ah to <8 x i8>
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %index32
  store <8 x i8> %i.ai, ptr %i.aj, align 1
  %index.next36 = add nuw i64 %index32, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next36, %i.g
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !404

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.al = bitcast <8 x i1> %.fr41 to i8
  %i.am = icmp ne i8 %i.al, 0
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.027 = phi i64 [ %.027.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bj, %vec.epilog.scalar.ph ] ; 5 uses
  %.02226 = phi i1 [ %.02226.ph, %vec.epilog.scalar.ph.preheader ], [ %spec.select.1, %vec.epilog.scalar.ph ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.027
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = sext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %.027
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, %i.ap                ; 2 uses
  %i.au = icmp sgt i32 %i.at, 127
  %spec.select25 = tail call i32 @llvm.smin.i32(i32 %i.at, i32 127)
  %i.av = trunc nsw i32 %spec.select25 to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = or disjoint i64 %.027, 1                ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = sext i8 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ax
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, %i.ba                ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 127
  %i.bg = select i1 %i.bf, i1 true, i1 %i.au
  %spec.select.1 = select i1 %i.bg, i1 true, i1 %.02226 ; 2 uses
  %spec.select25.1 = tail call i32 @llvm.smin.i32(i32 %i.be, i32 127)
  %i.bh = trunc nsw i32 %spec.select25.1 to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = add nuw nsw i64 %.027, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bj, %i.g
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !405

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %i.am, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %spec.select.1, %vec.epilog.scalar.ph ]
  br i1 %spec.select.lcssa, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.loopexit
  store i32 1, ptr %1, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %i.bk = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bk, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.bl = add nuw nsw i32 %i.e, 8
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %0, i64 %i.g
  %i.bo = xor i64 %i.g, -1
  %i.bp = add nsw i64 %i.bo, %i.bm
  %i.bq = and i64 %i.bp, -8
  %i.br = add nsw i64 %i.bq, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bn, i8 0, i64 %i.br, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_suqadd_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 4 uses
  %i.i = ptrtoaddr ptr %3 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.i, %i.j
  %diff.check27 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi28 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %wide.load29 = load <8 x i16>, ptr %i.o, align 2
  %i.p = sext <8 x i16> %wide.load to <8 x i32>
  %i.q = sext <8 x i16> %wide.load29 to <8 x i32>
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load30 = load <8 x i16>, ptr %i.r, align 2
  %wide.load31 = load <8 x i16>, ptr %i.s, align 2
  %i.t = zext <8 x i16> %wide.load30 to <8 x i32>
  %i.u = zext <8 x i16> %wide.load31 to <8 x i32>
  %i.v = add nsw <8 x i32> %i.t, %i.p             ; 2 uses
  %i.w = add nsw <8 x i32> %i.u, %i.q             ; 2 uses
  %i.x = icmp sgt <8 x i32> %i.v, splat (i32 32767)
  %i.y = icmp sgt <8 x i32> %i.w, splat (i32 32767)
  %i.z = or <8 x i1> %vec.phi, %i.x               ; 2 uses
  %i.aa = or <8 x i1> %vec.phi28, %i.y            ; 2 uses
  %i.ab = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.v, <8 x i32> splat (i32 32767))
  %i.ac = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.w, <8 x i32> splat (i32 32767))
  %i.ad = trunc nsw <8 x i32> %i.ab to <8 x i16>
  %i.ae = trunc nsw <8 x i32> %i.ac to <8 x i16>
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <8 x i16> %i.ad, ptr %i.af, align 2
  store <8 x i16> %i.ae, ptr %i.ag, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !406

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.aa, %i.z
  %bin.rdx.fr = freeze <8 x i1> %bin.rdx
  %i.ai = bitcast <8 x i1> %bin.rdx.fr to i8
  %i.aj = icmp ne i8 %i.ai, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ak = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.ph, !prof !19

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.026.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %.02225.ph = phi i1 [ %i.aj, %vec.epilog.iter.check ], [ false, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.aj, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 4 uses
  %vec.phi34 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.ar, %vec.epilog.vector.body ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index33
  %wide.load35 = load <4 x i16>, ptr %i.al, align 2
  %i.am = sext <4 x i16> %wide.load35 to <4 x i32>
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index33
  %wide.load36 = load <4 x i16>, ptr %i.an, align 2
  %i.ao = zext <4 x i16> %wide.load36 to <4 x i32>
  %i.ap = add nsw <4 x i32> %i.ao, %i.am
  %.fr41 = freeze <4 x i32> %i.ap                 ; 2 uses
  %i.aq = icmp sgt <4 x i32> %.fr41, splat (i32 32767)
  %i.ar = or <4 x i1> %vec.phi34, %i.aq           ; 2 uses
  %i.as = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %.fr41, <4 x i32> splat (i32 32767))
  %i.at = trunc nsw <4 x i32> %i.as to <4 x i16>
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index33
  store <4 x i16> %i.at, ptr %i.au, align 2
  %index.next37 = add nuw i64 %index33, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next37, %i.h
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !407

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aw = bitcast <4 x i1> %i.ar to i4
  %i.ax = icmp ne i4 %i.aw, 0
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.bu, %vec.epilog.scalar.ph ] ; 5 uses
  %.02225 = phi i1 [ %.02225.ph, %vec.epilog.scalar.ph.preheader.new ], [ %spec.select.1, %vec.epilog.scalar.ph ]
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.026
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = sext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.026
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.bc to i32
  %i.be = add nsw i32 %i.bd, %i.ba                ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 32767
  %spec.select24 = tail call i32 @llvm.smin.i32(i32 %i.be, i32 32767)
  %i.bg = trunc nsw i32 %spec.select24 to i16
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.026
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = or disjoint i64 %.026, 1                ; 3 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = sext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bi
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nsw i32 %i.bo, %i.bl                ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 32767
  %i.br = select i1 %i.bq, i1 true, i1 %i.bf
  %spec.select.1 = select i1 %i.br, i1 true, i1 %.02225 ; 2 uses
  %spec.select24.1 = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 32767)
  %i.bs = trunc nsw i32 %spec.select24.1 to i16
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bi
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bu, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !408

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %i.ax, %vec.epilog.middle.block ], [ %i.aj, %middle.block ], [ %spec.select.1, %vec.epilog.scalar.ph ]
  br i1 %spec.select.lcssa, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.loopexit
  store i32 1, ptr %1, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %i.bv = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bv, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.bw = add nuw nsw i32 %i.e, 8
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr i8, ptr %0, i64 %i.g
  %i.bz = xor i64 %i.g, -1
  %i.ca = add nsw i64 %i.bz, %i.bx
  %i.cb = and i64 %i.ca, -8
  %i.cc = add nsw i64 %i.cb, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.by, i8 0, i64 %i.cc, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_suqadd_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %3 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.k, %i.i
  %diff.check27 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %scalar.ph.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi28 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4
  %wide.load29 = load <4 x i32>, ptr %i.o, align 4
  %i.p = sext <4 x i32> %wide.load to <4 x i64>
  %i.q = sext <4 x i32> %wide.load29 to <4 x i64>
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
end_hunk_1
begin_hunk_2_@helper_gvec_usra_s:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !alias.scope !472
  %wide.load16 = load <4 x i32>, ptr %i.m, align 4, !alias.scope !472
  %i.n = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.o = lshr <4 x i32> %wide.load16, %broadcast.splat
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %wide.load17 = load <4 x i32>, ptr %i.p, align 4, !alias.scope !473, !noalias !472
  %wide.load18 = load <4 x i32>, ptr %i.q, align 4, !alias.scope !473, !noalias !472
  %i.r = add <4 x i32> %wide.load17, %i.n
  %i.s = add <4 x i32> %wide.load18, %i.o
  store <4 x i32> %i.r, ptr %i.p, align 4, !alias.scope !473, !noalias !472
  store <4 x i32> %i.s, ptr %i.q, align 4, !alias.scope !473, !noalias !472
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !470

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %vector.memcheck, %bb.a, %middle.block
  %.014.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.014 = phi i64 [ %.014.ph, %scalar.ph.preheader.new ], [ %i.ah, %scalar.ph ] ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.014
  %i.v = load i32, ptr %i.u, align 4
  %i.w = lshr i32 %i.v, %i.h
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, %i.w
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = or disjoint i64 %.014, 1                ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = lshr i32 %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = add nuw nsw i64 %.014, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ah, %i.i
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !471

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ai = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ai, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.aj = add nuw nsw i32 %i.e, 8
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %0, i64 %i.g
  %i.am = xor i64 %i.g, -1
  %i.an = add nsw i64 %i.am, %i.ak
  %i.ao = and i64 %i.an, -8
  %i.ap = add nsw i64 %i.ao, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ap, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_usra_d(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = ashr i32 %2, 10
  %i.i = lshr exact i64 %i.g, 3                   ; 4 uses
  %i.j = zext nneg i32 %i.h to i64                ; 4 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 %i.g
  %i.l = getelementptr i8, ptr %1, i64 %i.g
  %bound0 = icmp ult ptr %0, %i.l
  %bound1 = icmp ult ptr %1, %i.k
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 268435452                ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <2 x i64>, ptr %i.m, align 8, !alias.scope !479
  %wide.load16 = load <2 x i64>, ptr %i.n, align 8, !alias.scope !479
  %i.o = lshr <2 x i64> %wide.load, %broadcast.splat
  %i.p = lshr <2 x i64> %wide.load16, %broadcast.splat
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load17 = load <2 x i64>, ptr %i.q, align 8, !alias.scope !480, !noalias !479
  %wide.load18 = load <2 x i64>, ptr %i.r, align 8, !alias.scope !480, !noalias !479
  %i.s = add <2 x i64> %wide.load17, %i.o
  %i.t = add <2 x i64> %wide.load18, %i.p
  store <2 x i64> %i.s, ptr %i.q, align 8, !alias.scope !480, !noalias !479
  store <2 x i64> %i.t, ptr %i.r, align 8, !alias.scope !480, !noalias !479
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !477

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.014.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.014.ph, 1
  %i.v = and i64 %i.g, 8
  %lcmp.mod.not = icmp eq i64 %i.v, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.014.ph
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i64 %i.x, %i.j
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014.ph ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = add i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = or disjoint i64 %.014.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.014.unr = phi i64 [ %.014.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = icmp eq i64 %i.i, %.neg
  br i1 %i.ad, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.014 = phi i64 [ %i.ar, %scalar.ph ], [ %.014.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.014
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = lshr i64 %i.af, %i.j
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.ah, align 8
  %i.ak = add nuw nsw i64 %.014, 1                ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %i.an = lshr i64 %i.am, %i.j
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i64 %i.ap, %i.an
  store i64 %i.aq, ptr %i.ao, align 8
  %i.ar = add nuw nsw i64 %.014, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ar, %i.i
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !478

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.as = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.as, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.at = add nuw nsw i32 %i.e, 8
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr i8, ptr %0, i64 %i.g
  %i.aw = xor i64 %i.g, -1
  %i.ax = add nsw i64 %i.aw, %i.au
  %i.ay = and i64 %i.ax, -8
  %i.az = add nsw i64 %i.ay, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %i.az, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_srshr_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ashr i32 %2, 10
  %i.i = add nsw i32 %i.h, -1                     ; 4 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %diff.check = icmp ugt i64 %i.l, -16
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = sext <16 x i8> %wide.load to <16 x i32>
  %i.p = ashr <16 x i32> %i.o, %broadcast.splat   ; 2 uses
  %i.q = lshr <16 x i32> %i.p, splat (i32 1)
  %i.r = and <16 x i32> %i.p, splat (i32 1)
  %i.s = add nuw <16 x i32> %i.q, %i.r
  %i.t = trunc <16 x i32> %i.s to <16 x i8>
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.t, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !481

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.017.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert20 = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat21 = shufflevector <8 x i32> %broadcast.splatinsert20, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index22
  %wide.load23 = load <8 x i8>, ptr %i.w, align 1
  %i.x = sext <8 x i8> %wide.load23 to <8 x i32>
  %i.y = ashr <8 x i32> %i.x, %broadcast.splat21  ; 2 uses
  %i.z = lshr <8 x i32> %i.y, splat (i32 1)
  %i.aa = and <8 x i32> %i.y, splat (i32 1)
  %i.ab = add nuw <8 x i32> %i.z, %i.aa
  %i.ac = trunc <8 x i32> %i.ab to <8 x i8>
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %index22
  store <8 x i8> %i.ac, ptr %i.ad, align 1
  %index.next24 = add nuw i64 %index22, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next24, %i.g
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !482

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.017 = phi i64 [ %.017.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ay, %vec.epilog.scalar.ph ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.017
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = sext i8 %i.ag to i32
  %i.ai = ashr i32 %i.ah, %i.i                    ; 2 uses
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = and i32 %i.ai, 1
  %i.al = add nuw i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.017
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = or disjoint i64 %.017, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = sext i8 %i.aq to i32
  %i.as = ashr i32 %i.ar, %i.i                    ; 2 uses
  %i.at = lshr i32 %i.as, 1
  %i.au = and i32 %i.as, 1
  %i.av = add nuw i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = add nuw nsw i64 %.017, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ay, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !483

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.az = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.az, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.ba = add nuw nsw i32 %i.e, 8
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %0, i64 %i.g
  %i.bd = xor i64 %i.g, -1
  %i.be = add nsw i64 %i.bd, %i.bb
  %i.bf = and i64 %i.be, -8
  %i.bg = add nsw i64 %i.bf, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bc, i8 0, i64 %i.bg, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_srshr_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = ashr i32 %2, 10
  %i.i = lshr exact i64 %i.g, 1                   ; 3 uses
  %i.j = add nsw i32 %i.h, -1                     ; 3 uses
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  %i.k = ptrtoaddr ptr %0 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.m, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %i.o = sext <8 x i16> %wide.load to <8 x i32>
  %i.p = ashr <8 x i32> %i.o, %broadcast.splat    ; 2 uses
  %i.q = lshr <8 x i32> %i.p, splat (i32 1)
  %i.r = and <8 x i32> %i.p, splat (i32 1)
  %i.s = add nuw <8 x i32> %i.q, %i.r
  %i.t = trunc <8 x i32> %i.s to <8 x i16>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.t, ptr %i.u, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !484

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.016 = phi i64 [ %.016.ph, %scalar.ph.preheader.new ], [ %i.ap, %scalar.ph ] ; 4 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.x = load i16, ptr %i.w, align 2
  %i.y = sext i16 %i.x to i32
  %i.z = ashr i32 %i.y, %i.j                      ; 2 uses
  %i.aa = lshr i32 %i.z, 1
  %i.ab = and i32 %i.z, 1
  %i.ac = add nuw i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i16
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = or disjoint i64 %.016, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = sext i16 %i.ah to i32
  %i.aj = ashr i32 %i.ai, %i.j                    ; 2 uses
  %i.ak = lshr i32 %i.aj, 1
  %i.al = and i32 %i.aj, 1
  %i.am = add nuw i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af
  store i16 %i.an, ptr %i.ao, align 2
  %i.ap = add nuw nsw i64 %.016, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ap, %i.i
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !485

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.aq = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aq, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ar = add nuw nsw i32 %i.e, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %0, i64 %i.g
  %i.au = xor i64 %i.g, -1
  %i.av = add nsw i64 %i.au, %i.as
end_hunk_2
begin_hunk_3_@helper_gvec_srshr_s:bb.a
  %i.r = ashr <4 x i32> %i.p, splat (i32 1)
  %i.s = ashr <4 x i32> %i.q, splat (i32 1)
  %i.t = and <4 x i32> %i.p, splat (i32 1)
  %i.u = and <4 x i32> %i.q, splat (i32 1)
  %i.v = add nsw <4 x i32> %i.r, %i.t
  %i.w = add nsw <4 x i32> %i.s, %i.u
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x i32> %i.v, ptr %i.x, align 4
  store <4 x i32> %i.w, ptr %i.y, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !486

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.016 = phi i64 [ %.016.ph, %scalar.ph.preheader.new ], [ %i.ap, %scalar.ph ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = ashr i32 %i.ab, %i.j                    ; 2 uses
  %i.ad = ashr i32 %i.ac, 1
  %i.ae = and i32 %i.ac, 1
  %i.af = add nsw i32 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = or disjoint i64 %.016, 1                ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = ashr i32 %i.aj, %i.j                    ; 2 uses
  %i.al = ashr i32 %i.ak, 1
  %i.am = and i32 %i.ak, 1
  %i.an = add nsw i32 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  store i32 %i.an, ptr %i.ao, align 4
  %i.ap = add nuw nsw i64 %.016, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ap, %i.i
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !487

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.aq = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aq, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ar = add nuw nsw i32 %i.e, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %0, i64 %i.g
  %i.au = xor i64 %i.g, -1
  %i.av = add nsw i64 %i.au, %i.as
  %i.aw = and i64 %i.av, -8
  %i.ax = add nsw i64 %i.aw, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.ax, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_srshr_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = ashr i32 %2, 10
  %i.i = lshr exact i64 %i.g, 3                   ; 4 uses
  %i.j = add nsw i32 %i.h, -1
  %i.k = zext nneg i32 %i.j to i64                ; 4 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %i.l = ptrtoaddr ptr %0 to i64
  %i.m = ptrtoaddr ptr %1 to i64
  %i.n = sub i64 %i.m, %i.l
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.i, 268435452                ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8
  %wide.load17 = load <2 x i64>, ptr %i.p, align 8
  %i.q = ashr <2 x i64> %wide.load, %broadcast.splat ; 2 uses
  %i.r = ashr <2 x i64> %wide.load17, %broadcast.splat ; 2 uses
  %i.s = ashr <2 x i64> %i.q, splat (i64 1)
  %i.t = ashr <2 x i64> %i.r, splat (i64 1)
  %i.u = and <2 x i64> %i.q, splat (i64 1)
  %i.v = and <2 x i64> %i.r, splat (i64 1)
  %i.w = add nsw <2 x i64> %i.s, %i.u
  %i.x = add nsw <2 x i64> %i.t, %i.v
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x i64> %i.w, ptr %i.y, align 8
  store <2 x i64> %i.x, ptr %i.z, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !488

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.016.ph, 1
  %i.ab = and i64 %i.g, 8
  %lcmp.mod.not = icmp eq i64 %i.ab, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016.ph
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = ashr i64 %i.ad, %i.k                    ; 2 uses
  %i.af = ashr i64 %i.ae, 1
  %i.ag = and i64 %i.ae, 1
  %i.ah = add nsw i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.ph
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = or disjoint i64 %.016.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.016.unr = phi i64 [ %.016.ph, %scalar.ph.preheader ], [ %i.aj, %scalar.ph.prol ]
  %i.ak = icmp eq i64 %i.i, %.neg
  br i1 %i.ak, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.016 = phi i64 [ %i.ba, %scalar.ph ], [ %.016.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.am = load i64, ptr %i.al, align 8
  %i.an = ashr i64 %i.am, %i.k                    ; 2 uses
  %i.ao = ashr i64 %i.an, 1
  %i.ap = and i64 %i.an, 1
  %i.aq = add nsw i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %i.aq, ptr %i.ar, align 8
  %i.as = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8
  %i.av = ashr i64 %i.au, %i.k                    ; 2 uses
  %i.aw = ashr i64 %i.av, 1
  %i.ax = and i64 %i.av, 1
  %i.ay = add nsw i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.as
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = add nuw nsw i64 %.016, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ba, %i.i
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !489

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bb = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bb, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.bc = add nuw nsw i32 %i.e, 8
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %0, i64 %i.g
  %i.bf = xor i64 %i.g, -1
  %i.bg = add nsw i64 %i.bf, %i.bd
  %i.bh = and i64 %i.bg, -8
  %i.bi = add nsw i64 %i.bh, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.be, i8 0, i64 %i.bi, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_urshr_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ashr i32 %2, 10
  %i.i = add nsw i32 %i.h, -1                     ; 4 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %diff.check = icmp ugt i64 %i.l, -16
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 8
  %n.vec = and i64 %i.g, 4080                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %i.o = zext <16 x i8> %wide.load to <16 x i32>
  %i.p = lshr <16 x i32> %i.o, %broadcast.splat   ; 2 uses
  %i.q = lshr <16 x i32> %i.p, splat (i32 1)
  %i.r = and <16 x i32> %i.p, splat (i32 1)
  %i.s = add nuw nsw <16 x i32> %i.q, %i.r
  %i.t = trunc nuw <16 x i32> %i.s to <16 x i8>
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %index
  store <16 x i8> %i.t, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !490

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.017.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert20 = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat21 = shufflevector <8 x i32> %broadcast.splatinsert20, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index22
  %wide.load23 = load <8 x i8>, ptr %i.w, align 1
  %i.x = zext <8 x i8> %wide.load23 to <8 x i32>
  %i.y = lshr <8 x i32> %i.x, %broadcast.splat21  ; 2 uses
  %i.z = lshr <8 x i32> %i.y, splat (i32 1)
  %i.aa = and <8 x i32> %i.y, splat (i32 1)
  %i.ab = add nuw nsw <8 x i32> %i.z, %i.aa
  %i.ac = trunc nuw <8 x i32> %i.ab to <8 x i8>
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %index22
  store <8 x i8> %i.ac, ptr %i.ad, align 1
  %index.next24 = add nuw i64 %index22, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next24, %i.g
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !491

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.017 = phi i64 [ %.017.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ay, %vec.epilog.scalar.ph ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.017
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = lshr i32 %i.ah, %i.i                    ; 2 uses
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = and i32 %i.ai, 1
  %i.al = add nuw nsw i32 %i.aj, %i.ak
  %i.am = trunc nuw i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.017
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = or disjoint i64 %.017, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = lshr i32 %i.ar, %i.i                    ; 2 uses
  %i.at = lshr i32 %i.as, 1
  %i.au = and i32 %i.as, 1
  %i.av = add nuw nsw i32 %i.at, %i.au
  %i.aw = trunc nuw i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = add nuw nsw i64 %.017, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ay, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !492

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.az = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.az, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.ba = add nuw nsw i32 %i.e, 8
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %0, i64 %i.g
  %i.bd = xor i64 %i.g, -1
  %i.be = add nsw i64 %i.bd, %i.bb
  %i.bf = and i64 %i.be, -8
  %i.bg = add nsw i64 %i.bf, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bc, i8 0, i64 %i.bg, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_urshr_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = ashr i32 %2, 10
  %i.i = lshr exact i64 %i.g, 1                   ; 3 uses
  %i.j = add nsw i32 %i.h, -1                     ; 3 uses
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  %i.k = ptrtoaddr ptr %0 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.m, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %i.o = zext <8 x i16> %wide.load to <8 x i32>
  %i.p = lshr <8 x i32> %i.o, %broadcast.splat    ; 2 uses
  %i.q = lshr <8 x i32> %i.p, splat (i32 1)
  %i.r = and <8 x i32> %i.p, splat (i32 1)
  %i.s = add nuw nsw <8 x i32> %i.q, %i.r
  %i.t = trunc nuw <8 x i32> %i.s to <8 x i16>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.t, ptr %i.u, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !493

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %bb.a, %middle.block
  %.016.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.016 = phi i64 [ %.016.ph, %scalar.ph.preheader.new ], [ %i.ap, %scalar.ph ] ; 4 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.x = load i16, ptr %i.w, align 2
  %i.y = zext i16 %i.x to i32
  %i.z = lshr i32 %i.y, %i.j                      ; 2 uses
  %i.aa = lshr i32 %i.z, 1
  %i.ab = and i32 %i.z, 1
  %i.ac = add nuw nsw i32 %i.aa, %i.ab
  %i.ad = trunc nuw i32 %i.ac to i16
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = or disjoint i64 %.016, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = zext i16 %i.ah to i32
  %i.aj = lshr i32 %i.ai, %i.j                    ; 2 uses
  %i.ak = lshr i32 %i.aj, 1
  %i.al = and i32 %i.aj, 1
  %i.am = add nuw nsw i32 %i.ak, %i.al
  %i.an = trunc nuw i32 %i.am to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af
  store i16 %i.an, ptr %i.ao, align 2
  %i.ap = add nuw nsw i64 %.016, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ap, %i.i
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !494

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.aq = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aq, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ar = add nuw nsw i32 %i.e, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %0, i64 %i.g
  %i.au = xor i64 %i.g, -1
  %i.av = add nsw i64 %i.au, %i.as
end_hunk_3
begin_hunk_4_@helper_gvec_ushl_h:bb.a

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d
  %.0 = phi i16 [ %i.s, %bb.d ], [ 0, %bb.c ], [ %i.x, %bb.f ], [ 0, %bb.e ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.02325
  store i16 %.0, ptr %i.y, align 2
  %i.z = add nuw nsw i64 %.02325, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not, label %bb.h, label %bb.b, !llvm.loop !621

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aa, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.ab = add nuw nsw i32 %i.e, 8
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %0, i64 %i.g
  %i.ae = xor i64 %i.g, -1
  %i.af = add nsw i64 %i.ae, %i.ac
  %i.ag = and i64 %i.af, -8
  %i.ah = add nsw i64 %i.ag, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ah, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.h, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_pmul_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.015 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.015
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call i64 @clmul_8x8_low(i64 noundef %i.j, i64 noundef %i.l) #18
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  store i64 %i.m, ptr %i.n, align 8
  %i.o = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !622

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i64 @clmul_8x8_low(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_pmull_q(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = ashr i32 %3, 10
  %i.i = sext i32 %i.h to i64
  %i.j = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %clmul_64.exit
  %.026 = phi i64 [ 0, %bb.a ], [ %i.v, %clmul_64.exit ] ; 3 uses
  %i.k = add nsw i64 %.026, %i.i                  ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %1, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %i.k
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = load i32, ptr @cpuinfo, align 4
  %i.q = and i32 %i.p, 524288
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.r = tail call fastcc i128 @clmul_64_accel(i64 noundef %i.m, i64 noundef %i.o) ; 2 uses
  %extract.t = trunc i128 %i.r to i64
  %extract = lshr i128 %i.r, 64
  %extract.t37 = trunc nuw i128 %extract to i64
  br label %clmul_64.exit

bb.d:                                             ; preds = %bb.b
  %i.s = tail call i128 @clmul_64_gen(i64 noundef %i.m, i64 noundef %i.o) #18 ; 2 uses
  %extract.t36 = trunc i128 %i.s to i64
  %extract38 = lshr i128 %i.s, 64
  %extract.t39 = trunc nuw i128 %extract38 to i64
  br label %clmul_64.exit

clmul_64.exit:                                    ; preds = %bb.c, %bb.d
  %.sink35.off0 = phi i64 [ %extract.t, %bb.c ], [ %extract.t36, %bb.d ]
  %.sink35.off64 = phi i64 [ %extract.t37, %bb.c ], [ %extract.t39, %bb.d ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.026 ; 2 uses
  store i64 %.sink35.off0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sink35.off64, ptr %i.u, align 8
  %i.v = add nuw nsw i64 %.026, 2                 ; 2 uses
  %i.w = icmp samesign ult i64 %i.v, %i.j
  br i1 %i.w, label %bb.b, label %bb.e, !llvm.loop !623

bb.e:                                             ; preds = %clmul_64.exit
  %i.x = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.x, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.y = add nuw nsw i32 %i.e, 8
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %0, i64 %i.g
  %i.ab = xor i64 %i.g, -1
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = and i64 %i.ac, -8
  %i.ae = add nsw i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ae, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_neon_pmull_h(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = ashr i32 %3, 10
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %2, i64 %i.b
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = trunc i64 %i.d to i32
  %i.h = trunc i64 %i.f to i32
  %i.i = tail call i64 @clmul_8x4_packed(i32 noundef %i.g, i32 noundef %i.h) #18
  store i64 %i.i, ptr %0, align 8
  %i.j = lshr i64 %i.d, 32
  %i.k = lshr i64 %i.f, 32
  %i.l = trunc nuw i64 %i.j to i32
  %i.m = trunc nuw i64 %i.k to i32
  %i.n = tail call i64 @clmul_8x4_packed(i32 noundef %i.l, i32 noundef %i.m) #18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = shl i32 %3, 3
  %i.q = and i32 %i.p, 2040                       ; 2 uses
  %i.r = icmp samesign ugt i32 %i.q, 15
  br i1 %i.r, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.s = getelementptr i8, ptr %0, i64 16
  %i.t = zext nneg i32 %i.q to i64
  %i.u = add nsw i64 %i.t, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.u, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.a, %.lr.ph.preheader.i
  ret void
}

declare i64 @clmul_8x4_packed(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ceq0_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %1 to i64
  %i.i = ptrtoaddr ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i
  %diff.check = icmp ugt i64 %i.j, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <16 x i8>, ptr %i.l, align 1
  %wide.load14 = load <16 x i8>, ptr %i.m, align 1
  %i.n = icmp eq <16 x i8> %wide.load, zeroinitializer
  %i.o = icmp eq <16 x i8> %wide.load14, zeroinitializer
  %i.p = sext <16 x i1> %i.n to <16 x i8>
  %i.q = sext <16 x i1> %i.o to <16 x i8>
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <16 x i8> %i.p, ptr %i.r, align 1
  store <16 x i8> %i.q, ptr %i.s, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !624

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !21

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index16.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.012.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index16 = phi i64 [ %index.next18, %vec.epilog.vector.body ], [ %index16.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %index16
  %wide.load17 = load <8 x i8>, ptr %i.u, align 1
  %i.v = icmp eq <8 x i8> %wide.load17, zeroinitializer
  %i.w = sext <8 x i1> %i.v to <8 x i8>
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index16
  store <8 x i8> %i.w, ptr %i.x, align 1
  %index.next18 = add nuw i64 %index16, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next18, %i.g
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !625

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.012 = phi i64 [ %.012.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aw, %vec.epilog.scalar.ph ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, 0
  %i.ac = sext i1 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = or disjoint i64 %.012, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp eq i8 %i.ag, 0
  %i.ai = sext i1 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = or disjoint i64 %.012, 2                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp eq i8 %i.am, 0
  %i.ao = sext i1 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = or disjoint i64 %.012, 3                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp eq i8 %i.as, 0
  %i.au = sext i1 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = add nuw nsw i64 %.012, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.aw, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !626

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ax = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ax, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.ay = add nuw nsw i32 %i.e, 8
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %0, i64 %i.g
  %i.bb = xor i64 %i.g, -1
  %i.bc = add nsw i64 %i.bb, %i.az
  %i.bd = and i64 %i.bc, -8
  %i.be = add nsw i64 %i.bd, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.be, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_clt0_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %1 to i64
  %i.i = ptrtoaddr ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i
  %diff.check = icmp ugt i64 %i.j, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <16 x i8>, ptr %i.l, align 1
  %wide.load14 = load <16 x i8>, ptr %i.m, align 1
  %i.n = ashr <16 x i8> %wide.load, splat (i8 7)
  %i.o = ashr <16 x i8> %wide.load14, splat (i8 7)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> %i.n, ptr %i.p, align 1
  store <16 x i8> %i.o, ptr %i.q, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !627

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !21

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index16.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.012.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index16 = phi i64 [ %index.next18, %vec.epilog.vector.body ], [ %index16.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index16
  %wide.load17 = load <8 x i8>, ptr %i.s, align 1
  %i.t = ashr <8 x i8> %wide.load17, splat (i8 7)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %index16
  store <8 x i8> %i.t, ptr %i.u, align 1
  %index.next18 = add nuw i64 %index16, 8         ; 2 uses
  %i.v = icmp eq i64 %index.next18, %i.g
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !628

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.012 = phi i64 [ %.012.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ap, %vec.epilog.scalar.ph ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.x = load i8, ptr %i.w, align 1
  %i.y = ashr i8 %i.x, 7
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = or disjoint i64 %.012, 1                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = ashr i8 %i.ac, 7
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = or disjoint i64 %.012, 2                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = ashr i8 %i.ah, 7
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = or disjoint i64 %.012, 3                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = ashr i8 %i.am, 7
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = add nuw nsw i64 %.012, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ap, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !629

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.aq = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aq, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.ar = add nuw nsw i32 %i.e, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %0, i64 %i.g
  %i.au = xor i64 %i.g, -1
  %i.av = add nsw i64 %i.au, %i.as
  %i.aw = and i64 %i.av, -8
  %i.ax = add nsw i64 %i.aw, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.ax, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_cle0_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %1 to i64
  %i.i = ptrtoaddr ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i
  %diff.check = icmp ugt i64 %i.j, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <16 x i8>, ptr %i.l, align 1
  %wide.load14 = load <16 x i8>, ptr %i.m, align 1
  %i.n = icmp slt <16 x i8> %wide.load, splat (i8 1)
  %i.o = icmp slt <16 x i8> %wide.load14, splat (i8 1)
  %i.p = sext <16 x i1> %i.n to <16 x i8>
  %i.q = sext <16 x i1> %i.o to <16 x i8>
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <16 x i8> %i.p, ptr %i.r, align 1
  store <16 x i8> %i.q, ptr %i.s, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !630

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !21

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index16.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.012.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index16 = phi i64 [ %index.next18, %vec.epilog.vector.body ], [ %index16.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %index16
  %wide.load17 = load <8 x i8>, ptr %i.u, align 1
  %i.v = icmp slt <8 x i8> %wide.load17, splat (i8 1)
  %i.w = sext <8 x i1> %i.v to <8 x i8>
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index16
  store <8 x i8> %i.w, ptr %i.x, align 1
  %index.next18 = add nuw i64 %index16, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next18, %i.g
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !631

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.012 = phi i64 [ %.012.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aw, %vec.epilog.scalar.ph ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp slt i8 %i.aa, 1
  %i.ac = sext i1 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = or disjoint i64 %.012, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp slt i8 %i.ag, 1
  %i.ai = sext i1 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = or disjoint i64 %.012, 2                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp slt i8 %i.am, 1
  %i.ao = sext i1 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = or disjoint i64 %.012, 3                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp slt i8 %i.as, 1
  %i.au = sext i1 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = add nuw nsw i64 %.012, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.aw, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !632

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ax = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ax, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.ay = add nuw nsw i32 %i.e, 8
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %0, i64 %i.g
  %i.bb = xor i64 %i.g, -1
  %i.bc = add nsw i64 %i.bb, %i.az
  %i.bd = and i64 %i.bc, -8
  %i.be = add nsw i64 %i.bd, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.be, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_cgt0_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %1 to i64
  %i.i = ptrtoaddr ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i
  %diff.check = icmp ugt i64 %i.j, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <16 x i8>, ptr %i.l, align 1
  %wide.load14 = load <16 x i8>, ptr %i.m, align 1
  %i.n = icmp sgt <16 x i8> %wide.load, zeroinitializer
  %i.o = icmp sgt <16 x i8> %wide.load14, zeroinitializer
  %i.p = sext <16 x i1> %i.n to <16 x i8>
  %i.q = sext <16 x i1> %i.o to <16 x i8>
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <16 x i8> %i.p, ptr %i.r, align 1
  store <16 x i8> %i.q, ptr %i.s, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !633

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !21

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index16.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.012.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index16 = phi i64 [ %index.next18, %vec.epilog.vector.body ], [ %index16.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %index16
  %wide.load17 = load <8 x i8>, ptr %i.u, align 1
  %i.v = icmp sgt <8 x i8> %wide.load17, zeroinitializer
  %i.w = sext <8 x i1> %i.v to <8 x i8>
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index16
  store <8 x i8> %i.w, ptr %i.x, align 1
  %index.next18 = add nuw i64 %index16, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next18, %i.g
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !634

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.012 = phi i64 [ %.012.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aw, %vec.epilog.scalar.ph ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp sgt i8 %i.aa, 0
  %i.ac = sext i1 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = or disjoint i64 %.012, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp sgt i8 %i.ag, 0
  %i.ai = sext i1 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = or disjoint i64 %.012, 2                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp sgt i8 %i.am, 0
  %i.ao = sext i1 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = or disjoint i64 %.012, 3                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp sgt i8 %i.as, 0
  %i.au = sext i1 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = add nuw nsw i64 %.012, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.aw, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !635

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ax = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ax, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.ay = add nuw nsw i32 %i.e, 8
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %0, i64 %i.g
  %i.bb = xor i64 %i.g, -1
  %i.bc = add nsw i64 %i.bb, %i.az
  %i.bd = and i64 %i.bc, -8
  %i.be = add nsw i64 %i.bd, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.be, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_cge0_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %1 to i64
  %i.i = ptrtoaddr ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i
  %diff.check = icmp ugt i64 %i.j, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <16 x i8>, ptr %i.l, align 1
  %wide.load14 = load <16 x i8>, ptr %i.m, align 1
  %i.n = icmp sgt <16 x i8> %wide.load, splat (i8 -1)
  %i.o = icmp sgt <16 x i8> %wide.load14, splat (i8 -1)
  %i.p = sext <16 x i1> %i.n to <16 x i8>
  %i.q = sext <16 x i1> %i.o to <16 x i8>
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <16 x i8> %i.p, ptr %i.r, align 1
  store <16 x i8> %i.q, ptr %i.s, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !636

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !21

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index16.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.012.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index16 = phi i64 [ %index.next18, %vec.epilog.vector.body ], [ %index16.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %index16
  %wide.load17 = load <8 x i8>, ptr %i.u, align 1
  %i.v = icmp sgt <8 x i8> %wide.load17, splat (i8 -1)
  %i.w = sext <8 x i1> %i.v to <8 x i8>
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %index16
  store <8 x i8> %i.w, ptr %i.x, align 1
  %index.next18 = add nuw i64 %index16, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next18, %i.g
  br i1 %i.y, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !637

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.012 = phi i64 [ %.012.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aw, %vec.epilog.scalar.ph ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp sgt i8 %i.aa, -1
  %i.ac = sext i1 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = or disjoint i64 %.012, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp sgt i8 %i.ag, -1
  %i.ai = sext i1 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = or disjoint i64 %.012, 2                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp sgt i8 %i.am, -1
  %i.ao = sext i1 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = or disjoint i64 %.012, 3                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = icmp sgt i8 %i.as, -1
  %i.au = sext i1 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = add nuw nsw i64 %.012, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.aw, %i.g
  br i1 %exitcond.not.3, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !638

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ax = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ax, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.ay = add nuw nsw i32 %i.e, 8
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %0, i64 %i.g
  %i.bb = xor i64 %i.g, -1
  %i.bc = add nsw i64 %i.bb, %i.az
  %i.bd = and i64 %i.bc, -8
  %i.be = add nsw i64 %i.bd, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.be, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_ceq0_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %diff.check = icmp ugt i64 %i.l, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.n = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl nuw i64 %index, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <8 x i16>, ptr %i.p, align 2
  %wide.load14 = load <8 x i16>, ptr %i.q, align 2
  %i.r = icmp eq <8 x i16> %wide.load, zeroinitializer
  %i.s = icmp eq <8 x i16> %wide.load14, zeroinitializer
  %i.t = sext <8 x i1> %i.r to <8 x i16>
  %i.u = sext <8 x i1> %i.s to <8 x i16>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <8 x i16> %i.t, ptr %i.v, align 2
  store <8 x i16> %i.u, ptr %i.w, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !639

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !19

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index16.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.012.ph = phi i64 [ %i.n, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index16 = phi i64 [ %index.next18, %vec.epilog.vector.body ], [ %index16.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.y = shl nuw i64 %index16, 1                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %wide.load17 = load <4 x i16>, ptr %i.z, align 2
  %i.aa = icmp eq <4 x i16> %wide.load17, zeroinitializer
  %i.ab = sext <4 x i1> %i.aa to <4 x i16>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  store <4 x i16> %i.ab, ptr %i.ac, align 2
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next18, %i.i
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !640

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.012 = phi i64 [ %i.aj, %vec.epilog.scalar.ph ], [ %.012.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = icmp eq i16 %i.af, 0
  %i.ah = sext i1 %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = add nuw nsw i64 %.012, 2                ; 2 uses
  %i.ak = icmp samesign ult i64 %i.aj, %i.g
  br i1 %i.ak, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !641

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.al = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.al, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.am = add nuw nsw i32 %i.e, 8
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %0, i64 %i.g
  %i.ap = xor i64 %i.g, -1
  %i.aq = add nsw i64 %i.ap, %i.an
  %i.ar = and i64 %i.aq, -8
  %i.as = add nsw i64 %i.ar, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.as, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_clt0_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %diff.check = icmp ugt i64 %i.l, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.n = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl nuw i64 %index, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <8 x i16>, ptr %i.p, align 2
  %wide.load14 = load <8 x i16>, ptr %i.q, align 2
  %i.r = ashr <8 x i16> %wide.load, splat (i16 15)
  %i.s = ashr <8 x i16> %wide.load14, splat (i16 15)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <8 x i16> %i.r, ptr %i.t, align 2
  store <8 x i16> %i.s, ptr %i.u, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !642

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !19

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index16.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.012.ph = phi i64 [ %i.n, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index16 = phi i64 [ %index.next18, %vec.epilog.vector.body ], [ %index16.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.w = shl nuw i64 %index16, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %wide.load17 = load <4 x i16>, ptr %i.x, align 2
  %i.y = ashr <4 x i16> %wide.load17, splat (i16 15)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  store <4 x i16> %i.y, ptr %i.z, align 2
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next18, %i.i
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !643

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.012 = phi i64 [ %i.af, %vec.epilog.scalar.ph ], [ %.012.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = ashr i16 %i.ac, 15
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = add nuw nsw i64 %.012, 2                ; 2 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.g
  br i1 %i.ag, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !644

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ah = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ah, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.ai = add nuw nsw i32 %i.e, 8
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr i8, ptr %0, i64 %i.g
  %i.al = xor i64 %i.g, -1
  %i.am = add nsw i64 %i.al, %i.aj
  %i.an = and i64 %i.am, -8
  %i.ao = add nsw i64 %i.an, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_cle0_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %diff.check = icmp ugt i64 %i.l, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.n = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl nuw i64 %index, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <8 x i16>, ptr %i.p, align 2
  %wide.load14 = load <8 x i16>, ptr %i.q, align 2
  %i.r = icmp slt <8 x i16> %wide.load, splat (i16 1)
  %i.s = icmp slt <8 x i16> %wide.load14, splat (i16 1)
  %i.t = sext <8 x i1> %i.r to <8 x i16>
  %i.u = sext <8 x i1> %i.s to <8 x i16>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <8 x i16> %i.t, ptr %i.v, align 2
  store <8 x i16> %i.u, ptr %i.w, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !645

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !19

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index16.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.012.ph = phi i64 [ %i.n, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index16 = phi i64 [ %index.next18, %vec.epilog.vector.body ], [ %index16.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.y = shl nuw i64 %index16, 1                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %wide.load17 = load <4 x i16>, ptr %i.z, align 2
  %i.aa = icmp slt <4 x i16> %wide.load17, splat (i16 1)
  %i.ab = sext <4 x i1> %i.aa to <4 x i16>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  store <4 x i16> %i.ab, ptr %i.ac, align 2
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next18, %i.i
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !646

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.012 = phi i64 [ %i.aj, %vec.epilog.scalar.ph ], [ %.012.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = icmp slt i16 %i.af, 1
  %i.ah = sext i1 %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = add nuw nsw i64 %.012, 2                ; 2 uses
  %i.ak = icmp samesign ult i64 %i.aj, %i.g
  br i1 %i.ak, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !647

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.al = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.al, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.am = add nuw nsw i32 %i.e, 8
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %0, i64 %i.g
  %i.ap = xor i64 %i.g, -1
  %i.aq = add nsw i64 %i.ap, %i.an
  %i.ar = and i64 %i.aq, -8
  %i.as = add nsw i64 %i.ar, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.as, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_cgt0_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %diff.check = icmp ugt i64 %i.l, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.n = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl nuw i64 %index, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <8 x i16>, ptr %i.p, align 2
  %wide.load14 = load <8 x i16>, ptr %i.q, align 2
  %i.r = icmp sgt <8 x i16> %wide.load, zeroinitializer
  %i.s = icmp sgt <8 x i16> %wide.load14, zeroinitializer
  %i.t = sext <8 x i1> %i.r to <8 x i16>
  %i.u = sext <8 x i1> %i.s to <8 x i16>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <8 x i16> %i.t, ptr %i.v, align 2
  store <8 x i16> %i.u, ptr %i.w, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !648

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !19

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index16.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.012.ph = phi i64 [ %i.n, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index16 = phi i64 [ %index.next18, %vec.epilog.vector.body ], [ %index16.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.y = shl nuw i64 %index16, 1                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %wide.load17 = load <4 x i16>, ptr %i.z, align 2
  %i.aa = icmp sgt <4 x i16> %wide.load17, zeroinitializer
  %i.ab = sext <4 x i1> %i.aa to <4 x i16>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  store <4 x i16> %i.ab, ptr %i.ac, align 2
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next18, %i.i
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !649

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.012 = phi i64 [ %i.aj, %vec.epilog.scalar.ph ], [ %.012.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = icmp sgt i16 %i.af, 0
  %i.ah = sext i1 %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = add nuw nsw i64 %.012, 2                ; 2 uses
  %i.ak = icmp samesign ult i64 %i.aj, %i.g
  br i1 %i.ak, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !650

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.al = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.al, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.am = add nuw nsw i32 %i.e, 8
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %0, i64 %i.g
  %i.ap = xor i64 %i.g, -1
  %i.aq = add nsw i64 %i.ap, %i.an
  %i.ar = and i64 %i.aq, -8
  %i.as = add nsw i64 %i.ar, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.as, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_cge0_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %diff.check = icmp ugt i64 %i.l, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.n = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl nuw i64 %index, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <8 x i16>, ptr %i.p, align 2
  %wide.load14 = load <8 x i16>, ptr %i.q, align 2
  %i.r = icmp sgt <8 x i16> %wide.load, splat (i16 -1)
  %i.s = icmp sgt <8 x i16> %wide.load14, splat (i16 -1)
  %i.t = sext <8 x i1> %i.r to <8 x i16>
  %i.u = sext <8 x i1> %i.s to <8 x i16>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <8 x i16> %i.t, ptr %i.v, align 2
  store <8 x i16> %i.u, ptr %i.w, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !651

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !19

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index16.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.012.ph = phi i64 [ %i.n, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index16 = phi i64 [ %index.next18, %vec.epilog.vector.body ], [ %index16.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.y = shl nuw i64 %index16, 1                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %wide.load17 = load <4 x i16>, ptr %i.z, align 2
  %i.aa = icmp sgt <4 x i16> %wide.load17, splat (i16 -1)
  %i.ab = sext <4 x i1> %i.aa to <4 x i16>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  store <4 x i16> %i.ab, ptr %i.ac, align 2
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next18, %i.i
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !652

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.012 = phi i64 [ %i.aj, %vec.epilog.scalar.ph ], [ %.012.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.012
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = icmp sgt i16 %i.af, -1
  %i.ah = sext i1 %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.012
  store i16 %i.ah, ptr %i.ai, align 2
  %i.aj = add nuw nsw i64 %.012, 2                ; 2 uses
  %i.ak = icmp samesign ult i64 %i.aj, %i.g
  br i1 %i.ak, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !653

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.al = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.al, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.am = add nuw nsw i32 %i.e, 8
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %0, i64 %i.g
  %i.ap = xor i64 %i.g, -1
  %i.aq = add nsw i64 %i.ap, %i.an
  %i.ar = and i64 %i.aq, -8
  %i.as = add nsw i64 %i.ar, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.as, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sabd_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.i
  %diff.check29 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check29
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1  ; 3 uses
  %wide.load30 = load <16 x i8>, ptr %i.o, align 1 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load31 = load <16 x i8>, ptr %i.p, align 1 ; 3 uses
  %wide.load32 = load <16 x i8>, ptr %i.q, align 1 ; 3 uses
  %i.r = icmp slt <16 x i8> %wide.load, %wide.load31
  %i.s = icmp slt <16 x i8> %wide.load30, %wide.load32
  %i.t = sub <16 x i8> %wide.load31, %wide.load
  %i.u = sub <16 x i8> %wide.load32, %wide.load30
  %i.v = sub <16 x i8> %wide.load, %wide.load31
  %i.w = sub <16 x i8> %wide.load30, %wide.load32
  %i.x = select <16 x i1> %i.r, <16 x i8> %i.t, <16 x i8> %i.v
  %i.y = select <16 x i1> %i.s, <16 x i8> %i.u, <16 x i8> %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <16 x i8> %i.x, ptr %i.z, align 1
  store <16 x i8> %i.y, ptr %i.aa, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !654

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !21

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index34.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.027.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index34 = phi i64 [ %index.next37, %vec.epilog.vector.body ], [ %index34.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %index34
  %wide.load35 = load <8 x i8>, ptr %i.ac, align 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %index34
  %wide.load36 = load <8 x i8>, ptr %i.ad, align 1 ; 3 uses
  %i.ae = icmp slt <8 x i8> %wide.load35, %wide.load36
  %i.af = sub <8 x i8> %wide.load36, %wide.load35
  %i.ag = sub <8 x i8> %wide.load35, %wide.load36
  %i.ah = select <8 x i1> %i.ae, <8 x i8> %i.af, <8 x i8> %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %index34
  store <8 x i8> %i.ah, ptr %i.ai, align 1
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next37, %i.g
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !655

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.027 = phi i64 [ %.027.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bd, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.027
  %i.al = load i8, ptr %i.ak, align 1             ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.027
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %i.ao = icmp slt i8 %i.al, %i.an
  %i.ap = sub i8 %i.an, %i.al
  %i.aq = sub i8 %i.al, %i.an
  %i.ar = select i1 %i.ao, i8 %i.ap, i8 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = or disjoint i64 %.027, 1                ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1             ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %i.at
  %i.ax = load i8, ptr %i.aw, align 1             ; 3 uses
  %i.ay = icmp slt i8 %i.av, %i.ax
  %i.az = sub i8 %i.ax, %i.av
  %i.ba = sub i8 %i.av, %i.ax
  %i.bb = select i1 %i.ay, i8 %i.az, i8 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = add nuw nsw i64 %.027, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bd, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !656

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.be = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.be, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.bf = add nuw nsw i32 %i.e, 8
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr %0, i64 %i.g
  %i.bi = xor i64 %i.g, -1
  %i.bj = add nsw i64 %i.bi, %i.bg
  %i.bk = and i64 %i.bj, -8
  %i.bl = add nsw i64 %i.bk, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bh, i8 0, i64 %i.bl, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sabd_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 4 uses
  %i.i = ptrtoaddr ptr %2 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.i, %i.j
  %diff.check27 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2  ; 3 uses
  %wide.load28 = load <8 x i16>, ptr %i.o, align 2 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load29 = load <8 x i16>, ptr %i.p, align 2 ; 3 uses
  %wide.load30 = load <8 x i16>, ptr %i.q, align 2 ; 3 uses
  %i.r = icmp slt <8 x i16> %wide.load, %wide.load29
  %i.s = icmp slt <8 x i16> %wide.load28, %wide.load30
  %i.t = sub <8 x i16> %wide.load29, %wide.load
  %i.u = sub <8 x i16> %wide.load30, %wide.load28
  %i.v = sub <8 x i16> %wide.load, %wide.load29
  %i.w = sub <8 x i16> %wide.load28, %wide.load30
  %i.x = select <8 x i1> %i.r, <8 x i16> %i.t, <8 x i16> %i.v
  %i.y = select <8 x i1> %i.s, <8 x i16> %i.u, <8 x i16> %i.w
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !657

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ac = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.vector.body.preheader, !prof !19

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index32.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.026.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index32 = phi i64 [ %index.next35, %vec.epilog.vector.body ], [ %index32.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index32
  %wide.load33 = load <4 x i16>, ptr %i.ad, align 2 ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index32
  %wide.load34 = load <4 x i16>, ptr %i.ae, align 2 ; 3 uses
  %i.af = icmp slt <4 x i16> %wide.load33, %wide.load34
  %i.ag = sub <4 x i16> %wide.load34, %wide.load33
  %i.ah = sub <4 x i16> %wide.load33, %wide.load34
  %i.ai = select <4 x i1> %i.af, <4 x i16> %i.ag, <4 x i16> %i.ah
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index32
  store <4 x i16> %i.ai, ptr %i.aj, align 2
  %index.next35 = add nuw i64 %index32, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next35, %i.h
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !658

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.be, %vec.epilog.scalar.ph ] ; 5 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.026
  %i.am = load i16, ptr %i.al, align 2            ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.026
  %i.ao = load i16, ptr %i.an, align 2            ; 3 uses
  %i.ap = icmp slt i16 %i.am, %i.ao
  %i.aq = sub i16 %i.ao, %i.am
  %i.ar = sub i16 %i.am, %i.ao
  %i.as = select i1 %i.ap, i16 %i.aq, i16 %i.ar
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.026
  store i16 %i.as, ptr %i.at, align 2
  %i.au = or disjoint i64 %.026, 1                ; 3 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2            ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.au
  %i.ay = load i16, ptr %i.ax, align 2            ; 3 uses
  %i.az = icmp slt i16 %i.aw, %i.ay
  %i.ba = sub i16 %i.ay, %i.aw
  %i.bb = sub i16 %i.aw, %i.ay
  %i.bc = select i1 %i.az, i16 %i.ba, i16 %i.bb
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.au
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.be, %i.h
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !659

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.bf = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bf, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.bg = add nuw nsw i32 %i.e, 8
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr i8, ptr %0, i64 %i.g
  %i.bj = xor i64 %i.g, -1
  %i.bk = add nsw i64 %i.bj, %i.bh
  %i.bl = and i64 %i.bk, -8
  %i.bm = add nsw i64 %i.bl, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bi, i8 0, i64 %i.bm, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sabd_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.k, %i.i
  %diff.check27 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %scalar.ph.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4  ; 3 uses
  %wide.load28 = load <4 x i32>, ptr %i.o, align 4 ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load29 = load <4 x i32>, ptr %i.p, align 4 ; 3 uses
  %wide.load30 = load <4 x i32>, ptr %i.q, align 4 ; 3 uses
  %i.r = icmp slt <4 x i32> %wide.load, %wide.load29
  %i.s = icmp slt <4 x i32> %wide.load28, %wide.load30
  %i.t = sub <4 x i32> %wide.load29, %wide.load
  %i.u = sub <4 x i32> %wide.load30, %wide.load28
  %i.v = sub <4 x i32> %wide.load, %wide.load29
  %i.w = sub <4 x i32> %wide.load28, %wide.load30
  %i.x = select <4 x i1> %i.r, <4 x i32> %i.t, <4 x i32> %i.v
  %i.y = select <4 x i1> %i.s, <4 x i32> %i.u, <4 x i32> %i.w
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x i32> %i.x, ptr %i.z, align 4
  store <4 x i32> %i.y, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !660

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %vector.memcheck, %bb.a, %middle.block
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %scalar.ph.preheader.new ], [ %i.av, %scalar.ph ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026
  %i.ad = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.026
  %i.af = load i32, ptr %i.ae, align 4            ; 3 uses
  %i.ag = icmp slt i32 %i.ad, %i.af
  %i.ah = sub i32 %i.af, %i.ad
  %i.ai = sub i32 %i.ad, %i.af
  %i.aj = select i1 %i.ag, i32 %i.ah, i32 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = or disjoint i64 %.026, 1                ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4            ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.al
  %i.ap = load i32, ptr %i.ao, align 4            ; 3 uses
  %i.aq = icmp slt i32 %i.an, %i.ap
  %i.ar = sub i32 %i.ap, %i.an
  %i.as = sub i32 %i.an, %i.ap
  %i.at = select i1 %i.aq, i32 %i.ar, i32 %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al
  store i32 %i.at, ptr %i.au, align 4
  %i.av = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.av, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !661

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.aw = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aw, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ax = add nuw nsw i32 %i.e, 8
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %0, i64 %i.g
  %i.ba = xor i64 %i.g, -1
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = and i64 %i.bb, -8
  %i.bd = add nsw i64 %i.bc, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.bd, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sabd_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 4 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.k, %i.i
  %diff.check27 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 268435452                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x i64>, ptr %i.n, align 8  ; 3 uses
  %wide.load28 = load <2 x i64>, ptr %i.o, align 8 ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load29 = load <2 x i64>, ptr %i.p, align 8 ; 3 uses
  %wide.load30 = load <2 x i64>, ptr %i.q, align 8 ; 3 uses
  %i.r = icmp slt <2 x i64> %wide.load, %wide.load29
  %i.s = icmp slt <2 x i64> %wide.load28, %wide.load30
  %i.t = sub <2 x i64> %wide.load29, %wide.load
  %i.u = sub <2 x i64> %wide.load30, %wide.load28
  %i.v = sub <2 x i64> %wide.load, %wide.load29
  %i.w = sub <2 x i64> %wide.load28, %wide.load30
  %i.x = select <2 x i1> %i.r, <2 x i64> %i.t, <2 x i64> %i.v
  %i.y = select <2 x i1> %i.s, <2 x i64> %i.u, <2 x i64> %i.w
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x i64> %i.x, ptr %i.z, align 8
  store <2 x i64> %i.y, ptr %i.aa, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !662

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.026.ph, 1
  %i.ac = and i64 %i.g, 8
  %lcmp.mod.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.026.ph
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.026.ph
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = icmp slt i64 %i.ae, %i.ag
  %i.ai = sub i64 %i.ag, %i.ae
  %i.aj = sub i64 %i.ae, %i.ag
  %i.ak = select i1 %i.ah, i64 %i.ai, i64 %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.026.ph
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = or disjoint i64 %.026.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.026.unr = phi i64 [ %.026.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.h, %.neg
  br i1 %i.an, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.026 = phi i64 [ %i.bh, %scalar.ph ], [ %.026.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.026
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.026
  %i.ar = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.as = icmp slt i64 %i.ap, %i.ar
  %i.at = sub i64 %i.ar, %i.ap
  %i.au = sub i64 %i.ap, %i.ar
  %i.av = select i1 %i.as, i64 %i.at, i64 %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.026
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = add nuw nsw i64 %.026, 1                ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ax
  %i.bb = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.bc = icmp slt i64 %i.az, %i.bb
  %i.bd = sub i64 %i.bb, %i.az
  %i.be = sub i64 %i.az, %i.bb
  %i.bf = select i1 %i.bc, i64 %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bh, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !663

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bi = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bi, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.bj = add nuw nsw i32 %i.e, 8
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %0, i64 %i.g
  %i.bm = xor i64 %i.g, -1
  %i.bn = add nsw i64 %i.bm, %i.bk
  %i.bo = and i64 %i.bn, -8
  %i.bp = add nsw i64 %i.bo, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bl, i8 0, i64 %i.bp, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uabd_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.i
  %diff.check29 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check29
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1  ; 3 uses
  %wide.load30 = load <16 x i8>, ptr %i.o, align 1 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load31 = load <16 x i8>, ptr %i.p, align 1 ; 3 uses
  %wide.load32 = load <16 x i8>, ptr %i.q, align 1 ; 3 uses
  %i.r = icmp ult <16 x i8> %wide.load, %wide.load31
  %i.s = icmp ult <16 x i8> %wide.load30, %wide.load32
  %i.t = sub nuw <16 x i8> %wide.load31, %wide.load
  %i.u = sub nuw <16 x i8> %wide.load32, %wide.load30
  %i.v = sub nuw <16 x i8> %wide.load, %wide.load31
  %i.w = sub nuw <16 x i8> %wide.load30, %wide.load32
  %i.x = select <16 x i1> %i.r, <16 x i8> %i.t, <16 x i8> %i.v
  %i.y = select <16 x i1> %i.s, <16 x i8> %i.u, <16 x i8> %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <16 x i8> %i.x, ptr %i.z, align 1
  store <16 x i8> %i.y, ptr %i.aa, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !664

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !21

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index34.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.027.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index34 = phi i64 [ %index.next37, %vec.epilog.vector.body ], [ %index34.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %index34
  %wide.load35 = load <8 x i8>, ptr %i.ac, align 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %index34
  %wide.load36 = load <8 x i8>, ptr %i.ad, align 1 ; 3 uses
  %i.ae = icmp ult <8 x i8> %wide.load35, %wide.load36
  %i.af = sub nuw <8 x i8> %wide.load36, %wide.load35
  %i.ag = sub nuw <8 x i8> %wide.load35, %wide.load36
  %i.ah = select <8 x i1> %i.ae, <8 x i8> %i.af, <8 x i8> %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %index34
  store <8 x i8> %i.ah, ptr %i.ai, align 1
  %index.next37 = add nuw i64 %index34, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next37, %i.g
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !665

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.027 = phi i64 [ %.027.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bd, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.027
  %i.al = load i8, ptr %i.ak, align 1             ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.027
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %i.ao = icmp ult i8 %i.al, %i.an
  %i.ap = sub nuw i8 %i.an, %i.al
  %i.aq = sub nuw i8 %i.al, %i.an
  %i.ar = select i1 %i.ao, i8 %i.ap, i8 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.027
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = or disjoint i64 %.027, 1                ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1             ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %i.at
  %i.ax = load i8, ptr %i.aw, align 1             ; 3 uses
  %i.ay = icmp ult i8 %i.av, %i.ax
  %i.az = sub nuw i8 %i.ax, %i.av
  %i.ba = sub nuw i8 %i.av, %i.ax
  %i.bb = select i1 %i.ay, i8 %i.az, i8 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = add nuw nsw i64 %.027, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bd, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !666

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.be = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.be, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.bf = add nuw nsw i32 %i.e, 8
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr %0, i64 %i.g
  %i.bi = xor i64 %i.g, -1
  %i.bj = add nsw i64 %i.bi, %i.bg
  %i.bk = and i64 %i.bj, -8
  %i.bl = add nsw i64 %i.bk, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bh, i8 0, i64 %i.bl, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uabd_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 4 uses
  %i.i = ptrtoaddr ptr %2 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.i, %i.j
  %diff.check27 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2  ; 3 uses
  %wide.load28 = load <8 x i16>, ptr %i.o, align 2 ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load29 = load <8 x i16>, ptr %i.p, align 2 ; 3 uses
  %wide.load30 = load <8 x i16>, ptr %i.q, align 2 ; 3 uses
  %i.r = icmp ult <8 x i16> %wide.load, %wide.load29
  %i.s = icmp ult <8 x i16> %wide.load28, %wide.load30
  %i.t = sub nuw <8 x i16> %wide.load29, %wide.load
  %i.u = sub nuw <8 x i16> %wide.load30, %wide.load28
  %i.v = sub nuw <8 x i16> %wide.load, %wide.load29
  %i.w = sub nuw <8 x i16> %wide.load28, %wide.load30
  %i.x = select <8 x i1> %i.r, <8 x i16> %i.t, <8 x i16> %i.v
  %i.y = select <8 x i1> %i.s, <8 x i16> %i.u, <8 x i16> %i.w
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !667

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ac = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.vector.body.preheader, !prof !19

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index32.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.026.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index32 = phi i64 [ %index.next35, %vec.epilog.vector.body ], [ %index32.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index32
  %wide.load33 = load <4 x i16>, ptr %i.ad, align 2 ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index32
  %wide.load34 = load <4 x i16>, ptr %i.ae, align 2 ; 3 uses
  %i.af = icmp ult <4 x i16> %wide.load33, %wide.load34
  %i.ag = sub nuw <4 x i16> %wide.load34, %wide.load33
  %i.ah = sub nuw <4 x i16> %wide.load33, %wide.load34
  %i.ai = select <4 x i1> %i.af, <4 x i16> %i.ag, <4 x i16> %i.ah
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index32
  store <4 x i16> %i.ai, ptr %i.aj, align 2
  %index.next35 = add nuw i64 %index32, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next35, %i.h
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !668

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.be, %vec.epilog.scalar.ph ] ; 5 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.026
  %i.am = load i16, ptr %i.al, align 2            ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.026
  %i.ao = load i16, ptr %i.an, align 2            ; 3 uses
  %i.ap = icmp ult i16 %i.am, %i.ao
  %i.aq = sub nuw i16 %i.ao, %i.am
  %i.ar = sub nuw i16 %i.am, %i.ao
  %i.as = select i1 %i.ap, i16 %i.aq, i16 %i.ar
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.026
  store i16 %i.as, ptr %i.at, align 2
  %i.au = or disjoint i64 %.026, 1                ; 3 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2            ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.au
  %i.ay = load i16, ptr %i.ax, align 2            ; 3 uses
  %i.az = icmp ult i16 %i.aw, %i.ay
  %i.ba = sub nuw i16 %i.ay, %i.aw
  %i.bb = sub nuw i16 %i.aw, %i.ay
  %i.bc = select i1 %i.az, i16 %i.ba, i16 %i.bb
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.au
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = add nuw nsw i64 %.026, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.be, %i.h
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !669

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.bf = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bf, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.bg = add nuw nsw i32 %i.e, 8
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr i8, ptr %0, i64 %i.g
  %i.bj = xor i64 %i.g, -1
  %i.bk = add nsw i64 %i.bj, %i.bh
  %i.bl = and i64 %i.bk, -8
  %i.bm = add nsw i64 %i.bl, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bi, i8 0, i64 %i.bm, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uabd_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.k, %i.i
  %diff.check27 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check27
  br i1 %conflict.rdx, label %scalar.ph.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4  ; 3 uses
  %wide.load28 = load <4 x i32>, ptr %i.o, align 4 ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load29 = load <4 x i32>, ptr %i.p, align 4 ; 3 uses
  %wide.load30 = load <4 x i32>, ptr %i.q, align 4 ; 3 uses
  %i.r = icmp ult <4 x i32> %wide.load, %wide.load29
  %i.s = icmp ult <4 x i32> %wide.load28, %wide.load30
  %i.t = sub nuw <4 x i32> %wide.load29, %wide.load
  %i.u = sub nuw <4 x i32> %wide.load30, %wide.load28
  %i.v = sub nuw <4 x i32> %wide.load, %wide.load29
  %i.w = sub nuw <4 x i32> %wide.load28, %wide.load30
  %i.x = select <4 x i1> %i.r, <4 x i32> %i.t, <4 x i32> %i.v
  %i.y = select <4 x i1> %i.s, <4 x i32> %i.u, <4 x i32> %i.w
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x i32> %i.x, ptr %i.z, align 4
  store <4 x i32> %i.y, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !670

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %vector.memcheck, %bb.a, %middle.block
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.026 = phi i64 [ %.026.ph, %scalar.ph.preheader.new ], [ %i.av, %scalar.ph ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.026
  %i.ad = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.026
  %i.af = load i32, ptr %i.ae, align 4            ; 3 uses
  %i.ag = icmp ult i32 %i.ad, %i.af
  %i.ah = sub nuw i32 %i.af, %i.ad
  %i.ai = sub nuw i32 %i.ad, %i.af
  %i.aj = select i1 %i.ag, i32 %i.ah, i32 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.026
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = or disjoint i64 %.026, 1                ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4            ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.al
  %i.ap = load i32, ptr %i.ao, align 4            ; 3 uses
  %i.aq = icmp ult i32 %i.an, %i.ap
end_hunk_4
begin_hunk_5_@helper_gvec_vcvt_rm_sh:bb.a

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_vfp_toshh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_vcvt_rm_uh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %.val = load i64, ptr %2, align 4               ; 2 uses
  %i.h = shl i32 %3, 6
  %i.i = and i32 %i.h, 458752
  %i.j = zext nneg i32 %i.i to i64
  %i.k = and i64 %.val, -458753
  %i.l = or disjoint i64 %i.k, %i.j
  store i64 %i.l, ptr %2, align 4
  %i.m = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.019 = phi i64 [ 0, %bb.a ], [ %i.t, %bb.b ]   ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.019
  %i.o = load i16, ptr %i.n, align 2
  %i.p = zext i16 %i.o to i32
  %i.q = tail call i32 @helper_vfp_touhh(i32 noundef %i.p, i32 noundef 0, ptr noundef nonnull %2) #18
  %i.r = trunc i32 %i.q to i16
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.019
  store i16 %i.r, ptr %i.s, align 2
  %i.t = add nuw nsw i64 %.019, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !1093

bb.c:                                             ; preds = %bb.b
  %i.u = and i64 %.val, 458752
  %i.v = load i64, ptr %2, align 4
  %i.w = and i64 %i.v, -458753
  %i.x = or disjoint i64 %i.w, %i.u
  store i64 %i.x, ptr %2, align 4
  %i.y = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.y, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.z = add nuw nsw i32 %i.e, 8
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %0, i64 %i.g
  %i.ac = xor i64 %i.g, -1
  %i.ad = add nsw i64 %i.ac, %i.aa
  %i.ae = and i64 %i.ad, -8
  %i.af = add nsw i64 %i.ae, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.af, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_vfp_touhh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_vrint_rm_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %.val = load i64, ptr %2, align 4               ; 2 uses
  %i.h = shl i32 %3, 6
  %i.i = and i32 %i.h, 458752
  %i.j = zext nneg i32 %i.i to i64
  %i.k = and i64 %.val, -458753
  %i.l = or disjoint i64 %i.k, %i.j
  store i64 %i.l, ptr %2, align 4
  %i.m = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.019 = phi i64 [ 0, %bb.a ], [ %i.t, %bb.b ]   ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.019
  %i.o = load i16, ptr %i.n, align 2
  %i.p = zext i16 %i.o to i32
  %i.q = tail call i32 @helper_rinth(i32 noundef %i.p, ptr noundef nonnull %2) #18
  %i.r = trunc i32 %i.q to i16
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.019
  store i16 %i.r, ptr %i.s, align 2
  %i.t = add nuw nsw i64 %.019, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !1094

bb.c:                                             ; preds = %bb.b
  %i.u = and i64 %.val, 458752
  %i.v = load i64, ptr %2, align 4
  %i.w = and i64 %i.v, -458753
  %i.x = or disjoint i64 %i.w, %i.u
  store i64 %i.x, ptr %2, align 4
  %i.y = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.y, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.z = add nuw nsw i32 %i.e, 8
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %0, i64 %i.g
  %i.ac = xor i64 %i.g, -1
  %i.ad = add nsw i64 %i.ac, %i.aa
  %i.ae = and i64 %i.ad, -8
  %i.af = add nsw i64 %i.ae, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.af, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_rinth(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_vrint_rm_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %.val = load i64, ptr %2, align 4               ; 2 uses
  %i.h = shl i32 %3, 6
  %i.i = and i32 %i.h, 458752
  %i.j = zext nneg i32 %i.i to i64
  %i.k = and i64 %.val, -458753
  %i.l = or disjoint i64 %i.k, %i.j
  store i64 %i.l, ptr %2, align 4
  %i.m = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.019 = phi i64 [ 0, %bb.a ], [ %i.r, %bb.b ]   ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.019
  %i.o = load i32, ptr %i.n, align 4
  %i.p = tail call i32 @helper_rints(i32 noundef %i.o, ptr noundef nonnull %2) #18
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019
  store i32 %i.p, ptr %i.q, align 4
  %i.r = add nuw nsw i64 %.019, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.m
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !1095

bb.c:                                             ; preds = %bb.b
  %i.s = and i64 %.val, 458752
  %i.t = load i64, ptr %2, align 4
  %i.u = and i64 %i.t, -458753
  %i.v = or disjoint i64 %i.u, %i.s
  store i64 %i.v, ptr %2, align 4
  %i.w = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.w, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.x = add nuw nsw i32 %i.e, 8
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %0, i64 %i.g
  %i.aa = xor i64 %i.g, -1
  %i.ab = add nsw i64 %i.aa, %i.y
  %i.ac = and i64 %i.ab, -8
  %i.ad = add nsw i64 %i.ac, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %i.ad, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_rints(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_smulh_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.i
  %diff.check18 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check18
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load19 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load20 = load <16 x i8>, ptr %i.p, align 1
  %wide.load21 = load <16 x i8>, ptr %i.q, align 1
  %i.r = tail call <16 x i8> @llvm.smulh.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load20)
  %i.s = tail call <16 x i8> @llvm.smulh.v16i8(<16 x i8> %wide.load19, <16 x i8> %wide.load21)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1
  store <16 x i8> %i.s, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !1096

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !21

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index23.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.016.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index23 = phi i64 [ %index.next26, %vec.epilog.vector.body ], [ %index23.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index23
  %wide.load24 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %index23
  %wide.load25 = load <8 x i8>, ptr %i.x, align 1
  %i.y = tail call <8 x i8> @llvm.smulh.v8i8(<8 x i8> %wide.load24, <8 x i8> %wide.load25)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index23
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next26 = add nuw i64 %index23, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next26, %i.g
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1097

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.016 = phi i64 [ %.016.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.016
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = tail call i8 @llvm.smulh.i8(i8 %i.ac, i8 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %.016, 1                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = tail call i8 @llvm.smulh.i8(i8 %i.aj, i8 %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add nuw nsw i64 %.016, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1098

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ap = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ap, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.aq = add nuw nsw i32 %i.e, 8
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %0, i64 %i.g
  %i.at = xor i64 %i.g, -1
  %i.au = add nsw i64 %i.at, %i.ar
  %i.av = and i64 %i.au, -8
  %i.aw = add nsw i64 %i.av, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %i.aw, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_smulh_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 4 uses
  %i.i = ptrtoaddr ptr %2 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.i, %i.j
  %diff.check16 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %wide.load17 = load <8 x i16>, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load18 = load <8 x i16>, ptr %i.p, align 2
  %wide.load19 = load <8 x i16>, ptr %i.q, align 2
  %i.r = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load18)
  %i.s = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %wide.load17, <8 x i16> %wide.load19)
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <8 x i16> %i.r, ptr %i.t, align 2
  store <8 x i16> %i.s, ptr %i.u, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !1099

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.w = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.vector.body.preheader, !prof !19

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.015.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index21
  %wide.load22 = load <4 x i16>, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index21
  %wide.load23 = load <4 x i16>, ptr %i.y, align 2
  %i.z = tail call <4 x i16> @llvm.smulh.v4i16(<4 x i16> %wide.load22, <4 x i16> %wide.load23)
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index21
  store <4 x i16> %i.z, ptr %i.aa, align 2
  %index.next24 = add nuw i64 %index21, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next24, %i.h
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1100

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.015 = phi i64 [ %.015.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.ap, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.015
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = tail call i16 @llvm.smulh.i16(i16 %i.ad, i16 %i.af)
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015
  store i16 %i.ag, ptr %i.ah, align 2
  %i.ai = or disjoint i64 %.015, 1                ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai
  %i.am = load i16, ptr %i.al, align 2
  %i.an = tail call i16 @llvm.smulh.i16(i16 %i.ak, i16 %i.am)
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai
  store i16 %i.an, ptr %i.ao, align 2
  %i.ap = add nuw nsw i64 %.015, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ap, %i.h
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1101

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.aq = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aq, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.ar = add nuw nsw i32 %i.e, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %0, i64 %i.g
  %i.au = xor i64 %i.g, -1
  %i.av = add nsw i64 %i.au, %i.as
  %i.aw = and i64 %i.av, -8
  %i.ax = add nsw i64 %i.aw, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.ax, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_smulh_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.k, %i.i
  %diff.check16 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %scalar.ph.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4
  %wide.load17 = load <4 x i32>, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load18 = load <4 x i32>, ptr %i.p, align 4
  %wide.load19 = load <4 x i32>, ptr %i.q, align 4
  %i.r = tail call <4 x i32> @llvm.smulh.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load18)
  %i.s = tail call <4 x i32> @llvm.smulh.v4i32(<4 x i32> %wide.load17, <4 x i32> %wide.load19)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %i.r, ptr %i.t, align 4
  store <4 x i32> %i.s, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !1102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %vector.memcheck, %bb.a, %middle.block
  %.015.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.015 = phi i64 [ %.015.ph, %scalar.ph.preheader.new ], [ %i.aj, %scalar.ph ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015
  %i.x = load i32, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.015
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = tail call i32 @llvm.smulh.i32(i32 %i.x, i32 %i.z)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = or disjoint i64 %.015, 1                ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = tail call i32 @llvm.smulh.i32(i32 %i.ae, i32 %i.ag)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = add nuw nsw i64 %.015, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.aj, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !1103

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ak = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ak, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.al = add nuw nsw i32 %i.e, 8
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr i8, ptr %0, i64 %i.g
  %i.ao = xor i64 %i.g, -1
  %i.ap = add nsw i64 %i.ao, %i.am
  %i.aq = and i64 %i.ap, -8
  %i.ar = add nsw i64 %i.aq, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.an, i8 0, i64 %i.ar, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_smulh_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 4 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -16
  %i.m = sub i64 %i.k, %i.i
  %diff.check16 = icmp ugt i64 %i.m, -16
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 268435454                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load = load <2 x i64>, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  %wide.load17 = load <2 x i64>, ptr %i.p, align 8
  %i.q = tail call <2 x i64> @llvm.smulh.v2i64(<2 x i64> %wide.load17, <2 x i64> %wide.load)
  store <2 x i64> %i.q, ptr %i.n, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !1104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.015.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.015.ph, 1
  %i.s = and i64 %i.g, 8
  %lcmp.mod.not = icmp eq i64 %i.s, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.ph
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.ph
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.015.ph
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call i64 @llvm.smulh.i64(i64 %i.x, i64 %i.v)
  store i64 %i.y, ptr %i.t, align 8
  %i.z = or disjoint i64 %.015.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.015.unr = phi i64 [ %.015.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = icmp eq i64 %i.h, %.neg
  br i1 %i.aa, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.015 = phi i64 [ %i.ao, %scalar.ph ], [ %.015.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.015
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = tail call i64 @llvm.smulh.i64(i64 %i.af, i64 %i.ad)
  store i64 %i.ag, ptr %i.ab, align 8
  %i.ah = add nuw nsw i64 %.015, 1                ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ah
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ah
  %i.am = load i64, ptr %i.al, align 8
  %i.an = tail call i64 @llvm.smulh.i64(i64 %i.am, i64 %i.ak)
  store i64 %i.an, ptr %i.ai, align 8
  %i.ao = add nuw nsw i64 %.015, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !1105

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ap = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ap, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.aq = add nuw nsw i32 %i.e, 8
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %0, i64 %i.g
  %i.at = xor i64 %i.g, -1
  %i.au = add nsw i64 %i.at, %i.ar
  %i.av = and i64 %i.au, -8
  %i.aw = add nsw i64 %i.av, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %i.aw, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_umulh_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -32
  %i.l = sub i64 %i.h, %i.i
  %diff.check18 = icmp ugt i64 %i.l, -32
  %conflict.rdx = or i1 %diff.check, %diff.check18
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1
  %wide.load19 = load <16 x i8>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load20 = load <16 x i8>, ptr %i.p, align 1
  %wide.load21 = load <16 x i8>, ptr %i.q, align 1
  %i.r = tail call <16 x i8> @llvm.umulh.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load20)
  %i.s = tail call <16 x i8> @llvm.umulh.v16i8(<16 x i8> %wide.load19, <16 x i8> %wide.load21)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1
  store <16 x i8> %i.s, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !1106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !21

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index23.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.016.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index23 = phi i64 [ %index.next26, %vec.epilog.vector.body ], [ %index23.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %index23
  %wide.load24 = load <8 x i8>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %index23
  %wide.load25 = load <8 x i8>, ptr %i.x, align 1
  %i.y = tail call <8 x i8> @llvm.umulh.v8i8(<8 x i8> %wide.load24, <8 x i8> %wide.load25)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index23
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next26 = add nuw i64 %index23, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next26, %i.g
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1107

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.016 = phi i64 [ %.016.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ao, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.016
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = tail call i8 @llvm.umulh.i8(i8 %i.ac, i8 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = or disjoint i64 %.016, 1                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = tail call i8 @llvm.umulh.i8(i8 %i.aj, i8 %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = add nuw nsw i64 %.016, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ap = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ap, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.aq = add nuw nsw i32 %i.e, 8
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %0, i64 %i.g
  %i.at = xor i64 %i.g, -1
  %i.au = add nsw i64 %i.at, %i.ar
  %i.av = and i64 %i.au, -8
  %i.aw = add nsw i64 %i.av, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %i.aw, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_umulh_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 4 uses
  %i.i = ptrtoaddr ptr %2 to i64
  %i.j = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.k = ptrtoaddr ptr %1 to i64
  %i.l = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.i, %i.j
  %diff.check16 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.h, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <8 x i16>, ptr %i.n, align 2
  %wide.load17 = load <8 x i16>, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load18 = load <8 x i16>, ptr %i.p, align 2
  %wide.load19 = load <8 x i16>, ptr %i.q, align 2
  %i.r = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load18)
  %i.s = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %wide.load17, <8 x i16> %wide.load19)
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <8 x i16> %i.r, ptr %i.t, align 2
  store <8 x i16> %i.s, ptr %i.u, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !1109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.w = and i64 %i.g, 24
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader.new, label %vec.epilog.vector.body.preheader, !prof !19

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index21.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader.new:               ; preds = %iter.check, %vec.epilog.iter.check
  %.015.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index21 = phi i64 [ %index.next24, %vec.epilog.vector.body ], [ %index21.ph, %vec.epilog.vector.body.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index21
  %wide.load22 = load <4 x i16>, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index21
  %wide.load23 = load <4 x i16>, ptr %i.y, align 2
  %i.z = tail call <4 x i16> @llvm.umulh.v4i16(<4 x i16> %wide.load22, <4 x i16> %wide.load23)
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index21
  store <4 x i16> %i.z, ptr %i.aa, align 2
  %index.next24 = add nuw i64 %index21, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next24, %i.h
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1110

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.015 = phi i64 [ %.015.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.ap, %vec.epilog.scalar.ph ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.015
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = tail call i16 @llvm.umulh.i16(i16 %i.ad, i16 %i.af)
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015
  store i16 %i.ag, ptr %i.ah, align 2
  %i.ai = or disjoint i64 %.015, 1                ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai
  %i.am = load i16, ptr %i.al, align 2
  %i.an = tail call i16 @llvm.umulh.i16(i16 %i.ak, i16 %i.am)
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai
  store i16 %i.an, ptr %i.ao, align 2
  %i.ap = add nuw nsw i64 %.015, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ap, %i.h
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1111

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.aq = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aq, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.ar = add nuw nsw i32 %i.e, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %0, i64 %i.g
  %i.au = xor i64 %i.g, -1
  %i.av = add nsw i64 %i.au, %i.as
  %i.aw = and i64 %i.av, -8
  %i.ax = add nsw i64 %i.aw, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.ax, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_umulh_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %scalar.ph.preheader.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.k, %i.i
  %diff.check16 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  br i1 %conflict.rdx, label %scalar.ph.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4
  %wide.load17 = load <4 x i32>, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load18 = load <4 x i32>, ptr %i.p, align 4
  %wide.load19 = load <4 x i32>, ptr %i.q, align 4
  %i.r = tail call <4 x i32> @llvm.umulh.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load18)
  %i.s = tail call <4 x i32> @llvm.umulh.v4i32(<4 x i32> %wide.load17, <4 x i32> %wide.load19)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %i.r, ptr %i.t, align 4
  store <4 x i32> %i.s, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !1112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %vector.memcheck, %bb.a, %middle.block
  %.015.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.015 = phi i64 [ %.015.ph, %scalar.ph.preheader.new ], [ %i.aj, %scalar.ph ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015
  %i.x = load i32, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.015
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = tail call i32 @llvm.umulh.i32(i32 %i.x, i32 %i.z)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = or disjoint i64 %.015, 1                ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = tail call i32 @llvm.umulh.i32(i32 %i.ae, i32 %i.ag)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = add nuw nsw i64 %.015, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.aj, %i.h
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !1113

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ak = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ak, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.al = add nuw nsw i32 %i.e, 8
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr i8, ptr %0, i64 %i.g
  %i.ao = xor i64 %i.g, -1
  %i.ap = add nsw i64 %i.ao, %i.am
  %i.aq = and i64 %i.ap, -8
  %i.ar = add nsw i64 %i.aq, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.an, i8 0, i64 %i.ar, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}
end_hunk_5
begin_hunk_6_@helper_gvec_bfmlal_idx:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.03639.i = phi i64 [ %.042.i, %bb.b ], [ %i.ab, %bb.c ] ; 4 uses
  %.idx38.i = shl nuw nsw i64 %.03639.i, 2
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.idx38.i
  %i.u = load i16, ptr %gep.i, align 2
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw i32 %i.v, 16
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03639.i
  %i.y = load i32, ptr %i.x, align 4
  %i.z = tail call i32 @float32_muladd(i32 noundef %i.w, i32 noundef %i.t, i32 noundef %i.y, i32 noundef 0, ptr noundef %4) #18
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03639.i
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = add nuw nsw i64 %.03639.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %indvars.iv.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.c, !llvm.loop !3

bb.d:                                             ; preds = %.loopexit.i
  %i.ac = icmp samesign ult i32 %.v.v.i.i, %i.e
  br i1 %i.ac, label %.lr.ph.preheader.i.i, label %do_bfmlal_idx.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.ad = add nuw nsw i32 %i.e, 8
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %0, i64 %i.g
  %i.ag = xor i64 %i.g, -1
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = and i64 %i.ah, -8
  %i.aj = add nsw i64 %i.ai, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.aj, i1 false)
  br label %do_bfmlal_idx.exit

do_bfmlal_idx.exit:                               ; preds = %bb.d, %.lr.ph.preheader.i.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_bfmlsl_idx(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %5, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i.i = select i1 %i.f, i32 %i.e, i32 %i.c  ; 2 uses
  %.v.i.i = add nuw nsw i32 %.v.v.i.i, 8
  %i.g = zext nneg i32 %.v.i.i to i64             ; 3 uses
  %i.h = lshr i32 %5, 10
  %i.i = and i32 %i.h, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i32 %5, 11
  %i.l = and i32 %i.k, 7
  %i.m = zext nneg i32 %i.l to i64
  %i.n = lshr exact i64 %i.g, 2                   ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.n, i64 4) ; 3 uses
  %invariant.gep40.i = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.m
  %invariant.gep.i = getelementptr [2 x i8], ptr %1, i64 %i.j
  br label %bb.b

.loopexit.i:                                      ; preds = %bb.c
  %i.p = add nuw nsw i64 %.042.i, %i.o            ; 2 uses
  %i.q = icmp samesign ult i64 %i.p, %i.n
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, %i.o
  br i1 %i.q, label %bb.b, label %bb.d, !llvm.loop !2

bb.b:                                             ; preds = %.loopexit.i, %bb.a
  %indvars.iv.i = phi i64 [ %i.o, %bb.a ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %.042.i = phi i64 [ 0, %bb.a ], [ %i.p, %.loopexit.i ] ; 3 uses
  %.idx.i = shl nuw nsw i64 %.042.i, 2
  %gep41.i = getelementptr inbounds nuw i8, ptr %invariant.gep40.i, i64 %.idx.i
  %i.r = load i16, ptr %gep41.i, align 2
  %i.s = zext i16 %i.r to i32
  %i.t = shl nuw i32 %i.s, 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.03639.i = phi i64 [ %.042.i, %bb.b ], [ %i.ac, %bb.c ] ; 4 uses
  %.idx38.i = shl nuw nsw i64 %.03639.i, 2
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.idx38.i
  %i.u = load i16, ptr %gep.i, align 2
  %i.v = xor i16 %i.u, -32768
  %i.w = zext i16 %i.v to i32
  %i.x = shl nuw i32 %i.w, 16
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03639.i
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = tail call i32 @float32_muladd(i32 noundef %i.x, i32 noundef %i.t, i32 noundef %i.z, i32 noundef 0, ptr noundef %4) #18
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03639.i
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = add nuw nsw i64 %.03639.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %indvars.iv.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.c, !llvm.loop !3

bb.d:                                             ; preds = %.loopexit.i
  %i.ad = icmp samesign ult i32 %.v.v.i.i, %i.e
  br i1 %i.ad, label %.lr.ph.preheader.i.i, label %do_bfmlal_idx.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.ae = add nuw nsw i32 %i.e, 8
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %0, i64 %i.g
  %i.ah = xor i64 %i.g, -1
  %i.ai = add nsw i64 %i.ah, %i.af
  %i.aj = and i64 %i.ai, -8
  %i.ak = add nsw i64 %i.aj, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.ak, i1 false)
  br label %do_bfmlal_idx.exit

do_bfmlal_idx.exit:                               ; preds = %bb.d, %.lr.ph.preheader.i.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ah_bfmlsl_idx(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %5, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i.i = select i1 %i.f, i32 %i.e, i32 %i.c  ; 2 uses
  %.v.i.i = add nuw nsw i32 %.v.v.i.i, 8
  %i.g = zext nneg i32 %.v.i.i to i64             ; 3 uses
  %i.h = lshr i32 %5, 10
  %i.i = and i32 %i.h, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i32 %5, 11
  %i.l = and i32 %i.k, 7
  %i.m = zext nneg i32 %i.l to i64
  %i.n = lshr exact i64 %i.g, 2                   ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.n, i64 4) ; 3 uses
  %invariant.gep40.i = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.m
  %invariant.gep.i = getelementptr [2 x i8], ptr %1, i64 %i.j
  br label %bb.b

.loopexit.i:                                      ; preds = %bb.c
  %i.p = add nuw nsw i64 %.042.i, %i.o            ; 2 uses
  %i.q = icmp samesign ult i64 %i.p, %i.n
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, %i.o
  br i1 %i.q, label %bb.b, label %bb.d, !llvm.loop !2

bb.b:                                             ; preds = %.loopexit.i, %bb.a
  %indvars.iv.i = phi i64 [ %i.o, %bb.a ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %.042.i = phi i64 [ 0, %bb.a ], [ %i.p, %.loopexit.i ] ; 3 uses
  %.idx.i = shl nuw nsw i64 %.042.i, 2
  %gep41.i = getelementptr inbounds nuw i8, ptr %invariant.gep40.i, i64 %.idx.i
  %i.r = load i16, ptr %gep41.i, align 2
  %i.s = zext i16 %i.r to i32
  %i.t = shl nuw i32 %i.s, 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.03639.i = phi i64 [ %.042.i, %bb.b ], [ %i.ab, %bb.c ] ; 4 uses
  %.idx38.i = shl nuw nsw i64 %.03639.i, 2
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.idx38.i
  %i.u = load i16, ptr %gep.i, align 2
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw i32 %i.v, 16
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03639.i
  %i.y = load i32, ptr %i.x, align 4
  %i.z = tail call i32 @float32_muladd(i32 noundef %i.w, i32 noundef %i.t, i32 noundef %i.y, i32 noundef 2, ptr noundef %4) #18
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03639.i
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = add nuw nsw i64 %.03639.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %indvars.iv.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.c, !llvm.loop !3

bb.d:                                             ; preds = %.loopexit.i
  %i.ac = icmp samesign ult i32 %.v.v.i.i, %i.e
  br i1 %i.ac, label %.lr.ph.preheader.i.i, label %do_bfmlal_idx.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.ad = add nuw nsw i32 %i.e, 8
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %0, i64 %i.g
  %i.ag = xor i64 %i.g, -1
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = and i64 %i.ah, -8
  %i.aj = add nsw i64 %i.ai, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.aj, i1 false)
  br label %do_bfmlal_idx.exit

do_bfmlal_idx.exit:                               ; preds = %bb.d, %.lr.ph.preheader.i.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sclamp_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %3 to i64
  %i.l = sub i64 %i.k, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.j, %i.i
  %diff.check31 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check31
  %i.n = sub i64 %i.h, %i.i
  %diff.check32 = icmp ugt i64 %i.n, -32
  %conflict.rdx33 = or i1 %conflict.rdx, %diff.check32
  br i1 %conflict.rdx33, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <16 x i8>, ptr %i.p, align 1
  %wide.load34 = load <16 x i8>, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load35 = load <16 x i8>, ptr %i.r, align 1
  %wide.load36 = load <16 x i8>, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load37 = load <16 x i8>, ptr %i.t, align 1
  %wide.load38 = load <16 x i8>, ptr %i.u, align 1
  %i.v = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load35)
  %i.w = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load34, <16 x i8> %wide.load36)
  %i.x = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.v, <16 x i8> %wide.load37)
  %i.y = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.w, <16 x i8> %wide.load38)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <16 x i8> %i.x, ptr %i.z, align 1
  store <16 x i8> %i.y, ptr %i.aa, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !21

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index40.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.029.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index40 = phi i64 [ %index.next44, %vec.epilog.vector.body ], [ %index40.ph, %vec.epilog.vector.body.preheader ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %index40
  %wide.load41 = load <8 x i8>, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %index40
  %wide.load42 = load <8 x i8>, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %index40
  %wide.load43 = load <8 x i8>, ptr %i.ae, align 1
  %i.af = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %wide.load41, <8 x i8> %wide.load42)
  %i.ag = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %i.af, <8 x i8> %wide.load43)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %index40
  store <8 x i8> %i.ag, ptr %i.ah, align 1
  %index.next44 = add nuw i64 %index40, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next44, %i.g
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1130

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.029 = phi i64 [ %.029.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bc, %vec.epilog.scalar.ph ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 %.029
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.029
  %i.am = load i8, ptr %i.al, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.029
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = tail call i8 @llvm.smax.i8(i8 %i.ak, i8 %i.am)
  %i.aq = tail call i8 @llvm.smin.i8(i8 %i.ap, i8 %i.ao)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.029
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = or disjoint i64 %.029, 1                ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = tail call i8 @llvm.smax.i8(i8 %i.au, i8 %i.aw)
  %i.ba = tail call i8 @llvm.smin.i8(i8 %i.az, i8 %i.ay)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = add nuw nsw i64 %.029, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bc, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1131

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.bd = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bd, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.be = add nuw nsw i32 %i.e, 8
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %0, i64 %i.g
  %i.bh = xor i64 %i.g, -1
  %i.bi = add nsw i64 %i.bh, %i.bf
  %i.bj = and i64 %i.bi, -8
  %i.bk = add nsw i64 %i.bj, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bg, i8 0, i64 %i.bk, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sclamp_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = ptrtoaddr ptr %3 to i64
  %i.n = sub i64 %i.m, %i.k
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.k
  %diff.check31 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check31
  %i.p = sub i64 %i.j, %i.k
  %diff.check32 = icmp ugt i64 %i.p, -32
  %conflict.rdx33 = or i1 %conflict.rdx, %diff.check32
  br i1 %conflict.rdx33, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.r = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl nuw i64 %index, 1                    ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <8 x i16>, ptr %i.t, align 2
  %wide.load34 = load <8 x i16>, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load35 = load <8 x i16>, ptr %i.v, align 2
  %wide.load36 = load <8 x i16>, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.s ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load37 = load <8 x i16>, ptr %i.x, align 2
  %wide.load38 = load <8 x i16>, ptr %i.y, align 2
  %i.z = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load35)
  %i.aa = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load34, <8 x i16> %wide.load36)
  %i.ab = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.z, <8 x i16> %wide.load37)
  %i.ac = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aa, <8 x i16> %wide.load38)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.s ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <8 x i16> %i.ab, ptr %i.ad, align 2
  store <8 x i16> %i.ac, ptr %i.ae, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !19

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index40.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.029.ph = phi i64 [ %i.r, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index40 = phi i64 [ %index.next44, %vec.epilog.vector.body ], [ %index40.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ag = shl nuw i64 %index40, 1                 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %i.ag
  %wide.load41 = load <4 x i16>, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %wide.load42 = load <4 x i16>, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ag
  %wide.load43 = load <4 x i16>, ptr %i.aj, align 2
  %i.ak = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load41, <4 x i16> %wide.load42)
  %i.al = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %i.ak, <4 x i16> %wide.load43)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  store <4 x i16> %i.al, ptr %i.am, align 2
  %index.next44 = add nuw i64 %index40, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next44, %i.i
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1133

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.029 = phi i64 [ %i.ax, %vec.epilog.scalar.ph ], [ %.029.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %.029
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.029
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %.029
  %i.at = load i16, ptr %i.as, align 2
  %i.au = tail call i16 @llvm.smax.i16(i16 %i.ap, i16 %i.ar)
  %i.av = tail call i16 @llvm.smin.i16(i16 %i.au, i16 %i.at)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.029
  store i16 %i.av, ptr %i.aw, align 2
  %i.ax = add nuw nsw i64 %.029, 2                ; 2 uses
  %i.ay = icmp samesign ult i64 %i.ax, %i.g
  br i1 %i.ay, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !1134

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.az = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.az, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.ba = add nuw nsw i32 %i.e, 8
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %0, i64 %i.g
  %i.bd = xor i64 %i.g, -1
  %i.be = add nsw i64 %i.bd, %i.bb
  %i.bf = and i64 %i.be, -8
  %i.bg = add nsw i64 %i.bf, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bc, i8 0, i64 %i.bg, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sclamp_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.k = ptrtoaddr ptr %3 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = ptrtoaddr ptr %2 to i64
  %i.n = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.j
  %diff.check31 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check31
  %i.p = sub i64 %i.m, %i.j
  %diff.check32 = icmp ugt i64 %i.p, -32
  %conflict.rdx33 = or i1 %conflict.rdx, %diff.check32
  br i1 %conflict.rdx33, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.q = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl nuw i64 %index, 2                    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4
  %wide.load34 = load <4 x i32>, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load35 = load <4 x i32>, ptr %i.u, align 4
  %wide.load36 = load <4 x i32>, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.r ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load37 = load <4 x i32>, ptr %i.w, align 4
  %wide.load38 = load <4 x i32>, ptr %i.x, align 4
  %i.y = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load35)
  %i.z = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load34, <4 x i32> %wide.load36)
  %i.aa = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.y, <4 x i32> %wide.load37)
  %i.ab = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.z, <4 x i32> %wide.load38)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.r ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x i32> %i.aa, ptr %i.ac, align 4
  store <4 x i32> %i.ab, ptr %i.ad, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.029.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.q, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.029 = phi i64 [ %i.ao, %scalar.ph ], [ %.029.ph, %scalar.ph.preheader ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %.029
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.029
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.029
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %i.ai)
  %i.am = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %i.ak)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.029
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = add nuw nsw i64 %.029, 4                ; 2 uses
  %i.ap = icmp samesign ult i64 %i.ao, %i.g
  br i1 %i.ap, label %scalar.ph, label %.loopexit, !llvm.loop !1136

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.aq = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aq, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ar = add nuw nsw i32 %i.e, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %0, i64 %i.g
  %i.au = xor i64 %i.g, -1
  %i.av = add nsw i64 %i.au, %i.as
  %i.aw = and i64 %i.av, -8
  %i.ax = add nsw i64 %i.aw, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.ax, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sclamp_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 184
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.k = ptrtoaddr ptr %3 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = ptrtoaddr ptr %2 to i64
  %i.n = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.j
  %diff.check31 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check31
  %i.p = sub i64 %i.m, %i.j
  %diff.check32 = icmp ugt i64 %i.p, -32
  %conflict.rdx33 = or i1 %conflict.rdx, %diff.check32
  br i1 %conflict.rdx33, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
  %i.q = shl nuw nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl nuw i64 %index, 3                    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x i64>, ptr %i.s, align 8
  %wide.load34 = load <2 x i64>, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load35 = load <2 x i64>, ptr %i.u, align 8
  %wide.load36 = load <2 x i64>, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.r ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load37 = load <2 x i64>, ptr %i.w, align 8
  %wide.load38 = load <2 x i64>, ptr %i.x, align 8
  %i.y = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load, <2 x i64> %wide.load35)
  %i.z = tail call <2 x i64> @llvm.smax.v2i64(<2 x i64> %wide.load34, <2 x i64> %wide.load36)
  %i.aa = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.y, <2 x i64> %wide.load37)
  %i.ab = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.z, <2 x i64> %wide.load38)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.r ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x i64> %i.aa, ptr %i.ac, align 8
  store <2 x i64> %i.ab, ptr %i.ad, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.029.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.q, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.029 = phi i64 [ %i.ao, %scalar.ph ], [ %.029.ph, %scalar.ph.preheader ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %.029
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.029
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.029
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = tail call i64 @llvm.smax.i64(i64 %i.ag, i64 %i.ai)
  %i.am = tail call i64 @llvm.smin.i64(i64 %i.al, i64 %i.ak)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.029
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = add nuw nsw i64 %.029, 8                ; 2 uses
  %i.ap = icmp samesign ult i64 %i.ao, %i.g
  br i1 %i.ap, label %scalar.ph, label %.loopexit, !llvm.loop !1138

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.aq = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aq, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ar = add nuw nsw i32 %i.e, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %0, i64 %i.g
  %i.au = xor i64 %i.g, -1
  %i.av = add nsw i64 %i.au, %i.as
  %i.aw = and i64 %i.av, -8
  %i.ax = add nsw i64 %i.aw, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.ax, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uclamp_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %2 to i64
  %i.i = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %3 to i64
  %i.l = sub i64 %i.k, %i.i
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %i.j, %i.i
  %diff.check31 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check31
  %i.n = sub i64 %i.h, %i.i
  %diff.check32 = icmp ugt i64 %i.n, -32
  %conflict.rdx33 = or i1 %conflict.rdx, %diff.check32
  br i1 %conflict.rdx33, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <16 x i8>, ptr %i.p, align 1
  %wide.load34 = load <16 x i8>, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load35 = load <16 x i8>, ptr %i.r, align 1
  %wide.load36 = load <16 x i8>, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load37 = load <16 x i8>, ptr %i.t, align 1
  %wide.load38 = load <16 x i8>, ptr %i.u, align 1
  %i.v = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load35)
  %i.w = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load34, <16 x i8> %wide.load36)
  %i.x = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.v, <16 x i8> %wide.load37)
  %i.y = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.w, <16 x i8> %wide.load38)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <16 x i8> %i.x, ptr %i.z, align 1
  store <16 x i8> %i.y, ptr %i.aa, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !21

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index40.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.029.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index40 = phi i64 [ %index.next44, %vec.epilog.vector.body ], [ %index40.ph, %vec.epilog.vector.body.preheader ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %index40
  %wide.load41 = load <8 x i8>, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %index40
  %wide.load42 = load <8 x i8>, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %index40
  %wide.load43 = load <8 x i8>, ptr %i.ae, align 1
  %i.af = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %wide.load41, <8 x i8> %wide.load42)
  %i.ag = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.af, <8 x i8> %wide.load43)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %index40
  store <8 x i8> %i.ag, ptr %i.ah, align 1
  %index.next44 = add nuw i64 %index40, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next44, %i.g
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1140

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.029 = phi i64 [ %.029.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bc, %vec.epilog.scalar.ph ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 %.029
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.029
  %i.am = load i8, ptr %i.al, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.029
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = tail call i8 @llvm.umax.i8(i8 %i.ak, i8 %i.am)
  %i.aq = tail call i8 @llvm.umin.i8(i8 %i.ap, i8 %i.ao)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.029
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = or disjoint i64 %.029, 1                ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = tail call i8 @llvm.umax.i8(i8 %i.au, i8 %i.aw)
  %i.ba = tail call i8 @llvm.umin.i8(i8 %i.az, i8 %i.ay)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = add nuw nsw i64 %.029, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bc, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1141

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.bd = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bd, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.be = add nuw nsw i32 %i.e, 8
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %0, i64 %i.g
  %i.bh = xor i64 %i.g, -1
  %i.bi = add nsw i64 %i.bh, %i.bf
  %i.bj = and i64 %i.bi, -8
  %i.bk = add nsw i64 %i.bj, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bg, i8 0, i64 %i.bk, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uclamp_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i32 %.v.v.i, 1
  %narrow = add nuw nsw i32 %i.h, 4
  %i.i = zext nneg i32 %narrow to i64             ; 4 uses
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = ptrtoaddr ptr %3 to i64
  %i.n = sub i64 %i.m, %i.k
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.k
  %diff.check31 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check31
  %i.p = sub i64 %i.j, %i.k
  %diff.check32 = icmp ugt i64 %i.p, -32
  %conflict.rdx33 = or i1 %conflict.rdx, %diff.check32
  br i1 %conflict.rdx33, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 2147483632               ; 4 uses
  %i.r = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl nuw i64 %index, 1                    ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <8 x i16>, ptr %i.t, align 2
  %wide.load34 = load <8 x i16>, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load35 = load <8 x i16>, ptr %i.v, align 2
  %wide.load36 = load <8 x i16>, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.s ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load37 = load <8 x i16>, ptr %i.x, align 2
  %wide.load38 = load <8 x i16>, ptr %i.y, align 2
  %i.z = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load, <8 x i16> %wide.load35)
  %i.aa = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load34, <8 x i16> %wide.load36)
  %i.ab = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.z, <8 x i16> %wide.load37)
  %i.ac = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.aa, <8 x i16> %wide.load38)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.s ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <8 x i16> %i.ab, ptr %i.ad, align 2
  store <8 x i16> %i.ac, ptr %i.ae, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !19

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index40.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.029.ph = phi i64 [ %i.r, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index40 = phi i64 [ %index.next44, %vec.epilog.vector.body ], [ %index40.ph, %vec.epilog.vector.body.preheader ] ; 2 uses
  %i.ag = shl nuw i64 %index40, 1                 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %i.ag
  %wide.load41 = load <4 x i16>, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %wide.load42 = load <4 x i16>, ptr %i.ai, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ag
  %wide.load43 = load <4 x i16>, ptr %i.aj, align 2
  %i.ak = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load41, <4 x i16> %wide.load42)
  %i.al = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %i.ak, <4 x i16> %wide.load43)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  store <4 x i16> %i.al, ptr %i.am, align 2
  %index.next44 = add nuw i64 %index40, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next44, %i.i
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1143

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.029 = phi i64 [ %i.ax, %vec.epilog.scalar.ph ], [ %.029.ph, %vec.epilog.scalar.ph.preheader ] ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %.029
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.029
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %.029
  %i.at = load i16, ptr %i.as, align 2
  %i.au = tail call i16 @llvm.umax.i16(i16 %i.ap, i16 %i.ar)
  %i.av = tail call i16 @llvm.umin.i16(i16 %i.au, i16 %i.at)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.029
  store i16 %i.av, ptr %i.aw, align 2
  %i.ax = add nuw nsw i64 %.029, 2                ; 2 uses
  %i.ay = icmp samesign ult i64 %i.ax, %i.g
  br i1 %i.ay, label %vec.epilog.scalar.ph, label %vec.epilog.middle.block, !llvm.loop !1144

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.az = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.az, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.ba = add nuw nsw i32 %i.e, 8
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %0, i64 %i.g
  %i.bd = xor i64 %i.g, -1
  %i.be = add nsw i64 %i.bd, %i.bb
  %i.bf = and i64 %i.be, -8
  %i.bg = add nsw i64 %i.bf, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bc, i8 0, i64 %i.bg, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uclamp_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i32 %.v.v.i, 2
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.k = ptrtoaddr ptr %3 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = ptrtoaddr ptr %2 to i64
  %i.n = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.j
  %diff.check31 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check31
  %i.p = sub i64 %i.m, %i.j
  %diff.check32 = icmp ugt i64 %i.p, -32
  %conflict.rdx33 = or i1 %conflict.rdx, %diff.check32
  br i1 %conflict.rdx33, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 1073741816               ; 3 uses
  %i.q = shl nuw nsw i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl nuw i64 %index, 2                    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4
  %wide.load34 = load <4 x i32>, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load35 = load <4 x i32>, ptr %i.u, align 4
  %wide.load36 = load <4 x i32>, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.r ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load37 = load <4 x i32>, ptr %i.w, align 4
  %wide.load38 = load <4 x i32>, ptr %i.x, align 4
  %i.y = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load35)
  %i.z = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load34, <4 x i32> %wide.load36)
  %i.aa = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.y, <4 x i32> %wide.load37)
  %i.ab = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.z, <4 x i32> %wide.load38)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.r ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x i32> %i.aa, ptr %i.ac, align 4
  store <4 x i32> %i.ab, ptr %i.ad, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.029.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.q, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.029 = phi i64 [ %i.ao, %scalar.ph ], [ %.029.ph, %scalar.ph.preheader ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %.029
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.029
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.029
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = tail call i32 @llvm.umax.i32(i32 %i.ag, i32 %i.ai)
  %i.am = tail call i32 @llvm.umin.i32(i32 %i.al, i32 %i.ak)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.029
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = add nuw nsw i64 %.029, 4                ; 2 uses
  %i.ap = icmp samesign ult i64 %i.ao, %i.g
  br i1 %i.ap, label %scalar.ph, label %.loopexit, !llvm.loop !1146

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.aq = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aq, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ar = add nuw nsw i32 %i.e, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %0, i64 %i.g
  %i.au = xor i64 %i.g, -1
  %i.av = add nsw i64 %i.au, %i.as
  %i.aw = and i64 %i.av, -8
  %i.ax = add nsw i64 %i.aw, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.ax, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_uclamp_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 4 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i32 %.v.v.i, 3
  %narrow = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %narrow to i64             ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 184
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.j = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.k = ptrtoaddr ptr %3 to i64
  %i.l = ptrtoaddr ptr %1 to i64
  %i.m = ptrtoaddr ptr %2 to i64
  %i.n = sub i64 %i.k, %i.j
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.l, %i.j
  %diff.check31 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check31
  %i.p = sub i64 %i.m, %i.j
  %diff.check32 = icmp ugt i64 %i.p, -32
  %conflict.rdx33 = or i1 %conflict.rdx, %diff.check32
  br i1 %conflict.rdx33, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 536870908                ; 3 uses
  %i.q = shl nuw nsw i64 %n.vec, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl nuw i64 %index, 3                    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x i64>, ptr %i.s, align 8
  %wide.load34 = load <2 x i64>, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load35 = load <2 x i64>, ptr %i.u, align 8
  %wide.load36 = load <2 x i64>, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.r ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load37 = load <2 x i64>, ptr %i.w, align 8
  %wide.load38 = load <2 x i64>, ptr %i.x, align 8
  %i.y = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load, <2 x i64> %wide.load35)
  %i.z = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load34, <2 x i64> %wide.load36)
  %i.aa = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.y, <2 x i64> %wide.load37)
  %i.ab = tail call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.z, <2 x i64> %wide.load38)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.r ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x i64> %i.aa, ptr %i.ac, align 8
  store <2 x i64> %i.ab, ptr %i.ad, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.029.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.q, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.029 = phi i64 [ %i.ao, %scalar.ph ], [ %.029.ph, %scalar.ph.preheader ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %.029
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.029
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.029
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.ai)
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.ak)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.029
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = add nuw nsw i64 %.029, 8                ; 2 uses
  %i.ap = icmp samesign ult i64 %i.ao, %i.g
  br i1 %i.ap, label %scalar.ph, label %.loopexit, !llvm.loop !1148

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.aq = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aq, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ar = add nuw nsw i32 %i.e, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %0, i64 %i.g
  %i.au = xor i64 %i.g, -1
  %i.av = add nsw i64 %i.au, %i.as
  %i.aw = and i64 %i.av, -8
  %i.ax = add nsw i64 %i.aw, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.ax, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_cnt_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
iter.check:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = ptrtoaddr ptr %1 to i64
  %i.i = ptrtoaddr ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i
  %diff.check = icmp ugt i64 %i.j, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.g, 24
  %n.vec = and i64 %i.g, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <16 x i8>, ptr %i.l, align 1
  %wide.load15 = load <16 x i8>, ptr %i.m, align 1
  %i.n = tail call range(i8 0, 9) <16 x i8> @llvm.ctpop.v16i8(<16 x i8> %wide.load)
  %i.o = tail call range(i8 0, 9) <16 x i8> @llvm.ctpop.v16i8(<16 x i8> %wide.load15)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> %i.n, ptr %i.p, align 1
  store <16 x i8> %i.o, ptr %i.q, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !1149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %vec.epilog.middle.block, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body.preheader, !prof !21

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index17.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check
  %.013.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  br label %vec.epilog.scalar.ph

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index17 = phi i64 [ %index.next19, %vec.epilog.vector.body ], [ %index17.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index17
  %wide.load18 = load <8 x i8>, ptr %i.s, align 1
  %i.t = tail call range(i8 0, 9) <8 x i8> @llvm.ctpop.v8i8(<8 x i8> %wide.load18)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %index17
  store <8 x i8> %i.t, ptr %i.u, align 1
  %index.next19 = add nuw i64 %index17, 8         ; 2 uses
  %i.v = icmp eq i64 %index.next19, %i.g
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1150

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %.013 = phi i64 [ %.013.ph, %vec.epilog.scalar.ph.preheader ], [ %i.af, %vec.epilog.scalar.ph ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.013
  %i.x = load i8, ptr %i.w, align 1
  %i.y = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = or disjoint i64 %.013, 1                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  store i8 %i.ad, ptr %i.ae, align 1
  %i.af = add nuw nsw i64 %.013, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.af, %i.g
  br i1 %exitcond.not.1, label %vec.epilog.middle.block, label %vec.epilog.scalar.ph, !llvm.loop !1151

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %middle.block
  %i.ag = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ag, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %vec.epilog.middle.block
  %i.ah = add nuw nsw i32 %i.e, 8
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %0, i64 %i.g
  %i.ak = xor i64 %i.g, -1
  %i.al = add nsw i64 %i.ak, %i.ai
  %i.am = and i64 %i.al, -8
  %i.an = add nsw i64 %i.am, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 %i.an, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %vec.epilog.middle.block, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_rbit_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 3 uses
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  %i.i = ptrtoaddr ptr %0 to i64
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.h, 268435454                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load15 = load <16 x i8>, ptr %i.l, align 8
  %i.m = tail call <16 x i8> @llvm.bitreverse.v16i8(<16 x i8> %wide.load15)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  store <16 x i8> %i.m, ptr %i.n, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !1152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.012.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.012 = phi i64 [ %i.u, %scalar.ph ], [ %.012.ph, %scalar.ph.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.012
  %i.q = load i64, ptr %i.p, align 8
  %i.r = tail call i64 @llvm.bswap.i64(i64 %i.q)
  %i.s = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.r)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.012
  store i64 %i.s, ptr %i.t, align 8
  %i.u = add nuw nsw i64 %.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !1153

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.v = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.v, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.w = add nuw nsw i32 %i.e, 8
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr i8, ptr %0, i64 %i.g
  %i.z = xor i64 %i.g, -1
  %i.aa = add nsw i64 %i.z, %i.x
  %i.ab = and i64 %i.aa, -8
  %i.ac = add nsw i64 %i.ab, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ac, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_urecpe_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.012 = phi i64 [ 0, %bb.a ], [ %i.m, %bb.b ]   ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.012
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @helper_recpe_u32(i32 noundef %i.j) #18
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012
  store i32 %i.k, ptr %i.l, align 4
  %i.m = add nuw nsw i64 %.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !1154

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.n, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
end_hunk_6
