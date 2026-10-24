Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CNullDriver?download=true
inline.NumInlined: 1983
inline.NumDeleted: 755
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2io10SNamedPathC2ERKN4core6stringIcEE:bb.a
  %i.cb = extractelement <16 x i1> %i.bc, i64 8
  br i1 %i.cb, label %pred.store.if95, label %pred.store.continue96

pred.store.if95:                                  ; preds = %pred.store.continue94
  store i8 47, ptr %next.gep40, align 1, !tbaa !119
  br label %pred.store.continue96

pred.store.continue96:                            ; preds = %pred.store.if95, %pred.store.continue94
  %i.cc = extractelement <16 x i1> %i.bc, i64 9
  br i1 %i.cc, label %pred.store.if97, label %pred.store.continue98

pred.store.if97:                                  ; preds = %pred.store.continue96
  store i8 47, ptr %next.gep41, align 1, !tbaa !119
  br label %pred.store.continue98

pred.store.continue98:                            ; preds = %pred.store.if97, %pred.store.continue96
  %i.cd = extractelement <16 x i1> %i.bc, i64 10
  br i1 %i.cd, label %pred.store.if99, label %pred.store.continue100

pred.store.if99:                                  ; preds = %pred.store.continue98
  store i8 47, ptr %next.gep42, align 1, !tbaa !119
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.if99, %pred.store.continue98
  %i.ce = extractelement <16 x i1> %i.bc, i64 11
  br i1 %i.ce, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue100
  store i8 47, ptr %next.gep43, align 1, !tbaa !119
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue100
  %i.cf = extractelement <16 x i1> %i.bc, i64 12
  br i1 %i.cf, label %pred.store.if103, label %pred.store.continue104

pred.store.if103:                                 ; preds = %pred.store.continue102
  store i8 47, ptr %next.gep44, align 1, !tbaa !119
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue102
  %i.cg = extractelement <16 x i1> %i.bc, i64 13
  br i1 %i.cg, label %pred.store.if105, label %pred.store.continue106

pred.store.if105:                                 ; preds = %pred.store.continue104
  store i8 47, ptr %next.gep45, align 1, !tbaa !119
  br label %pred.store.continue106

pred.store.continue106:                           ; preds = %pred.store.if105, %pred.store.continue104
  %i.ch = extractelement <16 x i1> %i.bc, i64 14
  br i1 %i.ch, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue106
  store i8 47, ptr %next.gep46, align 1, !tbaa !119
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue106
  %i.ci = extractelement <16 x i1> %i.bc, i64 15
  br i1 %i.ci, label %pred.store.if109, label %pred.store.continue110

pred.store.if109:                                 ; preds = %pred.store.continue108
  store i8 47, ptr %next.gep47, align 1, !tbaa !119
  br label %pred.store.continue110

pred.store.continue110:                           ; preds = %pred.store.if109, %pred.store.continue108
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !359

middle.block:                                     ; preds = %pred.store.continue110
  %cmp.n = icmp eq i64 %.pr.i, %n.vec
  br i1 %cmp.n, label %_ZN4core6stringIcE7replaceEcc.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !368

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
  %wide.load121 = load <8 x i8>, ptr %next.gep113, align 1, !tbaa !119
  %i.cs = icmp eq <8 x i8> %wide.load121, splat (i8 92) ; 8 uses
  %i.ct = extractelement <8 x i1> %i.cs, i64 0
  br i1 %i.ct, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %vec.epilog.vector.body
  store i8 47, ptr %next.gep113, align 1, !tbaa !119
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %vec.epilog.vector.body
  %i.cu = extractelement <8 x i1> %i.cs, i64 1
  br i1 %i.cu, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  store i8 47, ptr %next.gep114, align 1, !tbaa !119
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.cv = extractelement <8 x i1> %i.cs, i64 2
  br i1 %i.cv, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  store i8 47, ptr %next.gep115, align 1, !tbaa !119
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.cw = extractelement <8 x i1> %i.cs, i64 3
  br i1 %i.cw, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  store i8 47, ptr %next.gep116, align 1, !tbaa !119
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.cx = extractelement <8 x i1> %i.cs, i64 4
  br i1 %i.cx, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  store i8 47, ptr %next.gep117, align 1, !tbaa !119
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.if130, %pred.store.continue129
  %i.cy = extractelement <8 x i1> %i.cs, i64 5
  br i1 %i.cy, label %pred.store.if132, label %pred.store.continue133

pred.store.if132:                                 ; preds = %pred.store.continue131
  store i8 47, ptr %next.gep118, align 1, !tbaa !119
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.if132, %pred.store.continue131
  %i.cz = extractelement <8 x i1> %i.cs, i64 6
  br i1 %i.cz, label %pred.store.if134, label %pred.store.continue135

pred.store.if134:                                 ; preds = %pred.store.continue133
  store i8 47, ptr %next.gep119, align 1, !tbaa !119
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.if134, %pred.store.continue133
  %i.da = extractelement <8 x i1> %i.cs, i64 7
  br i1 %i.da, label %pred.store.if136, label %pred.store.continue137

pred.store.if136:                                 ; preds = %pred.store.continue135
  store i8 47, ptr %next.gep120, align 1, !tbaa !119
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.if136, %pred.store.continue135
  %index.next138 = add nuw i64 %index112, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next138, %n.vec111
  br i1 %i.db, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !360

vec.epilog.middle.block:                          ; preds = %pred.store.continue137
  %cmp.n139 = icmp eq i64 %.pr.i, %n.vec111
  br i1 %cmp.n139, label %_ZN4core6stringIcE7replaceEcc.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.07.i.i.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.g
  %.sroa.02.07.i.i.i = phi ptr [ %i.de, %bb.g ], [ %.sroa.02.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.dc = load i8, ptr %.sroa.02.07.i.i.i, align 1, !tbaa !119
  %i.dd = icmp eq i8 %i.dc, 92
  br i1 %i.dd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  store i8 47, ptr %.sroa.02.07.i.i.i, align 1, !tbaa !119
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.de, %i.s
  br i1 %.not.i.i.i, label %_ZN4core6stringIcE7replaceEcc.exit.i, label %.lr.ph.i.i.i, !llvm.loop !361

_ZN4core6stringIcE7replaceEcc.exit.i:             ; preds = %bb.g, %vec.epilog.middle.block, %middle.block
  %.pr10.i = load i64, ptr %i.k, align 8, !tbaa !188, !alias.scope !365 ; 9 uses
  %i.df = load ptr, ptr %i.i, align 8, !tbaa !158, !alias.scope !365 ; 6 uses
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
  %wide.load148.a = load <16 x i8>, ptr %next.gep147.a, align 1, !tbaa !119 ; 3 uses
  %2 = sext <16 x i8> %wide.load148.a to <16 x i32>
  %3 = add nsw <16 x i32> %2, splat (i32 -65)
  %i.dj = icmp ult <16 x i32> %3, splat (i32 26)
  %i.dk = add <16 x i8> %wide.load148.a, splat (i8 32)
  %i.dl = select <16 x i1> %i.dj, <16 x i8> %i.dk, <16 x i8> %wide.load148.a
  store <16 x i8> %i.dl, ptr %next.gep147.a, align 1, !tbaa !119
  %index.next149 = add nuw i64 %index146, 16      ; 2 uses
  %i.dm = icmp eq i64 %index.next149, %n.vec144
  br i1 %i.dm, label %middle.block150, label %vector.body145, !llvm.loop !362

middle.block150:                                  ; preds = %vector.body145
  %cmp.n151 = icmp eq i64 %.pr10.i, %n.vec144
  br i1 %cmp.n151, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block150
  %min.epilog.iters.check155 = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check155, label %.lr.ph.i.i4.i.preheader, label %vec.epilog.ph156, !prof !369

vec.epilog.ph156:                                 ; preds = %vector.main.loop.iter.check141, %vec.epilog.iter.check153
  %vec.epilog.resume.val157 = phi i64 [ %n.vec144, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check141 ]
  %n.vec158 = and i64 %.pr10.i, -4                ; 3 uses
  %i.dn = getelementptr i8, ptr %i.df, i64 %n.vec158
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph156
  %index160 = phi i64 [ %vec.epilog.resume.val157, %vec.epilog.ph156 ], [ %index.next163, %vec.epilog.vector.body159 ] ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.df, i64 %index160 ; 2 uses
  %wide.load162 = load <4 x i8>, ptr %next.gep161, align 1, !tbaa !119 ; 3 uses
  %4 = sext <4 x i8> %wide.load162 to <4 x i32>
  %5 = add nsw <4 x i32> %4, splat (i32 -65)
  %6 = icmp ult <4 x i32> %5, splat (i32 26)
  %7 = add <4 x i8> %wide.load162, splat (i8 32)
  %8 = select <4 x i1> %6, <4 x i8> %7, <4 x i8> %wide.load162
  store <4 x i8> %8, ptr %next.gep161, align 1, !tbaa !119
  %index.next163 = add nuw i64 %index160, 4       ; 2 uses
  %i.do = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.do, label %vec.epilog.middle.block164, label %vec.epilog.vector.body159, !llvm.loop !363

vec.epilog.middle.block164:                       ; preds = %vec.epilog.vector.body159
  %cmp.n165 = icmp eq i64 %.pr10.i, %n.vec158
  br i1 %cmp.n165, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %.lr.ph.i.i4.i.preheader

.lr.ph.i.i4.i.preheader:                          ; preds = %iter.check152, %vec.epilog.iter.check153, %vec.epilog.middle.block164
  %.sroa.0.08.i.i.i.ph = phi ptr [ %i.df, %iter.check152 ], [ %i.di, %vec.epilog.iter.check153 ], [ %i.dn, %vec.epilog.middle.block164 ]
  br label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %.lr.ph.i.i4.i.preheader, %.lr.ph.i.i4.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i4.i ], [ %.sroa.0.08.i.i.i.ph, %.lr.ph.i.i4.i.preheader ] ; 3 uses
  %i.dp = load i8, ptr %.sroa.0.08.i.i.i, align 1, !tbaa !119 ; 3 uses
  %9 = sext i8 %i.dp to i32
  %10 = add nsw i32 %9, -65
  %or.cond.i.i.i.i.i = icmp ult i32 %10, 26
  %i.dq = add i8 %i.dp, 32
  %i.dr = select i1 %or.cond.i.i.i.i.i, i8 %i.dq, i8 %i.dp
  store i8 %i.dr, ptr %.sroa.0.08.i.i.i, align 1, !tbaa !119
  %i.ds = getelementptr i8, ptr %.sroa.0.08.i.i.i, i64 1 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.ds, %i.dg
  br i1 %.not.i.i5.i, label %_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit, label %.lr.ph.i.i4.i, !llvm.loop !364

