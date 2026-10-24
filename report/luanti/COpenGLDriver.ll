Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/COpenGLDriver?download=true
inline.NumInlined: 2450
inline.NumDeleted: 748
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2io10SNamedPathC2ERKN4core6stringIcEE:bb.a
  %i.cb = extractelement <16 x i1> %i.bc, i64 8
  br i1 %i.cb, label %pred.store.if95, label %pred.store.continue96

pred.store.if95:                                  ; preds = %pred.store.continue94
  store i8 47, ptr %next.gep40, align 1, !tbaa !137
  br label %pred.store.continue96

pred.store.continue96:                            ; preds = %pred.store.if95, %pred.store.continue94
  %i.cc = extractelement <16 x i1> %i.bc, i64 9
  br i1 %i.cc, label %pred.store.if97, label %pred.store.continue98

pred.store.if97:                                  ; preds = %pred.store.continue96
  store i8 47, ptr %next.gep41, align 1, !tbaa !137
  br label %pred.store.continue98

pred.store.continue98:                            ; preds = %pred.store.if97, %pred.store.continue96
  %i.cd = extractelement <16 x i1> %i.bc, i64 10
  br i1 %i.cd, label %pred.store.if99, label %pred.store.continue100

pred.store.if99:                                  ; preds = %pred.store.continue98
  store i8 47, ptr %next.gep42, align 1, !tbaa !137
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.if99, %pred.store.continue98
  %i.ce = extractelement <16 x i1> %i.bc, i64 11
  br i1 %i.ce, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue100
  store i8 47, ptr %next.gep43, align 1, !tbaa !137
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue100
  %i.cf = extractelement <16 x i1> %i.bc, i64 12
  br i1 %i.cf, label %pred.store.if103, label %pred.store.continue104

pred.store.if103:                                 ; preds = %pred.store.continue102
  store i8 47, ptr %next.gep44, align 1, !tbaa !137
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue102
  %i.cg = extractelement <16 x i1> %i.bc, i64 13
  br i1 %i.cg, label %pred.store.if105, label %pred.store.continue106

pred.store.if105:                                 ; preds = %pred.store.continue104
  store i8 47, ptr %next.gep45, align 1, !tbaa !137
  br label %pred.store.continue106

pred.store.continue106:                           ; preds = %pred.store.if105, %pred.store.continue104
  %i.ch = extractelement <16 x i1> %i.bc, i64 14
  br i1 %i.ch, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue106
  store i8 47, ptr %next.gep46, align 1, !tbaa !137
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue106
  %i.ci = extractelement <16 x i1> %i.bc, i64 15
  br i1 %i.ci, label %pred.store.if109, label %pred.store.continue110

pred.store.if109:                                 ; preds = %pred.store.continue108
  store i8 47, ptr %next.gep47, align 1, !tbaa !137
  br label %pred.store.continue110

pred.store.continue110:                           ; preds = %pred.store.if109, %pred.store.continue108
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !600

