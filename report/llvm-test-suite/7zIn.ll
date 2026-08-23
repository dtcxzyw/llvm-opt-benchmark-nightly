Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zIn?download=true
inline.NumInlined: 462
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK8NArchive3N7z7CFolder14CheckStructureEv:bb.a
  br i1 %.not.2, label %.preheader.3, label %bb.x

.preheader.3:                                     ; preds = %.preheader.2
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !4
  %i.gj = and i32 %i.gi, 8
  %.not.3 = icmp eq i32 %i.gj, 0
  br i1 %.not.3, label %.preheader.4, label %bb.x

.preheader.4:                                     ; preds = %.preheader.3
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gl = load i32, ptr %i.gk, align 16, !tbaa !4
  %i.gm = and i32 %i.gl, 16
  %.not.4 = icmp eq i32 %i.gm, 0
  br i1 %.not.4, label %.preheader.5, label %bb.x

.preheader.5:                                     ; preds = %.preheader.4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !4
  %i.gp = and i32 %i.go, 32
  %.not.5 = icmp eq i32 %i.gp, 0
  br i1 %.not.5, label %.preheader.6, label %bb.x

.preheader.6:                                     ; preds = %.preheader.5
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !4
  %i.gs = and i32 %i.gr, 64
  %.not.6 = icmp eq i32 %i.gs, 0
  br i1 %.not.6, label %.preheader.7, label %bb.x

.preheader.7:                                     ; preds = %.preheader.6
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4
  %i.gv = and i32 %i.gu, 128
  %.not.7 = icmp eq i32 %i.gv, 0
  br i1 %.not.7, label %.preheader.8, label %bb.x

.preheader.8:                                     ; preds = %.preheader.7
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.gx = load i32, ptr %i.gw, align 16, !tbaa !4
  %i.gy = and i32 %i.gx, 256
  %.not.8 = icmp eq i32 %i.gy, 0
  br i1 %.not.8, label %.preheader.9, label %bb.x

.preheader.9:                                     ; preds = %.preheader.8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !4
  %i.hb = and i32 %i.ha, 512
  %.not.9 = icmp eq i32 %i.hb, 0
  br i1 %.not.9, label %.preheader.10, label %bb.x

.preheader.10:                                    ; preds = %.preheader.9
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !4
  %i.he = and i32 %i.hd, 1024
  %.not.10 = icmp eq i32 %i.he, 0
  br i1 %.not.10, label %.preheader.11, label %bb.x

.preheader.11:                                    ; preds = %.preheader.10
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !4
  %i.hh = and i32 %i.hg, 2048
  %.not.11 = icmp eq i32 %i.hh, 0
  br i1 %.not.11, label %.preheader.12, label %bb.x

.preheader.12:                                    ; preds = %.preheader.11
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.hj = load i32, ptr %i.hi, align 16, !tbaa !4
  %i.hk = and i32 %i.hj, 4096
  %.not.12 = icmp eq i32 %i.hk, 0
  br i1 %.not.12, label %.preheader.13, label %bb.x

.preheader.13:                                    ; preds = %.preheader.12
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !4
  %i.hn = and i32 %i.hm, 8192
  %.not.13 = icmp eq i32 %i.hn, 0
  br i1 %.not.13, label %.preheader.14, label %bb.x

.preheader.14:                                    ; preds = %.preheader.13
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !4
  %i.hq = and i32 %i.hp, 16384
  %.not.14 = icmp eq i32 %i.hq, 0
  br i1 %.not.14, label %.preheader.15, label %bb.x

.preheader.15:                                    ; preds = %.preheader.14
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !4
  %i.ht = and i32 %i.hs, 32768
  %.not.15 = icmp eq i32 %i.ht, 0
  br i1 %.not.15, label %.preheader.16, label %bb.x

.preheader.16:                                    ; preds = %.preheader.15
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.hv = load i32, ptr %i.hu, align 16, !tbaa !4
  %i.hw = and i32 %i.hv, 65536
  %.not.16 = icmp eq i32 %i.hw, 0
  br i1 %.not.16, label %.preheader.17, label %bb.x

