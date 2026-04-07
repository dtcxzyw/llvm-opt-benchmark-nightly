begin_hunk_0
inline.NumInlined: 1537
inline.NumDeleted: 102
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1_@_Z13contextModel2v:bb.a
  %i.rq = lshr i32 %i.ri, %i.rp
  %i.rr = shl nuw nsw i32 %i.rq, 4
  %i.rs = and i32 %i.rr, 16
  %i.rt = load i8, ptr %i.rf, align 1, !tbaa !11
  %i.ru = zext i8 %i.rt to i64
  %i.rv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 16), align 8, !tbaa !24
end_hunk_1
begin_hunk_2_@_Z13contextModel2v:bb.a
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 1
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !11
  %i.rz = zext i8 %i.ry to i32
  %0 = add nuw nsw i32 %i.rs, 65528
  %i.sa = mul nuw nsw i32 %0, %i.rz
  %i.sb = trunc i32 %i.sa to i16
  br label %_ZN13RunContextMap3mixER5Mixer.exit
end_hunk_2
begin_hunk_3_@_Z13contextModel2v:bb.a
  %i.sp = lshr i32 %i.sk, %i.so
  %i.sq = shl nuw nsw i32 %i.sp, 4
  %i.sr = and i32 %i.sq, 16
  %i.ss = load i8, ptr %i.sh, align 1, !tbaa !11
  %i.st = zext i8 %i.ss to i64
  %i.su = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 16), align 8, !tbaa !24
end_hunk_3
begin_hunk_4_@_Z13contextModel2v:bb.a
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 1
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !11
  %i.sy = zext i8 %i.sx to i32
  %1 = add nuw nsw i32 %i.sr, 65528
  %i.sz = mul nuw nsw i32 %1, %i.sy
  %i.ta = trunc i32 %i.sz to i16
  br label %_ZN13RunContextMap3mixER5Mixer.exit80
end_hunk_4
begin_hunk_5_@_Z13contextModel2v:bb.a
  %i.tm = lshr i32 %i.th, %i.tl
  %i.tn = shl nuw nsw i32 %i.tm, 4
  %i.to = and i32 %i.tn, 16
  %i.tp = load i8, ptr %i.te, align 1, !tbaa !11
  %i.tq = zext i8 %i.tp to i64
  %i.tr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 16), align 8, !tbaa !24
end_hunk_5
begin_hunk_6_@_Z13contextModel2v:bb.a
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 1
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !11
  %i.tv = zext i8 %i.tu to i32
  %2 = add nuw nsw i32 %i.to, 65528
  %i.tw = mul nuw nsw i32 %2, %i.tv
  %i.tx = trunc i32 %i.tw to i16
  br label %_ZN13RunContextMap3mixER5Mixer.exit82
end_hunk_6