middle.block:                                     ; preds = %pred.store.continue110
  %cmp.n = icmp eq i64 %.pr.i, %n.vec
  br i1 %cmp.n, label %_ZN4core6stringIcE7replaceEcc.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !607

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %.pr.i, -8                  ; 3 uses
  %i.ck = getelementptr i8, ptr %i.r, i64 %n.vec111
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue137, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %pred.store.continue137 ] ; 9 uses
  %next.gep113 = getelementptr i8, ptr %i.r, i64 %index112 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.r, i64 %index112
  %next.gep114 = getelementptr i8, ptr %i.cl, i64 1
  %i.cm = getelementptr i8, ptr %i.r, i64 %index112
  %next.gep115 = getelementptr i8, ptr %i.cm, i64 2
  %i.cn = getelementptr i8, ptr %i.r, i64 %index112
  %next.gep116 = getelementptr i8, ptr %i.cn, i64 3
  %i.co = getelementptr i8, ptr %i.r, i64 %index112
  %next.gep117 = getelementptr i8, ptr %i.co, i64 4
  %i.cp = getelementptr i8, ptr %i.r, i64 %index112
  %next.gep118 = getelementptr i8, ptr %i.cp, i64 5
  %i.cq = getelementptr i8, ptr %i.r, i64 %index112
  %next.gep119 = getelementptr i8, ptr %i.cq, i64 6
  %i.cr = getelementptr i8, ptr %i.r, i64 %index112
  %next.gep120 = getelementptr i8, ptr %i.cr, i64 7
  %wide.load121 = load <8 x i8>, ptr %next.gep113, align 1, !tbaa !137
  %i.cs = icmp eq <8 x i8> %wide.load121, splat (i8 92) ; 8 uses
  %i.ct = extractelement <8 x i1> %i.cs, i64 0
  br i1 %i.ct, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %vec.epilog.vector.body
  store i8 47, ptr %next.gep113, align 1, !tbaa !137
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %vec.epilog.vector.body
  %i.cu = extractelement <8 x i1> %i.cs, i64 1
  br i1 %i.cu, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  store i8 47, ptr %next.gep114, align 1, !tbaa !137
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.cv = extractelement <8 x i1> %i.cs, i64 2
  br i1 %i.cv, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  store i8 47, ptr %next.gep115, align 1, !tbaa !137
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.cw = extractelement <8 x i1> %i.cs, i64 3
  br i1 %i.cw, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  store i8 47, ptr %next.gep116, align 1, !tbaa !137
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.cx = extractelement <8 x i1> %i.cs, i64 4
  br i1 %i.cx, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  store i8 47, ptr %next.gep117, align 1, !tbaa !137
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.if130, %pred.store.continue129
  %i.cy = extractelement <8 x i1> %i.cs, i64 5
  br i1 %i.cy, label %pred.store.if132, label %pred.store.continue133

pred.store.if132:                                 ; preds = %pred.store.continue131
  store i8 47, ptr %next.gep118, align 1, !tbaa !137
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.if132, %pred.store.continue131
  %i.cz = extractelement <8 x i1> %i.cs, i64 6
  br i1 %i.cz, label %pred.store.if134, label %pred.store.continue135

pred.store.if134:                                 ; preds = %pred.store.continue133
  store i8 47, ptr %next.gep119, align 1, !tbaa !137
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.if134, %pred.store.continue133
  %i.da = extractelement <8 x i1> %i.cs, i64 7
  br i1 %i.da, label %pred.store.if136, label %pred.store.continue137

pred.store.if136:                                 ; preds = %pred.store.continue135
  store i8 47, ptr %next.gep120, align 1, !tbaa !137
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.if136, %pred.store.continue135
  %index.next138 = add nuw i64 %index112, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next138, %n.vec111
  br i1 %i.db, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !601