.preheader.17:                                    ; preds = %.preheader.16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !4
  %i.hz = and i32 %i.hy, 131072
  %.not.17 = icmp eq i32 %i.hz, 0
  br i1 %.not.17, label %.preheader.18, label %bb.x

.preheader.18:                                    ; preds = %.preheader.17
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !4
  %i.ic = and i32 %i.ib, 262144
  %.not.18 = icmp eq i32 %i.ic, 0
  br i1 %.not.18, label %.preheader.19, label %bb.x

.preheader.19:                                    ; preds = %.preheader.18
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !4
  %i.if = and i32 %i.ie, 524288
  %.not.19 = icmp eq i32 %i.if, 0
  br i1 %.not.19, label %.preheader.20, label %bb.x

.preheader.20:                                    ; preds = %.preheader.19
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ih = load i32, ptr %i.ig, align 16, !tbaa !4
  %i.ii = and i32 %i.ih, 1048576
  %.not.20 = icmp eq i32 %i.ii, 0
  br i1 %.not.20, label %.preheader.21, label %bb.x

.preheader.21:                                    ; preds = %.preheader.20
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !4
  %i.il = and i32 %i.ik, 2097152
  %.not.21 = icmp eq i32 %i.il, 0
  br i1 %.not.21, label %.preheader.22, label %bb.x

.preheader.22:                                    ; preds = %.preheader.21
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.in = load i32, ptr %i.im, align 8, !tbaa !4
  %i.io = and i32 %i.in, 4194304
  %.not.22 = icmp eq i32 %i.io, 0
  br i1 %.not.22, label %.preheader.23, label %bb.x

.preheader.23:                                    ; preds = %.preheader.22
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !4
  %i.ir = and i32 %i.iq, 8388608
  %.not.23 = icmp eq i32 %i.ir, 0
  br i1 %.not.23, label %.preheader.24, label %bb.x

.preheader.24:                                    ; preds = %.preheader.23
  %i.is = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.it = load i32, ptr %i.is, align 16, !tbaa !4
  %i.iu = and i32 %i.it, 16777216
  %.not.24 = icmp eq i32 %i.iu, 0
  br i1 %.not.24, label %.preheader.25, label %bb.x

.preheader.25:                                    ; preds = %.preheader.24
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !4
  %i.ix = and i32 %i.iw, 33554432
  %.not.25 = icmp eq i32 %i.ix, 0
  br i1 %.not.25, label %.preheader.26, label %bb.x

.preheader.26:                                    ; preds = %.preheader.25
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !4
  %i.ja = and i32 %i.iz, 67108864
  %.not.26 = icmp eq i32 %i.ja, 0
  br i1 %.not.26, label %.preheader.27, label %bb.x

.preheader.27:                                    ; preds = %.preheader.26
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !4
  %i.jd = and i32 %i.jc, 134217728
  %.not.27 = icmp eq i32 %i.jd, 0
  br i1 %.not.27, label %.preheader.28, label %bb.x

.preheader.28:                                    ; preds = %.preheader.27
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.jf = load i32, ptr %i.je, align 16, !tbaa !4
  %i.jg = and i32 %i.jf, 268435456
  %.not.28 = icmp eq i32 %i.jg, 0
  br i1 %.not.28, label %.preheader.29, label %bb.x

.preheader.29:                                    ; preds = %.preheader.28
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !4
  %i.jj = and i32 %i.ji, 536870912
  %.not.29 = icmp eq i32 %i.jj, 0
  br i1 %.not.29, label %.preheader.30, label %bb.x

.preheader.30:                                    ; preds = %.preheader.29
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !4
  %i.jm = and i32 %i.jl, 1073741824
  %.not.30 = icmp eq i32 %i.jm, 0
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.jo = load i32, ptr %i.jn, align 4
  %.not.31 = icmp sgt i32 %i.jo, -1
  %or.cond = select i1 %.not.30, i1 %.not.31, i1 false
  br label %bb.x

