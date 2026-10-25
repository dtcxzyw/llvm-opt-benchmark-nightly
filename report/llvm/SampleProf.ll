Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProf?download=true
inline.NumInlined: 4195
inline.NumDeleted: 2052
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN4llvm10sampleprof15FunctionSamples5mergeERKS1_m:bb.a
  br i1 %.not96102, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph113
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 40 ; 2 uses
  br label %bb.v

._crit_edge107:                                   ; preds = %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit, %.lr.ph113
  %.2.lcssa = phi i32 [ %.1110, %.lr.ph113 ], [ %spec.select91, %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit ] ; 2 uses
  %i.ct = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.071.0111) #23 ; 2 uses
  %.not94 = icmp eq ptr %i.ct, %i.bf
  br i1 %.not94, label %._crit_edge114, label %.lr.ph113

bb.v:                                             ; preds = %.lr.ph106, %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit
  %.sroa.067.0104 = phi ptr [ %i.co, %.lr.ph106 ], [ %i.fw, %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit ] ; 4 uses
  %.2103 = phi i32 [ %.1110, %.lr.ph106 ], [ %spec.select91, %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.067.0104, i64 32 ; 2 uses
  %i.cv = load ptr, ptr %i.cq, align 8, !tbaa !128 ; 3 uses
  %.not14.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not14.i.i.i.i, label %.critedge.i56, label %.lr.ph.i.i.i.i52

.lr.ph.i.i.i.i52:                                 ; preds = %bb.v
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !100
  %.fr.i.i.i.i = freeze ptr %i.cw                 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.067.0104, i64 40
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !84 ; 5 uses
  %.not9.i.i.i.i.i.i.i.i = icmp eq ptr %.fr.i.i.i.i, null ; 2 uses
  br i1 %.not9.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i52, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i
  %.016.us.i.i.i.i = phi ptr [ %.1.us.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i ], [ %i.cv, %.lr.ph.i.i.i.i52 ] ; 5 uses
  %.0815.us.i.i.i.i = phi ptr [ %.19.us.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i ], [ %i.cr, %.lr.ph.i.i.i.i52 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i.i, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !100
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i.i, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !84
  %i.de = icmp ult i64 %i.dd, %i.cy               ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.de, i64 24, i64 16
  %spec.select22.i.i.i.i = select i1 %i.de, ptr %.0815.us.i.i.i.i, ptr %.016.us.i.i.i.i
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i
  %.sink.i.i.i.i57 = phi i64 [ %spec.select.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i ], [ 16, %.lr.ph.split.us.i.i.i.i ]
  %.19.us.i.i.i.i = phi ptr [ %spec.select22.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i ], [ %.016.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i.i, i64 %.sink.i.i.i.i57
  %.1.us.i.i.i.i = load ptr, ptr %i.df, align 8, !tbaa !129 ; 2 uses
  %.not.us.i.i.i.i = icmp eq ptr %.1.us.i.i.i.i, null
  br i1 %.not.us.i.i.i.i, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.split.us.i.i.i.i, !llvm.loop !11

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i52, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %.1.i.i.i.i54, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %i.cv, %.lr.ph.i.i.i.i52 ] ; 5 uses
  %.0815.i.i.i.i = phi ptr [ %.19.i.i.i.i53, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %i.cr, %.lr.ph.i.i.i.i52 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !100 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !84 ; 2 uses
  %i.dk = call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.dj)
  %i.dl = icmp eq ptr %i.dh, %.fr.i.i.i.i
  br i1 %i.dl, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.dm = call i32 @memcmp(ptr noundef nonnull %i.dh, ptr noundef nonnull %.fr.i.i.i.i, i64 noundef %i.dk) #23 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i
  %i.dn = icmp ult i64 %i.dj, %i.cy
  br i1 %i.dn, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i.i
  %i.do = icmp slt i32 %i.dm, 0
  br i1 %i.do, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i, %bb.w
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i
  %.sink21.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i ], [ 16, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i ], [ 16, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i53 = phi ptr [ %.0815.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i ], [ %.016.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i ], [ %.016.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 %.sink21.i.i.i.i
  %.1.i.i.i.i54 = load ptr, ptr %i.dp, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %.1.i.i.i.i54, null
  br i1 %.not.i.i.i.i55, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.split.i.i.i.i, !llvm.loop !11

_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i
  %.08.lcssa.i.i.i.i = phi ptr [ %.19.us.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i ], [ %.19.i.i.i.i53, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i ] ; 10 uses
  %i.dq = icmp eq ptr %.08.lcssa.i.i.i.i, %i.cr
  br i1 %i.dq, label %.critedge.i56, label %bb.x

bb.x:                                             ; preds = %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !100 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i, i64 40
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !84 ; 2 uses
  %i.dv = call i64 @llvm.umin.i64(i64 %i.du, i64 %i.cy)
  %i.dw = icmp eq ptr %.fr.i.i.i.i, %i.ds
  br i1 %i.dw, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not9.i.i.i.i.i.i.i.i, label %.critedge.i56, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not9.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not9.i.i.i.i.i, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i: ; preds = %bb.z
  %i.dx = call i32 @memcmp(ptr noundef nonnull %.fr.i.i.i.i, ptr noundef nonnull %i.ds, i64 noundef %i.dv) #23 ; 2 uses
  %.not.i.i.i4.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i.i4.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %bb.x
  %i.dy = icmp ult i64 %i.cy, %i.du
  br i1 %i.dy, label %.critedge.i56, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i
  %i.dz = icmp slt i32 %i.dx, 0
  br i1 %i.dz, label %.critedge.i56, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit

.critedge.i56:                                    ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %bb.y, %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, %bb.v
  %.08.lcssa.i.i.i12.i = phi ptr [ %i.cr, %bb.v ], [ %.08.lcssa.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i ], [ %.08.lcssa.i.i.i.i, %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i ], [ %.08.lcssa.i.i.i.i, %bb.y ], [ %.08.lcssa.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i ]
  %i.ea = call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #26 ; 22 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i64 16, i1 false), !tbaa.struct !99
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 128 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ec, i8 0, i64 184, i1 false)
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !72
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 152
  store ptr %i.ed, ptr %i.ef, align 8, !tbaa !216
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 176 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 192
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !72
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 200
  store ptr %i.eg, ptr %i.ei, align 8, !tbaa !216
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 224 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 232 ; 2 uses
  store ptr null, ptr %i.ek, align 8, !tbaa !128
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 240
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !72
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 248
  store ptr %i.ej, ptr %i.em, align 8, !tbaa !216
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, i8 0, i64 16, i1 false)
  %i.eo = call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %i.cm, ptr %.08.lcssa.i.i.i12.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eb) ; 2 uses
  %i.ep = extractvalue { ptr, ptr } %i.eo, 0      ; 2 uses
  %i.eq = extractvalue { ptr, ptr } %i.eo, 1      ; 5 uses
  %.not.i = icmp eq ptr %i.eq, null
  br i1 %.not.i, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i56
  %.not.i.i.i = icmp ne ptr %i.ep, null
  %i.er = icmp eq ptr %i.eq, %i.cr
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.er
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.et = load ptr, ptr %i.eb, align 8, !tbaa !100 ; 3 uses
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !100 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !84 ; 3 uses
  %i.ey = load i64, ptr %i.ev, align 8, !tbaa !84 ; 3 uses
  %i.ez = call i64 @llvm.umin.i64(i64 %i.ex, i64 %i.ey)
  %i.fa = icmp eq ptr %i.et, %i.eu
  br i1 %i.fa, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i.i.i.i.i62 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i.i.i62, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i: ; preds = %bb.ad
  %i.fb = call i32 @memcmp(ptr noundef nonnull %i.et, ptr noundef nonnull %i.eu, i64 noundef %i.ez) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i, %bb.ab
  %i.fc = icmp eq i64 %i.ey, %i.ex
  br i1 %i.fc, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i
  %i.fd = icmp ult i64 %i.ey, %i.ex
  %i.fe = select i1 %i.fd, i32 -1, i32 1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.ae, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i, %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i = phi i32 [ %i.fe, %bb.ae ], [ %i.fb, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i ], [ 0, %bb.ad ], [ -2147483648, %bb.ac ]
  %i.ff = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br label %.thread.i

.thread.i:                                        ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i, %bb.aa
  %i.fg = phi i1 [ %i.ff, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i ], [ true, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fg, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %i.cr) #22
  %i.fh = load i64, ptr %i.cs, align 8, !tbaa !63
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.cs, align 8, !tbaa !63
  br label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit

bb.af:                                            ; preds = %.critedge.i56
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ea, i64 216
  %i.fk = load ptr, ptr %i.ek, align 8, !tbaa !128
  call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fj, ptr noundef %i.fk), !inline_history !12
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ea, i64 168
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ea, i64 184
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !128
  call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fl, ptr noundef %i.fn), !inline_history !13
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ea, i64 120
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 136
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !128
  call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fo, ptr noundef %i.fq), !inline_history !12
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 272) #27, !inline_history !14
  br label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit

_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit: ; preds = %bb.af, %.thread.i, %bb.z, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i
  %.sroa.07.0.i = phi ptr [ %.08.lcssa.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i ], [ %.08.lcssa.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i ], [ %.08.lcssa.i.i.i.i, %bb.z ], [ %i.ea, %.thread.i ], [ %i.ep, %bb.af ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 48
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.067.0104, i64 48
  %i.ft = call noundef i32 @_ZN4llvm10sampleprof15FunctionSamples5mergeERKS1_m(ptr noundef nonnull align 8 dereferenceable(224) %i.fr, ptr noundef nonnull align 8 dereferenceable(224) %i.fs, i64 noundef %2) ; 2 uses
  %i.fu = icmp eq i32 %.2103, 0
  %i.fv = icmp ne i32 %i.ft, 0
  %or.cond.i58 = and i1 %i.fu, %i.fv
  %spec.select91 = select i1 %or.cond.i58, i32 %i.ft, i32 %.2103 ; 2 uses
  %i.fw = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.067.0104) #23 ; 2 uses
  %.not96 = icmp eq ptr %i.fw, %i.cp
  br i1 %.not96, label %._crit_edge107, label %bb.v