vec.epilog.middle.block:                          ; preds = %pred.store.continue137
  %cmp.n139 = icmp eq i64 %.pr.i, %n.vec111
  br i1 %cmp.n139, label %_ZN4core6stringIcE7replaceEcc.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.07.i.i.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.g
  %.sroa.02.07.i.i.i = phi ptr [ %i.de, %bb.g ], [ %.sroa.02.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.dc = load i8, ptr %.sroa.02.07.i.i.i, align 1, !tbaa !137
  %i.dd = icmp eq i8 %i.dc, 92
  br i1 %i.dd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store i8 47, ptr %.sroa.02.07.i.i.i, align 1, !tbaa !137
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.de, %i.s
  br i1 %.not.i.i.i, label %_ZN4core6stringIcE7replaceEcc.exit.i, label %.lr.ph.i.i.i, !llvm.loop !602

_ZN4core6stringIcE7replaceEcc.exit.i:             ; preds = %bb.g, %vec.epilog.middle.block, %middle.block
  %.pr10.i = load i64, ptr %i.k, align 8, !tbaa !136, !alias.scope !606 ; 9 uses
  %i.df = load ptr, ptr %i.i, align 8, !tbaa !152, !alias.scope !606 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.pr10.i
  %.not6.i.i3.i = icmp samesign eq i64 %.pr10.i, 0
  br i1 %.not6.i.i3.i, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %iter.check152

iter.check152:                                    ; preds = %_ZN4core6stringIcE7replaceEcc.exit.i
  %min.iters.check140 = icmp ult i64 %.pr10.i, 4
  br i1 %min.iters.check140, label %.lr.ph.i.i4.i.preheader, label %vector.main.loop.iter.check141

vector.main.loop.iter.check141:                   ; preds = %iter.check152
  %min.iters.check142 = icmp ult i64 %.pr10.i, 16
  br i1 %min.iters.check142, label %vec.epilog.ph156, label %vector.ph143

vector.ph143:                                     ; preds = %vector.main.loop.iter.check141
  %i.dh = and i64 %.pr10.i, 12
  %n.vec144 = and i64 %.pr10.i, -16               ; 4 uses
  %i.di = getelementptr i8, ptr %i.df, i64 %n.vec144
  br label %vector.body145

vector.body145:                                   ; preds = %vector.ph143, %vector.body145
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next149, %vector.body145 ] ; 2 uses
  %next.gep147.a = getelementptr i8, ptr %i.df, i64 %index146 ; 2 uses
  %wide.load148.a = load <16 x i8>, ptr %next.gep147.a, align 1, !tbaa !137 ; 3 uses
  %2 = sext <16 x i8> %wide.load148.a to <16 x i32>
  %3 = add nsw <16 x i32> %2, splat (i32 -65)
  %i.dj = icmp ult <16 x i32> %3, splat (i32 26)
  %i.dk = add <16 x i8> %wide.load148.a, splat (i8 32)
  %i.dl = select <16 x i1> %i.dj, <16 x i8> %i.dk, <16 x i8> %wide.load148.a
  store <16 x i8> %i.dl, ptr %next.gep147.a, align 1, !tbaa !137
  %index.next149 = add nuw i64 %index146, 16      ; 2 uses
  %i.dm = icmp eq i64 %index.next149, %n.vec144
  br i1 %i.dm, label %middle.block150, label %vector.body145, !llvm.loop !603

middle.block150:                                  ; preds = %vector.body145
  %cmp.n151 = icmp eq i64 %.pr10.i, %n.vec144
  br i1 %cmp.n151, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block150
  %min.epilog.iters.check155 = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check155, label %.lr.ph.i.i4.i.preheader, label %vec.epilog.ph156, !prof !608

vec.epilog.ph156:                                 ; preds = %vector.main.loop.iter.check141, %vec.epilog.iter.check153
  %vec.epilog.resume.val157 = phi i64 [ %n.vec144, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check141 ]
  %n.vec158 = and i64 %.pr10.i, -4                ; 3 uses
  %i.dn = getelementptr i8, ptr %i.df, i64 %n.vec158
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph156
  %index160 = phi i64 [ %vec.epilog.resume.val157, %vec.epilog.ph156 ], [ %index.next163, %vec.epilog.vector.body159 ] ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.df, i64 %index160 ; 2 uses
  %wide.load162 = load <4 x i8>, ptr %next.gep161, align 1, !tbaa !137 ; 3 uses
  %4 = sext <4 x i8> %wide.load162 to <4 x i32>
  %5 = add nsw <4 x i32> %4, splat (i32 -65)
  %6 = icmp ult <4 x i32> %5, splat (i32 26)
  %7 = add <4 x i8> %wide.load162, splat (i8 32)
  %8 = select <4 x i1> %6, <4 x i8> %7, <4 x i8> %wide.load162
  store <4 x i8> %8, ptr %next.gep161, align 1, !tbaa !137
  %index.next163 = add nuw i64 %index160, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.do, label %vec.epilog.middle.block164, label %vec.epilog.vector.body159, !llvm.loop !604

vec.epilog.middle.block164:                       ; preds = %vec.epilog.vector.body159
  %cmp.n165 = icmp eq i64 %.pr10.i, %n.vec158
  br i1 %cmp.n165, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %.lr.ph.i.i4.i.preheader

