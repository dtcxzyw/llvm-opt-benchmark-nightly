Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/Driver?download=true
inline.NumInlined: 2295
inline.NumDeleted: 773
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2io10SNamedPathC2ERKN4core6stringIcEE:bb.a
  %i.cb = extractelement <16 x i1> %i.bc, i64 8
  br i1 %i.cb, label %pred.store.if95, label %pred.store.continue96

pred.store.if95:                                  ; preds = %pred.store.continue94
  store i8 47, ptr %next.gep40, align 1, !tbaa !142
  br label %pred.store.continue96

pred.store.continue96:                            ; preds = %pred.store.if95, %pred.store.continue94
  %i.cc = extractelement <16 x i1> %i.bc, i64 9
  br i1 %i.cc, label %pred.store.if97, label %pred.store.continue98

pred.store.if97:                                  ; preds = %pred.store.continue96
  store i8 47, ptr %next.gep41, align 1, !tbaa !142
  br label %pred.store.continue98

pred.store.continue98:                            ; preds = %pred.store.if97, %pred.store.continue96
  %i.cd = extractelement <16 x i1> %i.bc, i64 10
  br i1 %i.cd, label %pred.store.if99, label %pred.store.continue100

pred.store.if99:                                  ; preds = %pred.store.continue98
  store i8 47, ptr %next.gep42, align 1, !tbaa !142
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.if99, %pred.store.continue98
  %i.ce = extractelement <16 x i1> %i.bc, i64 11
  br i1 %i.ce, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue100
  store i8 47, ptr %next.gep43, align 1, !tbaa !142
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue100
  %i.cf = extractelement <16 x i1> %i.bc, i64 12
  br i1 %i.cf, label %pred.store.if103, label %pred.store.continue104

pred.store.if103:                                 ; preds = %pred.store.continue102
  store i8 47, ptr %next.gep44, align 1, !tbaa !142
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue102
  %i.cg = extractelement <16 x i1> %i.bc, i64 13
  br i1 %i.cg, label %pred.store.if105, label %pred.store.continue106

pred.store.if105:                                 ; preds = %pred.store.continue104
  store i8 47, ptr %next.gep45, align 1, !tbaa !142
  br label %pred.store.continue106

pred.store.continue106:                           ; preds = %pred.store.if105, %pred.store.continue104
  %i.ch = extractelement <16 x i1> %i.bc, i64 14
  br i1 %i.ch, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue106
  store i8 47, ptr %next.gep46, align 1, !tbaa !142
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue106
  %i.ci = extractelement <16 x i1> %i.bc, i64 15
  br i1 %i.ci, label %pred.store.if109, label %pred.store.continue110

pred.store.if109:                                 ; preds = %pred.store.continue108
  store i8 47, ptr %next.gep47, align 1, !tbaa !142
  br label %pred.store.continue110

pred.store.continue110:                           ; preds = %pred.store.if109, %pred.store.continue108
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !636

middle.block:                                     ; preds = %pred.store.continue110
  %cmp.n = icmp eq i64 %.pr.i, %n.vec
  br i1 %cmp.n, label %_ZN4core6stringIcE7replaceEcc.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !643

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
  %wide.load121 = load <8 x i8>, ptr %next.gep113, align 1, !tbaa !142
  %i.cs = icmp eq <8 x i8> %wide.load121, splat (i8 92) ; 8 uses
  %i.ct = extractelement <8 x i1> %i.cs, i64 0
  br i1 %i.ct, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %vec.epilog.vector.body
  store i8 47, ptr %next.gep113, align 1, !tbaa !142
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %vec.epilog.vector.body
  %i.cu = extractelement <8 x i1> %i.cs, i64 1
  br i1 %i.cu, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  store i8 47, ptr %next.gep114, align 1, !tbaa !142
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.cv = extractelement <8 x i1> %i.cs, i64 2
  br i1 %i.cv, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  store i8 47, ptr %next.gep115, align 1, !tbaa !142
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.cw = extractelement <8 x i1> %i.cs, i64 3
  br i1 %i.cw, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  store i8 47, ptr %next.gep116, align 1, !tbaa !142
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.cx = extractelement <8 x i1> %i.cs, i64 4
  br i1 %i.cx, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  store i8 47, ptr %next.gep117, align 1, !tbaa !142
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.if130, %pred.store.continue129
  %i.cy = extractelement <8 x i1> %i.cs, i64 5
  br i1 %i.cy, label %pred.store.if132, label %pred.store.continue133

pred.store.if132:                                 ; preds = %pred.store.continue131
  store i8 47, ptr %next.gep118, align 1, !tbaa !142
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.if132, %pred.store.continue131
  %i.cz = extractelement <8 x i1> %i.cs, i64 6
  br i1 %i.cz, label %pred.store.if134, label %pred.store.continue135

pred.store.if134:                                 ; preds = %pred.store.continue133
  store i8 47, ptr %next.gep119, align 1, !tbaa !142
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.if134, %pred.store.continue133
  %i.da = extractelement <8 x i1> %i.cs, i64 7
  br i1 %i.da, label %pred.store.if136, label %pred.store.continue137