_ZN4llvm21mergeSampleProfErrorsERNS_16sampleprof_errorES0_.exit61: ; preds = %._crit_edge114, %_ZN4llvm21mergeSampleProfErrorsERNS_16sampleprof_errorES0_.exit61
  %.sroa.063.0118 = phi ptr [ %i.gc, %_ZN4llvm21mergeSampleProfErrorsERNS_16sampleprof_errorES0_.exit61 ], [ %i.cj, %._crit_edge114 ] ; 3 uses
  %.3117 = phi i32 [ %spec.select92, %_ZN4llvm21mergeSampleProfErrorsERNS_16sampleprof_errorES0_.exit61 ], [ %.1.lcssa, %._crit_edge114 ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.063.0118, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.063.0118, i64 40
  %i.fz = call noundef i32 @_ZN4llvm10sampleprof15FunctionSamples27addCallsiteVTableTypeProfAtISt3mapINS0_10FunctionIdEmSt4lessIS4_ESaISt4pairIKS4_mEEEEENS_16sampleprof_errorERKNS0_12LineLocationERKT_m(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.fx, ptr noundef nonnull align 8 dereferenceable(48) %i.fy, i64 noundef %2) ; 2 uses
  %i.ga = icmp eq i32 %.3117, 0
  %i.gb = icmp ne i32 %i.fz, 0
  %or.cond.i60 = and i1 %i.ga, %i.gb
  %spec.select92 = select i1 %or.cond.i60, i32 %i.fz, i32 %.3117 ; 2 uses
  %i.gc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.063.0118) #23 ; 2 uses
  %.not95 = icmp eq ptr %i.gc, %i.ck
  br i1 %.not95, label %.loopexit, label %_ZN4llvm21mergeSampleProfErrorsERNS_16sampleprof_errorES0_.exit61

.loopexit:                                        ; preds = %_ZN4llvm21mergeSampleProfErrorsERNS_16sampleprof_errorES0_.exit61, %._crit_edge114, %bb.g
  %.0 = phi i32 [ 14, %bb.g ], [ %.1.lcssa, %._crit_edge114 ], [ %spec.select92, %_ZN4llvm21mergeSampleProfErrorsERNS_16sampleprof_errorES0_.exit61 ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef { i32, ptr } @_ZN4llvm10sampleprof17ProfileSymbolList5writeERNS_11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvm::detail::DenseSetImpl<llvm::StringRef, llvm::DenseMap<llvm::StringRef, llvm::detail::DenseSetEmpty, llvm::DenseMapInfo<StringRef, void>, llvm::detail::DenseSetPair<llvm::StringRef>>>::DenseSetIterator", align 8 ; 7 uses
  %3 = alloca %"class.llvm::detail::DenseSetImpl<llvm::StringRef, llvm::DenseMap<llvm::StringRef, llvm::detail::DenseSetEmpty, llvm::DenseMapInfo<StringRef, void>, llvm::detail::DenseSetPair<llvm::StringRef>>>::DenseSetIterator", align 8 ; 7 uses
  %4 = alloca %"class.std::vector.155", align 8   ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !221, !noalias !399 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !222, !noalias !399 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !197, !noalias !399 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !223, !noalias !399
  %i.j = icmp eq i32 %i.i, 0
  %i.k = zext i32 %i.g to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.k ; 6 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.g, 0
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZN4llvm6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5beginEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add nuw nsw i64 %i.k, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %i.o = load i32, ptr %i.e, align 4, !tbaa !78, !noalias !400 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.q = icmp eq i64 %i.n, 1
  br i1 %i.q, label %_ZN4llvm6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5beginEv.exit, label %.lr.ph49

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph49
  %i.r = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.n
  br i1 %i.s, label %_ZN4llvm6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5beginEv.exit, label %.lr.ph49, !llvm.loop !15

.lr.ph49:                                         ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.t = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !78, !noalias !400 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !15

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph49
  %i.x = shl i64 %i.t, 9
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.loopexit.i.i.i, %bb.b
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.x, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.o, %bb.b ], [ %i.v, %._crit_edge.i.loopexit.i.i.i ]
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %.012.lcssa.i.i.i.i
  %i.ab = getelementptr [16 x i8], ptr %i.aa, i64 %i.z
  br label %_ZN4llvm6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5beginEv.exit

_ZN4llvm6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5beginEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %bb.a, %._crit_edge.i.i.i.i
  %.sroa.0.0.i = phi ptr [ %i.l, %bb.a ], [ %i.ab, %._crit_edge.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.l, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.l, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.c, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %.sroa.0.0.i, ptr %3, align 8
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.l, ptr %.sroa.216.0..sroa_idx, align 8
  %.sroa.317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %.sroa.317.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.e, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN4llvm9StringRefESaIS1_EE19_M_range_initializeINS0_6detail12DenseSetImplIS1_NS0_8DenseMapIS1_NS5_13DenseSetEmptyENS0_12DenseMapInfoIS1_vEENS5_12DenseSetPairIS1_EEEEE16DenseSetIteratorILb0EEEEEvT_SH_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull byval(%"class.llvm::detail::DenseSetImpl<llvm::StringRef, llvm::DenseMap<llvm::StringRef, llvm::detail::DenseSetEmpty, llvm::DenseMapInfo<StringRef, void>, llvm::detail::DenseSetPair<llvm::StringRef>>>::DenseSetIterator") align 8 %3, ptr noundef nonnull byval(%"class.llvm::detail::DenseSetImpl<llvm::StringRef, llvm::DenseMap<llvm::StringRef, llvm::detail::DenseSetEmpty, llvm::DenseMapInfo<StringRef, void>, llvm::detail::DenseSetPair<llvm::StringRef>>>::DenseSetIterator") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ac = load ptr, ptr %4, align 8, !tbaa !225   ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !225 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i.i.i, label %_ZN4llvm4sortIRSt6vectorINS_9StringRefESaIS2_EEEEvOT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5beginEv.exit
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ai, i1 true)
  %i.ak = shl nuw nsw i64 %i.aj, 1
  %i.al = xor i64 %i.ak, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.ac, ptr %i.ae, i64 noundef %i.al)
  %i.am = icmp sgt i64 %i.ah, 256
  br i1 %i.am, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 256 ; 3 uses
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.ac, ptr nonnull %i.an)
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ae
  br i1 %.not4.i.i.i.i.i.i, label %_ZN4llvm4sortIRSt6vectorINS_9StringRefESaIS2_EEEEvOT_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i.i = phi ptr [ %i.as, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i ], [ %i.an, %bb.d ] ; 4 uses
  %.sroa.03.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.05.i.i.i.i.i.i, align 8, !tbaa !96 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.i, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !84 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 -16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 -8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i) ; 2 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %.thread.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !96
  %i.ap = call i32 @memcmp(ptr noundef %.sroa.03.0.copyload.i.i.i.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #23
  %.fr.i.i.i.i.i.i.i.i.i.i = freeze i32 %i.ap     ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.aq = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.aq, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %i.ar = icmp slt i32 %.fr.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ar, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm9StringRefESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread11.i.i.i.i.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIN4llvm9StringRefENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIPSt4pairIN4llvm10sampleprof10FunctionIdEmElN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_T1_:bb.a
  tail call void @_ZSt13__adjust_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull byval(%"struct.std::pair.22") align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.t = icmp sgt i64 %i.r, 24
  br i1 %i.t, label %bb.d, label %_ZSt14__partial_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_T0_.exit, !llvm.loop !477

.lr.ph37:                                         ; preds = %.lr.ph, %bb.b
  %.0172336 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %.02435 = phi ptr [ %i.z, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.ab, %bb.b ], [ %i.c, %.lr.ph ]
  %i.v = add nsw i64 %.0172336, -1                ; 3 uses
  %i.w = udiv i64 %i.u, 48
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %.02435, i64 -24
  tail call void @_ZSt22__move_median_to_firstIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_SC_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.x, ptr noundef nonnull %i.y)
  %i.z = tail call noundef ptr @_ZSt21__unguarded_partitionIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEET_SC_SC_SC_T0_(ptr noundef nonnull %i.e, ptr noundef %.02435, ptr noundef %0) ; 4 uses
  tail call void @_ZSt16__introsort_loopIPSt4pairIN4llvm10sampleprof10FunctionIdEmElN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_T1_(ptr noundef %i.z, ptr noundef %.02435, i64 noundef %i.v)
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.a                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 384
  br i1 %i.ac, label %bb.b, label %_ZSt14__partial_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_T0_.exit, !llvm.loop !475

_ZSt14__partial_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_T0_.exit: ; preds = %.lr.ph37, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  tail call void @_ZSt16__insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_(ptr noundef %0, ptr noundef nonnull %i.e)
  %.not7.i = icmp eq ptr %i.e, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i
  %.08.i = phi ptr [ %i.ab, %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i ], [ %i.e, %bb.b ] ; 6 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.08.i, align 8
  %.sroa.0.0.copyload.fr.i.i = freeze ptr %.sroa.0.0.copyload.i.i ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.08.i, i64 16
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.fr.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %.split17.us.i.i, label %.split17.i.i

.split17.us.i.i:                                  ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i
  %.09.us.i.i = phi ptr [ %.0.us.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i ], [ %.08.i, %.lr.ph.i ] ; 7 uses
  %.0.us.i.i = getelementptr inbounds i8, ptr %.09.us.i.i, i64 -24 ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %.09.us.i.i, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.us.i.i = icmp eq i64 %.sroa.6.0.copyload.i.i, %i.g
  br i1 %.not.i.i.us.i.i, label %bb.c, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split17.us.i.i
  %i.h = icmp ugt i64 %.sroa.6.0.copyload.i.i, %i.g
  br i1 %i.h, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

bb.c:                                             ; preds = %.split17.us.i.i
  %i.i = load ptr, ptr %.0.us.i.i, align 8, !tbaa !100
  %i.j = getelementptr inbounds i8, ptr %.09.us.i.i, i64 -16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !84
  %i.l = icmp ne ptr %i.i, null
  %i.m = icmp ult i64 %.sroa.5.0.copyload.i.i, %i.k
  %or.cond.i.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i: ; preds = %bb.c, %.split.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.us.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.us.i.i, i64 16, i1 false), !tbaa.struct !99
  %i.n = getelementptr inbounds nuw i8, ptr %.09.us.i.i, i64 16
  store i64 %i.g, ptr %i.n, align 8, !tbaa !98
  br label %.split17.us.i.i, !llvm.loop !19

.split17.i.i:                                     ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i
  %.09.i.i = phi ptr [ %.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i ], [ %.08.i, %.lr.ph.i ] ; 9 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.09.i.i, i64 -24 ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.09.i.i, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.6.0.copyload.i.i, %i.p
  br i1 %.not.i.i.i.i, label %bb.d, label %.split.i.i

.split.i.i:                                       ; preds = %.split17.i.i
  %i.q = icmp ugt i64 %.sroa.6.0.copyload.i.i, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

