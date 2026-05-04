inline.NumInlined: 8
inline.NumDeleted: 4
begin_hunk_0_@Decoding_of_the_coded_Log_Area_Ratios:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @LARp_to_rp(ptr noundef nonnull captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !12     ; 9 uses
  %i.b = icmp slt i16 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %1 = icmp eq i16 %i.a, -32768
  %2 = sub i16 0, %i.a
  %narrow29 = select i1 %1, i16 32767, i16 %2     ; 6 uses
  %i.c = icmp ult i16 %narrow29, 11059
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@LARp_to_rp:bb.a
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.d = icmp ult i16 %narrow29, 20070
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@LARp_to_rp:bb.a
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.e = icmp ugt i16 %narrow29, 26623
  br i1 %i.e, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_2
begin_hunk_3_@LARp_to_rp:bb.a
  %storemerge = phi i16 [ 32767, %bb.l ], [ %i.h, %bb.i ], [ %i.j, %bb.k ], [ %narrow, %bb.m ], [ %.neg, %bb.c ], [ %.neg27, %bb.e ], [ %narrow25.neg, %bb.g ], [ -32767, %bb.f ]
  store i16 %storemerge, ptr %0, align 2, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !12   ; 9 uses
  %i.o = icmp slt i16 %i.n, 0
  br i1 %i.o, label %bb.u, label %bb.o

end_hunk_3
begin_hunk_4_@LARp_to_rp:bb.a
  br label %bb.aa

bb.u:                                             ; preds = %bb.n
  %3 = icmp eq i16 %i.n, -32768
  %4 = sub i16 0, %i.n
  %narrow29.1 = select i1 %3, i16 32767, i16 %4   ; 6 uses
  %i.v = icmp ult i16 %narrow29.1, 11059
  br i1 %i.v, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.w = icmp ult i16 %narrow29.1, 20070
  br i1 %i.w, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.x = icmp ugt i16 %narrow29.1, 26623
  br i1 %i.x, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
end_hunk_4
begin_hunk_5_@LARp_to_rp:bb.a
  %storemerge.1 = phi i16 [ 32767, %bb.q ], [ %i.u, %bb.t ], [ %i.t, %bb.s ], [ %narrow.1, %bb.r ], [ %.neg.1, %bb.z ], [ %.neg27.1, %bb.y ], [ %narrow25.neg.1, %bb.x ], [ -32767, %bb.w ]
  store i16 %storemerge.1, ptr %i.m, align 2, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !12  ; 9 uses
  %i.ab = icmp slt i16 %i.aa, 0
  br i1 %i.ab, label %bb.ah, label %bb.ab

end_hunk_5
begin_hunk_6_@LARp_to_rp:bb.a
  br label %bb.an

bb.ah:                                            ; preds = %bb.aa
  %5 = icmp eq i16 %i.aa, -32768
  %6 = sub i16 0, %i.aa
  %narrow29.2 = select i1 %5, i16 32767, i16 %6   ; 6 uses
  %i.ai = icmp ult i16 %narrow29.2, 11059
  br i1 %i.ai, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.aj = icmp ult i16 %narrow29.2, 20070
  br i1 %i.aj, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ak = icmp ugt i16 %narrow29.2, 26623
  br i1 %i.ak, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
end_hunk_6
begin_hunk_7_@LARp_to_rp:bb.a
  %storemerge.2 = phi i16 [ 32767, %bb.ad ], [ %i.ah, %bb.ag ], [ %i.ag, %bb.af ], [ %narrow.2, %bb.ae ], [ %.neg.2, %bb.am ], [ %.neg27.2, %bb.al ], [ %narrow25.neg.2, %bb.ak ], [ -32767, %bb.aj ]
  store i16 %storemerge.2, ptr %i.z, align 2, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !12 ; 9 uses
  %i.ao = icmp slt i16 %i.an, 0
  br i1 %i.ao, label %bb.au, label %bb.ao

end_hunk_7
begin_hunk_8_@LARp_to_rp:bb.a
  br label %bb.ba

bb.au:                                            ; preds = %bb.an
  %7 = icmp eq i16 %i.an, -32768
  %8 = sub i16 0, %i.an
  %narrow29.3 = select i1 %7, i16 32767, i16 %8   ; 6 uses
  %i.av = icmp ult i16 %narrow29.3, 11059
  br i1 %i.av, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.aw = icmp ult i16 %narrow29.3, 20070
  br i1 %i.aw, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ax = icmp ugt i16 %narrow29.3, 26623
  br i1 %i.ax, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
end_hunk_8
begin_hunk_9_@LARp_to_rp:bb.a
  %storemerge.3 = phi i16 [ 32767, %bb.aq ], [ %i.au, %bb.at ], [ %i.at, %bb.as ], [ %narrow.3, %bb.ar ], [ %.neg.3, %bb.az ], [ %.neg27.3, %bb.ay ], [ %narrow25.neg.3, %bb.ax ], [ -32767, %bb.aw ]
  store i16 %storemerge.3, ptr %i.am, align 2, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !12 ; 9 uses
  %i.bb = icmp slt i16 %i.ba, 0
  br i1 %i.bb, label %bb.bh, label %bb.bb

end_hunk_9
begin_hunk_10_@LARp_to_rp:bb.a
  br label %bb.bn

bb.bh:                                            ; preds = %bb.ba
  %9 = icmp eq i16 %i.ba, -32768
  %10 = sub i16 0, %i.ba
  %narrow29.4 = select i1 %9, i16 32767, i16 %10  ; 6 uses
  %i.bi = icmp ult i16 %narrow29.4, 11059
  br i1 %i.bi, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.bj = icmp ult i16 %narrow29.4, 20070
  br i1 %i.bj, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.bk = icmp ugt i16 %narrow29.4, 26623
  br i1 %i.bk, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
end_hunk_10
begin_hunk_11_@LARp_to_rp:bb.a
  %storemerge.4 = phi i16 [ 32767, %bb.bd ], [ %i.bh, %bb.bg ], [ %i.bg, %bb.bf ], [ %narrow.4, %bb.be ], [ %.neg.4, %bb.bm ], [ %.neg27.4, %bb.bl ], [ %narrow25.neg.4, %bb.bk ], [ -32767, %bb.bj ]
  store i16 %storemerge.4, ptr %i.az, align 2, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !12 ; 9 uses
  %i.bo = icmp slt i16 %i.bn, 0
  br i1 %i.bo, label %bb.bu, label %bb.bo

end_hunk_11
begin_hunk_12_@LARp_to_rp:bb.a
  br label %bb.ca

bb.bu:                                            ; preds = %bb.bn
  %11 = icmp eq i16 %i.bn, -32768
  %12 = sub i16 0, %i.bn
  %narrow29.5 = select i1 %11, i16 32767, i16 %12 ; 6 uses
  %i.bv = icmp ult i16 %narrow29.5, 11059
  br i1 %i.bv, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.bw = icmp ult i16 %narrow29.5, 20070
  br i1 %i.bw, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.bx = icmp ugt i16 %narrow29.5, 26623
  br i1 %i.bx, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
end_hunk_12
begin_hunk_13_@LARp_to_rp:bb.a
  %storemerge.5 = phi i16 [ 32767, %bb.bq ], [ %i.bu, %bb.bt ], [ %i.bt, %bb.bs ], [ %narrow.5, %bb.br ], [ %.neg.5, %bb.bz ], [ %.neg27.5, %bb.by ], [ %narrow25.neg.5, %bb.bx ], [ -32767, %bb.bw ]
  store i16 %storemerge.5, ptr %i.bm, align 2, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !12 ; 9 uses
  %i.cb = icmp slt i16 %i.ca, 0
  br i1 %i.cb, label %bb.ch, label %bb.cb

end_hunk_13
begin_hunk_14_@LARp_to_rp:bb.a
  br label %bb.cn

bb.ch:                                            ; preds = %bb.ca
  %13 = icmp eq i16 %i.ca, -32768
  %14 = sub i16 0, %i.ca
  %narrow29.6 = select i1 %13, i16 32767, i16 %14 ; 6 uses
  %i.ci = icmp ult i16 %narrow29.6, 11059
  br i1 %i.ci, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.cj = icmp ult i16 %narrow29.6, 20070
  br i1 %i.cj, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ck = icmp ugt i16 %narrow29.6, 26623
  br i1 %i.ck, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
end_hunk_14
begin_hunk_15_@LARp_to_rp:bb.a
  %storemerge.6 = phi i16 [ 32767, %bb.cd ], [ %i.ch, %bb.cg ], [ %i.cg, %bb.cf ], [ %narrow.6, %bb.ce ], [ %.neg.6, %bb.cm ], [ %.neg27.6, %bb.cl ], [ %narrow25.neg.6, %bb.ck ], [ -32767, %bb.cj ]
  store i16 %storemerge.6, ptr %i.bz, align 2, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !12 ; 9 uses
  %i.co = icmp slt i16 %i.cn, 0
  br i1 %i.co, label %bb.cu, label %bb.co

end_hunk_15
begin_hunk_16_@LARp_to_rp:bb.a
  br label %bb.da

bb.cu:                                            ; preds = %bb.cn
  %15 = icmp eq i16 %i.cn, -32768
  %16 = sub i16 0, %i.cn
  %narrow29.7 = select i1 %15, i16 32767, i16 %16 ; 6 uses
  %i.cv = icmp ult i16 %narrow29.7, 11059
  br i1 %i.cv, label %bb.cz, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.cw = icmp ult i16 %narrow29.7, 20070
  br i1 %i.cw, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.cx = icmp ugt i16 %narrow29.7, 26623
  br i1 %i.cx, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
end_hunk_16