_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE.exit: ; preds = %.lr.ph.i.i4.i, %middle.block150, %vec.epilog.middle.block164, %_ZN4core6stringIcE7replaceEcc.exit.i, %_ZN4core6stringIcEC2ERKS1_.exit.i, %_ZN4core6stringIcEC2ERKS1_.exit
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dt = load ptr, ptr %0, align 8, !tbaa !158   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.a
  br i1 %i.du, label %common.resume, label %common.resume.sink.split
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video17IMaterialRenderer13OnSetMaterialERKNS_9SMaterialES3_bPNS_25IMaterialRendererServicesE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 8 dereferenceable(127) %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5video17IMaterialRenderer8OnRenderEPNS_25IMaterialRendererServicesENS_13E_VERTEX_TYPEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video17IMaterialRenderer15OnUnsetMaterialEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5video17IMaterialRenderer13isTransparentEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5video17IMaterialRenderer19getRenderCapabilityEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5video17IMaterialRenderer28getShaderConstantSetCallBackEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video17IMaterialRendererD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video17IMaterialRendererD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #31
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5video17IMaterialRendererD1Ev(ptr noundef %0) unnamed_addr #22 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5video17IMaterialRendererD0Ev(ptr noundef %0) unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 24) #31, !inline_history !370
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4core5arrayIN5video11CNullDriver8SSurfaceEE4sortEv(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !28, !range !226, !noundef !227
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !181    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !181  ; 6 uses
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = shl nuw nsw i64 %i.k, 1
  %i.m = xor i64 %i.l, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.d, ptr %i.f, i64 noundef %i.m)
  %i.n = icmp sgt i64 %i.i, 128
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.d, ptr nonnull %i.o)
  %.not4.i.i.i.i = icmp eq ptr %i.o, %i.f
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.af, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.p = load i64, ptr %.sroa.0.05.i.i.i.i, align 8, !tbaa !183 ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !188  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %.sroa.0.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.04.0.i.i.i.i.i, i64 -8 ; 2 uses
  %i.u = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !188  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.s) ; 2 uses
  %i.x = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.y = ptrtoint ptr %i.u to i64
  br i1 %i.x, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !158
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !158
  %i.ac = tail call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.aa, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ad = sub i64 %i.s, %i.w
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ae = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %bb.f, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i.i.i.i
  store i64 %i.y, ptr %.sroa.04.0.i.i.i.i.i, align 8, !tbaa !183
  br label %bb.e, !llvm.loop !9

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i.i.i.i.i
  store i64 %i.p, ptr %.sroa.04.0.i.i.i.i.i, align 8, !tbaa !183
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !371