bb.d:                                             ; preds = %.split17.i.i
  %i.r = load ptr, ptr %.0.i.i, align 8, !tbaa !100 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.09.i.i, i64 -16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !84   ; 2 uses
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %.sroa.5.0.copyload.i.i)
  %i.v = icmp eq ptr %.sroa.0.0.copyload.fr.i.i, %i.r
  br i1 %i.v, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.w = tail call i32 @memcmp(ptr noundef nonnull %.sroa.0.0.copyload.fr.i.i, ptr noundef nonnull %i.r, i64 noundef %i.u) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i, %bb.d
  %i.x = icmp ult i64 %.sroa.5.0.copyload.i.i, %i.t
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, %.split.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 16, i1 false), !tbaa.struct !99
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  store i64 %i.p, ptr %i.z, align 8, !tbaa !98
  br label %.split17.i.i, !llvm.loop !19

_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, %bb.e, %.split.i.i, %bb.c, %.split.us.i.i
  %.us-phi.i.i = phi ptr [ %.09.us.i.i, %bb.c ], [ %.09.us.i.i, %.split.us.i.i ], [ %.09.i.i, %.split.i.i ], [ %.09.i.i, %bb.e ], [ %.09.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i ], [ %.09.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i ] ; 3 uses
  store ptr %.sroa.0.0.copyload.fr.i.i, ptr %.us-phi.i.i, align 8, !tbaa !96
  %.sroa.5.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.aa, align 8, !tbaa !98
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i, label %_ZSt26__unguarded_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_.exit, label %.lr.ph.i, !llvm.loop !478

bb.f:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1)
  br label %_ZSt26__unguarded_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_.exit

_ZSt26__unguarded_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i, %bb.b, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__adjust_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"struct.std::pair.22") align 8 %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit
  %.037 = phi i64 [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.037, 1                         ; 3 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.g = getelementptr [24 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !98   ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !98   ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = icmp ugt i64 %i.i, %i.k
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %i.g, i64 24
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !100  ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !100  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = getelementptr i8, ptr %i.g, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !84   ; 3 uses
  %i.s = load i64, ptr %i.p, align 8, !tbaa !84   ; 3 uses
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.s)
  %i.u = icmp eq ptr %i.n, %i.o
  br i1 %i.u, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i.i.i.i, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i: ; preds = %bb.e
  %i.v = tail call i32 @memcmp(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i64 noundef %i.t) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %bb.c
  %i.w = icmp eq i64 %i.s, %i.r
  br i1 %i.w, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i
  %i.x = icmp ult i64 %i.s, %i.r
  %i.y = select i1 %i.x, i32 -1, i32 1
  br label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i

_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i: ; preds = %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %bb.e, %bb.d
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ %i.v, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i ], [ 0, %bb.e ], [ -2147483648, %bb.d ]
  %i.z = icmp slt i32 %.0.i.i.i.i, 0
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit: ; preds = %bb.b, %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i
  %.0.i.i = phi i1 [ %i.l, %bb.b ], [ %i.z, %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i ]
  %i.aa = or disjoint i64 %i.d, 1
  %spec.select = select i1 %.0.i.i, i64 %i.aa, i64 %i.e ; 4 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %.037 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false), !tbaa.struct !99
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !84
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !98
  %i.ag = icmp slt i64 %spec.select, %i.b
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !479

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit ] ; 5 uses
  %i.ah = and i64 %2, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.aj = add nsw i64 %2, -2
  %i.ak = ashr exact i64 %i.aj, 1
  %i.al = icmp eq i64 %.0.lcssa, %i.ak
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = shl nsw i64 %.0.lcssa, 1
  %i.an = or disjoint i64 %i.am, 1                ; 2 uses
  %i.ao = getelementptr inbounds [24 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 16, i1 false), !tbaa.struct !99
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !84
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !98
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge
  %.127 = phi i64 [ %i.an, %bb.h ], [ %.0.lcssa, %bb.g ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.034.0.copyload = load ptr, ptr %3, align 8
  %.fr.i = freeze ptr %.sroa.034.0.copyload       ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %i.at = icmp sgt i64 %.127, %1
  br i1 %i.at, label %.lr.ph.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.i
  %.0.in18.i = add nsw i64 %.127, -1
  %.019.i = sdiv i64 %.0.in18.i, 2                ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %.fr.i, null
  br i1 %.not9.i.i.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i
  %.021.us.i = phi i64 [ %.0.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i ], [ %.019.i, %.lr.ph.i ] ; 5 uses
  %.01320.us.i = phi i64 [ %.021.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i ], [ %.127, %.lr.ph.i ] ; 4 uses
  %i.au = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.us.i ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !98 ; 3 uses
  %.not.i.i.us.i = icmp eq i64 %i.aw, %.sroa.3.0.copyload
  br i1 %.not.i.i.us.i, label %bb.j, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  %i.ax = icmp ugt i64 %i.aw, %.sroa.3.0.copyload
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !100
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i: ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !84
  %i.bc = icmp ult i64 %i.bb, %.sroa.2.0.copyload
  br i1 %i.bc, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i, %.split.us.i
  %i.bd = getelementptr inbounds [24 x i8], ptr %0, i64 %.01320.us.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 16, i1 false), !tbaa.struct !99
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.aw, ptr %i.be, align 8, !tbaa !98
  %.0.in.us.i = add nsw i64 %.021.us.i, -1
  %.0.us.i = sdiv i64 %.0.in.us.i, 2
  %i.bf = icmp sgt i64 %.021.us.i, %1
  br i1 %i.bf, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit, !llvm.loop !480

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i
  %.021.i = phi i64 [ %.0.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i ], [ %.019.i, %.lr.ph.i ] ; 5 uses
  %.01320.i = phi i64 [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i ], [ %.127, %.lr.ph.i ] ; 4 uses
  %i.bg = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !98 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.bi, %.sroa.3.0.copyload
  br i1 %.not.i.i.i, label %bb.k, label %.split.i

.split.i:                                         ; preds = %.lr.ph.split.i
  %i.bj = icmp ugt i64 %i.bi, %.sroa.3.0.copyload
  br i1 %i.bj, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

bb.k:                                             ; preds = %.lr.ph.split.i
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !100 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !84 ; 2 uses
  %i.bn = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload, i64 %i.bm)
  %i.bo = icmp eq ptr %i.bk, %.fr.i
  br i1 %i.bo, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.l
  %i.bp = tail call i32 @memcmp(ptr noundef nonnull %i.bk, ptr noundef nonnull %.fr.i, i64 noundef %i.bn) #23 ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i.i28, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.k
  %i.bq = icmp ult i64 %i.bm, %.sroa.2.0.copyload
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i
  %i.br = icmp slt i32 %i.bp, 0
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %bb.l, %.split.i
  %i.bs = getelementptr inbounds [24 x i8], ptr %0, i64 %.01320.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 16, i1 false), !tbaa.struct !99
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %i.bi, ptr %i.bt, align 8, !tbaa !98
  %.0.in.i = add nsw i64 %.021.i, -1
  %.0.i = sdiv i64 %.0.in.i, 2
  %i.bu = icmp sgt i64 %.021.i, %1
  br i1 %i.bu, label %.lr.ph.split.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit, !llvm.loop !480

_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit: ; preds = %.split.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, %.split.us.i, %bb.j, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i, %bb.i
  %.013.lcssa.i = phi i64 [ %.127, %bb.i ], [ %.021.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i ], [ %.01320.us.i, %.split.us.i ], [ %.01320.us.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i ], [ %.01320.us.i, %bb.j ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i ], [ %.01320.i, %.split.i ], [ %.01320.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ %.01320.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.i ]
  %i.bv = getelementptr inbounds [24 x i8], ptr %0, i64 %.013.lcssa.i ; 3 uses
  store ptr %.fr.i, ptr %i.bv, align 8, !tbaa !96
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.5.0..sroa_idx31, align 8, !tbaa !84
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %.sroa.3.0.copyload, ptr %i.bw, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %5 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %6 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %7 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %8 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %9 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !98   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !98   ; 6 uses
  %.not.i.i = icmp eq i64 %i.b, %i.d
  br i1 %.not.i.i, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread64, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !100    ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !100    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !84   ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !tbaa !84   ; 2 uses
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.k)
  %i.m = icmp eq ptr %i.f, %i.g
  br i1 %i.m, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread64, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not9.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i: ; preds = %bb.d
  %i.n = tail call i32 @memcmp(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef %i.l) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %bb.b
  %i.o = icmp ult i64 %i.k, %i.j
  br i1 %i.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread64, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZSt22__move_median_to_firstIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_SC_T0_:bb.a
  %i.ap = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ap, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i.i34 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i34, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread76, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not9.i.i.i.i.i35 = icmp eq ptr %i.aj, null
  br i1 %.not9.i.i.i.i.i35, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i36

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i36: ; preds = %bb.j
  %i.aq = tail call i32 @memcmp(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, i64 noundef %i.ao) #23 ; 2 uses
  %.not.i.i.i.i37 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i37, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i40, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i40: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i36, %bb.h
  %i.ar = icmp ult i64 %i.an, %i.am
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread76, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i36
  %i.as = icmp slt i32 %i.aq, 0
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread76, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread76: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i40, %bb.i, %.split72, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !84
  %i.av = load i64, ptr %i.q, align 8, !tbaa !84
  store i64 %i.av, ptr %i.at, align 8, !tbaa !84
  store i64 %i.au, ptr %i.q, align 8, !tbaa !84
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread: ; preds = %bb.j, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i40, %.split72, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !84
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !84
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !84
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !84
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread: ; preds = %bb.d, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !98 ; 4 uses
  %.not.i.i42 = icmp eq i64 %i.b, %i.ba
  br i1 %.not.i.i42, label %bb.k, label %.split78

.split78:                                         ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread
  %i.bb = icmp ugt i64 %i.b, %i.ba
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread
  %i.bc = load ptr, ptr %1, align 8, !tbaa !100   ; 3 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !100   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !84 ; 2 uses
  %i.bh = load i64, ptr %i.be, align 8, !tbaa !84 ; 2 uses
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bh)
  %i.bj = icmp eq ptr %i.bc, %i.bd
  br i1 %i.bj, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i50, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i44 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i44, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not9.i.i.i.i.i45 = icmp eq ptr %i.bd, null
  br i1 %.not9.i.i.i.i.i45, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i46

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i46: ; preds = %bb.m
  %i.bk = tail call i32 @memcmp(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, i64 noundef %i.bi) #23 ; 2 uses
  %.not.i.i.i.i47 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i47, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i50, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i50: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i46, %bb.k
  %i.bl = icmp ult i64 %i.bh, %i.bg
  br i1 %i.bl, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i46
  %i.bm = icmp slt i32 %i.bk, 0
  br i1 %i.bm, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i50, %bb.l, %.split78, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !84
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !84
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !84
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !84
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread: ; preds = %bb.m, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i50, %.split78, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51
  %.not.i.i52 = icmp eq i64 %i.d, %i.ba
  br i1 %.not.i.i52, label %bb.n, label %.split84