.lr.ph.i.i4.i.preheader:                          ; preds = %iter.check152, %vec.epilog.iter.check153, %vec.epilog.middle.block164
  %.sroa.0.08.i.i.i.ph = phi ptr [ %i.df, %iter.check152 ], [ %i.di, %vec.epilog.iter.check153 ], [ %i.dn, %vec.epilog.middle.block164 ]
  br label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %.lr.ph.i.i4.i.preheader, %.lr.ph.i.i4.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i4.i ], [ %.sroa.0.08.i.i.i.ph, %.lr.ph.i.i4.i.preheader ] ; 3 uses
  %i.dp = load i8, ptr %.sroa.0.08.i.i.i, align 1, !tbaa !137 ; 3 uses
  %9 = sext i8 %i.dp to i32
  %10 = add nsw i32 %9, -65
  %or.cond.i.i.i.i.i = icmp ult i32 %10, 26
  %i.dq = add i8 %i.dp, 32
  %i.dr = select i1 %or.cond.i.i.i.i.i, i8 %i.dq, i8 %i.dp
  store i8 %i.dr, ptr %.sroa.0.08.i.i.i, align 1, !tbaa !137
  %i.ds = getelementptr i8, ptr %.sroa.0.08.i.i.i, i64 1 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.ds, %i.dg
  br i1 %.not.i.i5.i, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %.lr.ph.i.i4.i, !llvm.loop !605