bb.g:                                             ; preds = %bb.c
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.d, ptr %i.f)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, %bb.b, %bb.d, %bb.g
  store i8 1, ptr %i.a, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit
  %i.h = icmp eq i64 %i.ax, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph44, !llvm.loop !372

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa40 = phi i64 [ %i.d, %.lr.ph ], [ %i.ba, %bb.b ] ; 2 uses
  %storemerge19.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.019.1.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa40, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.l, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.k, align 8, !tbaa !183
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr %0, i64 noundef %.09.i.i, i64 noundef %.lcssa40, ptr %.sroa.02.0.copyload.i.i)
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.l = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !373

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %storemerge19.lcssa, %bb.c ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !183
  %i.n = load i64, ptr %0, align 8, !tbaa !183
  store i64 %i.n, ptr %i.m, align 8, !tbaa !183
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.o, %i.a                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.q, ptr %.sroa.02.0.copyload.i.i.i)
  %i.r = icmp sgt i64 %i.p, 8
  br i1 %i.r, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !374

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1943 = phi ptr [ %.sroa.019.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02042 = phi i64 [ %i.ax, %bb.b ], [ %2, %.lr.ph ]
  %i.s = phi i64 [ %i.ba, %bb.b ], [ %i.d, %.lr.ph ]
  %i.t = lshr i64 %i.s, 1
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %storemerge1943, i64 -8
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_(ptr %0, ptr nonnull %i.f, ptr %i.u, ptr nonnull %i.v)
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph44
  %.sroa.019.0.i.i = phi ptr [ %i.f, %.lr.ph44 ], [ %i.ak, %bb.g ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1943, %.lr.ph44 ], [ %.sroa.0.1.i.i, %bb.g ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !165    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !188  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i, %bb.d
  %.sroa.019.1.i.i = phi ptr [ %.sroa.019.0.i.i, %bb.d ], [ %i.ak, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i ] ; 8 uses
  %i.aa = load ptr, ptr %.sroa.019.1.i.i, align 8, !tbaa !165 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !188 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.ac) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !158
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !158
  %i.ah = tail call i32 @memcmp(ptr noundef %i.ag, ptr noundef %i.af, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.e
  %i.ai = sub i64 %i.ac, %i.y
  %spec.select7.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ]
  %i.aj = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 8 ; 2 uses
  br i1 %i.aj, label %bb.e, label %.preheader.i.i, !llvm.loop !375

.preheader.i.i:                                   ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit16.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit16.i.i ], [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit.i.i ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.al = load ptr, ptr %.sroa.0.1.i.i, align 8   ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !188 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i8.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.y) ; 2 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i8.i.i, 0
  br i1 %i.ao, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i12.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i9.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i9.i.i: ; preds = %.preheader.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !158
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !158
  %i.as = tail call i32 @memcmp(ptr noundef %i.ar, ptr noundef %i.aq, i64 noundef %.sroa.speculated.i.i.i.i.i.i8.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i10.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i.i10.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i12.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit16.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i12.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i9.i.i, %.preheader.i.i
  %i.at = sub i64 %i.y, %i.an
  %spec.select7.i.i.i.i.i.i.i13.i.i = tail call i64 @llvm.smax.i64(i64 %i.at, i64 -2147483648)
  %.08.i.i.i.i.i.i.i14.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i13.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i15.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i14.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit16.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit16.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i12.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i9.i.i
  %.0.i.i.i.i.i.i11.i.i = phi i32 [ %i.as, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i9.i.i ], [ %.0.i6.i.i.i.i.i.i15.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i12.i.i ]
  %i.au = icmp slt i32 %.0.i.i.i.i.i.i11.i.i, 0
  br i1 %i.au, label %.preheader.i.i, label %bb.f, !llvm.loop !376

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit16.i.i
  %i.av = icmp ult ptr %.sroa.019.1.i.i, %.sroa.0.1.i.i
  br i1 %i.av, label %bb.g, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.g:                                             ; preds = %bb.f
  %i.aw = ptrtoint ptr %i.al to i64
  store i64 %i.aw, ptr %.sroa.019.1.i.i, align 8, !tbaa !183
  store ptr %i.aa, ptr %.sroa.0.1.i.i, align 8, !tbaa !183
  br label %bb.d, !llvm.loop !377

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %bb.f
  %i.ax = add nsw i64 %.02042, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %.sroa.019.1.i.i, ptr %storemerge1943, i64 noundef %i.ax)
  %i.ay = ptrtoint ptr %.sroa.019.1.i.i to i64
  %i.az = sub i64 %i.ay, %i.a
  %i.ba = ashr exact i64 %i.az, 3                 ; 3 uses
  %i.bb = icmp sgt i64 %i.ba, 16
  br i1 %i.bb, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !372

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  %.036 = phi i64 [ %spec.select, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.036, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !165  ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !165  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !188  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !188  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.l) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !158
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !158
  %i.t = tail call i32 @memcmp(ptr noundef %i.s, ptr noundef %i.r, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph
  %i.u = sub i64 %i.l, %i.n
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %spec.select = select i1 %i.v, i64 %i.g, i64 %i.e ; 4 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %.036
  %i.y = load i64, ptr %i.w, align 8, !tbaa !183
  store i64 %i.y, ptr %i.x, align 8, !tbaa !183
  %i.z = icmp slt i64 %spec.select, %i.b
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !378

._crit_edge:                                      ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit ] ; 5 uses
  %i.aa = and i64 %2, 1
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.ac = add nsw i64 %2, -2
  %i.ad = ashr exact i64 %i.ac, 1
  %i.ae = icmp eq i64 %.0.lcssa, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = shl nsw i64 %.0.lcssa, 1
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !183
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !183
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ag, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ak = icmp sgt i64 %.1, %1
  br i1 %i.ak, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.am = load i64, ptr %i.al, align 8, !tbaa !188 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.019.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0920.i, %bb.f ] ; 3 uses
  %.0920.in.i = add nsw i64 %.019.i, -1
  %.0920.i = sdiv i64 %.0920.in.i, 2              ; 4 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %.0920.i
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !188 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.ar) ; 2 uses
  %i.as = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  %i.at = ptrtoint ptr %i.ap to i64
  br i1 %i.as, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !158
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !158
  %i.ax = tail call i32 @memcmp(ptr noundef %i.aw, ptr noundef %i.av, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.e
  %i.ay = sub i64 %i.ar, %i.am
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ay, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ax, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.az = icmp slt i32 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.az, label %bb.f, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i
  store i64 %i.at, ptr %i.ba, align 8, !tbaa !183
  %i.bb = icmp sgt i64 %.0920.i, %1
  br i1 %i.bb, label %bb.e, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit, !llvm.loop !379

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i, %bb.f, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.019.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEES6_EEbT_RT0_.exit.i ], [ %.0920.i, %bb.f ]
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  %i.bd = ptrtoint ptr %3 to i64
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 5 uses
  %i.b = load ptr, ptr %2, align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !188  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !188  ; 6 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.d) ; 2 uses
  %i.g = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  %i.h = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.a to i64                 ; 2 uses
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !158
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !158
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.a
  %i.o = sub i64 %i.d, %i.f
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %i.q = load ptr, ptr %3, align 8                ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !188  ; 8 uses
  %i.t = ptrtoint ptr %i.q to i64                 ; 2 uses
  br i1 %i.p, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  %.sroa.speculated.i.i.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.f) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i26, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i30, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i27

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i27: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !158
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !158
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i.i.i.i26) #33 ; 2 uses
  %.not.i.i.i.i.i.i28 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i.i.i28, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i30, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit34

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i30: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i27, %bb.b
  %i.aa = sub i64 %i.f, %i.s
  %spec.select7.i.i.i.i.i.i.i31 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i.i.i.i32 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i31, i64 2147483647)
  %.0.i6.i.i.i.i.i.i33 = trunc nsw i64 %.08.i.i.i.i.i.i.i32 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit34

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit34: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i27, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i30
  %.0.i.i.i.i.i.i29 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i27 ], [ %.0.i6.i.i.i.i.i.i33, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i30 ]
  %i.ab = icmp slt i32 %.0.i.i.i.i.i.i29, 0
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit34
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8, !tbaa !183
  store i64 %i.h, ptr %0, align 8, !tbaa !183
  store ptr %.sroa.0.0.copyload.i.i, ptr %2, align 8, !tbaa !183
  br label %bb.l

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit34
  %.sroa.speculated.i.i.i.i.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.d) ; 2 uses
  %i.ac = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i35, 0
  br i1 %i.ac, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i39, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !158
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !158
  %i.ah = tail call i32 @memcmp(ptr noundef %i.ag, ptr noundef %i.af, i64 noundef %.sroa.speculated.i.i.i.i.i.i35) #33 ; 2 uses
  %.not.i.i.i.i.i.i37 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i37, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i39, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit43

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i39: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36, %bb.d
  %i.ai = sub i64 %i.d, %i.s
  %spec.select7.i.i.i.i.i.i.i40 = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i.i.i.i.i41 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i40, i64 2147483647)
  %.0.i6.i.i.i.i.i.i42 = trunc nsw i64 %.08.i.i.i.i.i.i.i41 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit43

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit43: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i39
  %.0.i.i.i.i.i.i38 = phi i32 [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36 ], [ %.0.i6.i.i.i.i.i.i42, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i39 ]
  %i.aj = icmp slt i32 %.0.i.i.i.i.i.i38, 0
  %.sroa.0.0.copyload.i.i44 = load ptr, ptr %0, align 8, !tbaa !183 ; 2 uses
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit43
  store i64 %i.t, ptr %0, align 8, !tbaa !183
  store ptr %.sroa.0.0.copyload.i.i44, ptr %3, align 8, !tbaa !183
  br label %bb.l

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit43
  store i64 %i.i, ptr %0, align 8, !tbaa !183
  store ptr %.sroa.0.0.copyload.i.i44, ptr %1, align 8, !tbaa !183
  br label %bb.l

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  %.sroa.speculated.i.i.i.i.i.i46 = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.d) ; 2 uses
  %i.ak = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i46, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i50, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i47

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i47: ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !158
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !158
  %i.ap = tail call i32 @memcmp(ptr noundef %i.ao, ptr noundef %i.an, i64 noundef %.sroa.speculated.i.i.i.i.i.i46) #33 ; 2 uses
  %.not.i.i.i.i.i.i48 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i48, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i50, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit54

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i50: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i47, %bb.g
  %i.aq = sub i64 %i.d, %i.s
  %spec.select7.i.i.i.i.i.i.i51 = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 -2147483648)
  %.08.i.i.i.i.i.i.i52 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i51, i64 2147483647)
  %.0.i6.i.i.i.i.i.i53 = trunc nsw i64 %.08.i.i.i.i.i.i.i52 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit54

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit54: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i47, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i50
  %.0.i.i.i.i.i.i49 = phi i32 [ %i.ap, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i47 ], [ %.0.i6.i.i.i.i.i.i53, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i50 ]
  %i.ar = icmp slt i32 %.0.i.i.i.i.i.i49, 0
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit54
  %.sroa.0.0.copyload.i.i55 = load ptr, ptr %0, align 8, !tbaa !183
  store i64 %i.i, ptr %0, align 8, !tbaa !183
  store ptr %.sroa.0.0.copyload.i.i55, ptr %1, align 8, !tbaa !183
  br label %bb.l

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit54
  %.sroa.speculated.i.i.i.i.i.i56 = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.f) ; 2 uses
  %i.as = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i56, 0
  br i1 %i.as, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i60, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i57

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i57: ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !158
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !158
  %i.ax = tail call i32 @memcmp(ptr noundef %i.aw, ptr noundef %i.av, i64 noundef %.sroa.speculated.i.i.i.i.i.i56) #33 ; 2 uses
  %.not.i.i.i.i.i.i58 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i58, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i60, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit64

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i60: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i57, %bb.i
  %i.ay = sub i64 %i.f, %i.s
  %spec.select7.i.i.i.i.i.i.i61 = tail call i64 @llvm.smax.i64(i64 %i.ay, i64 -2147483648)
  %.08.i.i.i.i.i.i.i62 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i61, i64 2147483647)
  %.0.i6.i.i.i.i.i.i63 = trunc nsw i64 %.08.i.i.i.i.i.i.i62 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit64

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit64: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i57, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i60
  %.0.i.i.i.i.i.i59 = phi i32 [ %i.ax, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i57 ], [ %.0.i6.i.i.i.i.i.i63, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i60 ]
  %i.az = icmp slt i32 %.0.i.i.i.i.i.i59, 0
  %.sroa.0.0.copyload.i.i65 = load ptr, ptr %0, align 8, !tbaa !183 ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit64
  store i64 %i.t, ptr %0, align 8, !tbaa !183
  store ptr %.sroa.0.0.copyload.i.i65, ptr %3, align 8, !tbaa !183
  br label %bb.l

bb.k:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit64
  store i64 %i.h, ptr %0, align 8, !tbaa !183
  store ptr %.sroa.0.0.copyload.i.i65, ptr %2, align 8, !tbaa !183
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #26

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.017 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not18 = icmp eq ptr %.sroa.0.017, %1
  br i1 %.not18, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.0.020 = phi ptr [ %.sroa.0.017, %.lr.ph ], [ %.sroa.0.0, %bb.j ] ; 5 uses
  %.pn19 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.020, %bb.j ] ; 2 uses
  %i.c = load ptr, ptr %.sroa.0.020, align 8      ; 5 uses
  %i.d = load ptr, ptr %0, align 8                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !188  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !188  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.f) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = ptrtoint ptr %i.d to i64
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !158
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !158
  %i.p = tail call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.n, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.q = sub i64 %i.f, %i.h
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.r = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.r, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  %i.s = ptrtoint ptr %.sroa.0.020 to i64
  %i.t = sub i64 %i.s, %i.b                       ; 3 uses
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %i.v = icmp sgt i64 %i.u, 1
  br i1 %i.v, label %bb.d, label %bb.e, !prof !182

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.pn19, i64 16
  %i.x = sub nsw i64 0, %i.u
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.t, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.t, 8
  br i1 %i.z, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn19, i64 8
  store i64 %i.k, ptr %i.aa, align 8, !tbaa !183
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.d, %bb.e, %bb.f
  store ptr %i.c, ptr %0, align 8, !tbaa !183
  br label %bb.j

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEESB_EEbT_T0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.04.0.i = phi ptr [ %.sroa.0.020, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.04.0.i, i64 -8 ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.i, align 8     ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !188 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.f) ; 2 uses
  %i.af = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  %i.ag = ptrtoint ptr %i.ac to i64
  br i1 %i.af, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !158
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !158
  %i.ak = tail call i32 @memcmp(ptr noundef %i.aj, ptr noundef %i.ai, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.h
  %i.al = sub i64 %i.f, %i.ae
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.al, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.am = icmp slt i32 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %bb.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i
  store i64 %i.ag, ptr %.sroa.04.0.i, align 8, !tbaa !183
  br label %bb.h, !llvm.loop !9

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i
  store i64 %i.j, ptr %.sroa.04.0.i, align 8, !tbaa !183
  br label %bb.j

bb.j:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !380

.loopexit:                                        ; preds = %bb.j, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZSt13__equal_rangeIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valENSA_14_Val_less_iterEESt4pairIT_SE_ESE_SE_RKT0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph: ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !165    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !188  ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, %bb.c
  %.01974 = phi i64 [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.2, %bb.c ] ; 3 uses
  %.sroa.052.073 = phi ptr [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.sroa.052.1, %bb.c ] ; 4 uses
  %i.j = lshr i64 %.01974, 1                      ; 5 uses
  %.idx94 = shl nuw nsw i64 %i.j, 3               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.052.073, i64 %.idx94 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !165  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !188  ; 4 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.n) ; 3 uses
  %i.o = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.o, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !158  ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.s = tail call i32 @memcmp(ptr noundef %i.r, ptr noundef %i.q, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.thread62, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.thread

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.t = sub i64 %i.n, %i.h
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i24

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.thread62: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %i.v = sub i64 %i.n, %i.h
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i21

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %i.x = icmp slt i32 %i.s, 0
  br i1 %i.x, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i21

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.thread62, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.thread, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.z = xor i64 %i.j, -1
  %i.aa = add nsw i64 %.01974, %i.z
  br label %bb.c

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i21: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.thread62, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.thread
  %i.ab = tail call i32 @memcmp(ptr noundef %i.q, ptr noundef %i.r, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i22 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i22, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i24, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i24: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i21
  %i.ac = sub i64 %i.h, %i.n
  %spec.select7.i.i.i.i.i.i.i25 = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 -2147483648)
  %.08.i.i.i.i.i.i.i26 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i25, i64 2147483647)
  %.0.i6.i.i.i.i.i.i27 = trunc nsw i64 %.08.i.i.i.i.i.i.i26 to i32
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i21, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i24
  %.0.i.i.i.i.i.i23 = phi i32 [ %i.ab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i21 ], [ %.0.i6.i.i.i.i.i.i27, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i24 ]
  %i.ad = icmp slt i32 %.0.i.i.i.i.i.i23, 0
  br i1 %i.ad, label %bb.c, label %.critedge