.split84:                                         ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread
  %i.bq = icmp ugt i64 %i.d, %i.ba
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread
  %i.br = load ptr, ptr %2, align 8, !tbaa !100   ; 3 uses
  %i.bs = load ptr, ptr %3, align 8, !tbaa !100   ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !84 ; 2 uses
  %i.bw = load i64, ptr %i.bt, align 8, !tbaa !84 ; 2 uses
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bw)
  %i.by = icmp eq ptr %i.br, %i.bs
  br i1 %i.by, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i.i54 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i54, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not9.i.i.i.i.i55 = icmp eq ptr %i.bs, null
  br i1 %.not9.i.i.i.i.i55, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i56

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i56: ; preds = %bb.p
  %i.bz = tail call i32 @memcmp(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bs, i64 noundef %i.bx) #23 ; 2 uses
  %.not.i.i.i.i57 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i.i.i57, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i56, %bb.n
  %i.ca = icmp ult i64 %i.bw, %i.bv
  br i1 %i.ca, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i56
  %i.cb = icmp slt i32 %i.bz, 0
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60, %bb.o, %.split84, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !84
  %i.ce = load i64, ptr %i.az, align 8, !tbaa !84
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !84
  store i64 %i.cd, ptr %i.az, align 8, !tbaa !84
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread: ; preds = %bb.p, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60, %.split84, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !84
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !84
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !84
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !84
  br label %bb.q

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit31.thread70, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread76
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt21__unguarded_partitionIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEET_SC_SC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.013 = phi ptr [ %1, %bb.a ], [ %.114, %bb.k ]
  %.0 = phi ptr [ %0, %bb.a ], [ %i.aj, %bb.k ]
  %i.c = load i64, ptr %i.a, align 8, !tbaa !98   ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, %bb.b
  %.1 = phi ptr [ %.0, %bb.b ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread ] ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !98   ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, %i.c
  br i1 %.not.i.i, label %bb.d, label %.split

.split:                                           ; preds = %bb.c
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit, %.split
  %i.g = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  br label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.1, align 8, !tbaa !100   ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !100    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.k = load i64, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.l = load i64, ptr %i.j, align 8, !tbaa !84   ; 2 uses
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l)
  %i.n = icmp eq ptr %i.h, %i.i
  br i1 %i.n, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not9.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i.i.i.i, label %.preheader, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i: ; preds = %bb.f
  %i.o = tail call i32 @memcmp(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.m) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %bb.d
  %i.p = icmp ult i64 %i.l, %i.k
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, label %.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, label %.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %bb.e, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.1, i64 24
  br label %bb.c, !llvm.loop !481

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %.013.pn = phi ptr [ %.013, %.preheader ], [ %.114, %.backedge.backedge ] ; 4 uses
  %.114 = getelementptr inbounds i8, ptr %.013.pn, i64 -24 ; 6 uses
  %i.s = getelementptr inbounds i8, ptr %.013.pn, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !98   ; 2 uses
  %.not.i.i15 = icmp eq i64 %i.c, %i.t
  br i1 %.not.i.i15, label %bb.g, label %.split26

.split26:                                         ; preds = %.backedge
  %i.u = icmp ugt i64 %i.c, %i.t
  br i1 %i.u, label %.backedge.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread

bb.g:                                             ; preds = %.backedge
  %i.v = load ptr, ptr %2, align 8, !tbaa !100    ; 3 uses
  %i.w = load ptr, ptr %.114, align 8, !tbaa !100 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.013.pn, i64 -16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !84   ; 2 uses
  %i.z = load i64, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.z)
  %i.ab = icmp eq ptr %i.v, %i.w
  br i1 %i.ab, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i.i17 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i17, label %.backedge.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not9.i.i.i.i.i18 = icmp eq ptr %i.w, null
  br i1 %.not9.i.i.i.i.i18, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i19

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i19: ; preds = %bb.i
  %i.ac = tail call i32 @memcmp(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i64 noundef %i.aa) #23 ; 2 uses
  %.not.i.i.i.i20 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i20, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i19, %bb.g
  %i.ad = icmp ult i64 %i.z, %i.y
  br i1 %i.ad, label %.backedge.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread

.backedge.backedge:                               ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23, %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24, %.split26
  br label %.backedge, !llvm.loop !482

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i19
  %i.ae = icmp slt i32 %i.ac, 0
  br i1 %i.ae, label %.backedge.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread: ; preds = %bb.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23, %.split26, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24
  %i.af = icmp ult ptr %.1, %.114
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread
  ret ptr %.1

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread
  %i.ag = getelementptr inbounds i8, ptr %.013.pn, i64 -8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %.1, i64 16, i1 false), !tbaa.struct !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.1, ptr noundef nonnull align 8 dereferenceable(24) %.114, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.114, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !84
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !84
  store i64 %i.ai, ptr %i.g, align 8, !tbaa !84
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %.1, i64 24
  br label %bb.b, !llvm.loop !483
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.0 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.022 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not23 = icmp eq ptr %.022, %1
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.025 = phi ptr [ %.022, %.lr.ph ], [ %.0, %bb.i ] ; 9 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.025, %bb.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.pn24, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !98   ; 8 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !98   ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, %i.g
  br i1 %.not.i.i, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread19, label %.split._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread_crit_edge

.split._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread_crit_edge: ; preds = %.split
  %.sroa.0.0.copyload.i.pre = load ptr, ptr %.025, align 8
  %.sroa.5.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pn24, i64 32
  %.sroa.5.0.copyload.i.pre = load i64, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %.025, align 8, !tbaa !100 ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !100    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn24, i64 32
  %i.l = load i64, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !84   ; 5 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m)
  %i.o = icmp eq ptr %i.i, %i.j
  br i1 %i.o, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not9.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i: ; preds = %bb.e
  %i.p = tail call i32 @memcmp(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i64 noundef %i.n) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %bb.c
  %i.q = icmp ult i64 %i.m, %i.l
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread19, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread19, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread19: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %bb.d, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.025, i64 16, i1 false)
  %i.s = ptrtoint ptr %.025 to i64
  %i.t = sub i64 %i.s, %i.d                       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIN4llvm10sampleprof10FunctionIdEmES5_ET0_T_S7_S6_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread19
  %i.v = getelementptr inbounds nuw i8, ptr %.pn24, i64 48
  %i.w = udiv exact i64 %i.t, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.w, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.v, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %.025, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 16, i1 false), !tbaa.struct !99
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !84
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !98
  %i.ac = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ad = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS4_:bb.a
  %i.ck = load i32, ptr %i.ar, align 4, !tbaa !78
  %i.cl = icmp ult i32 %i.cj, %i.ck
  br i1 %i.cl, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34.thread, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34.thread: ; preds = %bb.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !129 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %1
  br i1 %i.co, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34.thread
  %i.cp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 36
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !78 ; 2 uses
  %i.ct = icmp ult i32 %i.at, %i.cs
  br i1 %i.ct, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = icmp ult i32 %i.cs, %i.at
  br i1 %i.cu, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread88, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35: ; preds = %bb.p
  %i.cv = load i32, ptr %i.ar, align 4, !tbaa !78
  %i.cw = load i32, ptr %i.cr, align 4, !tbaa !78
  %i.cx = icmp ult i32 %i.cv, %i.cw
  br i1 %i.cx, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread88

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread: ; preds = %bb.o, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !254
  %i.da = icmp eq ptr %i.cz, null                 ; 2 uses
  %spec.select93 = select i1 %i.da, ptr null, ptr %i.cp
  %spec.select94 = select i1 %i.da, ptr %1, ptr %i.cp
  br label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread88: ; preds = %bb.p, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02124.i36 = load ptr, ptr %i.db, align 8, !tbaa !129 ; 2 uses
  %.not25.i37 = icmp eq ptr %.02124.i36, null
  br i1 %.not25.i37, label %._crit_edge.thread.i55, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread88
  %i.dc = load i32, ptr %i.ar, align 4
  br label %.backedge96

.backedge96:                                      ; preds = %.backedge96.backedge, %.lr.ph.i38
  %.02126.i39 = phi ptr [ %.02124.i36, %.lr.ph.i38 ], [ %.02126.i39.be, %.backedge96.backedge ] ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 36
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !78 ; 3 uses
  %i.dg = icmp ult i32 %i.at, %i.df
  br i1 %i.dg, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42, label %bb.q

bb.q:                                             ; preds = %.backedge96
  %i.dh = icmp ult i32 %i.df, %i.at
  br i1 %i.dh, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42.thread, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i40

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i40: ; preds = %bb.q
  %i.di = load i32, ptr %i.de, align 4, !tbaa !78
  %i.dj = icmp ult i32 %i.dc, %i.di
  br i1 %i.dj, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42.thread

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i40, %.backedge96
  %i.dk = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 16
  %.021.i44 = load ptr, ptr %i.dk, align 8, !tbaa !129 ; 2 uses
  %.not.i45 = icmp eq ptr %.021.i44, null
  br i1 %.not.i45, label %._crit_edge.thread.i55, label %.backedge96.backedge

.backedge96.backedge:                             ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42.thread
  %.02126.i39.be = phi ptr [ %.021.i44, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42 ], [ %.021.i4490, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42.thread ]
  br label %.backedge96, !llvm.loop !530

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42.thread: ; preds = %bb.q, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i40
  %i.dl = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 24
  %.021.i4490 = load ptr, ptr %i.dl, align 8, !tbaa !129 ; 2 uses
  %.not.i4591 = icmp eq ptr %.021.i4490, null
  br i1 %.not.i4591, label %._crit_edge.i46.thread, label %.backedge96.backedge

._crit_edge.thread.i55:                           ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread88
  %.020.lcssa34.i56 = phi ptr [ %i.a, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread88 ], [ %.02126.i39, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42 ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !72
  %i.do = icmp eq ptr %.020.lcssa34.i56, %i.dn
  br i1 %i.do, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i55
  %i.dp = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i56) #23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !78
  br label %._crit_edge.i46.thread