_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit: ; preds = %.lr.ph.i.i4.i, %middle.block150, %vec.epilog.middle.block164, %_ZN4core6stringIcE7replaceEcc.exit.i, %_ZN4core6stringIcEC2ERKS1_.exit.i, %_ZN4core6stringIcEC2ERKS1_.exit
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dt = load ptr, ptr %0, align 8, !tbaa !152   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.a
  br i1 %i.du, label %common.resume, label %common.resume.sink.split
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5video18COpenGLCoreTextureINS_13COpenGLDriverEE18getBestColorFormatENS_13ECOLOR_FORMATE(ptr noundef nonnull align 8 dereferenceable(210) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 3) ; 5 uses
  switch i32 %1, label %bb.i [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !306  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 552
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(933) %i.c, i32 noundef 2)
  %spec.select = select i1 %i.g, i32 %i.a, i32 0
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !306  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 552
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(933) %i.i, i32 noundef 2)
  %spec.select5 = select i1 %i.m, i32 %i.a, i32 1
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !306  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 552
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(933) %i.o, i32 noundef 1)
  br i1 %i.s, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !306  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 552
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(933) %i.t, i32 noundef 8)
  br i1 %i.x, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !306  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 552
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(933) %i.z, i32 noundef 1)
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !306 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 552
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(933) %i.ae, i32 noundef 8)
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.h, %bb.g, %bb.e
  %.0 = phi i32 [ %i.a, %bb.a ], [ 0, %bb.h ], [ %i.a, %bb.g ], [ %spec.select5, %bb.c ], [ %spec.select, %bb.b ], [ %i.a, %bb.e ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !306 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 552
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(933) %i.ak, i32 noundef 32)
  br i1 %i.ao, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  switch i32 %.0, label %bb.m [
    i32 0, label %bb.k
    i32 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j, %bb.i
  %.1 = phi i32 [ %.0, %bb.j ], [ 1, %bb.k ], [ 2, %bb.l ], [ %.0, %bb.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPN5video6IImageESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !321  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !315    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !316
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN5video6IImageEmS2_ET_S4_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN5video6IImageEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN5video6IImageEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !316
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN5video6IImageEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN5video6IImageEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN5video6IImageEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN5video6IImageEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !321
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPN5video6IImageESaIS2_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #33
  unreachable

_ZNKSt6vectorIPN5video6IImageESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !316
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN5video6IImageEmS2_ET_S4_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPN5video6IImageEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPN5video6IImageEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPN5video6IImageESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !316
  br label %_ZSt27__uninitialized_default_n_aIPPN5video6IImageEmS2_ET_S4_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPN5video6IImageEmS2_ET_S4_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPN5video6IImageEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPN5video6IImageESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPN5video6IImageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN5video6IImageEmS2_ET_S4_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN5video6IImageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIPN5video6IImageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPN5video6IImageEmS2_ET_S4_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPN5video6IImageESaIS2_EE13_M_deallocateEPS2_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN5video6IImageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #31
  br label %_ZNSt12_Vector_baseIPN5video6IImageESaIS2_EE13_M_deallocateEPS2_m.exit36
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag:bb.a
  %i.ap = load i8, ptr %1, align 1, !tbaa !137
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !137
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !276
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !276
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !354

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !137
  store i8 %i.au, ptr %1, align 1, !tbaa !137
  br label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !162   ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #33
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #35
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !354

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !137
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !137
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !354

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i8, ptr %2, align 1, !tbaa !137
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !137
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !354

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load i8, ptr %1, align 1, !tbaa !137
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !137
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i59 = icmp eq ptr %i.av, null
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !163
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bx) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !162
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !276
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.by, ptr %i.d, align 8, !tbaa !163
  br label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5video18COpenGLCoreTextureINS_13COpenGLDriverEE10flipImageYEPNS_6IImageE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !365  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !325  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !273  ; 2 uses
  %i.g = zext i32 %i.b to i64                     ; 8 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #35 ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 %i.g
  store i8 0, ptr %i.h, align 1, !tbaa !137
  %i.j = add nsw i64 %i.g, -1                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exitthread-pre-split, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exitthread-pre-split

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exitthread-pre-split: ; preds = %.noexc, %bb.b
  %.pr = load i32, ptr %i.e, align 8, !tbaa !273
  %i.m = ptrtoint ptr %i.i to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exitthread-pre-split, %bb.a
  %i.n = phi i32 [ %.pr, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exitthread-pre-split ], [ %i.f, %bb.a ]
  %.sroa.10.0 = phi i64 [ %i.m, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exitthread-pre-split ], [ 0, %bb.a ]
  %.sroa.023.0 = phi ptr [ %i.h, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exitthread-pre-split ], [ null, %bb.a ] ; 5 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.o = add i32 %i.f, -1
  %i.p = mul i32 %i.o, %i.b
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.q
  %i.s = sub nsw i64 0, %i.g
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.023.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.t = ptrtoint ptr %.sroa.023.0 to i64
  %i.u = sub i64 %.sroa.10.0, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.023.0, i64 noundef %i.u) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %._crit_edge, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.028 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.d ]
  %.02127 = phi ptr [ %i.d, %.lr.ph ], [ %i.v, %bb.d ] ; 3 uses
  %.02226 = phi ptr [ %i.r, %.lr.ph ], [ %i.w, %bb.d ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.023.0, ptr align 1 %.02127, i64 %i.g, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02127, ptr align 1 %.02226, i64 %i.g, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02226, ptr align 1 %.sroa.023.0, i64 %i.g, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.02127, i64 %i.g
  %i.w = getelementptr inbounds i8, ptr %.02226, i64 %i.s
  %i.x = add i32 %.028, 2                         ; 2 uses
  %i.y = load i32, ptr %i.e, align 8, !tbaa !273
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %._crit_edge, !llvm.loop !609
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video18COpenGLCoreTextureINS_13COpenGLDriverEED2Ev(ptr noundef nonnull align 8 dereferenceable(210) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !291
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 528), align 8, !tbaa !610
  invoke void %i.i(i32 noundef 1, ptr noundef nonnull %i.g)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !311  ; 3 uses
  %.not5 = icmp eq ptr %i.k, null
  br i1 %.not5, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !166  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.s, ptr %i.p, align 8, !tbaa !166
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.g, label %_ZNK17IReferenceCounted4dropEv.exit

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #32, !inline_history !171
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.g, %bb.f, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !314  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !314  ; 2 uses
  %.not1112 = icmp eq ptr %i.x, %i.z
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit7
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !315
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK17IReferenceCounted4dropEv.exit
  %i.aa = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.x, %_ZNK17IReferenceCounted4dropEv.exit ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !326
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #31
  br label %_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit:   ; preds = %._crit_edge, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.ah, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !152 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN4core6stringIcED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !137
  %i.at = add i64 %i.as, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZN4core6stringIcED2Ev.exit.i.i

_ZN4core6stringIcED2Ev.exit.i.i:                  ; preds = %_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !152 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN5video8ITextureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !137
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #31
  br label %_ZN5video8ITextureD2Ev.exit

_ZN5video8ITextureD2Ev.exit:                      ; preds = %_ZN4core6stringIcED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  ret void

.lr.ph:                                           ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %_ZNK17IReferenceCounted4dropEv.exit7
  %.sroa.08.013 = phi ptr [ %i.bl, %_ZNK17IReferenceCounted4dropEv.exit7 ], [ %i.x, %_ZNK17IReferenceCounted4dropEv.exit ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.08.013, align 8, !tbaa !316 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !166 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.j:                                             ; preds = %.lr.ph
  %i.bh = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !166
  %.not.i6 = icmp eq i32 %i.bh, 0
  br i1 %.not.i6, label %bb.k, label %_ZNK17IReferenceCounted4dropEv.exit7

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !31
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bd) #32, !inline_history !171
  br label %_ZNK17IReferenceCounted4dropEv.exit7

_ZNK17IReferenceCounted4dropEv.exit7:             ; preds = %bb.j, %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8 ; 2 uses
  %.not11 = icmp eq ptr %i.bl, %i.z
  br i1 %.not11, label %._crit_edge.loopexit, label %.lr.ph

bb.l:                                             ; preds = %bb.b
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #36
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #26

declare void @glDrawBuffer(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #23
end_hunk_1
begin_hunk_2_@llvm.fmuladd.v2f32
!408 = !{!114, !34, i64 1512}
!409 = distinct !{null}
!410 = !{!114, !34, i64 1456}
!411 = !{!114, !34, i64 1520}
!412 = distinct !{null}
!413 = distinct !{null}
!414 = !{!114, !34, i64 1472}
!415 = !{!114, !34, i64 1536}
!416 = !{!114, !34, i64 1480}
!417 = !{!114, !34, i64 1544}
!418 = distinct !{null}
!419 = !{!242, !27, i64 28}
!420 = !{!114, !34, i64 1496}
!421 = !{!114, !34, i64 1552}
!422 = !{!50, !49, i64 8}
!423 = !{!50, !49, i64 16}
!424 = !{!55, !55, i64 0}
!425 = !{!50, !49, i64 0}
!426 = !{!54, !40, i64 24}
!427 = distinct !{null}
!428 = distinct !{!428, !168, !268, !269}
!429 = distinct !{!429, !168, !269, !268}
!430 = !{!61, !40, i64 24}
!431 = !{!259, !40, i64 24}
!432 = !{!113, !26, i64 10}
!433 = !{!113, !26, i64 11}
!434 = !{!114, !34, i64 1144}
!435 = !{!114, !34, i64 1232}
!436 = !{!207, !34, i64 2176}
!437 = !{!207, !34, i64 2256}
!438 = distinct !{!438, !168}
!439 = distinct !{!439, !168}
!440 = distinct !{!440, !168}
!441 = distinct !{null}
!442 = distinct !{null}
!443 = !{!133, !92, i64 3460}
!444 = !{!114, !34, i64 1072}
!445 = !{!114, !34, i64 1064}
!446 = !{!133, !92, i64 3456}
!447 = !{!190, !128, i64 8}
!448 = !{!190, !189, i64 0}
!449 = !{i64 8}
!450 = !{!207, !34, i64 520}
!451 = !{!207, !34, i64 224}
!452 = !{!207, !34, i64 232}
!453 = distinct !{null}
!454 = !{!110, !40, i64 880}
!455 = !{i64 0, i64 48, !137}
!456 = !{i64 0, i64 4, !138, i64 4, i64 4, !138, i64 8, i64 4, !138}
!457 = !{!158, !92, i64 0}
!458 = !{!158, !92, i64 4}
!459 = distinct !{!459, !168}
!460 = !{!"p1 _ZTSN4core8vector2dIiEE", !34, i64 0}
!461 = !{!"_ZTSNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE17_Vector_impl_dataE", !460, i64 0, !460, i64 8, !460, i64 16}
!462 = !{!461, !460, i64 8}
!463 = !{!461, !460, i64 0}
!464 = !{!"p1 _ZTSN4core4rectIiEE", !34, i64 0}
!465 = !{!"_ZTSNSt12_Vector_baseIN4core4rectIiEESaIS2_EE17_Vector_impl_dataE", !464, i64 0, !464, i64 8, !464, i64 16}
!466 = !{!465, !464, i64 8}
!467 = !{!465, !464, i64 0}
!468 = distinct !{!468, !168}
!469 = distinct !{!469, !168}
!470 = distinct !{!470, !168}
!471 = !{!280, !27, i64 72}
!472 = !{!280, !27, i64 76}
!473 = !{!88, !27, i64 0}
!474 = !{!88, !27, i64 4}
!475 = distinct !{!475, !168, !476}
!476 = !{!"llvm.loop.peeled.count", i32 4}
!477 = distinct !{!477, !168}
!478 = !{!108, !40, i64 146}
!479 = !{!103, !103, i64 0}
!480 = !{!"_ZTSN5video17SOverrideMaterial24SMaterialTypeReplacementE", !27, i64 0, !27, i64 4}
!481 = !{!480, !27, i64 0}
!482 = !{!480, !27, i64 4}
!483 = !{!108, !27, i64 128}
!484 = !{!108, !92, i64 112}
!485 = distinct !{!485, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!486 = distinct !{!486, !485, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!487 = !{!486}
!488 = distinct !{null}
!489 = distinct !{null}
!490 = distinct !{null}
!491 = distinct !{null}
!492 = distinct !{null}
!493 = !{!193, !40, i64 161}
!494 = !{!193, !27, i64 156}
!495 = !{!207, !34, i64 288}
!496 = !{!193, !27, i64 148}
!497 = !{!207, !34, i64 56}
!498 = !{!193, !40, i64 152}
!499 = distinct !{null}
!500 = distinct !{null}
!501 = distinct !{!501, !168}
!502 = !{!114, !34, i64 1576}
!503 = !{!114, !34, i64 1568}
!504 = distinct !{!504, i1 true, !"_ZNK4core8CMatrix4IfEmlERKS1_"}
!505 = distinct !{!505, !504, !"_ZNK4core8CMatrix4IfEmlERKS1_: argument 0"}
!506 = distinct !{!506, !168}
!507 = !{!505}
!508 = !{!288, !40, i64 8}
!509 = !{!288, !26, i64 3}
!510 = !{!114, !92, i64 16}
!511 = !{!288, !147, i64 6}
!512 = !{!288, !146, i64 5}
!513 = !{!288, !40, i64 7}
!514 = !{!288, !26, i64 4}
!515 = !{!288, !26, i64 0}
!516 = !{!288, !26, i64 1}
!517 = !{!288, !26, i64 2}
!518 = !{!157, !92, i64 8}
!519 = !{ptr @_ZN5video13COpenGLDriver25getVertexShaderConstantIDEPKc}
!520 = !{ptr @_ZN5video13COpenGLDriver23setVertexShaderConstantEiPKfi}
!521 = !{ptr @_ZN5video13COpenGLDriver23setVertexShaderConstantEiPKii}
!522 = !{ptr @_ZN5video13COpenGLDriver23setVertexShaderConstantEiPKji}
!523 = !{ptr @_ZN5video13COpenGLDriver26addHighLevelShaderMaterialEPKcS2_S2_S2_N5scene16E_PRIMITIVE_TYPEES4_jPNS_26IShaderConstantSetCallBackENS_15E_MATERIAL_TYPEEi, ptr @_ZNK17IReferenceCounted4dropEv}
!524 = !{ptr @_ZN5video18COpenGLCoreTextureINS_13COpenGLDriverEE18getBestColorFormatENS_13ECOLOR_FORMATE}
!525 = !{!289, !26, i64 201}
!526 = !{!289, !26, i64 202}
!527 = !{!289, !26, i64 203}
!528 = !{!"_ZTSN5video13SDriverLimitsE", !88, i64 0, !27, i64 8, !27, i64 12, !27, i64 16}
!529 = !{!528, !27, i64 8}
!530 = !{!528, !27, i64 12}
!531 = distinct !{!531, !168}
!532 = distinct !{null, null}
!533 = !{!110, !55, i64 152}
!534 = !{!114, !34, i64 1128}
!535 = !{!114, !34, i64 1216}
!536 = distinct !{null}
!537 = distinct !{!537, !168}
!538 = distinct !{!538, !168}
!539 = distinct !{null}
!540 = !{!114, !34, i64 1160}
!541 = !{!114, !34, i64 1248}
!542 = !{!260, !40, i64 121}
!543 = !{!260, !40, i64 120}
!544 = !{!114, !34, i64 1312}
!545 = !{!114, !34, i64 1320}
!546 = distinct !{!546, !168}
!547 = !{!133, !40, i64 3745}
!548 = !{!133, !26, i64 3737}
!549 = !{ptr @_ZN5video13COpenGLDriver10initDriverEv}
!550 = !{!"_ZTSNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!551 = !{!550, !148, i64 8}
!552 = !{!550, !148, i64 0}
!553 = distinct !{null}
!554 = distinct !{null, null}
!555 = !{ptr @_ZN5video29COpenGLMaterialRenderer_SOLIDD0Ev}
!556 = !{ptr @_ZN5video49COpenGLMaterialRenderer_TRANSPARENT_ALPHA_CHANNELD0Ev}
!557 = !{ptr @_ZN5video53COpenGLMaterialRenderer_TRANSPARENT_ALPHA_CHANNEL_REFD0Ev}
!558 = !{ptr @_ZN5video48COpenGLMaterialRenderer_TRANSPARENT_VERTEX_ALPHAD0Ev}
!559 = !{ptr @_ZN5video40COpenGLMaterialRenderer_ONETEXTURE_BLENDD0Ev}
!560 = distinct !{!560, !167}
!561 = distinct !{!561, !168}
!562 = distinct !{!562, !168}
!563 = distinct !{!563, !168}
!564 = distinct !{!564, !168}
!565 = !{!34, !34, i64 0}
!566 = !{ptr @_ZN5video23COpenGLCoreRenderTargetINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEED0Ev, ptr @_ZN5video23COpenGLCoreRenderTargetINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEED1Ev}
!567 = !{ptr @_ZN5video23COpenGLCoreRenderTargetINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEED0Ev}
!568 = distinct !{!568, i1 true, !"_ZNSt7__cxx119to_stringEj"}
!569 = distinct !{!569, !568, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!570 = !{!569}
!571 = distinct !{null}
!572 = distinct !{!572, !168}
!573 = !{!114, !34, i64 1136}
!574 = !{!114, !34, i64 1224}
!575 = distinct !{!575, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!576 = distinct !{!576, !575, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!577 = !{!576}
!578 = !{!324, !278, i64 8}
!579 = distinct !{!579, !168}
!580 = !{!113, !40, i64 9}
!581 = !{!207, !34, i64 152}
!582 = !{!207, !34, i64 3912}
!583 = !{!207, !34, i64 360}
!584 = !{!207, !34, i64 2536}
!585 = !{!207, !34, i64 3920}
!586 = !{!207, !34, i64 560}
!587 = distinct !{null}
!588 = distinct !{!588, !168}
!589 = !{!207, !34, i64 512}
!590 = distinct !{!590, !168}
!591 = !{!207, !34, i64 376}
!592 = distinct !{null}
!593 = !{!207, !34, i64 72}
!594 = !{!114, !34, i64 1208}
!595 = !{!114, !34, i64 1296}
!596 = !{ptr @_ZN5video18COpenGLCoreTextureINS_13COpenGLDriverEED0Ev, ptr @_ZN5video18COpenGLCoreTextureINS_13COpenGLDriverEED1Ev}
!597 = !{ptr @_ZN5video18COpenGLCoreTextureINS_13COpenGLDriverEED0Ev}
!598 = distinct !{!598, i1 true, !"_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE"}
!599 = distinct !{!599, !598, !"_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE: argument 0"}
!600 = distinct !{!600, !168, !268, !269}
!601 = distinct !{!601, !168, !268, !269}
!602 = distinct !{!602, !168, !269, !268}
!603 = distinct !{!603, !168, !268, !269}
!604 = distinct !{!604, !168, !268, !269}
!605 = distinct !{!605, !168, !269, !268}
!606 = !{!599}
!607 = !{!"branch_weights", i32 8, i32 24}
!608 = !{!"branch_weights", i32 4, i32 12}
!609 = distinct !{!609, !168}
!610 = !{!207, !34, i64 528}
end_hunk_2