.critedge:                                        ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %.critedge, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.i ], [ %i.j, %.critedge ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.i ], [ %.sroa.052.073, %.critedge ] ; 2 uses
  %i.ae = lshr i64 %.016.i, 1                     ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !165 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !188 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.ai) ; 2 uses
  %i.aj = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !158
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !158
  %i.an = tail call i32 @memcmp(ptr noundef %i.am, ptr noundef %i.al, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ao = sub i64 %i.ai, %i.h
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ao, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.an, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.ap = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = xor i64 %i.ae, -1
  %i.as = add nsw i64 %.016.i, %i.ar
  %.sroa.011.1.i = select i1 %i.ap, ptr %i.aq, ptr %.sroa.011.015.i ; 2 uses
  %.1.i = select i1 %i.ap, i64 %i.as, i64 %i.ae   ; 2 uses
  %i.at = icmp sgt i64 %.1.i, 0
  br i1 %i.at, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit, !llvm.loop !381

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.i, %.critedge
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.052.073, %.critedge ], [ %.sroa.011.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEEKS6_EEbT_RT0_.exit.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %.01974, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.av = add nuw nsw i64 %.idx94, 8
  %gepdiff = sub nsw i64 %.idx, %i.av
  %i.aw = ashr exact i64 %gepdiff, 3              ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i33, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i33: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i
  %.016.i34 = phi i64 [ %.1.i43, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i ], [ %i.aw, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit ] ; 2 uses
  %.sroa.011.015.i35 = phi ptr [ %.sroa.011.1.i42, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i ], [ %i.au, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit ] ; 2 uses
  %i.ay = lshr i64 %.016.i34, 1                   ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i35, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !165 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !188 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i38 = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.h) ; 2 uses
  %i.bd = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i38, 0
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i44, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i39

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i39: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i33
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !158
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !158
  %i.bh = tail call i32 @memcmp(ptr noundef %i.bg, ptr noundef %i.bf, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i38) #33 ; 2 uses
  %.not.i.i.i.i.i.i.i40 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i.i40, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i44, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i44: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i39, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i33
  %i.bi = sub i64 %i.h, %i.bc
  %spec.select7.i.i.i.i.i.i.i.i45 = tail call i64 @llvm.smax.i64(i64 %i.bi, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i46 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i45, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i47 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i46 to i32
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i44, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i39
  %.0.i.i.i.i.i.i.i41 = phi i32 [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i39 ], [ %.0.i6.i.i.i.i.i.i.i47, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i44 ]
  %i.bj = icmp slt i32 %.0.i.i.i.i.i.i.i41, 0     ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bl = xor i64 %i.ay, -1
  %i.bm = add nsw i64 %.016.i34, %i.bl
  %.sroa.011.1.i42 = select i1 %i.bj, ptr %.sroa.011.015.i35, ptr %i.bk ; 2 uses
  %.1.i43 = select i1 %i.bj, i64 %i.ay, i64 %i.bm ; 2 uses
  %i.bn = icmp sgt i64 %.1.i43, 0
  br i1 %i.bn, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i33, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit, !llvm.loop !382

bb.c:                                             ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit
  %.sroa.052.1 = phi ptr [ %i.y, %bb.b ], [ %.sroa.052.073, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit ] ; 3 uses
  %.2 = phi i64 [ %i.aa, %bb.b ], [ %i.j, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit ] ; 2 uses
  %i.bo = icmp sgt i64 %.2, 0
  br i1 %i.bo, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit, !llvm.loop !383

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit: ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i, %bb.a, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit
  %.sroa.3.0 = phi ptr [ %.sroa.011.1.i42, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i ], [ %i.au, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit ], [ %0, %bb.a ], [ %.sroa.052.1, %bb.c ]
  %.sroa.057.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKN5video11CNullDriver8SSurfaceENS_17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEEEbRT_T0_.exit.i ], [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit ], [ %0, %bb.a ], [ %.sroa.052.1, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.057.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4core5arrayIN5video11CNullDriver8SSurfaceEE13binary_searchERKS3_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %2, %3
  br i1 %i.a, label %bb.c, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !181    ; 2 uses
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %.idx48 = shl nsw i64 %i.c, 3
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %.idx48 ; 2 uses
  %i.e = sext i32 %3 to i64
  %i.f = sub nsw i64 %i.e, %i.c                   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !165   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !188  ; 6 uses
  br i1 %i.g, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.f, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.1.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i ], [ %.sroa.011.1.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i ] ; 2 uses
  %i.k = lshr i64 %.016.i.i, 1                    ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !165  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !188  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.o) ; 2 uses
  %i.p = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.p, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !158
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !158
  %i.t = tail call i32 @memcmp(ptr noundef %i.s, ptr noundef %i.r, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.u = sub i64 %i.o, %i.i
  %spec.select7.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.x = xor i64 %i.k, -1
  %i.y = add nsw i64 %.016.i.i, %i.x
  %.sroa.011.1.i.i = select i1 %i.v, ptr %i.w, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.v, i64 %i.y, i64 %i.k    ; 2 uses
  %i.z = icmp sgt i64 %.1.i.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit, !llvm.loop !384

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %.sroa.011.1.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS6_SaIS6_EEEES7_EEbT_RT0_.exit.i.i ] ; 2 uses
  %i.aa = load ptr, ptr %.sroa.011.0.lcssa.i.i, align 8, !tbaa !165 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !188 ; 4 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.ac) ; 3 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ad, label %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !158 ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !158 ; 2 uses
  %i.ai = tail call i32 @memcmp(ptr noundef %i.ah, ptr noundef %i.ag, i64 noundef %.sroa.speculated.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit.thread37, label %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit.thread

_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit:    ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver8SSurfaceESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit
  %i.aj = sub i64 %i.ac, %i.i
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.c, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i24

_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit.thread37: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %i.al = sub i64 %i.ac, %i.i
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.c, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i21

_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %i.an = icmp slt i32 %i.ai, 0
  br i1 %i.an, label %bb.c, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i21

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i21: ; preds = %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit.thread37, %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit.thread
  %i.ao = tail call i32 @memcmp(ptr noundef %i.ag, ptr noundef %i.ah, i64 noundef %.sroa.speculated.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i.i22, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i24, label %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit28

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i24: ; preds = %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i21
  %i.ap = sub i64 %i.i, %i.ac
  %spec.select7.i.i.i.i.i.i25 = tail call i64 @llvm.smax.i64(i64 %i.ap, i64 -2147483648)
  %.08.i.i.i.i.i.i26 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i25, i64 2147483647)
  %.0.i6.i.i.i.i.i27 = trunc nsw i64 %.08.i.i.i.i.i.i26 to i32
  br label %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit28

_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit28:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i21, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i24
  %.0.i.i.i.i.i23 = phi i32 [ %i.ao, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i21 ], [ %.0.i6.i.i.i.i.i27, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i24 ]
  %i.aq = icmp slt i32 %.0.i.i.i.i.i23, 0
  br i1 %i.aq, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit28
  %i.ar = ptrtoint ptr %.sroa.011.0.lcssa.i.i to i64
  %i.as = ptrtoint ptr %i.b to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 3
  %i.av = trunc i64 %i.au to i32
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit.thread37, %bb.b, %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit28, %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit, %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit.thread, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %i.av, %bb.b ], [ -1, %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit28 ], [ -1, %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit ], [ -1, %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit.thread ], [ -1, %_ZNK5video11CNullDriver8SSurfaceltERKS1_.exit.thread37 ]
  ret i32 %.1
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5video11CNullDriver9SOccQueryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !256    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5video11CNullDriver9SOccQueryESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
  unreachable