._crit_edge.i46.thread:                           ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42.thread, %bb.r
  %i.dq = phi i32 [ %.pre, %bb.r ], [ %i.df, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42.thread ] ; 2 uses
  %.020.lcssa33.i47 = phi ptr [ %.020.lcssa34.i56, %bb.r ], [ %.02126.i39, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42.thread ] ; 2 uses
  %.sroa.06.0.i48 = phi ptr [ %i.dp, %bb.r ], [ %.02126.i39, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42.thread ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i48, i64 36
  %i.ds = icmp ult i32 %i.dq, %i.at
  br i1 %i.ds, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i46.thread
  %i.dt = icmp ult i32 %i.at, %i.dq
  br i1 %i.dt, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i50, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i49

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i49: ; preds = %bb.s
  %i.du = load i32, ptr %i.dr, align 4, !tbaa !78
  %i.dv = load i32, ptr %i.ar, align 4, !tbaa !78
  %i.dw = icmp ult i32 %i.du, %i.dv
  br i1 %i.dw, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i50

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i50: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i49, %bb.s
  br label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i50, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i49, %._crit_edge.i46.thread, %._crit_edge.thread.i55, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i26, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i25, %._crit_edge.i22.thread, %._crit_edge.thread.i31, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i, %._crit_edge.i.thread, %._crit_edge.thread.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit11.thread, %bb.c, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34.thread, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit10.thread, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit
  %.sroa.078.2 = phi ptr [ null, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34.thread ], [ %spec.select, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit11.thread ], [ null, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit ], [ %spec.select93, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread ], [ %1, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34 ], [ null, %._crit_edge.i.thread ], [ %i.bb, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit10.thread ], [ null, %bb.c ], [ null, %._crit_edge.i22.thread ], [ %.sroa.06.0.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i ], [ null, %._crit_edge.thread.i ], [ null, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i ], [ %.sroa.06.0.i24, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i26 ], [ null, %._crit_edge.thread.i31 ], [ null, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i25 ], [ %.sroa.06.0.i48, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i50 ], [ null, %._crit_edge.thread.i55 ], [ null, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i49 ], [ null, %._crit_edge.i46.thread ]
  %.sroa.12.2 = phi ptr [ %i.cn, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34.thread ], [ %spec.select92, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit11.thread ], [ %i.f, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit ], [ %spec.select94, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread ], [ null, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34 ], [ %.020.lcssa33.i, %._crit_edge.i.thread ], [ %i.bb, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit10.thread ], [ %i.f, %bb.c ], [ %.020.lcssa33.i23, %._crit_edge.i22.thread ], [ null, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i ], [ %.020.lcssa34.i, %._crit_edge.thread.i ], [ %.020.lcssa33.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i ], [ null, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i26 ], [ %.020.lcssa34.i32, %._crit_edge.thread.i31 ], [ %.020.lcssa33.i23, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i25 ], [ null, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i50 ], [ %.020.lcssa34.i56, %._crit_edge.thread.i55 ], [ %.020.lcssa33.i47, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i49 ], [ %.020.lcssa33.i47, %._crit_edge.i46.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.078.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 56) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !531

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !247
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !99
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.e, align 8, !tbaa !533
  %i.f = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !100  ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !100  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !84   ; 3 uses
  %i.q = load i64, ptr %i.n, align 8, !tbaa !84   ; 3 uses
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q)
  %i.s = icmp eq ptr %i.l, %i.m
  br i1 %i.s, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not9.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.t = tail call i32 @memcmp(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i64 noundef %i.r) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.c
  %i.u = icmp eq i64 %i.q, %i.p
  br i1 %i.u, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i
  %i.v = icmp ult i64 %i.q, %i.p
  %i.w = select i1 %i.v, i32 -1, i32 1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i: ; preds = %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.e, %bb.d
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.f ], [ %i.t, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ 0, %bb.e ], [ -2147483648, %bb.d ]
  %i.x = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, %bb.b
  %i.y = phi i1 [ %i.x, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.y, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !63
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !63
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #27
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.g
  %.sroa.09.013 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.g ]
  ret ptr %.sroa.09.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100  ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !100    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !84   ; 2 uses
  %i.m = load i64, ptr %i.j, align 8, !tbaa !84   ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m)
  %i.o = icmp eq ptr %i.h, %i.i
  br i1 %i.o, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i: ; preds = %bb.e
  %i.p = tail call i32 @memcmp(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.n) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i, %bb.c
  %i.q = icmp ult i64 %i.m, %i.l
  br i1 %i.q, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread: ; preds = %bb.e, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit, %bb.b
  %i.s = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 0
  %i.u = extractvalue { ptr, ptr } %i.s, 1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %2, align 8, !tbaa !100    ; 10 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !100  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !84  ; 4 uses
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !84  ; 8 uses
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ab) ; 2 uses
  %i.ad = icmp eq ptr %i.w, %i.x
  br i1 %i.ad, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i10 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i10, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not9.i.i.i.i11 = icmp eq ptr %i.x, null
  br i1 %.not9.i.i.i.i11, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i12

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i12: ; preds = %bb.h
  %i.ae = tail call i32 @memcmp(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, i64 noundef %i.ac) #23 ; 2 uses
  %.not.i.i.i13 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i13, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15.thread, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15: ; preds = %bb.f
  %i.af = icmp ult i64 %i.ab, %i.aa
  br i1 %i.af, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i29

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15.thread: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i12
  %i.ag = icmp ult i64 %i.ab, %i.aa
  br i1 %i.ag, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i12
  %i.ah = icmp slt i32 %i.ae, 0
  br i1 %i.ah, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15.thread, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15, %bb.g, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !100 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !84 ; 2 uses
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ap)
  %i.ar = icmp eq ptr %i.an, %i.w
  br i1 %i.ar, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i17 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i17, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread71, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not9.i.i.i.i18 = icmp eq ptr %i.w, null
  br i1 %.not9.i.i.i.i18, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i19

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i19: ; preds = %bb.k
  %i.as = tail call i32 @memcmp(ptr noundef nonnull %i.an, ptr noundef nonnull %i.w, i64 noundef %i.aq) #23 ; 2 uses
  %.not.i.i.i20 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i20, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i19, %bb.i
  %i.at = icmp ult i64 %i.ap, %i.ab
  br i1 %i.at, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread71, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i19
  %i.au = icmp slt i32 %i.as, 0
  br i1 %i.au, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread71, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread71: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22, %bb.j, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !254
  %i.ax = icmp eq ptr %i.aw, null                 ; 2 uses
  %spec.select = select i1 %i.ax, ptr null, ptr %1
  %spec.select92 = select i1 %i.ax, ptr %i.al, ptr %1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23.thread: ; preds = %bb.k, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i22, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit23
  %i.ay = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15.thread, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16
  %i.bb = tail call i32 @memcmp(ptr noundef nonnull %i.x, ptr noundef nonnull %i.w, i64 noundef %i.ac) #23 ; 2 uses
  %.not.i.i.i27 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i27, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i29, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i29: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i15, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26
  %i.bc = icmp ult i64 %i.aa, %i.ab
  br i1 %i.bc, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i26
  %i.bd = icmp slt i32 %i.bb, 0
  br i1 %i.bd, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i29, %bb.h, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !129 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %1
  br i1 %i.bg, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %bb.l

bb.l:                                             ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread
  %i.bh = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !100 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !84 ; 2 uses
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.ab)
  %i.bn = icmp eq ptr %i.w, %i.bj
  br i1 %i.bn, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i36, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i31 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i31, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit37.thread88, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not9.i.i.i.i32 = icmp eq ptr %i.bj, null
  br i1 %.not9.i.i.i.i32, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit37.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i33

end_hunk_3
begin_hunk_4_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_SN_T0_":bb.a
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !257
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.bw = load ptr, ptr %i.bb, align 8, !tbaa !100 ; 3 uses
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !100 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %i.ca = load i64, ptr %i.bf, align 8, !tbaa !84 ; 2 uses
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 %i.ca)
  %i.cc = icmp eq ptr %i.bw, %i.bx
  br i1 %i.cc, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i, label %.split._crit_edge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not9.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not9.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_T0_.exit", label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i: ; preds = %bb.h
  %i.cd = tail call i32 @memcmp(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx, i64 noundef %i.cb) #23 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, label %_ZNK4llvm10sampleprof13SampleContextltERKS1_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i, %bb.f
  %i.ce = icmp ult i64 %i.ca, %i.bz
  br i1 %i.ce, label %.split._crit_edge.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_T0_.exit"

bb.i:                                             ; preds = %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit.i
  %i.cf = add nuw i64 %.02056.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cf, %.sroa.speculated.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !29

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.02056.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cf, %bb.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.02056.i ; 4 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %.02056.i ; 4 uses
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !100 ; 3 uses
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !100 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !84 ; 3 uses
  %i.cn = load i64, ptr %i.ck, align 8, !tbaa !84 ; 3 uses
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.cn)
  %i.cp = icmp eq ptr %i.ci, %i.cj
  br i1 %i.cp, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i.i27.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i27.i, label %.split._crit_edge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not9.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not9.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_T0_.exit", label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i: ; preds = %bb.l
  %i.cq = tail call i32 @memcmp(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cj, i64 noundef %i.co) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i, label %.loopexit.loopexit.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i, %bb.j
  %i.cr = icmp eq i64 %i.cn, %i.cm
  br i1 %i.cr, label %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit.i, label %.split19

.split19:                                         ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i
  %i.cs = icmp ult i64 %i.cn, %i.cm
  br i1 %i.cs, label %.split._crit_edge.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_T0_.exit"

.loopexit.loopexit.i:                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i
  %i.ct = icmp slt i32 %i.cq, 0
  br i1 %i.ct, label %.split._crit_edge.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_T0_.exit"

_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cw = load i32, ptr %i.cu, align 8, !tbaa !86 ; 3 uses
  %i.cx = load i32, ptr %i.cv, align 8, !tbaa !86 ; 3 uses
  %.not.i28.i = icmp ne i32 %i.cw, %i.cx
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.cz = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.db = load i32, ptr %i.da, align 4            ; 2 uses
  %i.dc = icmp ne i32 %i.cz, %i.db
  %i.dd = select i1 %.not.i28.i, i1 true, i1 %i.dc
  br i1 %i.dd, label %bb.m, label %bb.i

bb.m:                                             ; preds = %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit.i
  %i.de = icmp ult i32 %i.cw, %i.cx
  br i1 %i.de, label %.split._crit_edge.i, label %.split20

.split20:                                         ; preds = %bb.m
  %i.df = icmp uge i32 %i.cx, %i.cw
  %i.dg = icmp ult i32 %i.cz, %i.db
  %spec.select.i = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %spec.select.i, label %.split._crit_edge.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_T0_.exit"

._crit_edge.i:                                    ; preds = %bb.i, %.preheader.i
  %i.dh = icmp ult i64 %i.bq, %i.bs
  br i1 %i.dh, label %.split._crit_edge.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_T0_.exit"