pred.store.if136:                                 ; preds = %pred.store.continue135
  store i8 47, ptr %next.gep120, align 1, !tbaa !142
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.if136, %pred.store.continue135
  %index.next138 = add nuw i64 %index112, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next138, %n.vec111
  br i1 %i.db, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !637

vec.epilog.middle.block:                          ; preds = %pred.store.continue137
  %cmp.n139 = icmp eq i64 %.pr.i, %n.vec111
  br i1 %cmp.n139, label %_ZN4core6stringIcE7replaceEcc.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.07.i.i.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.g
  %.sroa.02.07.i.i.i = phi ptr [ %i.de, %bb.g ], [ %.sroa.02.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.dc = load i8, ptr %.sroa.02.07.i.i.i, align 1, !tbaa !142
  %i.dd = icmp eq i8 %i.dc, 92
  br i1 %i.dd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store i8 47, ptr %.sroa.02.07.i.i.i, align 1, !tbaa !142
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.de, %i.s
  br i1 %.not.i.i.i, label %_ZN4core6stringIcE7replaceEcc.exit.i, label %.lr.ph.i.i.i, !llvm.loop !638

_ZN4core6stringIcE7replaceEcc.exit.i:             ; preds = %bb.g, %vec.epilog.middle.block, %middle.block
  %.pr10.i = load i64, ptr %i.k, align 8, !tbaa !141, !alias.scope !642 ; 9 uses
  %i.df = load ptr, ptr %i.i, align 8, !tbaa !143, !alias.scope !642 ; 6 uses
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
  %wide.load148.a = load <16 x i8>, ptr %next.gep147.a, align 1, !tbaa !142 ; 3 uses
  %2 = sext <16 x i8> %wide.load148.a to <16 x i32>
  %3 = add nsw <16 x i32> %2, splat (i32 -65)
  %i.dj = icmp ult <16 x i32> %3, splat (i32 26)
  %i.dk = add <16 x i8> %wide.load148.a, splat (i8 32)
  %i.dl = select <16 x i1> %i.dj, <16 x i8> %i.dk, <16 x i8> %wide.load148.a
  store <16 x i8> %i.dl, ptr %next.gep147.a, align 1, !tbaa !142
  %index.next149 = add nuw i64 %index146, 16      ; 2 uses
  %i.dm = icmp eq i64 %index.next149, %n.vec144
  br i1 %i.dm, label %middle.block150, label %vector.body145, !llvm.loop !639

middle.block150:                                  ; preds = %vector.body145
  %cmp.n151 = icmp eq i64 %.pr10.i, %n.vec144
  br i1 %cmp.n151, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block150
  %min.epilog.iters.check155 = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check155, label %.lr.ph.i.i4.i.preheader, label %vec.epilog.ph156, !prof !644

vec.epilog.ph156:                                 ; preds = %vector.main.loop.iter.check141, %vec.epilog.iter.check153
  %vec.epilog.resume.val157 = phi i64 [ %n.vec144, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check141 ]
  %n.vec158 = and i64 %.pr10.i, -4                ; 3 uses
  %i.dn = getelementptr i8, ptr %i.df, i64 %n.vec158
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph156
  %index160 = phi i64 [ %vec.epilog.resume.val157, %vec.epilog.ph156 ], [ %index.next163, %vec.epilog.vector.body159 ] ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.df, i64 %index160 ; 2 uses
  %wide.load162 = load <4 x i8>, ptr %next.gep161, align 1, !tbaa !142 ; 3 uses
  %4 = sext <4 x i8> %wide.load162 to <4 x i32>
  %5 = add nsw <4 x i32> %4, splat (i32 -65)
  %6 = icmp ult <4 x i32> %5, splat (i32 26)
  %7 = add <4 x i8> %wide.load162, splat (i8 32)
  %8 = select <4 x i1> %6, <4 x i8> %7, <4 x i8> %wide.load162
  store <4 x i8> %8, ptr %next.gep161, align 1, !tbaa !142
  %index.next163 = add nuw i64 %index160, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.do, label %vec.epilog.middle.block164, label %vec.epilog.vector.body159, !llvm.loop !640

vec.epilog.middle.block164:                       ; preds = %vec.epilog.vector.body159
  %cmp.n165 = icmp eq i64 %.pr10.i, %n.vec158
  br i1 %cmp.n165, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %.lr.ph.i.i4.i.preheader

.lr.ph.i.i4.i.preheader:                          ; preds = %iter.check152, %vec.epilog.iter.check153, %vec.epilog.middle.block164
  %.sroa.0.08.i.i.i.ph = phi ptr [ %i.df, %iter.check152 ], [ %i.di, %vec.epilog.iter.check153 ], [ %i.dn, %vec.epilog.middle.block164 ]
  br label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %.lr.ph.i.i4.i.preheader, %.lr.ph.i.i4.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i4.i ], [ %.sroa.0.08.i.i.i.ph, %.lr.ph.i.i4.i.preheader ] ; 3 uses
  %i.dp = load i8, ptr %.sroa.0.08.i.i.i, align 1, !tbaa !142 ; 3 uses
  %9 = sext i8 %i.dp to i32
  %10 = add nsw i32 %9, -65
  %or.cond.i.i.i.i.i = icmp ult i32 %10, 26
  %i.dq = add i8 %i.dp, 32
  %i.dr = select i1 %or.cond.i.i.i.i.i, i8 %i.dq, i8 %i.dp
  store i8 %i.dr, ptr %.sroa.0.08.i.i.i, align 1, !tbaa !142
  %i.ds = getelementptr i8, ptr %.sroa.0.08.i.i.i, i64 1 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.ds, %i.dg
  br i1 %.not.i.i5.i, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %.lr.ph.i.i4.i, !llvm.loop !641