_ZNKSt6vectorIN5video11CNullDriver9SOccQueryESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !254    ; 4 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !254
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !119
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !257  ; 3 uses
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !119
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load <2 x i32>, ptr %i.x, align 8, !tbaa !107
  store <2 x i32> %i.y, ptr %i.w, align 8, !tbaa !107
  %.not.i28 = icmp eq ptr %i.r, null
  br i1 %.not.i28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5video11CNullDriver9SOccQueryESaIS2_EE12_M_check_lenEmPKc.exit
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.r, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !126
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !126
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorIN5video11CNullDriver9SOccQueryESaIS2_EE12_M_check_lenEmPKc.exit
  %.not7.i = icmp eq ptr %i.v, null
  br i1 %.not7.i, label %_ZNSt16allocator_traitsISaIN5video11CNullDriver9SOccQueryEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.v, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !126
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !126
  br label %_ZNSt16allocator_traitsISaIN5video11CNullDriver9SOccQueryEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaIN5video11CNullDriver9SOccQueryEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver9SOccQueryES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN5video11CNullDriver9SOccQueryEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit, %_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.bm, %_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN5video11CNullDriver9SOccQueryEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit ] ; 5 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.bl, %_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5video11CNullDriver9SOccQueryEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit ] ; 5 uses
  %i.an = load ptr, ptr %.01214.i.i.i.i.i, align 8, !tbaa !254 ; 4 uses
  store ptr %i.an, ptr %.015.i.i.i.i.i, align 8, !tbaa !254
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !257 ; 4 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !257
  %i.ar = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !119
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !119
  %i.au = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 24
  %i.aw = load <2 x i32>, ptr %i.av, align 8, !tbaa !107
  store <2 x i32> %i.aw, ptr %i.au, align 8, !tbaa !107
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !19
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.an, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !126
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !126
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !19
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %i.aq, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !126
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !126
  br label %_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver9SOccQueryES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !385

_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver9SOccQueryES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN5video11CNullDriver9SOccQueryEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN5video11CNullDriver9SOccQueryEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit ], [ %i.bm, %_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not13.i.i.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i29, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver9SOccQueryES3_SaIS2_EET0_T_S6_S5_RT1_.exit38, label %.lr.ph.i.i.i.i.i30

.lr.ph.i.i.i.i.i30:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver9SOccQueryES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i35
  %.015.i.i.i.i.i31 = phi ptr [ %i.cl, %_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i35 ], [ %i.bn, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver9SOccQueryES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 4 uses
  %.01214.i.i.i.i.i32 = phi ptr [ %i.ck, %_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i35 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver9SOccQueryES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 4 uses
  %i.bo = load ptr, ptr %.01214.i.i.i.i.i32, align 8, !tbaa !254 ; 4 uses
  store ptr %i.bo, ptr %.015.i.i.i.i.i31, align 8, !tbaa !254
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i31, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i32, i64 8 ; 2 uses
  %i.br = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !119
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !257 ; 3 uses
  store <2 x ptr> %i.br, ptr %i.bp, align 8, !tbaa !119
  %i.bt = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i31, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i32, i64 24
  %i.bv = load <2 x i32>, ptr %i.bu, align 8, !tbaa !107
  store <2 x i32> %i.bv, ptr %i.bt, align 8, !tbaa !107
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i33, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i30
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !19
  %i.bx = getelementptr i8, ptr %i.bw, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %i.bo, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !126
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !126
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i30
  %.not7.i.i.i.i.i.i.i34 = icmp eq ptr %i.bs, null
  br i1 %.not7.i.i.i.i.i.i.i34, label %_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i35, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = load ptr, ptr %i.bs, align 8, !tbaa !19
  %i.ce = getelementptr i8, ptr %i.cd, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %i.bs, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !126
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !126
  br label %_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i35

_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i35: ; preds = %bb.k, %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i32, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i31, i64 32 ; 2 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.ck, %i.b
  br i1 %.not.i.i.i.i.i36, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver9SOccQueryES3_SaIS2_EET0_T_S6_S5_RT1_.exit38, label %.lr.ph.i.i.i.i.i30, !llvm.loop !385

_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver9SOccQueryES3_SaIS2_EET0_T_S6_S5_RT1_.exit38: ; preds = %_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i35, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver9SOccQueryES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i37 = phi ptr [ %i.bn, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver9SOccQueryES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.cl, %_ZSt10_ConstructIN5video11CNullDriver9SOccQueryEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i35 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5video11CNullDriver9SOccQueryEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver9SOccQueryES3_SaIS2_EET0_T_S6_S5_RT1_.exit38, %_ZSt8_DestroyIN5video11CNullDriver9SOccQueryEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.dl, %_ZSt8_DestroyIN5video11CNullDriver9SOccQueryEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver9SOccQueryES3_SaIS2_EET0_T_S6_S5_RT1_.exit38 ] ; 3 uses
  %i.cm = load ptr, ptr %.05.i.i, align 8, !tbaa !254 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i, label %_ZNK17IReferenceCounted4dropEv.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !19
  %i.co = getelementptr i8, ptr %i.cn, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 %i.cp ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !126 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #34
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cu = add nsw i32 %i.cs, -1                   ; 2 uses
  store i32 %i.cu, ptr %i.cr, align 8, !tbaa !126
  %.not.i.i.i.i.i39 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i.i.i39, label %bb.o, label %_ZNK17IReferenceCounted4dropEv.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %i.cq, align 8, !tbaa !19
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  tail call void %i.cx(ptr noundef nonnull align 8 dereferenceable(12) %i.cq) #33, !inline_history !7
  br label %_ZNK17IReferenceCounted4dropEv.exit.i.i.i.i

_ZNK17IReferenceCounted4dropEv.exit.i.i.i.i:      ; preds = %bb.o, %bb.n, %.lr.ph.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !257 ; 3 uses
  %.not2.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not2.i.i.i.i, label %_ZSt8_DestroyIN5video11CNullDriver9SOccQueryEEvPT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit.i.i.i.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !19
  %i.db = getelementptr i8, ptr %i.da, i64 -24
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 %i.dc ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !126 ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #34
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.dh = add nsw i32 %i.df, -1                   ; 2 uses
  store i32 %i.dh, ptr %i.de, align 8, !tbaa !126
  %.not.i3.i.i.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i3.i.i.i.i, label %bb.s, label %_ZSt8_DestroyIN5video11CNullDriver9SOccQueryEEvPT_.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !19
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(12) %i.dd) #33, !inline_history !7
  br label %_ZSt8_DestroyIN5video11CNullDriver9SOccQueryEEvPT_.exit.i.i

_ZSt8_DestroyIN5video11CNullDriver9SOccQueryEEvPT_.exit.i.i: ; preds = %bb.s, %bb.r, %_ZNK17IReferenceCounted4dropEv.exit.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dl, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5video11CNullDriver9SOccQueryEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIPN5video11CNullDriver9SOccQueryEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIN5video11CNullDriver9SOccQueryEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver9SOccQueryES3_SaIS2_EET0_T_S6_S5_RT1_.exit38
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN5video11CNullDriver9SOccQueryEEvT_S4_.exit
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !259
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = sub i64 %i.do, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dp) #31
  br label %_ZNSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN5video11CNullDriver9SOccQueryEEvT_S4_.exit, %bb.t
  store ptr %i.p, ptr %0, align 8, !tbaa !256
  store ptr %.0.lcssa.i.i.i.i.i37, ptr %i.a, align 8, !tbaa !255
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.dq, ptr %i.dm, align 8, !tbaa !259
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN5video11CNullDriver9SOccQueryESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !251  ; 4 uses
  %.not = icmp eq ptr %i.a, %i.c
  br i1 %.not, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 5                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZN5video11CNullDriver9SOccQueryaSERKS1_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ai, %_ZN5video11CNullDriver9SOccQueryaSERKS1_.exit.i.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ah, %_ZN5video11CNullDriver9SOccQueryaSERKS1_.exit.i.i.i.i.i ], [ %1, %bb.b ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ag, %_ZN5video11CNullDriver9SOccQueryaSERKS1_.exit.i.i.i.i.i ], [ %i.a, %bb.b ] ; 5 uses
  %i.i = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !254 ; 4 uses
  store ptr %i.i, ptr %.0811.i.i.i.i.i, align 8, !tbaa !254
  %i.j = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !257  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !257
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !119
  %i.o = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.r = load <2 x i32>, ptr %i.p, align 8, !tbaa !107
  store <2 x i32> %i.r, ptr %i.q, align 8, !tbaa !107
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.i, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !126
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !126
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not7.i.i.i.i.i.i, label %_ZN5video11CNullDriver9SOccQueryaSERKS1_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.k, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !126
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !126
  br label %_ZN5video11CNullDriver9SOccQueryaSERKS1_.exit.i.i.i.i.i