_ZNK4llvm10sampleprof13SampleContextltERKS1_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i
  %i.di = icmp slt i32 %i.cd, 0
  br i1 %i.di, label %.split._crit_edge.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclISD_NS_17__normal_iteratorIPSD_SF_EEEEbRT_T0_.exit.i": ; preds = %bb.d
  %i.dj = icmp ugt i64 %i.bh, %i.bj
  br i1 %i.dj, label %.split._crit_edge.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_T0_.exit"

.split._crit_edge.i:                              ; preds = %bb.k, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, %bb.g, %bb.m, %_ZNK4llvm10sampleprof13SampleContextltERKS1_.exit, %.split18, %.split19, %.split20, %.loopexit.loopexit.i, %._crit_edge.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclISD_NS_17__normal_iteratorIPSD_SF_EEEEbRT_T0_.exit.i"
  %i.dk = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !84
  store i64 %i.dk, ptr %.sroa.04.0.i, align 8, !tbaa !84
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  store ptr %.val2.i.i, ptr %i.dl, align 8, !tbaa !146
  br label %bb.d, !llvm.loop !651

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_T0_.exit": ; preds = %bb.h, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i, %._crit_edge.i, %.loopexit.loopexit.i, %.split20, %.split19, %.split18, %_ZNK4llvm10sampleprof13SampleContextltERKS1_.exit, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclISD_NS_17__normal_iteratorIPSD_SF_EEEEbRT_T0_.exit.i", %bb.l
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.04.0.i, align 8, !tbaa !84
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %i.dm, align 8, !tbaa !146
  br label %bb.n

bb.n:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_T0_.exit"
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.055, i64 16 ; 2 uses
  %.not = icmp eq ptr %.sroa.08.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !652

.loopexit:                                        ; preds = %bb.n, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm10sampleprof13SampleContextltERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !210  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !210  ; 2 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %i.b, %i.d
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

bb.c:                                             ; preds = %bb.a
  %.not38 = icmp eq i32 %i.b, 0
  br i1 %.not38, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !206  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !206  ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  %.not58 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !257
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !257
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !100    ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !100    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !84   ; 3 uses
  %i.s = load i64, ptr %i.p, align 8, !tbaa !84   ; 3 uses
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.s)
  %i.u = icmp eq ptr %i.n, %i.o
  br i1 %i.u, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not9.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i.i, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i: ; preds = %bb.f
  %i.v = tail call i32 @memcmp(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i64 noundef %i.t) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i, %bb.d
  %i.w = icmp eq i64 %i.s, %i.r
  br i1 %i.w, label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i
  %i.x = icmp ult i64 %i.s, %i.r
  %i.y = select i1 %i.x, i32 -1, i32 1
  br label %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit

_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit: ; preds = %bb.e, %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i, %bb.g
  %.0.i.i = phi i32 [ %i.y, %bb.g ], [ %i.v, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i ], [ 0, %bb.f ], [ -2147483648, %bb.e ]
  %i.z = icmp slt i32 %.0.i.i, 0
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

bb.h:                                             ; preds = %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit
  %i.aa = add nuw i64 %.02056, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !29

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.02056 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.02056 ; 4 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.02056 ; 4 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !100 ; 3 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !100 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !84 ; 3 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !84 ; 3 uses
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ai)
  %i.ak = icmp eq ptr %i.ad, %i.ae
  br i1 %i.ak, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i27 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i27, label %.loopexit.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not9.i.i = icmp eq ptr %i.ae, null
  br i1 %.not9.i.i, label %.loopexit.loopexit, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i: ; preds = %bb.k
  %i.al = tail call i32 @memcmp(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, i64 noundef %i.aj) #23 ; 2 uses
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i, label %.loopexit.loopexit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i, %bb.i
  %i.am = icmp eq i64 %i.ai, %i.ah
  br i1 %i.am, label %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i
  %i.an = icmp ult i64 %i.ai, %i.ah
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

.loopexit.loopexit:                               ; preds = %bb.j, %bb.k, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i
  %.0.i.ph.ph = phi i32 [ -2147483648, %bb.j ], [ 0, %bb.k ], [ %i.al, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i ]
  %i.ao = icmp slt i32 %.0.i.ph.ph, 0
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ar = load i32, ptr %i.ap, align 8, !tbaa !86 ; 3 uses
  %i.as = load i32, ptr %i.aq, align 8, !tbaa !86 ; 3 uses
  %.not.i28 = icmp ne i32 %i.ar, %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ax = icmp ne i32 %i.au, %i.aw
  %i.ay = select i1 %.not.i28, i1 true, i1 %i.ax
  br i1 %i.ay, label %bb.m, label %bb.h