_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit: ; preds = %.lr.ph.i.i4.i, %middle.block150, %vec.epilog.middle.block164, %_ZN4core6stringIcE7replaceEcc.exit.i, %_ZN4core6stringIcEC2ERKS1_.exit.i, %_ZN4core6stringIcEC2ERKS1_.exit
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dt = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.a
  br i1 %i.du, label %common.resume, label %common.resume.sink.split
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEE18getBestColorFormatENS_13ECOLOR_FORMATE(ptr noundef nonnull align 8 dereferenceable(210) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !344  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 552
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(933) %i.c, i32 noundef 2)
  %spec.select = select i1 %i.g, i32 %i.a, i32 0
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !344  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 552
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(933) %i.i, i32 noundef 2)
  %spec.select5 = select i1 %i.m, i32 %i.a, i32 1
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !344  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 552
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(933) %i.o, i32 noundef 1)
  br i1 %i.s, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !344  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 552
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(933) %i.t, i32 noundef 8)
  br i1 %i.x, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !344  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 552
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(933) %i.z, i32 noundef 1)
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !344 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 552
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(933) %i.ae, i32 noundef 8)
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.h, %bb.g, %bb.e
  %.0 = phi i32 [ %i.a, %bb.a ], [ 0, %bb.h ], [ %i.a, %bb.g ], [ %spec.select5, %bb.c ], [ %spec.select, %bb.b ], [ %i.a, %bb.e ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !344 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
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
define linkonce_odr void @_ZNSt6vectorIPN5video6IImageESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !353    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !365
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
  store ptr null, ptr %i.b, align 8, !tbaa !354
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN5video6IImageEmS2_ET_S4_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN5video6IImageEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN5video6IImageEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !354
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN5video6IImageEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN5video6IImageEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN5video6IImageEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN5video6IImageEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !359
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPN5video6IImageESaIS2_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #38
  unreachable

_ZNKSt6vectorIPN5video6IImageESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #37 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !354
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN5video6IImageEmS2_ET_S4_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPN5video6IImageEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPN5video6IImageEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPN5video6IImageESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !354
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
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !365
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #33
  br label %_ZNSt12_Vector_baseIPN5video6IImageESaIS2_EE13_M_deallocateEPS2_m.exit36
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE15_M_range_insertIPhEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag:bb.a
  %i.ap = load i8, ptr %1, align 1, !tbaa !142
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !142
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !404
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !404
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !382

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit55
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !142
  store i8 %i.au, ptr %1, align 1, !tbaa !142
  br label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !403   ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #38
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
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #37
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !382

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !142
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !142
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !382

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i8, ptr %2, align 1, !tbaa !142
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !142
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !382

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load i8, ptr %1, align 1, !tbaa !142
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !142
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i59 = icmp eq ptr %i.av, null
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !405
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bx) #33
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !403
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !404
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.by, ptr %i.d, align 8, !tbaa !405
  br label %_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit

_ZSt4copyIPhN9__gnu_cxx17__normal_iteratorIS0_St6vectorIhSaIhEEEEET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEE10flipImageYEPNS_6IImageE(ptr noundef %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !395  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !363  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !305  ; 2 uses
  %i.g = zext i32 %i.b to i64                     ; 8 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #37 ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 %i.g
  store i8 0, ptr %i.h, align 1, !tbaa !142
  %i.j = add nsw i64 %i.g, -1                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exitthread-pre-split, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exitthread-pre-split

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exitthread-pre-split: ; preds = %.noexc, %bb.b
  %.pr = load i32, ptr %i.e, align 8, !tbaa !305
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
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.023.0, i64 noundef %i.u) #33
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
  %i.y = load i32, ptr %i.e, align 8, !tbaa !305
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %._crit_edge, !llvm.loop !645
}