_ZN5video11CNullDriver9SOccQueryaSERKS1_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.ai = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit, !llvm.loop !386

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit: ; preds = %_ZN5video11CNullDriver9SOccQueryaSERKS1_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !255
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit, %bb.b, %bb.a
  %i.ak = phi ptr [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit ], [ %i.c, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -32 ; 2 uses
  store ptr %i.al, ptr %i.b, align 8, !tbaa !255
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !254 ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZNK17IReferenceCounted4dropEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !126 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #34
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.au = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.au, ptr %i.ar, align 8, !tbaa !126
  %.not.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i, label %bb.i, label %_ZNK17IReferenceCounted4dropEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #33, !inline_history !6
  br label %_ZNK17IReferenceCounted4dropEv.exit.i

_ZNK17IReferenceCounted4dropEv.exit.i:            ; preds = %bb.i, %bb.h, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.ay = getelementptr inbounds i8, ptr %i.ak, i64 -24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !257 ; 3 uses
  %.not2.i = icmp eq ptr %i.az, null
  br i1 %.not2.i, label %_ZN5video11CNullDriver9SOccQueryD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !126 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #34
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bh = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !126
  %.not.i3.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i3.i, label %bb.m, label %_ZN5video11CNullDriver9SOccQueryD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bd) #33, !inline_history !6
  br label %_ZN5video11CNullDriver9SOccQueryD2Ev.exit

_ZN5video11CNullDriver9SOccQueryD2Ev.exit:        ; preds = %_ZNK17IReferenceCounted4dropEv.exit.i, %bb.l, %bb.m
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #25

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5video11CNullDriver17SMaterialRendererESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !152    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5video11CNullDriver17SMaterialRendererESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
  unreachable

_ZNKSt6vectorIN5video11CNullDriver17SMaterialRendererESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 6 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !199
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !188
  store i8 0, ptr %i.r, align 8, !tbaa !119
  %i.t = icmp eq ptr %i.q, %2
  br i1 %i.t, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5video11CNullDriver17SMaterialRendererESaIS2_EE12_M_check_lenEmPKc.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !158  ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.r
  br i1 %i.w, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.r, align 8, !tbaa !119
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #31
  br label %.body.thread

bb.e:                                             ; preds = %bb.c, %_ZNKSt6vectorIN5video11CNullDriver17SMaterialRendererESaIS2_EE12_M_check_lenEmPKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !169
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !169
  %i.ac = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5video11CNullDriver17SMaterialRendererEPS2_ET0_T_S7_S6_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver17SMaterialRendererES3_SaIS2_EET0_T_S6_S5_RT1_.exit unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver17SMaterialRendererES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.ae = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5video11CNullDriver17SMaterialRendererEPS2_ET0_T_S7_S6_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.ad)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver17SMaterialRendererES3_SaIS2_EET0_T_S6_S5_RT1_.exit28 unwind label %.body

_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver17SMaterialRendererES3_SaIS2_EET0_T_S6_S5_RT1_.exit28: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver17SMaterialRendererES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5video11CNullDriver17SMaterialRendererEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver17SMaterialRendererES3_SaIS2_EET0_T_S6_S5_RT1_.exit28, %_ZSt8_DestroyIN5video11CNullDriver17SMaterialRendererEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyIN5video11CNullDriver17SMaterialRendererEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver17SMaterialRendererES3_SaIS2_EET0_T_S6_S5_RT1_.exit28 ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i, align 8, !tbaa !158 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyIN5video11CNullDriver17SMaterialRendererEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !119
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #31
  br label %_ZSt8_DestroyIN5video11CNullDriver17SMaterialRendererEEvPT_.exit.i.i

_ZSt8_DestroyIN5video11CNullDriver17SMaterialRendererEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5video11CNullDriver17SMaterialRendererEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5video11CNullDriver17SMaterialRendererEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIN5video11CNullDriver17SMaterialRendererEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver17SMaterialRendererES3_SaIS2_EET0_T_S6_S5_RT1_.exit28
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5video11CNullDriver17SMaterialRendererEEvT_S4_.exit
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !160
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #31
  br label %_ZNSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN5video11CNullDriver17SMaterialRendererEEvT_S4_.exit, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !152
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !153
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !160
  ret void

.body:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video11CNullDriver17SMaterialRendererES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.thread

bb.g:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  %i.at = tail call ptr @__cxa_begin_catch(ptr %i.as) #33 ; 0 uses
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !158 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.r
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30: ; preds = %bb.g
  %i.aw = load i64, ptr %i.r, align 8, !tbaa !119
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31

.body.thread:                                     ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.body
  %.sink55 = phi { ptr, i32 } [ %i.aq, %.body ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %bb.d ]
  %.0.lpad-body40 = phi ptr [ %i.ad, %.body ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  %i.ay = extractvalue { ptr, i32 } %.sink55, 0
  %i.az = tail call ptr @__cxa_begin_catch(ptr %i.ay) #33 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5video11CNullDriver17SMaterialRendererEEvT_S4_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.lpad-body40)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31 unwind label %bb.h

bb.h:                                             ; preds = %.body.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30, %.body.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #31
  invoke void @__cxa_rethrow() #32
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ba

bb.j:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #34
  unreachable

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKN5video11CNullDriver17SMaterialRendererEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.019 = phi ptr [ %i.n, %bb.d ], [ %2, %bb.a ]  ; 10 uses
  %.01218 = phi ptr [ %i.m, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 2 uses
  store ptr %i.a, ptr %.019, align 8, !tbaa !199
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !188
  store i8 0, ptr %i.a, align 8, !tbaa !119
  %i.c = icmp eq ptr %.019, %.01218
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(40) %.019, ptr noundef nonnull align 8 dereferenceable(40) %.01218)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 2 uses
  %i.f = load ptr, ptr %.019, align 8, !tbaa !158 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.e
  br i1 %i.g, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.e, align 8, !tbaa !119
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #31
  br label %.body

bb.d:                                             ; preds = %bb.b, %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %.01218, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !169
  store ptr %i.l, ptr %i.j, align 8, !tbaa !169
  %i.m = getelementptr inbounds nuw i8, ptr %.01218, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.019, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.m, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !387

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.o = extractvalue { ptr, i32 } %i.d, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #33 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5video11CNullDriver17SMaterialRendererEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #32
          to label %bb.i unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %bb.d ]
  ret ptr %.0.lcssa