bb.x:                                             ; preds = %.preheader.30, %.preheader.29, %.preheader.28, %.preheader.27, %.preheader.26, %.preheader.25, %.preheader.24, %.preheader.23, %.preheader.22, %.preheader.21, %.preheader.20, %.preheader.19, %.preheader.18, %.preheader.17, %.preheader.16, %.preheader.15, %.preheader.14, %.preheader.13, %.preheader.12, %.preheader.11, %.preheader.10, %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.not.lcssa = phi i1 [ false, %.preheader.24 ], [ false, %.preheader.preheader ], [ false, %.preheader.1 ], [ false, %.preheader.16 ], [ false, %.preheader.2 ], [ false, %.preheader.20 ], [ false, %.preheader.3 ], [ %or.cond, %.preheader.30 ], [ false, %.preheader.4 ], [ false, %.preheader.17 ], [ false, %.preheader.5 ], [ false, %.preheader.29 ], [ false, %.preheader.6 ], [ false, %.preheader.23 ], [ false, %.preheader.7 ], [ false, %.preheader.28 ], [ false, %.preheader.8 ], [ false, %.preheader.18 ], [ false, %.preheader.9 ], [ false, %.preheader.27 ], [ false, %.preheader.10 ], [ false, %.preheader.21 ], [ false, %.preheader.11 ], [ false, %.preheader.26 ], [ false, %.preheader.12 ], [ false, %.preheader.19 ], [ false, %.preheader.13 ], [ false, %.preheader.25 ], [ false, %.preheader.14 ], [ false, %.preheader.22 ], [ false, %.preheader.15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.y

.critedge:                                        ; preds = %bb.f, %_ZN8NArchive3N7zL20BoolVector_GetAndSetER13CRecordVectorIbEj.exit, %bb.h, %_ZN8NArchive3N7zL20BoolVector_GetAndSetER13CRecordVectorIbEj.exit71, %bb.k, %_ZN8NArchive3N7zL20BoolVector_GetAndSetER13CRecordVectorIbEj.exit81
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.y

bb.y:                                             ; preds = %.critedge, %bb.a, %bb.b, %bb.x
  %.2 = phi i1 [ false, %.critedge ], [ %.not.lcssa, %bb.x ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.2

bb.z:                                             ; preds = %bb.o, %bb.l
  %.pn60 = phi { ptr, i32 } [ %lpad.phi, %bb.o ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn60
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z13CStreamSwitch6RemoveEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !41, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !44     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8    ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.n, ptr %i.o, align 8, !tbaa !45
  br label %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit

_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit: ; preds = %bb.b, %bb.c
  store i8 0, ptr %i.a, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !41, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !44     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8    ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.n, ptr %i.o, align 8, !tbaa !45
  br label %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit.i

_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit.i: ; preds = %bb.c, %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !41
  br label %_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit

_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit:    ; preds = %bb.a, %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit.i
  store ptr %1, ptr %0, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8    ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v
  store ptr %i.q, ptr %i.w, align 8, !tbaa !28
  %i.x = add nsw i32 %i.u, 1                      ; 2 uses
  store i32 %i.x, ptr %i.t, align 4, !tbaa !8
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !45
  store ptr %2, ptr %i.ac, align 8, !tbaa !52
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %3, ptr %i.ae, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %i.af, align 8, !tbaa !55
  store i8 1, ptr %i.a, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveERK7CBufferIhE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !41, !range !23, !noundef !24
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !44     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8    ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr [8 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.r, ptr %i.s, align 8, !tbaa !45
  br label %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit.i.i

_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit.i.i: ; preds = %bb.c, %bb.b
  store i8 0, ptr %i.e, align 8, !tbaa !41
  br label %_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm.exit

_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm.exit: ; preds = %bb.a, %_ZN8NArchive3N7z10CInArchive16DeleteByteStreamEv.exit.i.i
  store ptr %1, ptr %0, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8    ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.z
  store ptr %i.u, ptr %i.aa, align 8, !tbaa !28
  %i.ab = add nsw i32 %i.y, 1                     ; 2 uses
  store i32 %i.ab, ptr %i.x, align 4, !tbaa !8
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !45
  store ptr %i.b, ptr %i.ag, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.d, ptr %i.ai, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %i.aj, align 8, !tbaa !55
  store i8 1, ptr %i.e, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPK13CObjectVectorI7CBufferIhEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(9) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !41, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit

bb.b:                                             ; preds = %bb.a
end_hunk_0