declare void @_ZN5video15CColorConverter26convert_A8R8G8B8toA1B5G5R5EPKviPv(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN5video15CColorConverter24convert_A8R8G8B8toR5G6B5EPKviPv(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN5video15CColorConverter24convert_A8R8G8B8toB8G8R8EPKviPv(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN5video15CColorConverter26convert_A8R8G8B8toA8B8G8R8EPKviPv(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEED2Ev(ptr noundef nonnull align 8 dereferenceable(210) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !257
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 528), align 8, !tbaa !646
  invoke void %i.i(i32 noundef 1, ptr noundef nonnull %i.g)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !349  ; 3 uses
  %.not5 = icmp eq ptr %i.k, null
  br i1 %.not5, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !167  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.s, ptr %i.p, align 8, !tbaa !167
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.g, label %_ZNK17IReferenceCounted4dropEv.exit

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #34, !inline_history !179
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.g, %bb.f, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !352  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !352  ; 2 uses
  %.not1112 = icmp eq ptr %i.x, %i.z
  br i1 %.not1112, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit7
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !353
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK17IReferenceCounted4dropEv.exit
  %i.aa = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.x, %_ZNK17IReferenceCounted4dropEv.exit ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !365
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #33
  br label %_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit:   ; preds = %._crit_edge, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.ah, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !143 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN4core6stringIcED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !142
  %i.at = add i64 %i.as, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #33
  br label %_ZN4core6stringIcED2Ev.exit.i.i

_ZN4core6stringIcED2Ev.exit.i.i:                  ; preds = %_ZNSt6vectorIPN5video6IImageESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !143 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN5video8ITextureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i.i
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !142
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #33
  br label %_ZN5video8ITextureD2Ev.exit

_ZN5video8ITextureD2Ev.exit:                      ; preds = %_ZN4core6stringIcED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  ret void

.lr.ph:                                           ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %_ZNK17IReferenceCounted4dropEv.exit7
  %.sroa.08.013 = phi ptr [ %i.bl, %_ZNK17IReferenceCounted4dropEv.exit7 ], [ %i.x, %_ZNK17IReferenceCounted4dropEv.exit ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.08.013, align 8, !tbaa !354 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !35
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !167 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.j:                                             ; preds = %.lr.ph
  %i.bh = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !167
  %.not.i6 = icmp eq i32 %i.bh, 0
  br i1 %.not.i6, label %bb.k, label %_ZNK17IReferenceCounted4dropEv.exit7

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bd) #34, !inline_history !179
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

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #27

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_Driver.cpp() #22 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 40, ptr @_ZN5videoL10vtStandardE, align 8, !tbaa !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtStandardE, i64 8), i8 0, i64 24, i1 false)
  %i.a = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37
          to label %__cxx_global_var_init.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtStandardE, i64 8), align 8, !tbaa !32 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i4.i.i, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink17.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 24), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtTangentsE, i64 24), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vt2TCoordsE, i64 24), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtStandardE, i64 24), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 24), %bb.f ]
  %.sink16 = phi ptr [ %i.u, %bb.e ], [ %i.p, %bb.d ], [ %i.k, %bb.c ], [ %i.c, %bb.b ], [ %i.z, %bb.f ] ; 2 uses
  %common.resume.op.ph = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %i.b, %bb.b ], [ %i.y, %bb.f ]
  %.sink17 = load ptr, ptr %.sink17.in, align 8, !tbaa !33
  %i.d = ptrtoint ptr %.sink17 to i64
  %i.e = ptrtoint ptr %.sink16 to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink16, i64 noundef %i.f) #33
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.b, %bb.b ], [ %i.j, %bb.c ], [ %i.o, %bb.d ], [ %i.y, %bb.f ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

__cxx_global_var_init.exit:                       ; preds = %bb.a
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtStandardE, i64 8), align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtStandardE, i64 24), align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(80) @constinit, i64 80, i1 false)
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtStandardE, i64 16), align 8, !tbaa !647
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5video10VertexTypeD2Ev, ptr nonnull @_ZN5videoL10vtStandardE, ptr nonnull @__dso_handle) #34 ; 0 uses
  store i32 48, ptr @_ZN5videoL10vt2TCoordsE, align 8, !tbaa !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vt2TCoordsE, i64 8), i8 0, i64 24, i1 false)
  %i.i = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37
          to label %__cxx_global_var_init.1.exit unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %__cxx_global_var_init.exit
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vt2TCoordsE, i64 8), align 8, !tbaa !32 ; 2 uses
  %.not.i.i4.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i4.i.i1, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.1.exit:                     ; preds = %__cxx_global_var_init.exit
  store ptr %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vt2TCoordsE, i64 8), align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vt2TCoordsE, i64 24), align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %i.i, ptr noundef nonnull align 4 dereferenceable(80) @constinit.2, i64 80, i1 false)
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vt2TCoordsE, i64 16), align 8, !tbaa !647
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5video10VertexTypeD2Ev, ptr nonnull @_ZN5videoL10vt2TCoordsE, ptr nonnull @__dso_handle) #34 ; 0 uses
  store i32 64, ptr @_ZN5videoL10vtTangentsE, align 8, !tbaa !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtTangentsE, i64 8), i8 0, i64 24, i1 false)
  %i.n = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #37
          to label %__cxx_global_var_init.3.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %__cxx_global_var_init.1.exit
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtTangentsE, i64 8), align 8, !tbaa !32 ; 2 uses
  %.not.i.i4.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i4.i.i3, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.3.exit:                     ; preds = %__cxx_global_var_init.1.exit
  store ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtTangentsE, i64 8), align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 2 uses
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtTangentsE, i64 24), align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.n, ptr noundef nonnull align 4 dereferenceable(96) @constinit.4, i64 96, i1 false)
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL10vtTangentsE, i64 16), align 8, !tbaa !647
  %i.r = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5video10VertexTypeD2Ev, ptr nonnull @_ZN5videoL10vtTangentsE, ptr nonnull @__dso_handle) #34 ; 0 uses
  store i32 40, ptr @_ZN5videoL9vt2DImageE, align 8, !tbaa !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 8), i8 0, i64 24, i1 false)
  %i.s = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #37
          to label %__cxx_global_var_init.5.exit unwind label %bb.e ; 3 uses