bb.m:                                             ; preds = %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit
  %i.az = icmp ult i32 %i.ar, %i.as
  br i1 %i.az, label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp uge i32 %i.as, %i.ar
  %i.bb = icmp ult i32 %i.au, %i.aw
  %spec.select = select i1 %i.ba, i1 %i.bb, i1 false
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %i.bc = icmp ult i64 %i.g, %i.i
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread: ; preds = %bb.l, %.loopexit.loopexit, %bb.n, %bb.m, %._crit_edge, %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit, %bb.b
  %.3 = phi i1 [ %i.e, %bb.b ], [ %i.z, %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit ], [ %i.bc, %._crit_edge ], [ true, %bb.m ], [ %spec.select, %bb.n ], [ %i.an, %bb.l ], [ %i.ao, %.loopexit.loopexit ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_SN_SN_T0_SO_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond85 = or i1 %i.a, %i.b
  br i1 %or.cond85, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8290 = phi i64 [ %4, %.lr.ph ], [ %i.bu, %tailrecurse ] ; 4 uses
  %.tr8189 = phi i64 [ %3, %.lr.ph ], [ %i.bt, %tailrecurse ] ; 4 uses
  %.tr7987 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr86 = phi ptr [ %0, %.lr.ph ], [ %i.bs, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr8290, %.tr8189
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.tr7987, i64 8    ; 3 uses
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !146 ; 3 uses
  %i.g = getelementptr i8, ptr %.tr86, i64 8      ; 3 uses
  %.val1.i = load ptr, ptr %i.g, align 8, !tbaa !146 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !120  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !120  ; 2 uses
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %.split, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclINS_17__normal_iteratorIPSD_SF_EESM_EEbT_T0_.exit"

.split:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm10sampleprof13SampleContextltERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.n)
  br i1 %i.o, label %.split._crit_edge, label %.loopexit

.split._crit_edge:                                ; preds = %.split
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !143
  %.pre93 = load ptr, ptr %i.f, align 8, !tbaa !143
  br label %bb.d

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclINS_17__normal_iteratorIPSD_SF_EESM_EEbT_T0_.exit": ; preds = %bb.c
  %i.p = icmp ugt i64 %i.i, %i.k
  br i1 %i.p, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.split._crit_edge, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclINS_17__normal_iteratorIPSD_SF_EESM_EEbT_T0_.exit"
  %i.q = phi ptr [ %.pre93, %.split._crit_edge ], [ %.val.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclINS_17__normal_iteratorIPSD_SF_EESM_EEbT_T0_.exit" ]
  %i.r = phi ptr [ %.pre, %.split._crit_edge ], [ %.val1.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclINS_17__normal_iteratorIPSD_SF_EESM_EEbT_T0_.exit" ]
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.tr86, align 8, !tbaa !84
  %i.s = load i64, ptr %.tr7987, align 8, !tbaa !84
  store i64 %i.s, ptr %.tr86, align 8, !tbaa !84
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %.tr7987, align 8, !tbaa !84
  store ptr %i.q, ptr %i.g, align 8, !tbaa !143
  store ptr %i.r, ptr %i.f, align 8, !tbaa !143
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp sgt i64 %.tr8189, %.tr8290
  %i.u = ptrtoint ptr %.tr7987 to i64             ; 4 uses
  br i1 %i.t, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.v = sdiv i64 %.tr8189, 2                     ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %.tr86, i64 %i.v ; 2 uses
  %i.x = sub i64 %i.c, %i.u
  %i.y = ashr exact i64 %i.x, 4                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEET_SN_SN_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.016.i = phi i64 [ %i.y, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %bb.g ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.tr7987, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %bb.g ] ; 3 uses
  %i.ab = lshr i64 %.016.i, 1                     ; 4 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i, i64 %i.ab ; 2 uses
  %.val.i50 = load ptr, ptr %i.aa, align 8, !tbaa !146 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val.i.i = load ptr, ptr %i.ad, align 8, !tbaa !146 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 56
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !120 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i50, i64 56
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !120 ; 2 uses
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %.split.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclINS_17__normal_iteratorIPSD_SF_EEKSD_EEbT_RT0_.exit.i"

.split.i:                                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i50, i64 16
  %i.al = tail call noundef zeroext i1 @_ZNK4llvm10sampleprof13SampleContextltERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.ak)
  br i1 %i.al, label %bb.f, label %bb.g

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclINS_17__normal_iteratorIPSD_SF_EEKSD_EEbT_RT0_.exit.i": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.am = icmp ugt i64 %i.af, %i.ah
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclINS_17__normal_iteratorIPSD_SF_EEKSD_EEbT_RT0_.exit.i", %.split.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ao = xor i64 %i.ab, -1
  %i.ap = add nsw i64 %.016.i, %i.ao
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclINS_17__normal_iteratorIPSD_SF_EEKSD_EEbT_RT0_.exit.i", %.split.i
  %.sroa.011.1.i = phi ptr [ %i.an, %bb.f ], [ %.sroa.011.015.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclINS_17__normal_iteratorIPSD_SF_EEKSD_EEbT_RT0_.exit.i" ], [ %.sroa.011.015.i, %.split.i ] ; 3 uses
  %.1.i = phi i64 [ %i.ap, %bb.f ], [ %i.ab, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclINS_17__normal_iteratorIPSD_SF_EEKSD_EEbT_RT0_.exit.i" ], [ %i.ab, %.split.i ] ; 2 uses
  %i.aq = icmp sgt i64 %.1.i, 0
  br i1 %i.aq, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit", !llvm.loop !32

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit": ; preds = %bb.g
  %.pre94 = ptrtoint ptr %.sroa.011.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEET_SN_SN_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEET_SN_SN_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre94, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit" ], [ %i.u, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEET_SN_SN_RKT0_T1_.exit.loopexit" ], [ %.tr7987, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ar = sub i64 %.pre-phi, %i.u
  %i.as = ashr exact i64 %i.ar, 4
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54: ; preds = %bb.e
  %i.at = sdiv i64 %.tr8290, 2                    ; 2 uses
  %i.au = getelementptr inbounds [16 x i8], ptr %.tr7987, i64 %i.at ; 2 uses
  %i.av = ptrtoint ptr %.tr86 to i64              ; 3 uses
  %i.aw = sub i64 %i.u, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEET_SN_SN_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %bb.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56
  %.016.i58 = phi i64 [ %i.ax, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56 ], [ %.1.i64, %bb.i ] ; 2 uses
  %.sroa.011.015.i59 = phi ptr [ %.tr86, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i56 ], [ %.sroa.011.1.i63, %bb.i ] ; 3 uses
  %i.ba = lshr i64 %.016.i58, 1                   ; 4 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i59, i64 %i.ba ; 2 uses
  %.val.i62 = load ptr, ptr %i.az, align 8, !tbaa !146 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %.val2.i.i = load ptr, ptr %i.bc, align 8, !tbaa !146 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i62, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !120 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 56
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !120 ; 2 uses
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %.split.i65, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclIKSD_NS_17__normal_iteratorIPSD_SF_EEEEbRT_T0_.exit.i"

.split.i65:                                       ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i62, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.bk = tail call noundef zeroext i1 @_ZNK4llvm10sampleprof13SampleContextltERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.bj)
  br i1 %i.bk, label %bb.i, label %bb.h

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclIKSD_NS_17__normal_iteratorIPSD_SF_EEEEbRT_T0_.exit.i": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %i.bl = icmp ugt i64 %i.be, %i.bg
  br i1 %i.bl, label %bb.i, label %bb.h

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclIKSD_NS_17__normal_iteratorIPSD_SF_EEEEbRT_T0_.exit.i", %.split.i65
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
end_hunk_4
begin_hunk_5_@_ZNSt8_Rb_treeImSt4pairIKmN4llvm10sampleprof16ProfileConverter9FrameNodeEESt10_Select1stIS6_ESt4lessImESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_:bb.a

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %2, align 8, !tbaa !84     ; 8 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !84   ; 2 uses
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !129 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeImSt4pairIKmN4llvm10sampleprof16ProfileConverter9FrameNodeEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !84
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !254
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeImSt4pairIKmN4llvm10sampleprof16ProfileConverter9FrameNodeEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !129 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !84 ; 2 uses
  %i.an = icmp ult i64 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !129 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !694

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeImSt4pairIKmN4llvm10sampleprof16ProfileConverter9FrameNodeEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #23 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8, !tbaa !84
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i64 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i64 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmN4llvm10sampleprof16ProfileConverter9FrameNodeEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeImSt4pairIKmN4llvm10sampleprof16ProfileConverter9FrameNodeEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !129 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeImSt4pairIKmN4llvm10sampleprof16ProfileConverter9FrameNodeEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !84
  %i.az = icmp ult i64 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !254
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeImSt4pairIKmN4llvm10sampleprof16ProfileConverter9FrameNodeEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !129 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !84 ; 2 uses
  %i.bg = icmp ult i64 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !129 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !694

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !72
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeImSt4pairIKmN4llvm10sampleprof16ProfileConverter9FrameNodeEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !84
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i64 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i64 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmN4llvm10sampleprof16ProfileConverter9FrameNodeEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeImSt4pairIKmN4llvm10sampleprof16ProfileConverter9FrameNodeEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJS2_RS5_EEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(224) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #26 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @_ZN4llvm10sampleprof15FunctionSamplesC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(224) %i.c, ptr noundef nonnull align 8 dereferenceable(224) %3)
  %i.d = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !100  ; 3 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !100  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !84   ; 3 uses
  %i.o = load i64, ptr %i.l, align 8, !tbaa !84   ; 3 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.o)
  %i.q = icmp eq ptr %i.j, %i.k
  br i1 %i.q, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.r = tail call i32 @memcmp(ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i64 noundef %i.p) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.c
  %i.s = icmp eq i64 %i.o, %i.n
  br i1 %i.s, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i
  %i.t = icmp ult i64 %i.o, %i.n
  %i.u = select i1 %i.t, i32 -1, i32 1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i: ; preds = %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.e, %bb.d
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.f ], [ %i.r, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ 0, %bb.e ], [ -2147483648, %bb.d ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, %bb.b
  %i.w = phi i1 [ %i.v, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.w, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !63
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !63
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !128
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef %i.ac), !inline_history !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !128
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef %i.af), !inline_history !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !128
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef %i.ai), !inline_history !12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 272) #27, !inline_history !14
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.g
  %.sroa.08.012 = phi ptr [ %i.a, %.thread ], [ %i.e, %bb.g ]
  ret ptr %.sroa.08.012
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm10sampleprof15FunctionSamplesC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<llvm::sampleprof::LineLocation, std::pair<const llvm::sampleprof::LineLocation, std::map<llvm::sampleprof::FunctionId, llvm::sampleprof::FunctionSamples>>, std::_Select1st<std::pair<const llvm::sampleprof::LineLocation, std::map<llvm::sampleprof::FunctionId, llvm::sampleprof::FunctionSamples>>>, std::less<llvm::sampleprof::LineLocation>>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca %"struct.std::_Rb_tree<llvm::sampleprof::LineLocation, std::pair<const llvm::sampleprof::LineLocation, std::map<llvm::sampleprof::FunctionId, unsigned long>>, std::_Select1st<std::pair<const llvm::sampleprof::LineLocation, std::map<llvm::sampleprof::FunctionId, unsigned long>>>, std::less<llvm::sampleprof::LineLocation>>::_Alloc_node", align 8 ; 4 uses
  %4 = alloca %"struct.std::_Rb_tree<llvm::sampleprof::LineLocation, std::pair<const llvm::sampleprof::LineLocation, llvm::sampleprof::SampleRecord>, std::_Select1st<std::pair<const llvm::sampleprof::LineLocation, llvm::sampleprof::SampleRecord>>, std::less<llvm::sampleprof::LineLocation>>::_Alloc_node", align 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !217
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !216
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !128  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEC2ERKSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.h, ptr %4, align 8, !tbaa !697
  %i.i = call noundef ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE7_M_copyILb0ENSC_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESH_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !255  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.c, !llvm.loop !34

_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.c
  store ptr %.0.i.i.i.i.i.i, ptr %i.c, align 8, !tbaa !129
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.i, %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !254  ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE7_M_copyERKSC_.exit.i.i, label %bb.d, !llvm.loop !35

_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE7_M_copyERKSC_.exit.i.i: ; preds = %bb.d
  store ptr %.0.i.i7.i.i.i.i, ptr %i.d, align 8, !tbaa !129
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i64, ptr %i.n, align 8, !tbaa !63
  store i64 %i.o, ptr %i.e, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store ptr %i.i, ptr %i.b, align 8, !tbaa !129
  br label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEC2ERKSA_.exit