bb.f:                                             ; preds = %bb.e, %.body
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #34
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #27

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #29

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #21 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #24 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn }
attributes #33 = { nounwind }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !159}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{!3, !159}
!4 = distinct !{!4, !159}
!5 = distinct !{!5, !159}
!6 = distinct !{ptr @_ZN5video11CNullDriver9SOccQueryD2Ev, null}
!7 = distinct !{null, null, null, ptr @_ZN5video11CNullDriver9SOccQueryD2Ev, null}
!8 = distinct !{!8, !159}
!9 = distinct !{!9, !159}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"vtable pointer", !13, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"any pointer", !14, i64 0}
!21 = !{!"p1 _ZTSN5video11CNullDriver8SSurfaceE", !20, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver8SSurfaceESaIS2_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver8SSurfaceESaIS2_EE12_Vector_implE", !22, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN5video11CNullDriver8SSurfaceESaIS2_EE", !23, i64 0}
!25 = !{!"_ZTSSt6vectorIN5video11CNullDriver8SSurfaceESaIS2_EE", !24, i64 0}
!26 = !{!"bool", !14, i64 0}
!27 = !{!"_ZTSN4core5arrayIN5video11CNullDriver8SSurfaceEEE", !25, i64 0, !26, i64 24}
!28 = !{!27, !26, i64 24}
!29 = !{!"p1 _ZTSN5video11CNullDriver9SOccQueryE", !20, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN5video11CNullDriver9SOccQueryESaIS2_EE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorIN5video11CNullDriver9SOccQueryESaIS2_EE", !32, i64 0}
!34 = !{!"_ZTSN4core5arrayIN5video11CNullDriver9SOccQueryEEE", !33, i64 0, !26, i64 24}
!35 = !{!34, !26, i64 24}
!36 = !{!"any p2 pointer", !20, i64 0}
!37 = !{!"p2 _ZTSN5video13IRenderTargetE", !36, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIPN5video13IRenderTargetESaIS2_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!"_ZTSNSt12_Vector_baseIPN5video13IRenderTargetESaIS2_EE12_Vector_implE", !38, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseIPN5video13IRenderTargetESaIS2_EE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorIPN5video13IRenderTargetESaIS2_EE", !40, i64 0}
!42 = !{!"_ZTSN4core5arrayIPN5video13IRenderTargetEEE", !41, i64 0, !26, i64 24}
!43 = !{!42, !26, i64 24}
!44 = !{!"p2 _ZTSN5video8ITextureE", !36, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIPN5video8ITextureESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseIPN5video8ITextureESaIS2_EE12_Vector_implE", !45, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIPN5video8ITextureESaIS2_EE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorIPN5video8ITextureESaIS2_EE", !47, i64 0}
!49 = !{!"_ZTSN4core5arrayIPN5video8ITextureEEE", !48, i64 0, !26, i64 24}
!50 = !{!49, !26, i64 24}
!51 = !{!"p2 _ZTSN5video12IImageLoaderE", !36, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageLoaderESaIS2_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageLoaderESaIS2_EE12_Vector_implE", !52, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseIPN5video12IImageLoaderESaIS2_EE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorIPN5video12IImageLoaderESaIS2_EE", !54, i64 0}
!56 = !{!"_ZTSN4core5arrayIPN5video12IImageLoaderEEE", !55, i64 0, !26, i64 24}
!57 = !{!56, !26, i64 24}
!58 = !{!"p2 _ZTSN5video12IImageWriterE", !36, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageWriterESaIS2_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!"_ZTSNSt12_Vector_baseIPN5video12IImageWriterESaIS2_EE12_Vector_implE", !59, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIPN5video12IImageWriterESaIS2_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIPN5video12IImageWriterESaIS2_EE", !61, i64 0}
!63 = !{!"_ZTSN4core5arrayIPN5video12IImageWriterEEE", !62, i64 0, !26, i64 24}
!64 = !{!63, !26, i64 24}
!65 = !{!"p1 _ZTSN5video11CNullDriver17SMaterialRendererE", !20, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!"_ZTSNSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE12_Vector_implE", !66, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseIN5video11CNullDriver17SMaterialRendererESaIS2_EE", !67, i64 0}
!69 = !{!"_ZTSSt6vectorIN5video11CNullDriver17SMaterialRendererESaIS2_EE", !68, i64 0}
!70 = !{!"_ZTSN4core5arrayIN5video11CNullDriver17SMaterialRendererEEE", !69, i64 0, !26, i64 24}
!71 = !{!70, !26, i64 24}
!72 = !{!"_ZTSN5video12IVideoDriverE"}
!73 = !{!"_ZTSN5video23IGPUProgrammingServicesE"}
!74 = !{!"p1 _ZTSN5video13IRenderTargetE", !20, i64 0}
!75 = !{!"_ZTSN4core11dimension2dIjEE", !15, i64 0, !15, i64 4}
!76 = !{!"p2 _ZTSN5video11CNullDriver13SHWBufferLinkE", !36, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!78 = !{!"_ZTSNSt12_Vector_baseIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE12_Vector_implE", !77, i64 0}
!79 = !{!"_ZTSSt12_Vector_baseIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE", !78, i64 0}
!80 = !{!"_ZTSSt6vectorIPN5video11CNullDriver13SHWBufferLinkESaIS3_EE", !79, i64 0}
!81 = !{!"p1 _ZTSN2io11IFileSystemE", !20, i64 0}
!82 = !{!"p1 _ZTSN5scene16IMeshManipulatorE", !20, i64 0}
!83 = !{!"_ZTSN4core8vector2dIiEE", !15, i64 0, !15, i64 4}
!84 = !{!"_ZTSN4core4rectIiEE", !83, i64 0, !83, i64 8}
!85 = !{!"_ZTSN4core8CMatrix4IfEE", !14, i64 0}
!86 = !{!"_ZTSN5video11SFrameStatsE", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!87 = !{!"float", !14, i64 0}
!88 = !{!"_ZTSN5video6SColorE", !15, i64 0}
!89 = !{!"_ZTSN5video17SExposedVideoDataE", !14, i64 0}
!90 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !14, i64 0}
!91 = !{!"_ZTSN5video17E_COMPARISON_FUNCE", !14, i64 0}
!92 = !{!"_ZTSN5video20E_ANTI_ALIASING_MODEE", !14, i64 0}
!93 = !{!"_ZTSN5video13E_COLOR_PLANEE", !14, i64 0}
!94 = !{!"_ZTSN5video17E_BLEND_OPERATIONE", !14, i64 0}
!95 = !{!"_ZTSN5video8E_ZWRITEE", !14, i64 0}
!96 = !{!"_ZTSN5video9SMaterialE", !14, i64 0, !90, i64 96, !88, i64 100, !87, i64 104, !87, i64 108, !87, i64 112, !87, i64 116, !87, i64 120, !91, i64 124, !92, i64 124, !93, i64 125, !94, i64 125, !26, i64 126, !26, i64 126, !95, i64 126, !26, i64 126, !26, i64 126, !26, i64 126, !26, i64 126}
!97 = !{!"short", !14, i64 0}
end_hunk_0
begin_hunk_1_@llvm.umin.i32
!169 = !{!168, !167, i64 32}
!170 = !{ptr @_ZN5video11CNullDriverD1Ev}
!171 = !{ptr @_ZN5video11CNullDriverD0Ev, ptr @_ZN5video11CNullDriverD1Ev}
!172 = !{ptr @_ZN5video11CNullDriverD0Ev}
!173 = !{!77, !76, i64 8}
!174 = !{!"p1 _ZTSN5video11CNullDriver13SHWBufferLinkE", !20, i64 0}
!175 = !{!174, !174, i64 0}
!176 = !{!"p1 _ZTSN5scene8HWBufferE", !20, i64 0}
!177 = !{!"_ZTSN5video11CNullDriver13SHWBufferLinkE", !176, i64 8, !156, i64 16, !15, i64 24, !97, i64 28}
!178 = !{!177, !97, i64 28}
!179 = !{!177, !176, i64 8}
!180 = !{!105, !15, i64 404}
!181 = !{!21, !21, i64 0}
!182 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!183 = !{!113, !113, i64 0}
!184 = !{!"_ZTSN5video13ECOLOR_FORMATE", !14, i64 0}
!185 = !{!"_ZTSN5video6IImageE", !184, i64 8, !75, i64 12, !154, i64 24, !15, i64 32, !15, i64 36, !26, i64 40}
!186 = !{!185, !154, i64 24}
!187 = !{!185, !184, i64 8}
!188 = !{!157, !156, i64 8}
!189 = !{!"p2 _ZTSN5video6IImageE", !36, i64 0}
!190 = !{!"_ZTSNSt12_Vector_baseIPN5video6IImageESaIS2_EE17_Vector_impl_dataE", !189, i64 0, !189, i64 8, !189, i64 16}
!191 = !{!190, !189, i64 0}
!192 = !{!190, !189, i64 16}
!193 = !{!"p1 _ZTSN5video6IImageE", !20, i64 0}
!194 = !{!193, !193, i64 0}
!195 = !{!190, !189, i64 8}
!196 = !{!189, !189, i64 0}
!197 = !{!75, !15, i64 0}
!198 = !{!75, !15, i64 4}
!199 = !{!155, !154, i64 0}
!200 = !{!"_ZTSN2io10SNamedPathE", !166, i64 0, !166, i64 32}
!201 = !{!"_ZTSN5video13E_DRIVER_TYPEE", !14, i64 0}
!202 = !{!"_ZTSN5video14E_TEXTURE_TYPEE", !14, i64 0}
!203 = !{!"_ZTSN5video8ITextureE", !200, i64 8, !75, i64 72, !75, i64 80, !201, i64 88, !184, i64 92, !184, i64 96, !15, i64 100, !26, i64 104, !26, i64 105, !202, i64 108}
!204 = !{!203, !184, i64 92}
!205 = !{!203, !184, i64 96}
!206 = !{!203, !15, i64 100}
!207 = !{!203, !26, i64 104}
!208 = !{!203, !26, i64 105}
!209 = !{!203, !202, i64 108}
!210 = !{ptr @_ZN5video11CNullDriver13SDummyTextureD1Ev}
!211 = !{!105, !74, i64 112}
!212 = !{!105, !15, i64 392}
!213 = !{!105, !15, i64 396}
!214 = !{!"_ZTSN4core8vector3dIfEE", !87, i64 0, !87, i64 4, !87, i64 8}
!215 = !{!214, !87, i64 8}
!216 = !{!84, !15, i64 8}
!217 = !{!84, !15, i64 0}
!218 = !{!"_ZTSN5video13SDriverLimitsE", !83, i64 0, !15, i64 8, !15, i64 12, !15, i64 16}
!219 = !{!218, !15, i64 8}
!220 = !{!105, !104, i64 884}
!221 = !{!105, !87, i64 424}
!222 = !{!105, !87, i64 428}
!223 = !{!105, !87, i64 432}
!224 = !{!105, !26, i64 888}
!225 = !{!105, !26, i64 889}
!226 = !{i8 0, i8 2}
!227 = !{}
!228 = !{!"_ZTSN5scene18E_HARDWARE_MAPPINGE", !14, i64 0}
!229 = !{!"_ZTSN5scene8HWBufferE", !228, i64 8, !20, i64 16, !15, i64 24}
!230 = !{!229, !20, i64 16}
!231 = !{!177, !156, i64 16}
!232 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !14, i64 0, !26, i64 32}
!233 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !232, i64 0}
!234 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !233, i64 0}
!235 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !234, i64 0}
!236 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !235, i64 0}
!237 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !20, i64 0}
!238 = !{!"_ZTSNSt8__detail15_List_node_baseE", !237, i64 0, !237, i64 8}
!239 = !{!"_ZTSNSt8__detail17_List_node_headerE", !238, i64 0, !156, i64 16}
!240 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EE10_List_implE", !239, i64 0}
!241 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EEE", !240, i64 0}
!242 = !{!"_ZTSNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EEE", !241, i64 0}
!243 = !{!"_ZTSSt22_Optional_payload_baseISt14_List_iteratorIPN5scene10ISceneNodeEEE", !14, i64 0, !26, i64 8}
!244 = !{!"_ZTSSt17_Optional_payloadISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1ELb1EE", !243, i64 0}
!245 = !{!"_ZTSSt14_Optional_baseISt14_List_iteratorIPN5scene10ISceneNodeEELb1ELb1EE", !244, i64 0}
!246 = !{!"_ZTSSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEE", !245, i64 0}
!247 = !{!"p1 _ZTSN5scene10ISceneNodeE", !20, i64 0}
!248 = !{!"p1 _ZTSN5scene13ISceneManagerE", !20, i64 0}
!249 = !{!"_ZTSN5scene10ISceneNodeE", !236, i64 8, !85, i64 48, !214, i64 112, !214, i64 124, !214, i64 136, !242, i64 152, !246, i64 176, !247, i64 192, !248, i64 200, !15, i64 208, !97, i64 212, !97, i64 214, !26, i64 216, !26, i64 217}
!250 = !{!"_ZTSNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE17_Vector_impl_dataE", !116, i64 0, !116, i64 8, !116, i64 16}
!251 = !{!29, !29, i64 0}
!252 = !{!"p1 _ZTSN5scene5IMeshE", !20, i64 0}
!253 = !{!"_ZTSN5video11CNullDriver9SOccQueryE", !247, i64 0, !252, i64 8, !14, i64 16, !15, i64 24, !15, i64 28}
!254 = !{!253, !247, i64 0}
!255 = !{!30, !29, i64 8}
!256 = !{!30, !29, i64 0}
!257 = !{!253, !252, i64 8}
!258 = !{!253, !15, i64 28}
!259 = !{!30, !29, i64 16}
!260 = !{!249, !97, i64 212}
!261 = !{i64 0, i64 64, !119}
!262 = distinct !{!262, !159}
!263 = distinct !{!263, !159}
!264 = distinct !{!264, !159}
!265 = distinct !{!265, !159}
!266 = distinct !{!266, !159, !267}
!267 = !{!"llvm.loop.peeled.count", i32 1}
!268 = !{ptr @_ZN5video11CNullDriver21expireHardwareBuffersEv}
!269 = distinct !{!269, !159}
!270 = !{!185, !15, i64 12}
!271 = !{!185, !15, i64 16}
!272 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!273 = distinct !{!273, !159}
!274 = !{!45, !44, i64 8}
!275 = !{!214, !87, i64 0}
!276 = !{!214, !87, i64 4}
!277 = !{!"_ZTSN4core8vector2dIfEE", !87, i64 0, !87, i64 4}
!278 = !{!"_ZTSN5video9S3DVertexE", !214, i64 0, !214, i64 12, !88, i64 24, !277, i64 28, !97, i64 36}
!279 = !{!278, !97, i64 36}
!280 = distinct !{!280, !159}
!281 = !{!"p1 _ZTSN4core8vector2dIiEE", !20, i64 0}
!282 = !{!"_ZTSNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE17_Vector_impl_dataE", !281, i64 0, !281, i64 8, !281, i64 16}
!283 = !{!282, !281, i64 8}
!284 = !{!282, !281, i64 0}
!285 = !{!"p1 _ZTSN4core4rectIiEE", !20, i64 0}
!286 = !{!"_ZTSNSt12_Vector_baseIN4core4rectIiEESaIS2_EE17_Vector_impl_dataE", !285, i64 0, !285, i64 8, !285, i64 16}
!287 = !{!286, !285, i64 8}
!288 = !{!286, !285, i64 0}
!289 = !{!105, !74, i64 152}
!290 = !{!105, !15, i64 160}
!291 = !{!218, !15, i64 12}
!292 = distinct !{!292, !159}
!293 = distinct !{!293, !159}
!294 = distinct !{!294, !159}
!295 = distinct !{!295, !159}
!296 = !{!83, !15, i64 0}
!297 = !{!185, !15, i64 32}
!298 = !{!185, !15, i64 36}
!299 = !{!104, !104, i64 0}
!300 = distinct !{null}
!301 = distinct !{null}
!302 = distinct !{null}
!303 = distinct !{!303, !159}
!304 = distinct !{!304, !159}
!305 = !{!76, !76, i64 0}
!306 = !{!229, !228, i64 8}
!307 = !{!"p1 _ZTSN5video9SMaterialE", !20, i64 0}
!308 = !{!"_ZTSNSt12_Vector_baseIN5video9SMaterialESaIS1_EE17_Vector_impl_dataE", !307, i64 0, !307, i64 8, !307, i64 16}
!309 = !{!"_ZTSNSt12_Vector_baseIN5video9SMaterialESaIS1_EE12_Vector_implE", !308, i64 0}
!310 = !{!"_ZTSSt12_Vector_baseIN5video9SMaterialESaIS1_EE", !309, i64 0}
!311 = !{!"_ZTSSt6vectorIN5video9SMaterialESaIS1_EE", !310, i64 0}
!312 = !{!"_ZTSN4core5arrayIN5video9SMaterialEEE", !311, i64 0, !26, i64 24}
!313 = !{!"_ZTSN4core8aabbox3dIfEE", !214, i64 0, !214, i64 12}
!314 = !{!"p1 _ZTSN5scene13IAnimatedMeshE", !20, i64 0}
!315 = !{!"_ZTSSt14_Function_base", !14, i64 0, !20, i64 16}
!316 = !{!"_ZTSSt8functionIFvfEE", !315, i64 0, !20, i64 24}
!317 = !{!"p1 _ZTS7irr_ptrIN5scene13BoneSceneNodeEE", !20, i64 0}
!318 = !{!"_ZTSNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE17_Vector_impl_dataE", !317, i64 0, !317, i64 8, !317, i64 16}
!319 = !{!"_ZTSNSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE12_Vector_implE", !318, i64 0}
!320 = !{!"_ZTSSt12_Vector_baseI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE", !319, i64 0}
!321 = !{!"_ZTSSt6vectorI7irr_ptrIN5scene13BoneSceneNodeEESaIS3_EE", !320, i64 0}
!322 = !{!"_ZTSNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE12_Vector_implE", !250, i64 0}
!323 = !{!"_ZTSSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE", !322, i64 0}
!324 = !{!"_ZTSSt6vectorIN4core8CMatrix4IfEESaIS2_EE", !323, i64 0}
!325 = !{!"p1 _ZTSSt8optionalIN4core9TransformEE", !20, i64 0}
!326 = !{!"_ZTSNSt12_Vector_baseISt8optionalIN4core9TransformEESaIS3_EE17_Vector_impl_dataE", !325, i64 0, !325, i64 8, !325, i64 16}
!327 = !{!"_ZTSNSt12_Vector_baseISt8optionalIN4core9TransformEESaIS3_EE12_Vector_implE", !326, i64 0}
!328 = !{!"_ZTSSt12_Vector_baseISt8optionalIN4core9TransformEESaIS3_EE", !327, i64 0}
!329 = !{!"_ZTSSt6vectorISt8optionalIN4core9TransformEESaIS3_EE", !328, i64 0}
!330 = !{!"_ZTSN5scene21AnimatedMeshSceneNode12PerJointDataE", !321, i64 0, !324, i64 24, !329, i64 48}
!331 = !{!"_ZTSN5scene21AnimatedMeshSceneNodeE", !249, i64 0, !312, i64 224, !313, i64 256, !314, i64 280, !87, i64 288, !87, i64 292, !87, i64 296, !87, i64 300, !15, i64 304, !15, i64 308, !87, i64 312, !87, i64 316, !26, i64 320, !26, i64 321, !26, i64 322, !26, i64 323, !15, i64 324, !316, i64 328, !330, i64 360}
!332 = !{!331, !314, i64 280}
!333 = !{!253, !15, i64 24}
!334 = distinct !{!334, !159}
!335 = distinct !{!335, !159}
!336 = distinct !{!336, !159}
!337 = distinct !{!337, !159}
!338 = distinct !{!338, !159}
!339 = distinct !{!339, !159}
!340 = !{!105, !15, i64 320}
!341 = !{!84, !15, i64 12}
!342 = !{!84, !15, i64 4}
!343 = !{!105, !15, i64 324}
!344 = !{!154, !154, i64 0}
!345 = distinct !{!345, !347}
!346 = distinct !{!346, !159}
!347 = !{!"llvm.loop.unroll.disable"}
!348 = !{!167, !167, i64 0}
!349 = distinct !{!349, !159}
!350 = !{!96, !90, i64 96}
!351 = !{!250, !116, i64 8}
!352 = !{!250, !116, i64 0}
!353 = distinct !{null}
!354 = distinct !{null, null}
!355 = !{ptr @_ZN5video11CNullDriver13SDummyTextureD0Ev, ptr @_ZN5video11CNullDriver13SDummyTextureD1Ev}
!356 = !{ptr @_ZN5video11CNullDriver13SDummyTextureD0Ev}
!357 = distinct !{!357, i1 true, !"_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE"}
!358 = distinct !{!358, !357, !"_ZNK2io10SNamedPath10PathToNameERKN4core6stringIcEE: argument 0"}
!359 = distinct !{!359, !159, !366, !367}
!360 = distinct !{!360, !159, !366, !367}
!361 = distinct !{!361, !159, !367, !366}
!362 = distinct !{!362, !159, !366, !367}
!363 = distinct !{!363, !159, !366, !367}
!364 = distinct !{!364, !159, !367, !366}
!365 = !{!358}
!366 = !{!"llvm.loop.isvectorized", i32 1}
!367 = !{!"llvm.loop.unroll.runtime.disable"}
!368 = !{!"branch_weights", i32 8, i32 24}
!369 = !{!"branch_weights", i32 4, i32 12}
!370 = !{ptr @_ZN5video17IMaterialRendererD0Ev}
!371 = distinct !{!371, !159}
!372 = distinct !{!372, !159}
!373 = distinct !{!373, !159}
!374 = distinct !{!374, !159}
!375 = distinct !{!375, !159}
!376 = distinct !{!376, !159}
!377 = distinct !{!377, !159}
!378 = distinct !{!378, !159}
!379 = distinct !{!379, !159}
!380 = distinct !{!380, !159}
!381 = distinct !{!381, !159}
!382 = distinct !{!382, !159}
!383 = distinct !{!383, !159}
!384 = distinct !{!384, !159}
!385 = distinct !{!385, !159}
!386 = distinct !{!386, !159}
!387 = distinct !{!387, !159}
end_hunk_1