bb.e:                                             ; preds = %__cxx_global_var_init.3.exit
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 8), align 8, !tbaa !32 ; 2 uses
  %.not.i.i4.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i4.i.i5, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.5.exit:                     ; preds = %__cxx_global_var_init.3.exit
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 8), align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 24), align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.s, ptr noundef nonnull align 4 dereferenceable(48) @constinit.6, i64 48, i1 false)
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 16), align 8, !tbaa !647
  %i.w = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5video10VertexTypeD2Ev, ptr nonnull @_ZN5videoL9vt2DImageE, ptr nonnull @__dso_handle) #34 ; 0 uses
  store i32 40, ptr @_ZN5videoL11vtPrimitiveE, align 8, !tbaa !338
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 8), i8 0, i64 24, i1 false)
  %i.x = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #37
          to label %__cxx_global_var_init.7.exit unwind label %bb.f ; 3 uses

bb.f:                                             ; preds = %__cxx_global_var_init.5.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 8), align 8, !tbaa !32 ; 2 uses
  %.not.i.i4.i.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i.i4.i.i7, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.7.exit:                     ; preds = %__cxx_global_var_init.5.exit
  store ptr %i.x, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 8), align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 24), align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.x, ptr noundef nonnull align 4 dereferenceable(32) @constinit.8, i64 32, i1 false)
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 16), align 8, !tbaa !647
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5video10VertexTypeD2Ev, ptr nonnull @_ZN5videoL11vtPrimitiveE, ptr nonnull @__dso_handle) #34 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #29

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind memory(none) }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #26 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold noreturn }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { builtin nounwind }
attributes #34 = { nounwind }
attributes #35 = { nounwind willreturn memory(read) }
attributes #36 = { noreturn nounwind }
attributes #37 = { builtin allocsize(0) }
attributes #38 = { noreturn }

!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}
!llvm.errno.tbaa = !{!28}