_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEC2ERKSA_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE7_M_copyERKSC_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store i32 0, ptr %i.p, align 8, !tbaa !217
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.p, ptr %i.s, align 8, !tbaa !216
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store i64 0, ptr %i.t, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !128  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EEC2ERKSJ_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEC2ERKSA_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.w, ptr %2, align 8, !tbaa !699
  %i.x = call noundef ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE7_M_copyILb0ENSJ_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISE_ESO_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull %i.v, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !695 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi ptr [ %i.x, %bb.e ], [ %i.z, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !255  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %bb.f, !llvm.loop !34

_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %bb.f
  store ptr %.0.i.i.i, ptr %i.r, align 8, !tbaa !129
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.x, %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.ab, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !254 ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i8.i, label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE7_M_copyILb0ENSJ_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSJ_RT0_.exit, label %bb.g, !llvm.loop !35

_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE7_M_copyILb0ENSJ_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSJ_RT0_.exit: ; preds = %bb.g
  store ptr %.0.i.i7.i, ptr %i.s, align 8, !tbaa !129
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !63
  store i64 %i.ad, ptr %i.t, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  store ptr %i.x, ptr %i.q, align 8, !tbaa !129
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EEC2ERKSJ_.exit

_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EEC2ERKSJ_.exit: ; preds = %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEEC2ERKSA_.exit, %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE7_M_copyILb0ENSJ_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISE_ERKSJ_RT0_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !217
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !128
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !216
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !128 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i6, label %_ZNSt3mapIN4llvm10sampleprof12LineLocationES_INS1_10FunctionIdEmSt4lessIS3_ESaISt4pairIKS3_mEEES4_IS2_ESaIS6_IKS2_SA_EEEC2ERKSF_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EEC2ERKSJ_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.al, ptr %3, align 8, !tbaa !701
  %i.am = call noundef ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE7_M_copyILb0ENSI_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISD_ESN_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i7 = phi ptr [ %i.am, %bb.h ], [ %i.ao, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i7, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !255 ; 2 uses
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.i, !llvm.loop !34

_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.i
  store ptr %.0.i.i.i.i.i.i7, ptr %i.ag, align 8, !tbaa !129
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i9 = phi ptr [ %i.am, %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.aq, %bb.j ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i9, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !254 ; 2 uses
  %.not.i.i8.i.i.i.i10 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i8.i.i.i.i10, label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE7_M_copyERKSI_.exit.i.i, label %bb.j, !llvm.loop !35

_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE7_M_copyERKSI_.exit.i.i: ; preds = %bb.j
  store ptr %.0.i.i7.i.i.i.i9, ptr %i.ah, align 8, !tbaa !129
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !63
  store i64 %i.as, ptr %i.ai, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr %i.am, ptr %i.af, align 8, !tbaa !129
  br label %_ZNSt3mapIN4llvm10sampleprof12LineLocationES_INS1_10FunctionIdEmSt4lessIS3_ESaISt4pairIKS3_mEEES4_IS2_ESaIS6_IKS2_SA_EEEC2ERKSF_.exit

_ZNSt3mapIN4llvm10sampleprof12LineLocationES_INS1_10FunctionIdEmSt4lessIS3_ESaISt4pairIKS3_mEEES4_IS2_ESaIS6_IKS2_SA_EEEC2ERKSF_.exit: ; preds = %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EEC2ERKSJ_.exit, %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE7_M_copyERKSI_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !130
  store ptr %i.av, ptr %i.at, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE7_M_copyILb0ENSC_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS6_ESH_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
end_hunk_5
begin_hunk_6_@_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE7_M_copyILb0ENSI_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISD_ESN_PSt18_Rb_tree_node_baseRT0_:bb.a
bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i.i.i31 = phi ptr [ %i.am, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i31, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !255 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i32 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i32, label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i.i33, label %bb.h, !llvm.loop !34

_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i.i33: ; preds = %bb.h
  store ptr %.0.i.i.i.i.i.i.i.i.i.i.i31, ptr %i.ag, align 8, !tbaa !129
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i.i33
  %.0.i.i7.i.i.i.i.i.i.i.i.i34 = phi ptr [ %i.am, %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i.i.i33 ], [ %i.aq, %bb.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i.i.i34, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !254 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i.i.i35 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i.i.i35, label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i.i.i.i36, label %bb.i, !llvm.loop !35

_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i.i.i.i36: ; preds = %bb.i
  store ptr %.0.i.i7.i.i.i.i.i.i.i.i.i34, ptr %i.ah, align 8, !tbaa !129
  %i.ar = getelementptr inbounds nuw i8, ptr %.042, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !63
  store i64 %i.as, ptr %i.ai, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store ptr %i.am, ptr %i.af, align 8, !tbaa !129
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE13_M_clone_nodeILb0ENSI_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISD_ESN_RT0_.exit37

_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE13_M_clone_nodeILb0ENSI_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISD_ESN_RT0_.exit37: ; preds = %.lr.ph, %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyERKSB_.exit.i.i.i.i.i.i.i36
  %i.at = load i32, ptr %.042, align 8, !tbaa !259
  store i32 %i.at, ptr %i.ab, align 8, !tbaa !259
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.02741, i64 16
  store ptr %i.ab, ptr %i.av, align 8, !tbaa !255
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.02741, ptr %i.aw, align 8, !tbaa !245
  %i.ax = getelementptr inbounds nuw i8, ptr %.042, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !254 ; 2 uses
  %.not29 = icmp eq ptr %i.ay, null
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE13_M_clone_nodeILb0ENSI_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISD_ESN_RT0_.exit37
  %i.az = call noundef ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE7_M_copyILb0ENSI_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISD_ESN_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !254
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE13_M_clone_nodeILb0ENSI_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISD_ESN_RT0_.exit37
  %.0.in = getelementptr inbounds nuw i8, ptr %.042, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !255 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !709

._crit_edge:                                      ; preds = %bb.k, %bb.f
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.d = load i32, ptr %1, align 8, !tbaa !259
  store i32 %i.d, ptr %i.b, align 8, !tbaa !259
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.f, align 8, !tbaa !245
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !254  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !254
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in30 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.031 = load ptr, ptr %.0.in30, align 8, !tbaa !255 ; 2 uses
  %.not2832 = icmp eq ptr %.031, null
  br i1 %.not2832, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.034 = phi ptr [ %.0, %bb.e ], [ %.031, %bb.c ] ; 4 uses
  %.02733 = phi ptr [ %i.l, %bb.e ], [ %i.b, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %i.l = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.n = load i32, ptr %.034, align 8, !tbaa !259
  store i32 %i.n, ptr %i.l, align 8, !tbaa !259
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.02733, i64 16
  store ptr %i.l, ptr %i.p, align 8, !tbaa !255
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.02733, ptr %i.q, align 8, !tbaa !245
  %i.r = getelementptr inbounds nuw i8, ptr %.034, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !254  ; 2 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = tail call noundef ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.s, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !254
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.0.in = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !255 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !712

._crit_edge:                                      ; preds = %bb.e, %bb.c
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #26 ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !247
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !99
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.e, i8 0, i64 184, i1 false)
  store ptr %i.f, ptr %i.g, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.f, ptr %i.h, align 8, !tbaa !216
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr %i.i, ptr %i.j, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store ptr %i.i, ptr %i.k, align 8, !tbaa !216
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !128
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.l, ptr %i.n, align 8, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr %i.l, ptr %i.o, align 8, !tbaa !216
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b) ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 5 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.u
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !100  ; 3 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !100  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !84  ; 3 uses
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !84  ; 3 uses
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ab)
  %i.ad = icmp eq ptr %i.w, %i.x
  br i1 %i.ad, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not9.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ae = tail call i32 @memcmp(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, i64 noundef %i.ac) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.c
  %i.af = icmp eq i64 %i.ab, %i.aa
  br i1 %i.af, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i
  %i.ag = icmp ult i64 %i.ab, %i.aa
  %i.ah = select i1 %i.ag, i32 -1, i32 1
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i: ; preds = %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.e, %bb.d
  %.0.i.i.i.i.i = phi i32 [ %i.ah, %bb.f ], [ %i.ae, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ 0, %bb.e ], [ -2147483648, %bb.d ]
  %i.ai = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, %bb.b
  %i.aj = phi i1 [ %i.ai, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #22
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !63
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !63
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !128
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef %i.ao), !inline_history !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !128
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef %i.ar), !inline_history !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !128
  tail call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef %i.au), !inline_history !12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 272) #27, !inline_history !14
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_NS1_15FunctionSamplesEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.g
  %.sroa.09.013 = phi ptr [ %i.a, %.thread ], [ %i.r, %bb.g ]
  ret ptr %.sroa.09.013
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_SampleProf.cpp() #18 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL23ProfileSymbolListCutOff, i32 noundef 0, i32 noundef 0) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL23ProfileSymbolListCutOff, i64 120), i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueImEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23ProfileSymbolListCutOff, i64 128), align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optImLb0ENS0_6parserImEEEE, i64 16), ptr @_ZL23ProfileSymbolListCutOff, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserImEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23ProfileSymbolListCutOff, i64 152), align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL23ProfileSymbolListCutOff, i64 160), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) @_ZL23ProfileSymbolListCutOff, ptr nonnull align 1 dereferenceable(27) @.str, i64 26) #22
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL23ProfileSymbolListCutOff, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL23ProfileSymbolListCutOff, i64 10), align 2
  store i64 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZL23ProfileSymbolListCutOff, i64 120), align 8, !tbaa !192
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL23ProfileSymbolListCutOff, i64 144), align 8, !tbaa !248
  store i64 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZL23ProfileSymbolListCutOff, i64 136), align 8, !tbaa !713
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL23ProfileSymbolListCutOff, i64 32), align 8, !tbaa !96
  store i64 118, ptr getelementptr inbounds nuw (i8, ptr @_ZL23ProfileSymbolListCutOff, i64 40), align 8, !tbaa !84
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(192) @_ZL23ProfileSymbolListCutOff) #22
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optImLb0ENS0_6parserImEEED2Ev, ptr nonnull @_ZL23ProfileSymbolListCutOff, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL26GenerateMergedBaseProfiles, i32 noundef 0, i32 noundef 0) #22
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL26GenerateMergedBaseProfiles, i64 120), align 8, !tbaa !174
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL26GenerateMergedBaseProfiles, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL26GenerateMergedBaseProfiles, i64 128), align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL26GenerateMergedBaseProfiles, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL26GenerateMergedBaseProfiles, i64 144), align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL26GenerateMergedBaseProfiles, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL26GenerateMergedBaseProfiles, ptr nonnull align 1 dereferenceable(30) @.str.3, i64 29) #22
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZL26GenerateMergedBaseProfiles, i64 32), align 8, !tbaa !96
  store i64 144, ptr getelementptr inbounds nuw (i8, ptr @_ZL26GenerateMergedBaseProfiles, i64 40), align 8, !tbaa !84
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL26GenerateMergedBaseProfiles) #22
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL26GenerateMergedBaseProfiles, ptr nonnull @__dso_handle) #22 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind allocsize(0) }
attributes #27 = { builtin nounwind }

!llvm.module.flags = !{!36, !37}
!llvm.ident = !{!38}
!llvm.errno.tbaa = !{!43}

!0 = distinct !{null}
!1 = distinct !{!1, !71}
!2 = distinct !{!2, !71}
!3 = distinct !{!3, !71}
!4 = distinct !{!4, !71}
!5 = distinct !{!5, !71}
!6 = distinct !{!6, !71}
!7 = distinct !{!7, !71}
!8 = distinct !{null}
!9 = distinct !{null, null, null}
!10 = distinct !{!10, !71}
!11 = distinct !{!11, !71}
!12 = distinct !{null, null, null, null}
!13 = distinct !{null, null, null, null, null, null}
!14 = distinct !{null}
!15 = distinct !{!15, !71}
!16 = distinct !{!16, !71}
!17 = distinct !{!17, !71}
!18 = distinct !{!18, !71}
!19 = distinct !{!19, !71}
!20 = distinct !{null}
!21 = distinct !{!21, !71}
!22 = distinct !{!22, !71}
!23 = distinct !{!23, !71}
!24 = distinct !{!24, !71}
!25 = distinct !{!25, !71}
!26 = distinct !{!26, !71}
!27 = distinct !{!27, !71}
!28 = distinct !{!28, !71}
!29 = distinct !{!29, !71}
!30 = distinct !{!30, !71}
!31 = distinct !{!31, !71}
!32 = distinct !{!32, !71}
!33 = distinct !{!33, !71}
!34 = distinct !{!34, !71}
!35 = distinct !{!35, !71}
!36 = !{i32 8, !"PIC Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 2}
!38 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"omnipotent char", !39, i64 0}
!41 = !{!"int", !40, i64 0}
!42 = !{!"__libc_errno", !41, i64 0}
!43 = !{!42, !41, i64 0}
!44 = !{!"vtable pointer", !39, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"any pointer", !40, i64 0}
!47 = !{!"_ZTSSt14_Function_base", !40, i64 0, !46, i64 16}
!48 = !{!47, !46, i64 16}
!49 = !{!"any p2 pointer", !46, i64 0}
!50 = !{!"bool", !40, i64 0}
!51 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !49, i64 0, !41, i64 8, !41, i64 12, !50, i64 16}
!52 = !{!51, !50, i64 16}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = !{!51, !49, i64 0}
!56 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !46, i64 0, !41, i64 8, !41, i64 12}
!57 = !{!56, !46, i64 0}
!58 = !{!"_ZTSSt14_Rb_tree_color", !40, i64 0}
!59 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !46, i64 0}
!60 = !{!"_ZTSSt18_Rb_tree_node_base", !58, i64 0, !59, i64 8, !59, i64 16, !59, i64 24}
!61 = !{!"long", !40, i64 0}
!62 = !{!"_ZTSSt15_Rb_tree_header", !60, i64 0, !61, i64 32}
!63 = !{!62, !61, i64 32}
!64 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !40, i64 0}
!65 = !{!"p1 omnipotent char", !46, i64 0}
!66 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !40, i64 0}
!67 = !{!"_ZTSN4llvm11raw_ostreamE", !64, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !50, i64 40, !66, i64 44}
!68 = !{!67, !65, i64 32}
!69 = !{!67, !65, i64 24}
!70 = !{!40, !40, i64 0}
!71 = !{!"llvm.loop.mustprogress"}
end_hunk_6