!0 = distinct !{!0, !175}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{!3, !175}
!4 = distinct !{null, null}
!5 = distinct !{null}
!6 = distinct !{null, null}
!7 = distinct !{!7, !175}
!8 = distinct !{ptr @_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE, null, null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{!12, !175}
!13 = distinct !{null}
!14 = distinct !{!14, !175}
!15 = distinct !{!15, !175}
!16 = distinct !{null, null}
!17 = distinct !{null}
!18 = distinct !{!18, !175}
!19 = distinct !{!19, !175}
!20 = distinct !{null}
!21 = !{i32 8, !"PIC Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!24 = !{!"Simple C++ TBAA"}
!25 = !{!"omnipotent char", !24, i64 0}
!26 = !{!"int", !25, i64 0}
!27 = !{!"__libc_errno", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!"any pointer", !25, i64 0}
!30 = !{!"p1 _ZTSN5video15VertexAttributeE", !29, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN5video15VertexAttributeESaIS1_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!31, !30, i64 0}
!33 = !{!31, !30, i64 16}
!34 = !{!"vtable pointer", !24, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"bool", !25, i64 0}
!37 = !{!"long", !25, i64 0}
!38 = !{!"_ZTSN5video18COpenGLCoreFeatureE", !36, i64 8, !36, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !37, i64 16}
!39 = !{!"float", !25, i64 0}
!40 = !{!"_ZTSN5video26COGLESCoreExtensionHandlerE", !38, i64 8, !25, i64 32, !26, i64 36, !26, i64 40, !26, i64 44, !39, i64 48, !25, i64 52, !25, i64 60, !36, i64 68, !25, i64 69}
!41 = !{!40, !26, i64 40}
!42 = !{!39, !39, i64 0}
!43 = !{!"_ZTSN5video24COpenGL3ExtensionHandlerE", !40, i64 0, !36, i64 78, !36, i64 79, !36, i64 80, !36, i64 81, !36, i64 82, !36, i64 83, !36, i64 84, !26, i64 88}
!44 = !{!"_ZTSN5video12IVideoDriverE"}
!45 = !{!"_ZTSN5video23IGPUProgrammingServicesE"}
!46 = !{!"p1 _ZTSN5video11CNullDriver8SSurfaceE", !29, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver8SSurfaceESaIS2_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver8SSurfaceESaIS2_EE12_Vector_implE", !47, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIN5video11CNullDriver8SSurfaceESaIS2_EE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIN5video11CNullDriver8SSurfaceESaIS2_EE", !49, i64 0}
!51 = !{!"_ZTSN4core5arrayIN5video11CNullDriver8SSurfaceEEE", !50, i64 0, !36, i64 24}
!52 = !{!"p1 _ZTSN5video11CNullDriver9SOccQueryE", !29, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE12_Vector_implE", !53, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorIN5video11CNullDriver9SOccQueryESaIS2_EE", !55, i64 0}
!57 = !{!"_ZTSN4core5arrayIN5video11CNullDriver9SOccQueryEEE", !56, i64 0, !36, i64 24}
!58 = !{!"any p2 pointer", !29, i64 0}
!59 = !{!"p2 _ZTSN5video13IRenderTargetE", !58, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIPN5video13IRenderTargetESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseIPN5video13IRenderTargetESaIS2_EE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIPN5video13IRenderTargetESaIS2_EE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIPN5video13IRenderTargetESaIS2_EE", !62, i64 0}
!64 = !{!"_ZTSN4core5arrayIPN5video13IRenderTargetEEE", !63, i64 0, !36, i64 24}
!65 = !{!"p1 _ZTSN5video13IRenderTargetE", !29, i64 0}
!66 = !{!"p2 _ZTSN5video8ITextureE", !58, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIPN5video8ITextureESaIS2_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!"_ZTSNSt12_Vector_baseIPN5video8ITextureESaIS2_EE12_Vector_implE", !67, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseIPN5video8ITextureESaIS2_EE", !68, i64 0}
!70 = !{!"_ZTSSt6vectorIPN5video8ITextureESaIS2_EE", !69, i64 0}
!71 = !{!"_ZTSN4core5arrayIPN5video8ITextureEEE", !70, i64 0, !36, i64 24}
!72 = !{!"_ZTSN4core11dimension2dIjEE", !26, i64 0, !26, i64 4}
!73 = !{!"p2 _ZTSN5video12IImageLoaderE", !58, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageLoaderESaIS2_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!75 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageLoaderESaIS2_EE12_Vector_implE", !74, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIPN5video12IImageLoaderESaIS2_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorIPN5video12IImageLoaderESaIS2_EE", !76, i64 0}
!78 = !{!"_ZTSN4core5arrayIPN5video12IImageLoaderEEE", !77, i64 0, !36, i64 24}
!79 = !{!"p2 _ZTSN5video12IImageWriterE", !58, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageWriterESaIS2_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageWriterESaIS2_EE12_Vector_implE", !80, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseIPN5video12IImageWriterESaIS2_EE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorIPN5video12IImageWriterESaIS2_EE", !82, i64 0}
!84 = !{!"_ZTSN4core5arrayIPN5video12IImageWriterEEE", !83, i64 0, !36, i64 24}
!85 = !{!"p1 _ZTSN5video11CNullDriver17SMaterialRendererE", !29, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE12_Vector_implE", !86, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE", !87, i64 0}
!89 = !{!"_ZTSSt6vectorIN5video11CNullDriver17SMaterialRendererESaIS2_EE", !88, i64 0}
!90 = !{!"_ZTSN4core5arrayIN5video11CNullDriver17SMaterialRendererEEE", !89, i64 0, !36, i64 24}
!91 = !{!"p2 _ZTSN5video11CNullDriver13SHWBufferLinkE", !58, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!"_ZTSNSt12_Vector_baseIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE12_Vector_implE", !92, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE", !94, i64 0}
!96 = !{!"p1 _ZTSN2io11IFileSystemE", !29, i64 0}
!97 = !{!"p1 _ZTSN5scene16IMeshManipulatorE", !29, i64 0}
!98 = !{!"_ZTSN4core8vector2dIiEE", !26, i64 0, !26, i64 4}
!99 = !{!"_ZTSN4core4rectIiEE", !98, i64 0, !98, i64 8}
!100 = !{!"_ZTSN4core8CMatrix4IfEE", !25, i64 0}
!101 = !{!"_ZTSN5video11SFrameStatsE", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20}
!102 = !{!"_ZTSN5video6SColorE", !26, i64 0}
!103 = !{!"_ZTSN5video17SExposedVideoDataE", !25, i64 0}
!104 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !25, i64 0}
!105 = !{!"_ZTSN5video17E_COMPARISON_FUNCE", !25, i64 0}
!106 = !{!"_ZTSN5video20E_ANTI_ALIASING_MODEE", !25, i64 0}
!107 = !{!"_ZTSN5video13E_COLOR_PLANEE", !25, i64 0}
!108 = !{!"_ZTSN5video17E_BLEND_OPERATIONE", !25, i64 0}
!109 = !{!"_ZTSN5video8E_ZWRITEE", !25, i64 0}
end_hunk_1
begin_hunk_2_@llvm.fmuladd.v4f32
!444 = distinct !{!444, !443, !"_ZNSt7__cxx119to_stringEl: argument 0"}
!445 = distinct !{!445, !175}
!446 = distinct !{!446, !175}
!447 = distinct !{!447, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!448 = distinct !{!448, !447, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!449 = distinct !{!449, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!450 = distinct !{!450, !449, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!451 = distinct !{!451, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!452 = distinct !{!452, !451, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!453 = distinct !{!453, i1 true, !"_ZNSt7__cxx119to_stringEl"}
!454 = distinct !{!454, !453, !"_ZNSt7__cxx119to_stringEl: argument 0"}
!455 = distinct !{!455, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!456 = distinct !{!456, !455, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!457 = distinct !{!457, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!458 = distinct !{!458, !457, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!459 = distinct !{!459, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!460 = distinct !{!460, !459, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!461 = !{!119, !96, i64 288}
!462 = !{!37, !37, i64 0}
!463 = !{!444}
!464 = !{!448}
!465 = !{!450}
!466 = !{!452}
!467 = !{!454}
!468 = !{!456}
!469 = !{!458}
!470 = !{!460}
!471 = !{!174, !29, i64 248}
!472 = !{!174, !29, i64 1728}
!473 = !{!267, !26, i64 24}
!474 = !{ptr @_ZN5video18COpenGL3DriverBase21_updateHardwareBufferEPNS0_20SHWBufferLink_openglE}
!475 = !{!264, !37, i64 16}
!476 = !{!174, !29, i64 1552}
!477 = !{!60, !59, i64 8}
!478 = !{!60, !59, i64 16}
!479 = !{!65, !65, i64 0}
!480 = !{!60, !59, i64 0}
!481 = !{!64, !36, i64 24}
!482 = distinct !{!482, !175, !299, !300}
!483 = distinct !{!483, !175, !300, !299}
!484 = !{!71, !36, i64 24}
!485 = !{!289, !36, i64 24}
!486 = !{!38, !25, i64 10}
!487 = !{!174, !29, i64 2256}
!488 = !{!174, !29, i64 448}
!489 = !{!133, !133, i64 0}
!490 = distinct !{!490, i1 true, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_"}
!491 = distinct !{!491, !490, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!492 = distinct !{!492, !490, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!493 = distinct !{!493, !175}
!494 = distinct !{!494, i1 true, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_"}
!495 = distinct !{!495, !494, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!496 = distinct !{!496, !494, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!497 = distinct !{!497, i1 true, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_"}
!498 = distinct !{!498, !497, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!499 = distinct !{!499, !497, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!500 = distinct !{!500, i1 true, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_"}
!501 = distinct !{!501, !500, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!502 = distinct !{!502, !500, !"_ZSt19__relocate_object_aIN5video9S3DVertexES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!503 = distinct !{!503, !175}
!504 = !{!"p1 _ZTSN4core8vector2dIiEE", !29, i64 0}
!505 = !{!"_ZTSNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE17_Vector_impl_dataE", !504, i64 0, !504, i64 8, !504, i64 16}
!506 = !{!505, !504, i64 8}
!507 = !{!505, !504, i64 0}
!508 = !{!"p1 _ZTSN4core4rectIiEE", !29, i64 0}
!509 = !{!"_ZTSNSt12_Vector_baseIN4core4rectIiEESaIS2_EE17_Vector_impl_dataE", !508, i64 0, !508, i64 8, !508, i64 16}
!510 = !{!509, !508, i64 8}
!511 = !{!509, !508, i64 0}
!512 = !{!323, !39, i64 0}
!513 = !{!323, !39, i64 4}
!514 = !{!324, !39, i64 0}
!515 = !{!324, !39, i64 4}
!516 = !{i64 0, i64 4, !42, i64 4, i64 4, !42, i64 8, i64 4, !42, i64 12, i64 4, !42, i64 16, i64 4, !42, i64 20, i64 4, !42, i64 24, i64 4, !193, i64 28, i64 4, !42, i64 32, i64 4, !42, i64 36, i64 2, !182}
!517 = !{!492, !491}
!518 = !{!496, !495}
!519 = !{!499, !498}
!520 = !{!502, !501}
!521 = !{ptr @_ZN5video18COpenGL3DriverBase12drawElementsEjRKNS_10VertexTypeEPKviPKti}
!522 = !{!309, !308, i64 8}
!523 = !{!309, !25, i64 1}
!524 = !{!309, !26, i64 4}
!525 = !{!309, !26, i64 12}
!526 = distinct !{!526, !175}
!527 = distinct !{!527, !175}
!528 = distinct !{!528, !175}
!529 = !{!245, !26, i64 72}
!530 = !{!245, !26, i64 76}
!531 = distinct !{!531, i1 true, !"_ZNK4core8CMatrix4IfEmlERKS1_"}
!532 = distinct !{!532, !531, !"_ZNK4core8CMatrix4IfEmlERKS1_: argument 0"}
!533 = distinct !{!533, !175}
!534 = !{!532}
!535 = distinct !{!535, !175}
!536 = !{!117, !36, i64 146}
!537 = !{!112, !112, i64 0}
!538 = !{!"_ZTSN5video17SOverrideMaterial24SMaterialTypeReplacementE", !26, i64 0, !26, i64 4}
!539 = !{!538, !26, i64 0}
!540 = !{!538, !26, i64 4}
!541 = !{!117, !26, i64 128}
!542 = !{!117, !39, i64 112}
!543 = !{!110, !39, i64 104}
!544 = distinct !{null}
!545 = distinct !{null}
!546 = distinct !{null}
!547 = distinct !{null}
!548 = distinct !{null}
!549 = !{!43, !36, i64 80}
!550 = !{!174, !29, i64 96}
!551 = !{!174, !29, i64 464}
!552 = !{!174, !29, i64 80}
!553 = distinct !{null}
!554 = distinct !{!554, !175}
!555 = !{!174, !29, i64 656}
!556 = distinct !{!556, !175}
!557 = !{!253, !36, i64 8}
!558 = !{!253, !156, i64 6}
!559 = !{!253, !155, i64 5}
!560 = !{!253, !36, i64 7}
!561 = !{!43, !36, i64 78}
!562 = !{!253, !25, i64 3}
!563 = !{!40, !39, i64 48}
!564 = !{!174, !29, i64 112}
!565 = !{!43, !36, i64 79}
!566 = !{!253, !25, i64 4}
!567 = !{!253, !25, i64 0}
!568 = !{!253, !25, i64 1}
!569 = !{!323, !39, i64 8}
!570 = !{ptr @_ZN5video18COpenGL3DriverBase25getVertexShaderConstantIDEPKc}
!571 = !{ptr @_ZN5video18COpenGL3DriverBase26addHighLevelShaderMaterialEPKcS2_S2_S2_N5scene16E_PRIMITIVE_TYPEES4_jPNS_26IShaderConstantSetCallBackENS_15E_MATERIAL_TYPEEi, ptr @_ZNK17IReferenceCounted4dropEv}
!572 = !{ptr @_ZN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEE18getBestColorFormatENS_13ECOLOR_FORMATE}
!573 = !{!254, !25, i64 201}
!574 = !{!254, !25, i64 202}
!575 = !{!254, !25, i64 203}
!576 = !{!40, !25, i64 18}
!577 = !{!"_ZTSN5video13SDriverLimitsE", !98, i64 0, !26, i64 8, !26, i64 12, !26, i64 16}
!578 = !{!577, !26, i64 8}
!579 = distinct !{!579, !175}
!580 = !{!119, !65, i64 152}
!581 = distinct !{!581, !175}
!582 = distinct !{!582, !175}
!583 = distinct !{null}
!584 = distinct !{null}
!585 = !{!290, !36, i64 121}
!586 = !{!290, !36, i64 120}
!587 = !{!174, !29, i64 888}
!588 = !{!174, !29, i64 176}
!589 = !{!174, !29, i64 184}
!590 = !{!174, !29, i64 168}
!591 = distinct !{!591, !175}
!592 = distinct !{!592, !175, !594}
!593 = distinct !{!593, !175}
!594 = !{!"llvm.loop.unswitch.partial.disable"}
!595 = distinct !{null}
!596 = distinct !{null, null}
!597 = !{!43, !36, i64 81}
!598 = !{!43, !36, i64 82}
!599 = !{!43, !36, i64 84}
!600 = distinct !{!600, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!601 = distinct !{!601, !600, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!602 = !{!601}
!603 = distinct !{!603, !175}
!604 = distinct !{!604, !175}
!605 = distinct !{!605, !175}
!606 = distinct !{!606, !175}
!607 = !{ptr @_ZN5video23COpenGLCoreRenderTargetINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEED0Ev, ptr @_ZN5video23COpenGLCoreRenderTargetINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEED1Ev}
!608 = !{ptr @_ZN5video23COpenGLCoreRenderTargetINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEED0Ev}
!609 = distinct !{!609, i1 true, !"_ZNSt7__cxx119to_stringEj"}
!610 = distinct !{!610, !609, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!611 = !{!610}
!612 = distinct !{!612, !175}
!613 = distinct !{!613, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!614 = distinct !{!614, !613, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!615 = !{!614}
!616 = !{!362, !243, i64 8}
!617 = distinct !{!617, !175}
!618 = !{!38, !36, i64 9}
!619 = !{!174, !29, i64 152}
!620 = !{!174, !29, i64 3912}
!621 = !{!174, !29, i64 360}
!622 = !{!174, !29, i64 3920}
!623 = !{!174, !29, i64 560}
!624 = distinct !{null}
!625 = distinct !{!625, !175}
!626 = !{!174, !29, i64 512}
!627 = distinct !{!627, !175}
!628 = !{!174, !29, i64 376}
!629 = distinct !{null}
!630 = !{!174, !29, i64 72}
!631 = !{!174, !29, i64 2248}
!632 = !{ptr @_ZN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEED0Ev, ptr @_ZN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEED1Ev}
!633 = !{ptr @_ZN5video18COpenGLCoreTextureINS_18COpenGL3DriverBaseEED0Ev}
!634 = distinct !{!634, i1 true, !"_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE"}
!635 = distinct !{!635, !634, !"_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE: argument 0"}
!636 = distinct !{!636, !175, !299, !300}
!637 = distinct !{!637, !175, !299, !300}
!638 = distinct !{!638, !175, !300, !299}
!639 = distinct !{!639, !175, !299, !300}
!640 = distinct !{!640, !175, !299, !300}
!641 = distinct !{!641, !175, !300, !299}
!642 = !{!635}
!643 = !{!"branch_weights", i32 8, i32 24}
!644 = !{!"branch_weights", i32 4, i32 12}
!645 = distinct !{!645, !175}
!646 = !{!174, !29, i64 528}
!647 = !{!31, !30, i64 8}
end_hunk_2
