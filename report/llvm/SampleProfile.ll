Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProfile?download=true
inline.NumInlined: 13228
inline.NumDeleted: 6562
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvm10sampleprof15FunctionSamples5mergeERKS1_m:bb.a
  br i1 %.not96102, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph113
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 40 ; 2 uses
  br label %bb.v

._crit_edge107:                                   ; preds = %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit, %.lr.ph113
  %.2.lcssa = phi i32 [ %.1110, %.lr.ph113 ], [ %spec.select91, %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit ] ; 2 uses
  %i.ct = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.071.0111) #28 ; 2 uses
  %.not94 = icmp eq ptr %i.ct, %i.bf
  br i1 %.not94, label %._crit_edge114, label %.lr.ph113

bb.v:                                             ; preds = %.lr.ph106, %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit
  %.sroa.067.0104 = phi ptr [ %i.co, %.lr.ph106 ], [ %i.fw, %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit ] ; 4 uses
  %.2103 = phi i32 [ %.1110, %.lr.ph106 ], [ %spec.select91, %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.067.0104, i64 32 ; 2 uses
  %i.cv = load ptr, ptr %i.cq, align 8, !tbaa !438 ; 3 uses
  %.not14.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not14.i.i.i.i, label %.critedge.i56, label %.lr.ph.i.i.i.i52

.lr.ph.i.i.i.i52:                                 ; preds = %bb.v
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !475
  %.fr.i.i.i.i = freeze ptr %i.cw                 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.067.0104, i64 40
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !124 ; 5 uses
  %.not9.i.i.i.i.i.i.i.i = icmp eq ptr %.fr.i.i.i.i, null ; 2 uses
  br i1 %.not9.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i52, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i
  %.016.us.i.i.i.i = phi ptr [ %.1.us.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i ], [ %i.cv, %.lr.ph.i.i.i.i52 ] ; 5 uses
  %.0815.us.i.i.i.i = phi ptr [ %.19.us.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i ], [ %i.cr, %.lr.ph.i.i.i.i52 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i.i, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !475
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i.i, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !124
  %i.de = icmp ult i64 %i.dd, %i.cy               ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.de, i64 24, i64 16
  %spec.select22.i.i.i.i = select i1 %i.de, ptr %.0815.us.i.i.i.i, ptr %.016.us.i.i.i.i
  br label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i
  %.sink.i.i.i.i57 = phi i64 [ %spec.select.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i ], [ 16, %.lr.ph.split.us.i.i.i.i ]
  %.19.us.i.i.i.i = phi ptr [ %spec.select22.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.us.i.i.i.i ], [ %.016.us.i.i.i.i, %.lr.ph.split.us.i.i.i.i ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.016.us.i.i.i.i, i64 %.sink.i.i.i.i57
  %.1.us.i.i.i.i = load ptr, ptr %i.df, align 8, !tbaa !498 ; 2 uses
  %.not.us.i.i.i.i = icmp eq ptr %.1.us.i.i.i.i, null
  br i1 %.not.us.i.i.i.i, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.split.us.i.i.i.i, !llvm.loop !1426

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i52, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %.1.i.i.i.i54, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %i.cv, %.lr.ph.i.i.i.i52 ] ; 5 uses
  %.0815.i.i.i.i = phi ptr [ %.19.i.i.i.i53, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %i.cr, %.lr.ph.i.i.i.i52 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !475 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !124 ; 2 uses
  %i.dk = call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.dj)
  %i.dl = icmp eq ptr %i.dh, %.fr.i.i.i.i
  br i1 %i.dl, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread12.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.dm = call i32 @memcmp(ptr noundef nonnull %i.dh, ptr noundef nonnull %.fr.i.i.i.i, i64 noundef %i.dk) #28 ; 2 uses
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
  %.1.i.i.i.i54 = load ptr, ptr %i.dp, align 8, !tbaa !498 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %.1.i.i.i.i54, null
  br i1 %.not.i.i.i.i55, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.split.i.i.i.i, !llvm.loop !1426

_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i
  %.08.lcssa.i.i.i.i = phi ptr [ %.19.us.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.us.i.i.i.i ], [ %.19.i.i.i.i53, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread.i.i.i.i ] ; 10 uses
  %i.dq = icmp eq ptr %.08.lcssa.i.i.i.i, %i.cr
  br i1 %i.dq, label %.critedge.i56, label %bb.x

bb.x:                                             ; preds = %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !475 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i, i64 40
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !124 ; 2 uses
  %i.dv = call i64 @llvm.umin.i64(i64 %i.du, i64 %i.cy)
  %i.dw = icmp eq ptr %.fr.i.i.i.i, %i.ds
  br i1 %i.dw, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not9.i.i.i.i.i.i.i.i, label %.critedge.i56, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not9.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not9.i.i.i.i.i, label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i: ; preds = %bb.z
  %i.dx = call i32 @memcmp(ptr noundef nonnull %.fr.i.i.i.i, ptr noundef nonnull %i.ds, i64 noundef %i.dv) #28 ; 2 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i64 16, i1 false), !tbaa.struct !623
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 128 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ec, i8 0, i64 184, i1 false)
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !439
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 152
  store ptr %i.ed, ptr %i.ef, align 8, !tbaa !440
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 176 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 192
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !439
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 200
  store ptr %i.eg, ptr %i.ei, align 8, !tbaa !440
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 224 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 232 ; 2 uses
  store ptr null, ptr %i.ek, align 8, !tbaa !438
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 240
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !439
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 248
  store ptr %i.ej, ptr %i.em, align 8, !tbaa !440
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
  %i.et = load ptr, ptr %i.eb, align 8, !tbaa !475 ; 3 uses
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !475 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !124 ; 3 uses
  %i.ey = load i64, ptr %i.ev, align 8, !tbaa !124 ; 3 uses
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
  %i.fb = call i32 @memcmp(ptr noundef nonnull %i.et, ptr noundef nonnull %i.eu, i64 noundef %i.ez) #28 ; 2 uses
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
  %.0.i.i.i.i.i.i = phi i32 [ %i.fe, %bb.ae ], [ %i.fb, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i ], [ 1, %bb.ad ], [ -1, %bb.ac ]
  %i.ff = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br label %.thread.i

.thread.i:                                        ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i, %bb.aa
  %i.fg = phi i1 [ %i.ff, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i.i ], [ true, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fg, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %i.cr) #24
  %i.fh = load i64, ptr %i.cs, align 8, !tbaa !441
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.cs, align 8, !tbaa !441
  br label %_ZNSt3mapIN4llvm10sampleprof10FunctionIdENS1_15FunctionSamplesESt4lessIS2_ESaISt4pairIKS2_S3_EEEixERS7_.exit

bb.af:                                            ; preds = %.critedge.i56
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ea, i64 216
  %i.fk = load ptr, ptr %i.ek, align 8, !tbaa !438
  call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fj, ptr noundef %i.fk), !inline_history !1427
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ea, i64 168
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ea, i64 184
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !438
  call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fl, ptr noundef %i.fn), !inline_history !1428
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ea, i64 120
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 136
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !438
  call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fo, ptr noundef %i.fq), !inline_history !1427
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 272) #25, !inline_history !1429
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
  %i.fw = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.067.0104) #28 ; 2 uses
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
  %i.gc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.063.0118) #28 ; 2 uses
  %.not95 = icmp eq ptr %i.gc, %i.ck
  br i1 %.not95, label %.loopexit, label %_ZN4llvm21mergeSampleProfErrorsERNS_16sampleprof_errorES0_.exit61

.loopexit:                                        ; preds = %_ZN4llvm21mergeSampleProfErrorsERNS_16sampleprof_errorES0_.exit61, %._crit_edge114, %bb.g
  %.0 = phi i32 [ 14, %bb.g ], [ %.1.lcssa, %._crit_edge114 ], [ %spec.select92, %_ZN4llvm21mergeSampleProfErrorsERNS_16sampleprof_errorES0_.exit61 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm10sampleprof16ProfileConverter20flattenNestedProfileERNS0_16SampleProfileMapERKNS0_15FunctionSamplesE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %3 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 7 uses
  %5 = alloca %"class.std::tuple.669", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.416", align 1    ; 3 uses
  %7 = alloca %"struct.llvm::sampleprof::LineLocation", align 8 ; 4 uses
  %8 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %9 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %10 = alloca %"class.llvm::hash_code", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !497
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !617 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !124
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i
  %i.f = tail call i64 @_ZN4llvm7hashing6detail23hash_combine_range_implIPKNS_10sampleprof18SampleContextFrameEEENS_9hash_codeET_S8_(ptr noundef %.sroa.0.0.copyload.i.i.i.i, ptr noundef %i.e)
  br label %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJRKS4_EEESt4pairINSt8__detail14_Node_iteratorIS9_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i1.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !290 ; 2 uses
  %.sroa.2.0..sroa_idx.i2.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload.i3.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i2.i.i.i, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i1.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJRKS4_EEESt4pairINSt8__detail14_Node_iteratorIS9_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %8) #24
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %8, ptr nonnull %.sroa.0.0.copyload.i1.i.i.i, i64 %.sroa.2.0.copyload.i3.i.i.i) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %8, ptr noundef nonnull align 1 dereferenceable(16) %9) #24
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %9, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJRKS4_EEESt4pairINSt8__detail14_Node_iteratorIS9_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit

_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJRKS4_EEESt4pairINSt8__detail14_Node_iteratorIS9_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.f, %bb.b ], [ %.0.copyload.i.i.i.i.i.i.i.i.i.i, %bb.d ], [ %.sroa.2.0.copyload.i3.i.i.i, %bb.c ]
  store i64 %.0.i.i.i, ptr %10, align 8
  %i.h = call { ptr, i8 } @_ZNSt8__detail12_Insert_baseIN4llvm9hash_codeESt4pairIKS2_NS1_10sampleprof15FunctionSamplesEESaIS7_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEEE11try_emplaceIRS4_JRKS6_EEES3_INS_14_Node_iteratorIS7_Lb0ELb1EEEbENS_20_Node_const_iteratorIS7_Lb0ELb1EEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(224) %1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %.fca.0.extract = extractvalue { ptr, i8 } %i.h, 0 ; 17 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.h, 1
  %i.i = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJRKS4_EEESt4pairINSt8__detail14_Node_iteratorIS9_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 152 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !438
  call void @_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdENS1_15FunctionSamplesESt4lessIS6_ESaIS3_IKS6_S7_EEEESt10_Select1stISE_ES8_IS2_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 144 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !438
  %i.n = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 160
  store ptr %i.m, ptr %i.n, align 8, !tbaa !439
  %i.o = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 168
  store ptr %i.m, ptr %i.o, align 8, !tbaa !440
  %i.p = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 176
  store i64 0, ptr %i.p, align 8, !tbaa !441
  %i.q = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 72
  store i64 0, ptr %i.q, align 8, !tbaa !424
  br label %.loopexit128

bb.f:                                             ; preds = %_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE11try_emplaceIJRKS4_EEESt4pairINSt8__detail14_Node_iteratorIS9_IKNS_9hash_codeES4_ELb0ELb1EEEbERKS3_DpOT_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !439  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.not119131 = icmp eq ptr %i.s, %i.t
  br i1 %.not119131, label %.loopexit128, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 96 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN4llvm10sampleprof15FunctionSamples15addSampleRecordENS0_12LineLocationERKNS0_12SampleRecordEm.exit
  %.sroa.0107.0132 = phi ptr [ %i.s, %.lr.ph ], [ %i.aw, %_ZN4llvm10sampleprof15FunctionSamples15addSampleRecordENS0_12LineLocationERKNS0_12SampleRecordEm.exit ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0107.0132, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0107.0132, i64 40
  %.sroa.020.0.copyload = load i64, ptr %i.x, align 4, !tbaa !279 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %.sroa.020.0.copyload, ptr %7, align 8
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !438  ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.z, null
  %i.aa = trunc i64 %.sroa.020.0.copyload to i32  ; 4 uses
  %i.ab = lshr i64 %.sroa.020.0.copyload, 32
  %i.ac = trunc nuw i64 %i.ab to i32              ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i ], [ %i.z, %bb.g ] ; 5 uses
  %.0812.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i ], [ %i.w, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 36
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !279 ; 2 uses
  %i.ag = icmp ult i32 %i.af, %i.aa
  br i1 %i.ag, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ah = icmp ugt i32 %i.af, %i.aa
  br i1 %i.ah, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i: ; preds = %bb.h
  %i.ai = load i32, ptr %i.ae, align 4, !tbaa !279
  %i.aj = icmp ult i32 %i.ai, %i.ac
  br i1 %i.aj, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  br label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i, %bb.h
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i ], [ 16, %bb.h ], [ 16, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0812.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i.i.i ], [ %.013.i.i.i.i.i, %bb.h ], [ %.013.i.i.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i.i.i ] ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !498 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i.i.i
  %i.al = icmp eq ptr %.19.i.i.i.i.i, %i.w
  br i1 %i.al, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE11lower_boundERS7_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !279 ; 2 uses
  %i.ap = icmp ugt i32 %i.ao, %i.aa
  br i1 %i.ap, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_St3mapINS1_10FunctionIdEmSt4lessIS6_ESaIS3_IKS6_mEEEESt10_Select1stISD_ES7_IS2_ESaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS4_:bb.a
  %.020.lcssa33.i23 = phi ptr [ %.020.lcssa34.i32, %bb.m ], [ %.02126.i15, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i18.thread ] ; 2 uses
  %.sroa.06.0.i24 = phi ptr [ %i.cb, %bb.m ], [ %.02126.i15, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i18.thread ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i24, i64 36
  %i.ce = icmp ult i32 %i.cc, %i.at
  br i1 %i.ce, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i22.thread
  %i.cf = icmp ult i32 %i.at, %i.cc
  br i1 %i.cf, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i26, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i25

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i25: ; preds = %bb.n
  %i.cg = load i32, ptr %i.cd, align 4, !tbaa !279
  %i.ch = load i32, ptr %i.ar, align 4, !tbaa !279
  %i.ci = icmp ult i32 %i.cg, %i.ch
  br i1 %i.ci, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i26

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.thread23.i26: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit5.i25, %bb.n
  br label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit10
  %i.cj = load i32, ptr %i.as, align 4, !tbaa !279
  %i.ck = load i32, ptr %i.ar, align 4, !tbaa !279
  %i.cl = icmp ult i32 %i.cj, %i.ck
  br i1 %i.cl, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34.thread, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34.thread: ; preds = %bb.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !498 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %1
  br i1 %i.co, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit34.thread
  %i.cp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 36
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !279 ; 2 uses
  %i.ct = icmp ult i32 %i.at, %i.cs
  br i1 %i.ct, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = icmp ult i32 %i.cs, %i.at
  br i1 %i.cu, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread88, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35: ; preds = %bb.p
  %i.cv = load i32, ptr %i.ar, align 4, !tbaa !279
  %i.cw = load i32, ptr %i.cr, align 4, !tbaa !279
  %i.cx = icmp ult i32 %i.cv, %i.cw
  br i1 %i.cx, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread88

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread: ; preds = %bb.o, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !640
  %i.da = icmp eq ptr %i.cz, null                 ; 2 uses
  %spec.select93 = select i1 %i.da, ptr null, ptr %i.cp
  %spec.select94 = select i1 %i.da, ptr %1, ptr %i.cp
  br label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread88: ; preds = %bb.p, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02124.i36 = load ptr, ptr %i.db, align 8, !tbaa !498 ; 2 uses
  %.not25.i37 = icmp eq ptr %.02124.i36, null
  br i1 %.not25.i37, label %._crit_edge.thread.i55, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread88
  %i.dc = load i32, ptr %i.ar, align 4
  br label %.backedge96

.backedge96:                                      ; preds = %.backedge96.backedge, %.lr.ph.i38
  %.02126.i39 = phi ptr [ %.02124.i36, %.lr.ph.i38 ], [ %.02126.i39.be, %.backedge96.backedge ] ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 36
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !279 ; 3 uses
  %i.dg = icmp ult i32 %i.at, %i.df
  br i1 %i.dg, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42, label %bb.q

bb.q:                                             ; preds = %.backedge96
  %i.dh = icmp ult i32 %i.df, %i.at
  br i1 %i.dh, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42.thread, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i40

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i40: ; preds = %bb.q
  %i.di = load i32, ptr %i.de, align 4, !tbaa !279
  %i.dj = icmp ult i32 %i.dc, %i.di
  br i1 %i.dj, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42.thread

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i40, %.backedge96
  %i.dk = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 16
  %.021.i44 = load ptr, ptr %i.dk, align 8, !tbaa !498 ; 2 uses
  %.not.i45 = icmp eq ptr %.021.i44, null
  br i1 %.not.i45, label %._crit_edge.thread.i55, label %.backedge96.backedge

.backedge96.backedge:                             ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42.thread
  %.02126.i39.be = phi ptr [ %.021.i44, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42 ], [ %.021.i4490, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42.thread ]
  br label %.backedge96, !llvm.loop !1493

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42.thread: ; preds = %bb.q, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i40
  %i.dl = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 24
  %.021.i4490 = load ptr, ptr %i.dl, align 8, !tbaa !498 ; 2 uses
  %.not.i4591 = icmp eq ptr %.021.i4490, null
  br i1 %.not.i4591, label %._crit_edge.i46.thread, label %.backedge96.backedge

._crit_edge.thread.i55:                           ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread88
  %.020.lcssa34.i56 = phi ptr [ %i.a, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit35.thread88 ], [ %.02126.i39, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i42 ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !439
  %i.do = icmp eq ptr %.020.lcssa34.i56, %i.dn
  br i1 %i.do, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i55
  %i.dp = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i56) #28 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !279
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
  %i.du = load i32, ptr %i.dr, align 4, !tbaa !279
  %i.dv = load i32, ptr %i.ar, align 4, !tbaa !279
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
define linkonce_odr ptr @_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !643
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !623
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.e, align 8, !tbaa !1495
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
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !475  ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !475  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !124  ; 3 uses
  %i.q = load i64, ptr %i.n, align 8, !tbaa !124  ; 3 uses
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
  %i.t = tail call i32 @memcmp(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, i64 noundef %i.r) #28 ; 2 uses
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
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.f ], [ %i.t, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ 1, %bb.e ], [ -1, %bb.d ]
  %i.x = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i, %bb.b
  %i.y = phi i1 [ %i.x, %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.i.i ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.y, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !441
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !441
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof10FunctionIdESt4pairIKS2_mESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #25
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
  %i.d = load i64, ptr %i.c, align 8, !tbaa !441
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !498  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !475  ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !475    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !124  ; 2 uses
  %i.m = load i64, ptr %i.j, align 8, !tbaa !124  ; 2 uses
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
  %i.p = tail call i32 @memcmp(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.n) #28 ; 2 uses
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
  %i.w = load ptr, ptr %2, align 8, !tbaa !475    ; 10 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !475  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !124 ; 4 uses
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !124 ; 8 uses
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
  %i.ae = tail call i32 @memcmp(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, i64 noundef %i.ac) #28 ; 2 uses
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
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !498 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit16.thread66
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !475 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !124 ; 2 uses
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
  %i.as = tail call i32 @memcmp(ptr noundef nonnull %i.an, ptr noundef nonnull %i.w, i64 noundef %i.aq) #28 ; 2 uses
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
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !640
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
  %i.bb = tail call i32 @memcmp(ptr noundef nonnull %i.x, ptr noundef nonnull %i.w, i64 noundef %i.ac) #28 ; 2 uses
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
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !498 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %1
  br i1 %i.bg, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit.thread61, label %bb.l

bb.l:                                             ; preds = %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit30.thread
  %i.bh = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #28 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !475 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !124 ; 2 uses
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.ab)
  %i.bn = icmp eq ptr %i.w, %i.bj
  br i1 %i.bn, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i36, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i.i31 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i31, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit37.thread88, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not9.i.i.i.i32 = icmp eq ptr %i.bj, null
  br i1 %.not9.i.i.i.i32, label %_ZNKSt4lessIN4llvm10sampleprof10FunctionIdEEclERKS2_S5_.exit37.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i33

end_hunk_1
begin_hunk_2_@_ZN4llvm10sampleprof17ProfiledCallGraphC2ERNS_20SampleContextTrackerEm:bb.a
  store <2 x ptr> %i.an, ptr %i.ai, align 8, !tbaa !498
  store i64 0, ptr %i.ak, align 8, !tbaa !441
  br label %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i

bb.n:                                             ; preds = %.loopexit
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  store ptr null, ptr %i.fo, align 8, !tbaa !438
  br label %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i

_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i: ; preds = %bb.n, %bb.m
  %.sink8.i.i.i.i = phi ptr [ %i.fg, %bb.n ], [ %i.fk, %bb.m ]
  %.sink7.i.i.i.i = phi ptr [ %i.fg, %bb.n ], [ %i.fl, %bb.m ]
  %.sink.i.i.i.i = phi i64 [ 0, %bb.n ], [ %i.fn, %bb.m ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.n ], [ %i.fi, %bb.m ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  store ptr %.sink8.i.i.i.i, ptr %i.fp, align 8, !tbaa !439
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  store ptr %.sink7.i.i.i.i, ptr %i.fq, align 8, !tbaa !440
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 72
  store i64 %.sink.i.i.i.i, ptr %i.fr, align 8, !tbaa !441
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.fg, align 8, !tbaa !437
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.g) #24
  %i.fs = load i64, ptr %i.i, align 8, !tbaa !727
  %i.ft = add i64 %i.fs, 1
  store i64 %i.ft, ptr %i.i, align 8, !tbaa !727
  %i.fu = load ptr, ptr %i.h, align 8, !tbaa !444
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.ah, align 8, !tbaa !438
  call void @_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef %i.fw)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  store ptr %i.fv, ptr %i.fd, align 8, !tbaa !729
  %i.fx = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.fz = load ptr, ptr %i.fd, align 8, !tbaa !465 ; 7 uses
  store ptr %0, ptr %i.fy, align 8, !tbaa !755
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !699
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  store i64 0, ptr %i.gb, align 8, !tbaa !700
  %.02738.i = load ptr, ptr %i.c, align 8, !tbaa !498 ; 3 uses
  %.not39.i = icmp eq ptr %.02738.i, null
  br i1 %.not39.i, label %._crit_edge.thread.i, label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i
  %i.gc = load ptr, ptr %i.fz, align 8, !tbaa !475
  %.fr.i = freeze ptr %i.gc                       ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !124 ; 4 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %.fr.i, null
  br i1 %.not.i.i.i.i.i83, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i82, %.lr.ph.split.us.i
  %.02740.us.i = phi ptr [ %.027.us.i, %.lr.ph.split.us.i ], [ %.02738.i, %.lr.ph.i82 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.02740.us.i, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !699 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !475
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !124
  %i.gk = icmp ne ptr %i.gh, null
  %i.gl = icmp ult i64 %i.ge, %i.gj
  %or.cond.i = select i1 %i.gk, i1 true, i1 %i.gl ; 2 uses
  %.in.us.v.i = select i1 %or.cond.i, i64 16, i64 24
  %.in.us.i = getelementptr inbounds nuw i8, ptr %.02740.us.i, i64 %.in.us.v.i
  %.027.us.i = load ptr, ptr %.in.us.i, align 8, !tbaa !498 ; 2 uses
  %.not.us.i = icmp eq ptr %.027.us.i, null
  br i1 %.not.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !29

.lr.ph.split.i:                                   ; preds = %.lr.ph.i82, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i
  %.02740.i = phi ptr [ %.027.i, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i ], [ %.02738.i, %.lr.ph.i82 ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.02740.i, i64 40
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !699 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !475 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !124 ; 2 uses
  %i.gr = call i64 @llvm.umin.i64(i64 %i.gq, i64 %i.ge)
  %i.gs = icmp eq ptr %.fr.i, %i.go
  br i1 %i.gs, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i
  %.not9.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not9.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i: ; preds = %bb.o
  %i.gt = call i32 @memcmp(ptr noundef nonnull %.fr.i, ptr noundef nonnull %i.go, i64 noundef %i.gr) #28 ; 2 uses
  %.not.i.i.i.i84 = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i.i.i84, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %.lr.ph.split.i
  %i.gu = icmp ult i64 %i.ge, %i.gq
  br i1 %i.gu, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i
  %i.gv = icmp slt i32 %i.gt, 0
  br i1 %i.gv, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %bb.o
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i
  %.sink.i = phi i64 [ 24, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i ], [ 16, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i ], [ 16, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i ]
  %i.gw = phi i1 [ false, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i ], [ true, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i ], [ true, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.02740.i, i64 %.sink.i
  %.027.i = load ptr, ptr %i.gx, align 8, !tbaa !498 ; 2 uses
  %.not.i85 = icmp eq ptr %.027.i, null
  br i1 %.not.i85, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !29

._crit_edge.i:                                    ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i, %.lr.ph.split.us.i
  %.026.lcssa.i = phi ptr [ %.02740.us.i, %.lr.ph.split.us.i ], [ %.02740.i, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i ] ; 3 uses
  %.0.lcssa.i = phi i1 [ %or.cond.i, %.lr.ph.split.us.i ], [ %i.gw, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i ]
  br i1 %.0.lcssa.i, label %._crit_edge.thread.i, label %bb.q

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i
  %.026.lcssa51.i.a = phi ptr [ %.026.lcssa.i, %._crit_edge.i ], [ %i.b, %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ] ; 4 uses
  %i.gy = load ptr, ptr %i.d, align 8, !tbaa !439
  %i.gz = icmp eq ptr %.026.lcssa51.i.a, %i.gy
  br i1 %i.gz, label %bb.t, label %bb.p

bb.p:                                             ; preds = %._crit_edge.thread.i
  %i.ha = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.026.lcssa51.i.a) #28
  %.pre309 = load ptr, ptr %i.fz, align 8, !tbaa !475
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.pre310 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !124
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i
  %i.hb = phi i64 [ %.pre310, %bb.p ], [ %i.ge, %._crit_edge.i ] ; 2 uses
  %i.hc = phi ptr [ %.pre309, %bb.p ], [ %.fr.i, %._crit_edge.i ] ; 3 uses
  %.026.lcssa50.i = phi ptr [ %.026.lcssa51.i.a, %bb.p ], [ %.026.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.012.0.i = phi ptr [ %i.ha, %bb.p ], [ %.026.lcssa.i, %._crit_edge.i ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 40
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !699 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !475 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !124 ; 2 uses
  %i.hi = call i64 @llvm.umin.i64(i64 %i.hb, i64 %i.hh)
  %i.hj = icmp eq ptr %i.hf, %i.hc
  br i1 %i.hj, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i.i5.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i5.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not9.i.i.i.i6.i = icmp eq ptr %i.hc, null
  br i1 %.not9.i.i.i.i6.i, label %bb.y, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i: ; preds = %bb.s
  %i.hk = call i32 @memcmp(ptr noundef nonnull %i.hf, ptr noundef nonnull %i.hc, i64 noundef %i.hi) #28 ; 2 uses
  %.not.i.i.i8.i = icmp eq i32 %i.hk, 0
  br i1 %.not.i.i.i8.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i, %bb.q
  %i.hl = icmp ult i64 %i.hh, %i.hb
  br i1 %i.hl, label %bb.t, label %bb.y

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i
  %i.hm = icmp slt i32 %i.hk, 0
  br i1 %i.hm, label %bb.t, label %bb.y

bb.t:                                             ; preds = %._crit_edge.thread.i, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i, %bb.r, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i
  %.sroa.4.0.i.ph = phi ptr [ %.026.lcssa50.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i ], [ %.026.lcssa50.i, %bb.r ], [ %.026.lcssa50.i, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i ], [ %.026.lcssa51.i.a, %._crit_edge.thread.i ] ; 3 uses
  %i.hn = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.hn, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !699 ; 2 uses
  %i.hq = load ptr, ptr %i.fz, align 8, !tbaa !475 ; 3 uses
  %i.hr = load ptr, ptr %i.hp, align 8, !tbaa !475 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !124 ; 3 uses
  %i.hv = load i64, ptr %i.hs, align 8, !tbaa !124 ; 3 uses
  %i.hw = call i64 @llvm.umin.i64(i64 %i.hu, i64 %i.hv)
  %i.hx = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hx, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i: ; preds = %bb.w
  %i.hy = call i32 @memcmp(ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hr, i64 noundef %i.hw) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.hy, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i, %bb.u
  %i.hz = icmp eq i64 %i.hv, %i.hu
  br i1 %i.hz, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i
  %i.ia = icmp ult i64 %i.hv, %i.hu
  %i.ib = select i1 %i.ia, i32 -1, i32 1
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i: ; preds = %bb.x, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i, %bb.w, %bb.v
  %.0.i.i.i.i.i.i = phi i32 [ %i.ib, %bb.x ], [ %i.hy, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i ], [ 1, %bb.w ], [ -1, %bb.v ]
  %i.ic = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br label %.thread.i

.thread.i:                                        ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i, %bb.t
  %i.id = phi i1 [ %i.ic, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i ], [ true, %bb.t ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.id, ptr noundef nonnull %i.fx, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #24
  %i.ie = load i64, ptr %i.f, align 8, !tbaa !441
  %i.if = add i64 %i.ie, 1
  store i64 %i.if, ptr %i.f, align 8, !tbaa !441
  br label %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit

bb.y:                                             ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i, %bb.s
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef 56) #25
  br label %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit

_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit: ; preds = %.lr.ph.i.i, %bb.y, %.thread.i
  %i.ig = load ptr, ptr %i.t, align 8, !tbaa !741 ; 4 uses
  %i.ih = load ptr, ptr %i.w, align 8, !tbaa !745
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -8
  %.not.i.i27 = icmp eq ptr %i.ig, %i.ii
  br i1 %.not.i.i27, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit
  store ptr %i.bu, ptr %i.ig, align 8, !tbaa !744
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  br label %_ZNSt5queueIPN4llvm15ContextTrieNodeESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit28

bb.aa:                                            ; preds = %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit
  %i.ik = load ptr, ptr %i.u, align 8, !tbaa !737 ; 3 uses
  %i.il = load ptr, ptr %i.p, align 8, !tbaa !737 ; 6 uses
  %i.im = ptrtoint ptr %i.ik to i64               ; 2 uses
  %i.in = ptrtoint ptr %i.il to i64               ; 3 uses
  %i.io = sub i64 %i.im, %i.in
  %i.ip = ashr exact i64 %i.io, 3                 ; 3 uses
  %i.iq = icmp ne ptr %i.ik, null
  %.neg.i.i.i = sext i1 %i.iq to i64
  %i.ir = add nsw i64 %i.ip, %.neg.i.i.i
  %i.is = shl nsw i64 %i.ir, 6
  %i.it = load ptr, ptr %i.v, align 8, !tbaa !738
  %i.iu = ptrtoint ptr %i.ig to i64
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = ashr exact i64 %i.iw, 3
  %i.iy = add nsw i64 %i.is, %i.ix
  %i.iz = load ptr, ptr %i.s, align 8, !tbaa !739
  %i.ja = load ptr, ptr %i.o, align 8, !tbaa !742
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = sub i64 %i.jb, %i.jc
  %i.je = ashr exact i64 %i.jd, 3
  %i.jf = add nsw i64 %i.iy, %i.je
  %i.jg = icmp eq i64 %i.jf, 1152921504606846975
  br i1 %i.jg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.159) #27
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.jh = load i64, ptr %i.k, align 8, !tbaa !734 ; 5 uses
  %i.ji = load ptr, ptr %12, align 8, !tbaa !735  ; 2 uses
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = sub i64 %i.im, %i.jj
  %i.jl = ashr exact i64 %i.jk, 3
  %i.jm = sub i64 %i.jh, %i.jl
  %i.jn = icmp ult i64 %i.jm, 2
  br i1 %i.jn, label %bb.ad, label %_ZNSt5dequeIPN4llvm15ContextTrieNodeESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.jo = add nsw i64 %i.ip, 1                    ; 2 uses
  %i.jp = add nsw i64 %i.ip, 2                    ; 3 uses
  %i.jq = shl nsw i64 %i.jp, 1
  %i.jr = icmp ugt i64 %i.jh, %i.jq
  br i1 %i.jr, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.js = sub i64 %i.jh, %i.jp
  %i.jt = lshr i64 %i.js, 1
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jt ; 10 uses
  %i.jv = icmp ult ptr %i.ju, %i.il
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 2 uses
  br i1 %i.jv, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = sub i64 %i.jx, %i.in                    ; 3 uses
  %i.jz = icmp sgt i64 %i.jy, 8
  br i1 %i.jz, label %bb.ag, label %bb.ah, !prof !405

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ju, ptr nonnull align 8 %i.il, i64 %i.jy, i1 false)
  br label %_ZNSt5dequeIPN4llvm15ContextTrieNodeESaIS2_EE17_M_reallocate_mapEmb.exit

bb.ah:                                            ; preds = %bb.af
  %i.ka = icmp eq i64 %i.jy, 8
  br i1 %i.ka, label %bb.ai, label %_ZNSt5dequeIPN4llvm15ContextTrieNodeESaIS2_EE17_M_reallocate_mapEmb.exit

bb.ai:                                            ; preds = %bb.ah
  %i.kb = load ptr, ptr %i.il, align 8, !tbaa !736
  store ptr %i.kb, ptr %i.ju, align 8, !tbaa !736
  br label %_ZNSt5dequeIPN4llvm15ContextTrieNodeESaIS2_EE17_M_reallocate_mapEmb.exit

bb.aj:                                            ; preds = %bb.ae
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.jo ; 2 uses
  %i.kd = ptrtoint ptr %i.jw to i64
  %i.ke = sub i64 %i.kd, %i.in                    ; 3 uses
  %i.kf = ashr exact i64 %i.ke, 3                 ; 2 uses
  %i.kg = icmp sgt i64 %i.kf, 1
  br i1 %i.kg, label %bb.ak, label %bb.al, !prof !405

bb.ak:                                            ; preds = %bb.aj
  %i.kh = sub nsw i64 0, %i.kf
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %i.kh
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ki, ptr align 8 %i.il, i64 %i.ke, i1 false)
  br label %_ZNSt5dequeIPN4llvm15ContextTrieNodeESaIS2_EE17_M_reallocate_mapEmb.exit

bb.al:                                            ; preds = %bb.aj
  %i.kj = icmp eq i64 %i.ke, 8
  br i1 %i.kj, label %bb.am, label %_ZNSt5dequeIPN4llvm15ContextTrieNodeESaIS2_EE17_M_reallocate_mapEmb.exit

bb.am:                                            ; preds = %bb.al
  %i.kk = getelementptr inbounds i8, ptr %i.kc, i64 -8
  %i.kl = load ptr, ptr %i.il, align 8, !tbaa !736
  store ptr %i.kl, ptr %i.kk, align 8, !tbaa !736
  br label %_ZNSt5dequeIPN4llvm15ContextTrieNodeESaIS2_EE17_M_reallocate_mapEmb.exit

bb.an:                                            ; preds = %bb.ad
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.jh, i64 1)
  %i.km = add i64 %i.jh, 2
  %i.kn = add i64 %i.km, %.sroa.speculated.i      ; 5 uses
  %i.ko = icmp ugt i64 %i.kn, 1152921504606846975
  br i1 %i.ko, label %bb.ao, label %_ZNSt11_Deque_baseIPN4llvm15ContextTrieNodeESaIS2_EE15_M_allocate_mapEm.exit.i, !prof !332

bb.ao:                                            ; preds = %bb.an
  %i.kp = icmp ugt i64 %i.kn, 2305843009213693951
  br i1 %i.kp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.aq:                                            ; preds = %bb.ao
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt11_Deque_baseIPN4llvm15ContextTrieNodeESaIS2_EE15_M_allocate_mapEm.exit.i: ; preds = %bb.an
  %i.kq = shl nuw nsw i64 %i.kn, 3
  %i.kr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kq) #26 ; 2 uses
  %i.ks = sub nsw i64 %i.kn, %i.jp
  %i.kt = lshr i64 %i.ks, 1
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.kt ; 3 uses
  %i.kv = load ptr, ptr %i.p, align 8, !tbaa !748 ; 3 uses
  %i.kw = load ptr, ptr %i.u, align 8, !tbaa !756
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kv to i64
  %i.la = sub i64 %i.ky, %i.kz                    ; 3 uses
  %i.lb = icmp sgt i64 %i.la, 8
  br i1 %i.lb, label %bb.ar, label %bb.as, !prof !405

bb.ar:                                            ; preds = %_ZNSt11_Deque_baseIPN4llvm15ContextTrieNodeESaIS2_EE15_M_allocate_mapEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ku, ptr align 8 %i.kv, i64 %i.la, i1 false)
  br label %_ZSt4copyIPPPN4llvm15ContextTrieNodeES4_ET0_T_S6_S5_.exit24.i

bb.as:                                            ; preds = %_ZNSt11_Deque_baseIPN4llvm15ContextTrieNodeESaIS2_EE15_M_allocate_mapEm.exit.i
  %i.lc = icmp eq i64 %i.la, 8
  br i1 %i.lc, label %bb.at, label %_ZSt4copyIPPPN4llvm15ContextTrieNodeES4_ET0_T_S6_S5_.exit24.i

bb.at:                                            ; preds = %bb.as
  %i.ld = load ptr, ptr %i.kv, align 8, !tbaa !736
  store ptr %i.ld, ptr %i.ku, align 8, !tbaa !736
  br label %_ZSt4copyIPPPN4llvm15ContextTrieNodeES4_ET0_T_S6_S5_.exit24.i

_ZSt4copyIPPPN4llvm15ContextTrieNodeES4_ET0_T_S6_S5_.exit24.i: ; preds = %bb.at, %bb.as, %bb.ar
  %i.le = load ptr, ptr %12, align 8, !tbaa !735
  %i.lf = load i64, ptr %i.k, align 8, !tbaa !734
  %i.lg = shl i64 %i.lf, 3
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lg) #25
  store ptr %i.kr, ptr %12, align 8, !tbaa !735
  store i64 %i.kn, ptr %i.k, align 8, !tbaa !734
  br label %_ZNSt5dequeIPN4llvm15ContextTrieNodeESaIS2_EE17_M_reallocate_mapEmb.exit

_ZNSt5dequeIPN4llvm15ContextTrieNodeESaIS2_EE17_M_reallocate_mapEmb.exit: ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.ak, %bb.al, %bb.am, %_ZSt4copyIPPPN4llvm15ContextTrieNodeES4_ET0_T_S6_S5_.exit24.i
  %.0.i = phi ptr [ %i.ku, %_ZSt4copyIPPPN4llvm15ContextTrieNodeES4_ET0_T_S6_S5_.exit24.i ], [ %i.ju, %bb.ai ], [ %i.ju, %bb.ag ], [ %i.ju, %bb.ah ], [ %i.ju, %bb.ak ], [ %i.ju, %bb.al ], [ %i.ju, %bb.am ] ; 3 uses
  store ptr %.0.i, ptr %i.p, align 8, !tbaa !737
  %i.lh = load ptr, ptr %.0.i, align 8, !tbaa !736 ; 2 uses
  store ptr %i.lh, ptr %i.q, align 8, !tbaa !738
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 512
  store ptr %i.li, ptr %i.s, align 8, !tbaa !739
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.jo
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 -8 ; 2 uses
  store ptr %i.lk, ptr %i.u, align 8, !tbaa !737
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !736 ; 2 uses
  store ptr %i.ll, ptr %i.v, align 8, !tbaa !738
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 512
  store ptr %i.lm, ptr %i.w, align 8, !tbaa !739
  br label %_ZNSt5dequeIPN4llvm15ContextTrieNodeESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit

_ZNSt5dequeIPN4llvm15ContextTrieNodeESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_.exit: ; preds = %bb.ac, %_ZNSt5dequeIPN4llvm15ContextTrieNodeESaIS2_EE17_M_reallocate_mapEmb.exit
  %i.ln = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #26 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN4llvm10sampleprof17ProfiledCallGraphC2ERNS_20SampleContextTrackerEm:bb.a
  %i.sb = lshr i32 %i.rz, %i.sa
  %i.sc = trunc i32 %i.sb to i1
  br i1 %i.sc, label %.lr.ph.i.i.i.i.i67, label %.loopexit.i.i.i, !prof !404

.lr.ph.i.i.i.i.i67:                               ; preds = %bb.bo, %bb.bp
  %i.sd = phi i64 [ %i.sj, %bb.bp ], [ %i.rw, %bb.bo ] ; 2 uses
  %.017.i.i.i.i.i68 = phi i32 [ %i.si, %bb.bp ], [ %i.rv, %bb.bo ]
  %i.se = getelementptr inbounds nuw [16 x i8], ptr %i.ro, i64 %i.sd
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !124, !noalias !1781
  %i.sg = icmp eq i64 %.0.i.i.i65, %i.sf
  br i1 %i.sg, label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit, label %bb.bp, !prof !405

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i67
  %i.sh = add nuw i32 %.017.i.i.i.i.i68, 1
  %i.si = and i32 %i.sh, %i.rq                    ; 3 uses
  %i.sj = zext i32 %i.si to i64                   ; 2 uses
  %i.sk = lshr i64 %i.sj, 5
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !279, !noalias !1781
  %i.sn = and i32 %i.si, 31
  %i.so = lshr i32 %i.sm, %i.sn
  %i.sp = trunc i32 %i.so to i1
  br i1 %i.sp, label %.lr.ph.i.i.i.i.i67, label %.loopexit.i.i.i, !prof !406

.loopexit.i.i.i:                                  ; preds = %bb.bp, %bb.bo, %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i
  %i.sq = zext i32 %i.rm to i64
  br label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit

_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i67, %.loopexit.i.i.i
  %i.sr = phi i64 [ %i.sq, %.loopexit.i.i.i ], [ %i.sd, %.lr.ph.i.i.i.i.i67 ]
  %i.ss = getelementptr inbounds nuw [16 x i8], ptr %i.ro, i64 %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !729 ; 8 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i75, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !729 ; 12 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 32 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 24 ; 7 uses
  %.02738.i135 = load ptr, ptr %i.sx, align 8, !tbaa !498 ; 3 uses
  %.not39.i136 = icmp eq ptr %.02738.i135, null
  br i1 %.not39.i136, label %._crit_edge.thread.i167, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit
  %i.sz = load ptr, ptr %i.sw, align 8, !tbaa !475
  %.fr.i138 = freeze ptr %i.sz                    ; 4 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !124 ; 4 uses
  %.not.i.i.i.i.i139 = icmp eq ptr %.fr.i138, null
  br i1 %.not.i.i.i.i.i139, label %.lr.ph.split.us.i170, label %.lr.ph.split.i140

.lr.ph.split.us.i170:                             ; preds = %.lr.ph.i137, %.lr.ph.split.us.i170
  %.02740.us.i171 = phi ptr [ %.027.us.i175, %.lr.ph.split.us.i170 ], [ %.02738.i135, %.lr.ph.i137 ] ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.02740.us.i171, i64 40
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !699 ; 2 uses
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !475
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !124
  %i.th = icmp ne ptr %i.te, null
  %i.ti = icmp ult i64 %i.tb, %i.tg
  %or.cond.i172 = select i1 %i.th, i1 true, i1 %i.ti ; 2 uses
  %.in.us.v.i173 = select i1 %or.cond.i172, i64 16, i64 24
  %.in.us.i174 = getelementptr inbounds nuw i8, ptr %.02740.us.i171, i64 %.in.us.v.i173
  %.027.us.i175 = load ptr, ptr %.in.us.i174, align 8, !tbaa !498 ; 2 uses
  %.not.us.i176 = icmp eq ptr %.027.us.i175, null
  br i1 %.not.us.i176, label %._crit_edge.i151, label %.lr.ph.split.us.i170, !llvm.loop !29

.lr.ph.split.i140:                                ; preds = %.lr.ph.i137, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i147
  %.02740.i141 = phi ptr [ %.027.i149, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i147 ], [ %.02738.i135, %.lr.ph.i137 ] ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.02740.i141, i64 40
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !699 ; 2 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !475 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !124 ; 2 uses
  %i.to = call i64 @llvm.umin.i64(i64 %i.tn, i64 %i.tb)
  %i.tp = icmp eq ptr %.fr.i138, %i.tl
  br i1 %i.tp, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i169, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.split.i140
  %.not9.i.i.i.i.i142 = icmp eq ptr %i.tl, null
  br i1 %.not9.i.i.i.i.i142, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i146, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i143

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i143: ; preds = %bb.bq
  %i.tq = call i32 @memcmp(ptr noundef nonnull %.fr.i138, ptr noundef nonnull %i.tl, i64 noundef %i.to) #28 ; 2 uses
  %.not.i.i.i.i144 = icmp eq i32 %i.tq, 0
  br i1 %.not.i.i.i.i144, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i169, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i145

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i169: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i143, %.lr.ph.split.i140
  %i.tr = icmp ult i64 %i.tb, %i.tn
  br i1 %i.tr, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i147, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i146

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i145: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i143
  %i.ts = icmp slt i32 %i.tq, 0
  br i1 %i.ts, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i147, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i146

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i146: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i145, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i169, %bb.bq
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i147

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i147: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i146, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i145, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i169
  %.sink.i148 = phi i64 [ 24, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i146 ], [ 16, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i169 ], [ 16, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i145 ]
  %i.tt = phi i1 [ false, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i146 ], [ true, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i169 ], [ true, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i145 ]
  %i.tu = getelementptr inbounds nuw i8, ptr %.02740.i141, i64 %.sink.i148
  %.027.i149 = load ptr, ptr %i.tu, align 8, !tbaa !498 ; 2 uses
  %.not.i150 = icmp eq ptr %.027.i149, null
  br i1 %.not.i150, label %._crit_edge.i151, label %.lr.ph.split.i140, !llvm.loop !29

._crit_edge.i151:                                 ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i147, %.lr.ph.split.us.i170
  %.026.lcssa.i152 = phi ptr [ %.02740.us.i171, %.lr.ph.split.us.i170 ], [ %.02740.i141, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i147 ] ; 3 uses
  %.0.lcssa.i153 = phi i1 [ %or.cond.i172, %.lr.ph.split.us.i170 ], [ %i.tt, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i147 ]
  br i1 %.0.lcssa.i153, label %._crit_edge.thread.i167, label %bb.bs

._crit_edge.thread.i167:                          ; preds = %._crit_edge.i151, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit
  %.026.lcssa51.i168 = phi ptr [ %.026.lcssa.i152, %._crit_edge.i151 ], [ %i.sy, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit ] ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.su, i64 40
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !439
  %i.tx = icmp eq ptr %.026.lcssa51.i168, %i.tw
  br i1 %i.tx, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %._crit_edge.thread.i167
  %i.ty = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.026.lcssa51.i168) #28
  %.pre314 = load ptr, ptr %i.sw, align 8, !tbaa !475
  %.phi.trans.insert315 = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %.pre316 = load i64, ptr %.phi.trans.insert315, align 8, !tbaa !124
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %._crit_edge.i151
  %i.tz = phi i64 [ %.pre316, %bb.br ], [ %i.tb, %._crit_edge.i151 ] ; 2 uses
  %i.ua = phi ptr [ %.pre314, %bb.br ], [ %.fr.i138, %._crit_edge.i151 ] ; 3 uses
  %.026.lcssa50.i154 = phi ptr [ %.026.lcssa51.i168, %bb.br ], [ %.026.lcssa.i152, %._crit_edge.i151 ] ; 3 uses
  %.sroa.012.0.i155 = phi ptr [ %i.ty, %bb.br ], [ %.026.lcssa.i152, %._crit_edge.i151 ] ; 3 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i155, i64 40
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !699 ; 2 uses
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !475 ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sw, i64 8 ; 3 uses
  %i.ug = load i64, ptr %i.ue, align 8, !tbaa !124 ; 2 uses
  %i.uh = call i64 @llvm.umin.i64(i64 %i.tz, i64 %i.ug)
  %i.ui = icmp eq ptr %i.ud, %i.ua
  br i1 %i.ui, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i166, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not.i.i.i.i5.i156 = icmp eq ptr %i.ud, null
  br i1 %.not.i.i.i.i5.i156, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not9.i.i.i.i6.i157 = icmp eq ptr %i.ua, null
  br i1 %.not9.i.i.i.i6.i157, label %bb.ca, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i158

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i158: ; preds = %bb.bu
  %i.uj = call i32 @memcmp(ptr noundef nonnull %i.ud, ptr noundef nonnull %i.ua, i64 noundef %i.uh) #28 ; 2 uses
  %.not.i.i.i8.i159 = icmp eq i32 %i.uj, 0
  br i1 %.not.i.i.i8.i159, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i166, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i160

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i166: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i158, %bb.bs
  %i.uk = icmp ult i64 %i.ug, %i.tz
  br i1 %i.uk, label %bb.bv, label %bb.ca

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i160: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i158
  %i.ul = icmp slt i32 %i.uj, 0
  br i1 %i.ul, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %._crit_edge.thread.i167, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i160, %bb.bt, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i166
  %.sroa.4.0.i163.ph = phi ptr [ %.026.lcssa50.i154, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i166 ], [ %.026.lcssa50.i154, %bb.bt ], [ %.026.lcssa50.i154, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i160 ], [ %.026.lcssa51.i168, %._crit_edge.thread.i167 ] ; 3 uses
  %i.um = icmp eq ptr %.sroa.4.0.i163.ph, %i.sy
  br i1 %i.um, label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit62.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i163.ph, i64 40
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !699 ; 2 uses
  %i.up = load ptr, ptr %i.sw, align 8, !tbaa !475 ; 3 uses
  %i.uq = load ptr, ptr %i.uo, align 8, !tbaa !475 ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !124 ; 3 uses
  %i.uu = load i64, ptr %i.ur, align 8, !tbaa !124 ; 3 uses
  %i.uv = call i64 @llvm.umin.i64(i64 %i.ut, i64 %i.uu)
  %i.uw = icmp eq ptr %i.up, %i.uq
  br i1 %i.uw, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i61, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.not.i.i.i.i.i.i50 = icmp eq ptr %i.up, null
  br i1 %.not.i.i.i.i.i.i50, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i54, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.not9.i.i.i.i.i.i51 = icmp eq ptr %i.uq, null
  br i1 %.not9.i.i.i.i.i.i51, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i54, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i52

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i52: ; preds = %bb.by
  %i.ux = call i32 @memcmp(ptr noundef nonnull %i.up, ptr noundef nonnull %i.uq, i64 noundef %i.uv) #28 ; 2 uses
  %.not.i.i.i.i.i53 = icmp eq i32 %i.ux, 0
  br i1 %.not.i.i.i.i.i53, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i61, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i54

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i61: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i52, %bb.bw
  %i.uy = icmp eq i64 %i.uu, %i.ut
  br i1 %i.uy, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i54, label %bb.bz

bb.bz:                                            ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i61
  %i.uz = icmp ult i64 %i.uu, %i.ut
  %i.va = select i1 %i.uz, i32 -1, i32 1
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i54

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i54: ; preds = %bb.bz, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i61, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i52, %bb.by, %bb.bx
  %.0.i.i.i.i.i55 = phi i32 [ %i.va, %bb.bz ], [ %i.ux, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i52 ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i61 ], [ 1, %bb.by ], [ -1, %bb.bx ]
  %i.vb = icmp slt i32 %.0.i.i.i.i.i55, 0
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit62.thread

_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit62.thread: ; preds = %bb.bv, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i54
  %i.vc = phi i1 [ %i.vb, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i54 ], [ true, %bb.bv ]
  %i.vd = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 4 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 32
  store ptr %i.su, ptr %i.ve, align 8, !tbaa !465
  %.sroa.5214.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %i.vd, i64 40
  store ptr %i.sw, ptr %.sroa.5214.0..sroa_idx215, align 8, !tbaa !465
  %.sroa.12222.0..sroa_idx223 = getelementptr inbounds nuw i8, ptr %i.vd, i64 48
  store i64 %.0, ptr %.sroa.12222.0..sroa_idx223, align 8, !tbaa !124
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.vc, ptr noundef nonnull %i.vd, ptr noundef nonnull %.sroa.4.0.i163.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.sy) #24
  %i.vf = getelementptr inbounds nuw i8, ptr %i.su, i64 56 ; 2 uses
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !441
  %i.vh = add i64 %i.vg, 1
  store i64 %i.vh, ptr %i.vf, align 8, !tbaa !441
  br label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit

bb.ca:                                            ; preds = %bb.bu, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i166, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i160
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i155, i64 48
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !700
  %i.vk = add i64 %i.vj, %.0
  %i.vl = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.012.0.i155, ptr noundef nonnull align 8 dereferenceable(32) %i.sy) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.vl, i64 noundef 56) #25
  %i.vm = getelementptr inbounds nuw i8, ptr %i.su, i64 56 ; 4 uses
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !441
  %i.vo = add i64 %i.vn, -1
  store i64 %i.vo, ptr %i.vm, align 8, !tbaa !441
  %.02738.i92 = load ptr, ptr %i.sx, align 8, !tbaa !498 ; 3 uses
  %.not39.i93 = icmp eq ptr %.02738.i92, null
  br i1 %.not39.i93, label %._crit_edge.thread.i124, label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %bb.ca
  %i.vp = load ptr, ptr %i.sw, align 8, !tbaa !475
  %.fr.i95 = freeze ptr %i.vp                     ; 4 uses
  %i.vq = load i64, ptr %i.uf, align 8, !tbaa !124 ; 4 uses
  %.not.i.i.i.i.i96 = icmp eq ptr %.fr.i95, null
  br i1 %.not.i.i.i.i.i96, label %.lr.ph.split.us.i127, label %.lr.ph.split.i97

.lr.ph.split.us.i127:                             ; preds = %.lr.ph.i94, %.lr.ph.split.us.i127
  %.02740.us.i128 = phi ptr [ %.027.us.i132, %.lr.ph.split.us.i127 ], [ %.02738.i92, %.lr.ph.i94 ] ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.02740.us.i128, i64 40
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !699 ; 2 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !475
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !124
  %i.vw = icmp ne ptr %i.vt, null
  %i.vx = icmp ult i64 %i.vq, %i.vv
  %or.cond.i129 = select i1 %i.vw, i1 true, i1 %i.vx ; 2 uses
  %.in.us.v.i130 = select i1 %or.cond.i129, i64 16, i64 24
  %.in.us.i131 = getelementptr inbounds nuw i8, ptr %.02740.us.i128, i64 %.in.us.v.i130
  %.027.us.i132 = load ptr, ptr %.in.us.i131, align 8, !tbaa !498 ; 2 uses
  %.not.us.i133 = icmp eq ptr %.027.us.i132, null
  br i1 %.not.us.i133, label %._crit_edge.i108, label %.lr.ph.split.us.i127, !llvm.loop !29

.lr.ph.split.i97:                                 ; preds = %.lr.ph.i94, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i104
  %.02740.i98 = phi ptr [ %.027.i106, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i104 ], [ %.02738.i92, %.lr.ph.i94 ] ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.02740.i98, i64 40
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !699 ; 2 uses
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !475 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !124 ; 2 uses
  %i.wd = call i64 @llvm.umin.i64(i64 %i.wc, i64 %i.vq)
  %i.we = icmp eq ptr %.fr.i95, %i.wa
  br i1 %i.we, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i126, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.split.i97
  %.not9.i.i.i.i.i99 = icmp eq ptr %i.wa, null
  br i1 %.not9.i.i.i.i.i99, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i103, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i100

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i100: ; preds = %bb.cb
  %i.wf = call i32 @memcmp(ptr noundef nonnull %.fr.i95, ptr noundef nonnull %i.wa, i64 noundef %i.wd) #28 ; 2 uses
  %.not.i.i.i.i101 = icmp eq i32 %i.wf, 0
  br i1 %.not.i.i.i.i101, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i126, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i102

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i126: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i100, %.lr.ph.split.i97
  %i.wg = icmp ult i64 %i.vq, %i.wc
  br i1 %i.wg, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i104, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i103

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i102: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i100
  %i.wh = icmp slt i32 %i.wf, 0
  br i1 %i.wh, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i104, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i103

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i103: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i102, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i126, %bb.cb
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i104

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i104: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i103, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i102, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i126
  %.sink.i105 = phi i64 [ 24, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i103 ], [ 16, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i126 ], [ 16, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i102 ]
  %i.wi = phi i1 [ false, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i103 ], [ true, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i126 ], [ true, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i102 ]
  %i.wj = getelementptr inbounds nuw i8, ptr %.02740.i98, i64 %.sink.i105
  %.027.i106 = load ptr, ptr %i.wj, align 8, !tbaa !498 ; 2 uses
  %.not.i107 = icmp eq ptr %.027.i106, null
  br i1 %.not.i107, label %._crit_edge.i108, label %.lr.ph.split.i97, !llvm.loop !29

._crit_edge.i108:                                 ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i104, %.lr.ph.split.us.i127
  %.026.lcssa.i109 = phi ptr [ %.02740.us.i128, %.lr.ph.split.us.i127 ], [ %.02740.i98, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i104 ] ; 3 uses
  %.0.lcssa.i110 = phi i1 [ %or.cond.i129, %.lr.ph.split.us.i127 ], [ %i.wi, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i104 ]
  br i1 %.0.lcssa.i110, label %._crit_edge.thread.i124, label %bb.cd

._crit_edge.thread.i124:                          ; preds = %._crit_edge.i108, %bb.ca
  %.026.lcssa51.i125 = phi ptr [ %.026.lcssa.i109, %._crit_edge.i108 ], [ %i.sy, %bb.ca ] ; 4 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.su, i64 40
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !439
  %i.wm = icmp eq ptr %.026.lcssa51.i125, %i.wl
  br i1 %i.wm, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.thread.i124
  %i.wn = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.026.lcssa51.i125) #28
  %.pre317 = load ptr, ptr %i.sw, align 8, !tbaa !475
  %.pre318 = load i64, ptr %i.uf, align 8, !tbaa !124
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %._crit_edge.i108
  %i.wo = phi i64 [ %.pre318, %bb.cc ], [ %i.vq, %._crit_edge.i108 ] ; 2 uses
  %i.wp = phi ptr [ %.pre317, %bb.cc ], [ %.fr.i95, %._crit_edge.i108 ] ; 3 uses
  %.026.lcssa50.i111 = phi ptr [ %.026.lcssa51.i125, %bb.cc ], [ %.026.lcssa.i109, %._crit_edge.i108 ] ; 3 uses
  %.sroa.012.0.i112 = phi ptr [ %i.wn, %bb.cc ], [ %.026.lcssa.i109, %._crit_edge.i108 ]
  %i.wq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i112, i64 40
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !699 ; 2 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !475 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !124 ; 2 uses
  %i.wv = call i64 @llvm.umin.i64(i64 %i.wo, i64 %i.wu)
  %i.ww = icmp eq ptr %i.ws, %i.wp
  br i1 %i.ww, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i123, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.not.i.i.i.i5.i113 = icmp eq ptr %i.ws, null
  br i1 %.not.i.i.i.i5.i113, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.not9.i.i.i.i6.i114 = icmp eq ptr %i.wp, null
  br i1 %.not9.i.i.i.i6.i114, label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i115

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i115: ; preds = %bb.cf
  %i.wx = call i32 @memcmp(ptr noundef nonnull %i.ws, ptr noundef nonnull %i.wp, i64 noundef %i.wv) #28 ; 2 uses
  %.not.i.i.i8.i116 = icmp eq i32 %i.wx, 0
  br i1 %.not.i.i.i8.i116, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i123, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i117

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i123: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i115, %bb.cd
  %i.wy = icmp ult i64 %i.wu, %i.wo
  br i1 %i.wy, label %bb.cg, label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i117: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i115
  %i.wz = icmp slt i32 %i.wx, 0
  br i1 %i.wz, label %bb.cg, label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit

bb.cg:                                            ; preds = %._crit_edge.thread.i124, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i117, %bb.ce, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i123
  %.sroa.4.0.i120.ph = phi ptr [ %.026.lcssa50.i111, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i123 ], [ %.026.lcssa50.i111, %bb.ce ], [ %.026.lcssa50.i111, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i117 ], [ %.026.lcssa51.i125, %._crit_edge.thread.i124 ] ; 3 uses
  %i.xa = icmp eq ptr %.sroa.4.0.i120.ph, %i.sy
  br i1 %i.xa, label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i120.ph, i64 40
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !699 ; 2 uses
  %i.xd = load ptr, ptr %i.sw, align 8, !tbaa !475 ; 3 uses
  %i.xe = load ptr, ptr %i.xc, align 8, !tbaa !475 ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !124 ; 3 uses
  %i.xh = load i64, ptr %i.uf, align 8, !tbaa !124 ; 3 uses
  %i.xi = call i64 @llvm.umin.i64(i64 %i.xg, i64 %i.xh)
  %i.xj = icmp eq ptr %i.xd, %i.xe
  br i1 %i.xj, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.not.i.i.i.i.i.i43 = icmp eq ptr %i.xd, null
  br i1 %.not.i.i.i.i.i.i43, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.xe, null
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.cj
  %i.xk = call i32 @memcmp(ptr noundef nonnull %i.xd, ptr noundef nonnull %i.xe, i64 noundef %i.xi) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.xk, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.ch
  %i.xl = icmp eq i64 %i.xh, %i.xg
  br i1 %i.xl, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i
  %i.xm = icmp ult i64 %i.xh, %i.xg
  %i.xn = select i1 %i.xm, i32 -1, i32 1
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i: ; preds = %bb.ck, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.cj, %bb.ci
  %.0.i.i.i.i.i = phi i32 [ %i.xn, %bb.ck ], [ %i.xk, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ 1, %bb.cj ], [ -1, %bb.ci ]
  %i.xo = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i

_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, %bb.cg
  %i.xp = phi i1 [ %i.xo, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i ], [ true, %bb.cg ]
  %i.xq = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 4 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 32
  store ptr %i.su, ptr %i.xr, align 8, !tbaa !465
  %.sroa.5214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xq, i64 40
  store ptr %i.sw, ptr %.sroa.5214.0..sroa_idx, align 8, !tbaa !465
  %.sroa.12222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xq, i64 48
  store i64 %i.vk, ptr %.sroa.12222.0..sroa_idx, align 8, !tbaa !124
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.xp, ptr noundef nonnull %i.xq, ptr noundef nonnull %.sroa.4.0.i120.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.sy) #24
  %i.xs = load i64, ptr %i.vm, align 8, !tbaa !441
  %i.xt = add i64 %i.xs, 1
  store i64 %i.xt, ptr %i.vm, align 8, !tbaa !441
  br label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit

_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit: ; preds = %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i, %bb.cf, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i123, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i117, %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit62.thread, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit81
  %i.xu = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0200.0292) #28 ; 2 uses
  %.not272 = icmp eq ptr %i.xu, %i.bp
  br i1 %.not272, label %.loopexit278, label %bb.g

._crit_edge:                                      ; preds = %.loopexit278, %bb.a, %.preheader
  call void @_ZN4llvm10sampleprof17ProfiledCallGraph12trimColdEgesEm(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %2)
  %i.xv = load ptr, ptr %12, align 8, !tbaa !735  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.xv, null
  br i1 %.not.i.i.i, label %_ZNSt5queueIPN4llvm15ContextTrieNodeESt5dequeIS2_SaIS2_EEED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge
  %i.xw = load ptr, ptr %i.p, align 8, !tbaa !748 ; 2 uses
  %i.xx = load ptr, ptr %i.u, align 8, !tbaa !756 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.xz = icmp ult ptr %i.xw, %i.xy
  br i1 %i.xz, label %.lr.ph.i.i.i.i33, label %_ZNSt11_Deque_baseIPN4llvm15ContextTrieNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i

.lr.ph.i.i.i.i33:                                 ; preds = %bb.cl, %.lr.ph.i.i.i.i33
  %.06.i.i.i.i = phi ptr [ %i.yb, %.lr.ph.i.i.i.i33 ], [ %i.xw, %bb.cl ] ; 3 uses
  %i.ya = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !736
  call void @_ZdlPvm(ptr noundef %i.ya, i64 noundef 512) #25
  %i.yb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.yc = icmp ult ptr %.06.i.i.i.i, %i.xx
  br i1 %i.yc, label %.lr.ph.i.i.i.i33, label %_ZNSt11_Deque_baseIPN4llvm15ContextTrieNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i, !llvm.loop !30

_ZNSt11_Deque_baseIPN4llvm15ContextTrieNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i33
  %.pre.i.i.i = load ptr, ptr %12, align 8, !tbaa !735
  br label %_ZNSt11_Deque_baseIPN4llvm15ContextTrieNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i

_ZNSt11_Deque_baseIPN4llvm15ContextTrieNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN4llvm15ContextTrieNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i, %bb.cl
  %i.yd = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIPN4llvm15ContextTrieNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i ], [ %i.xv, %bb.cl ]
  %i.ye = load i64, ptr %i.k, align 8, !tbaa !734
  %i.yf = shl i64 %i.ye, 3
  call void @_ZdlPvm(ptr noundef %i.yd, i64 noundef %i.yf) #25
  br label %_ZNSt5queueIPN4llvm15ContextTrieNodeESt5dequeIS2_SaIS2_EEED2Ev.exit

_ZNSt5queueIPN4llvm15ContextTrieNodeESt5dequeIS2_SaIS2_EEED2Ev.exit: ; preds = %._crit_edge, %_ZNSt11_Deque_baseIPN4llvm15ContextTrieNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  ret void
}

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm20SampleContextTracker14getRootContextEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm15ContextTrieNode18getAllChildContextEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #5

declare { ptr, i64 } @_ZNK4llvm15ContextTrieNode11getFuncNameEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #5

declare noundef ptr @_ZNK4llvm15ContextTrieNode18getFunctionSamplesEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #5

declare i64 @_ZNK4llvm15ContextTrieNode14getCallSiteLocEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm10sampleprof15FunctionSamples19findCallTargetMapAtERKNS0_12LineLocationE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.911") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !563  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK4llvm10sampleprof15FunctionSamples20mapIRLocToProfileLocERKNS0_12LineLocationE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !566, !noalias !1790 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !567, !noalias !1790 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !568, !noalias !1790 ; 4 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.g, -1                         ; 2 uses
  %i.j = load i64, ptr %2, align 4, !noalias !1791 ; 3 uses
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.i, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = lshr i64 %i.p, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !279, !noalias !1791
  %i.t = and i32 %i.o, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  %i.w = trunc i64 %i.j to i32
  %i.x = lshr i64 %i.j, 32
  %i.y = trunc nuw i64 %i.x to i32
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !404

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.z = phi i64 [ %i.aj, %bb.d ], [ %i.p, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ai, %bb.d ], [ %i.o, %bb.c ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.z ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !562, !noalias !1791
  %i.ac = icmp eq i32 %i.ab, %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !1791
  %i.af = icmp eq i32 %i.ae, %i.y
  %i.ag = select i1 %i.ac, i1 %i.af, i1 false
  br i1 %i.ag, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i, label %bb.d, !prof !405

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = add nuw i32 %.017.i.i.i.i, 1
  %i.ai = and i32 %i.ah, %i.i                     ; 3 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !279, !noalias !1791
  %i.an = and i32 %i.ai, 31
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !406

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.aq = zext i32 %i.g to i64                    ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.aq
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.g to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i ], [ %i.aq, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.aa, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.loopexit.i ], [ %i.ar, %.loopexit.i.i.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.pre-phi.i
  %.not11.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %spec.select.i = select i1 %.not11.i, ptr %2, ptr %i.at
  br label %_ZNK4llvm10sampleprof15FunctionSamples20mapIRLocToProfileLocERKNS0_12LineLocationE.exit

_ZNK4llvm10sampleprof15FunctionSamples20mapIRLocToProfileLocERKNS0_12LineLocationE.exit: ; preds = %bb.a, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i
  %.1.i = phi ptr [ %2, %bb.a ], [ %spec.select.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof12LineLocationES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4findERKS3_.exit.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !438 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not11.i.i.i, label %_ZNKSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4llvm10sampleprof15FunctionSamples20mapIRLocToProfileLocERKNS0_12LineLocationE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  %i.ay = load i32, ptr %.1.i, align 4, !tbaa !279 ; 4 uses
  %i.az = load i32, ptr %i.ax, align 4            ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i ] ; 5 uses
  %.0812.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 36
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !279 ; 2 uses
  %i.bd = icmp ult i32 %i.bc, %i.ay
  br i1 %i.bd, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = icmp ult i32 %i.ay, %i.bc
  br i1 %i.be, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.f
  %i.bf = load i32, ptr %i.bb, align 4, !tbaa !279
  %i.bg = icmp ult i32 %i.bf, %i.az
  br i1 %i.bg, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i, label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i, %bb.e
  br label %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i

_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i, %bb.f
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i ], [ 16, %bb.f ], [ 16, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread.i.i.i ], [ %.013.i.i.i, %bb.f ], [ %.013.i.i.i, %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.i.i.i ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !498 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i, label %bb.e, !llvm.loop !7

_ZNKSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %_ZNKSt4lessIN4llvm10sampleprof12LineLocationEEclERKS2_S5_.exit.thread10.i.i.i
  %i.bi = icmp eq ptr %.19.i.i.i, %i.aw
  br i1 %i.bi, label %_ZNKSt3mapIN4llvm10sampleprof12LineLocationENS1_12SampleRecordESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8_Rb_treeIN4llvm10sampleprof12LineLocationESt4pairIKS2_NS1_12SampleRecordEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !279 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4llvm10sampleprof17ProfiledCallGraph16addProfiledCallsERKNS0_15FunctionSamplesE:bb.a
  store <2 x ptr> %i.w, ptr %i.l, align 8, !tbaa !498
  store i64 0, ptr %i.n, align 8, !tbaa !441
  br label %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i

bb.k:                                             ; preds = %.loopexit562
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  store ptr null, ptr %i.fk, align 8, !tbaa !438
  br label %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i

_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i: ; preds = %bb.k, %bb.j
  %.sink8.i.i.i.i = phi ptr [ %i.fc, %bb.k ], [ %i.fg, %bb.j ]
  %.sink7.i.i.i.i = phi ptr [ %i.fc, %bb.k ], [ %i.fh, %bb.j ]
  %.sink.i.i.i.i = phi i64 [ 0, %bb.k ], [ %i.fj, %bb.j ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.k ], [ %i.fe, %bb.j ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  store ptr %.sink8.i.i.i.i, ptr %i.fl, align 8, !tbaa !439
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  store ptr %.sink7.i.i.i.i, ptr %i.fm, align 8, !tbaa !440
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 72
  store i64 %.sink.i.i.i.i, ptr %i.fn, align 8, !tbaa !441
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.fc, align 8, !tbaa !437
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.i) #24
  %i.fo = load i64, ptr %i.o, align 8, !tbaa !727
  %i.fp = add i64 %i.fo, 1
  store i64 %i.fp, ptr %i.o, align 8, !tbaa !727
  %i.fq = load ptr, ptr %i.p, align 8, !tbaa !444
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.k, align 8, !tbaa !438
  call void @_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef %i.fs)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  store ptr %i.fr, ptr %i.ez, align 8, !tbaa !729
  %i.ft = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load ptr, ptr %i.ez, align 8, !tbaa !465 ; 7 uses
  store ptr %0, ptr %i.fu, align 8, !tbaa !755
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !699
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  store i64 0, ptr %i.fx, align 8, !tbaa !700
  %.02738.i = load ptr, ptr %i.r, align 8, !tbaa !498 ; 3 uses
  %.not39.i = icmp eq ptr %.02738.i, null
  br i1 %.not39.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i
  %i.fy = load ptr, ptr %i.fv, align 8, !tbaa !475
  %.fr.i = freeze ptr %i.fy                       ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !124 ; 4 uses
  %.not.i.i.i.i.i192 = icmp eq ptr %.fr.i, null
  br i1 %.not.i.i.i.i.i192, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.02740.us.i = phi ptr [ %.027.us.i, %.lr.ph.split.us.i ], [ %.02738.i, %.lr.ph.i ] ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.02740.us.i, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !699 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !475
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !124
  %i.gg = icmp ne ptr %i.gd, null
  %i.gh = icmp ult i64 %i.ga, %i.gf
  %or.cond.i = select i1 %i.gg, i1 true, i1 %i.gh ; 2 uses
  %.in.us.v.i = select i1 %or.cond.i, i64 16, i64 24
  %.in.us.i = getelementptr inbounds nuw i8, ptr %.02740.us.i, i64 %.in.us.v.i
  %.027.us.i = load ptr, ptr %.in.us.i, align 8, !tbaa !498 ; 2 uses
  %.not.us.i = icmp eq ptr %.027.us.i, null
  br i1 %.not.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !29

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i
  %.02740.i = phi ptr [ %.027.i, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i ], [ %.02738.i, %.lr.ph.i ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.02740.i, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !699 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !475 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !124 ; 2 uses
  %i.gn = call i64 @llvm.umin.i64(i64 %i.gm, i64 %i.ga)
  %i.go = icmp eq ptr %.fr.i, %i.gk
  br i1 %i.go, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.i
  %.not9.i.i.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not9.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i: ; preds = %bb.l
  %i.gp = call i32 @memcmp(ptr noundef nonnull %.fr.i, ptr noundef nonnull %i.gk, i64 noundef %i.gn) #28 ; 2 uses
  %.not.i.i.i.i193 = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i.i.i193, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %.lr.ph.split.i
  %i.gq = icmp ult i64 %i.ga, %i.gm
  br i1 %i.gq, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i
  %i.gr = icmp slt i32 %i.gp, 0
  br i1 %i.gr, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %bb.l
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i
  %.sink.i = phi i64 [ 24, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i ], [ 16, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i ], [ 16, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i ]
  %i.gs = phi i1 [ false, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i ], [ true, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i ], [ true, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.02740.i, i64 %.sink.i
  %.027.i = load ptr, ptr %i.gt, align 8, !tbaa !498 ; 2 uses
  %.not.i194 = icmp eq ptr %.027.i, null
  br i1 %.not.i194, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !29

._crit_edge.i:                                    ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i, %.lr.ph.split.us.i
  %.026.lcssa.i = phi ptr [ %.02740.us.i, %.lr.ph.split.us.i ], [ %.02740.i, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i ] ; 3 uses
  %.0.lcssa.i = phi i1 [ %or.cond.i, %.lr.ph.split.us.i ], [ %i.gs, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i ]
  br i1 %.0.lcssa.i, label %._crit_edge.thread.i, label %bb.n

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i
  %.026.lcssa51.i.a = phi ptr [ %.026.lcssa.i, %._crit_edge.i ], [ %i.s, %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i ] ; 4 uses
  %i.gu = load ptr, ptr %i.t, align 8, !tbaa !439
  %i.gv = icmp eq ptr %.026.lcssa51.i.a, %i.gu
  br i1 %i.gv, label %bb.q, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i
  %i.gw = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.026.lcssa51.i.a) #28
  %.pre = load ptr, ptr %i.fv, align 8, !tbaa !475
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.pre630 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !124
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i
  %i.gx = phi i64 [ %.pre630, %bb.m ], [ %i.ga, %._crit_edge.i ] ; 2 uses
  %i.gy = phi ptr [ %.pre, %bb.m ], [ %.fr.i, %._crit_edge.i ] ; 3 uses
  %.026.lcssa50.i = phi ptr [ %.026.lcssa51.i.a, %bb.m ], [ %.026.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.012.0.i = phi ptr [ %i.gw, %bb.m ], [ %.026.lcssa.i, %._crit_edge.i ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !699 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !475 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !124 ; 2 uses
  %i.he = call i64 @llvm.umin.i64(i64 %i.gx, i64 %i.hd)
  %i.hf = icmp eq ptr %i.hb, %i.gy
  br i1 %i.hf, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i5.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i5.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not9.i.i.i.i6.i = icmp eq ptr %i.gy, null
  br i1 %.not9.i.i.i.i6.i, label %bb.v, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i: ; preds = %bb.p
  %i.hg = call i32 @memcmp(ptr noundef nonnull %i.hb, ptr noundef nonnull %i.gy, i64 noundef %i.he) #28 ; 2 uses
  %.not.i.i.i8.i = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i.i8.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i, %bb.n
  %i.hh = icmp ult i64 %i.hd, %i.gx
  br i1 %i.hh, label %bb.q, label %bb.v

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i
  %i.hi = icmp slt i32 %i.hg, 0
  br i1 %i.hi, label %bb.q, label %bb.v

bb.q:                                             ; preds = %._crit_edge.thread.i, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i, %bb.o, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i
  %.sroa.4.0.i.ph = phi ptr [ %.026.lcssa50.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i ], [ %.026.lcssa50.i, %bb.o ], [ %.026.lcssa50.i, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i ], [ %.026.lcssa51.i.a, %._crit_edge.thread.i ] ; 3 uses
  %i.hj = icmp eq ptr %.sroa.4.0.i.ph, %i.s
  br i1 %i.hj, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !699 ; 2 uses
  %i.hm = load ptr, ptr %i.fv, align 8, !tbaa !475 ; 3 uses
  %i.hn = load ptr, ptr %i.hl, align 8, !tbaa !475 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !124 ; 3 uses
  %i.hr = load i64, ptr %i.ho, align 8, !tbaa !124 ; 3 uses
  %i.hs = call i64 @llvm.umin.i64(i64 %i.hq, i64 %i.hr)
  %i.ht = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ht, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i: ; preds = %bb.t
  %i.hu = call i32 @memcmp(ptr noundef nonnull %i.hm, ptr noundef nonnull %i.hn, i64 noundef %i.hs) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i, %bb.r
  %i.hv = icmp eq i64 %i.hr, %i.hq
  br i1 %i.hv, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i
  %i.hw = icmp ult i64 %i.hr, %i.hq
  %i.hx = select i1 %i.hw, i32 -1, i32 1
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i: ; preds = %bb.u, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i, %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.hx, %bb.u ], [ %i.hu, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i ], [ 1, %bb.t ], [ -1, %bb.s ]
  %i.hy = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br label %.thread.i

.thread.i:                                        ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i, %bb.q
  %i.hz = phi i1 [ %i.hy, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i ], [ true, %bb.q ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.hz, ptr noundef nonnull %i.ft, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.s) #24
  %i.ia = load i64, ptr %i.u, align 8, !tbaa !441
  %i.ib = add i64 %i.ia, 1
  store i64 %i.ib, ptr %i.u, align 8, !tbaa !441
  br label %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit

bb.v:                                             ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i, %bb.p
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef 56) #25
  br label %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit

_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit: ; preds = %.lr.ph.i.i66, %bb.v, %.thread.i
  %.sroa.0.0.copyload.i.i36 = load ptr, ptr %i.a, align 8, !tbaa !290 ; 2 uses
  %.sroa.2.0.copyload.i.i38 = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !124 ; 2 uses
  %.sroa.013.0.copyload = load ptr, ptr %.sroa.0428.0586, align 8, !tbaa !290 ; 2 uses
  %.sroa.214.0.copyload = load i64, ptr %.sroa.218.0..sroa_idx, align 8, !tbaa !124 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0428.0586, i64 16
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !758 ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %.sroa.013.0.copyload, null
  br i1 %.not.i.i.i91, label %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i93, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !1884
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %6) #24, !noalias !1884
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %6, ptr nonnull %.sroa.013.0.copyload, i64 %.sroa.214.0.copyload) #24, !noalias !1884
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !1884
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %6, ptr noundef nonnull align 1 dereferenceable(16) %7) #24, !noalias !1884
  %.0.copyload.i.i.i.i.i.i.i.i.i92 = load i64, ptr %7, align 8, !noalias !1884
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !1884
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !1884
  br label %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i93

_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i93: ; preds = %bb.w, %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit
  %.0.i.i.i94 = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i92, %bb.w ], [ %.sroa.214.0.copyload, %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit ] ; 2 uses
  %i.ie = load ptr, ptr %i.e, align 8, !tbaa !751, !noalias !1885 ; 4 uses
  %i.if = load ptr, ptr %i.f, align 8, !tbaa !752, !noalias !1885 ; 3 uses
  %i.ig = load i32, ptr %i.g, align 4, !tbaa !753, !noalias !1885 ; 5 uses
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %.loopexit.i.i.i95, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i93
  %i.ii = add i32 %i.ig, -1                       ; 2 uses
  %i.ij = mul i64 %.0.i.i.i94, -4658895280553007687 ; 2 uses
  %i.ik = lshr i64 %i.ij, 31
  %i.il = xor i64 %i.ik, %i.ij
  %i.im = trunc i64 %i.il to i32
  %i.in = and i32 %i.ii, %i.im                    ; 3 uses
  %i.io = zext i32 %i.in to i64                   ; 2 uses
  %i.ip = lshr i64 %i.io, 5
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !279, !noalias !1886
  %i.is = and i32 %i.in, 31
  %i.it = lshr i32 %i.ir, %i.is
  %i.iu = trunc i32 %i.it to i1
  br i1 %i.iu, label %.lr.ph.i.i.i.i.i101, label %.loopexit.i.i.i95, !prof !404

.lr.ph.i.i.i.i.i101:                              ; preds = %bb.x, %bb.y
  %i.iv = phi i64 [ %i.jb, %bb.y ], [ %i.io, %bb.x ]
  %.017.i.i.i.i.i102 = phi i32 [ %i.ja, %bb.y ], [ %i.in, %bb.x ]
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %i.iv ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !124, !noalias !1886
  %i.iy = icmp eq i64 %.0.i.i.i94, %i.ix
  br i1 %i.iy, label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit103.loopexit, label %bb.y, !prof !405

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i101
  %i.iz = add nuw i32 %.017.i.i.i.i.i102, 1
  %i.ja = and i32 %i.iz, %i.ii                    ; 3 uses
  %i.jb = zext i32 %i.ja to i64                   ; 2 uses
  %i.jc = lshr i64 %i.jb, 5
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !279, !noalias !1886
  %i.jf = and i32 %i.ja, 31
  %i.jg = lshr i32 %i.je, %i.jf
  %i.jh = trunc i32 %i.jg to i1
  br i1 %i.jh, label %.lr.ph.i.i.i.i.i101, label %.loopexit.i.i.i95, !prof !406

.loopexit.i.i.i95:                                ; preds = %bb.y, %bb.x, %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i93
  %i.ji = zext i32 %i.ig to i64                   ; 2 uses
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %i.ji
  br label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit103

_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit103.loopexit: ; preds = %.lr.ph.i.i.i.i.i101
  %.pre651 = zext i32 %i.ig to i64
  br label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit103

_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit103: ; preds = %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit103.loopexit, %.loopexit.i.i.i95
  %.pre-phi652 = phi i64 [ %.pre651, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit103.loopexit ], [ %i.ji, %.loopexit.i.i.i95 ]
  %.lcssa.sink.i.i.i97 = phi ptr [ %i.iw, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit103.loopexit ], [ %i.jj, %.loopexit.i.i.i95 ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %.pre-phi652
  %i.jl = icmp eq ptr %.lcssa.sink.i.i.i97, %i.jk
  br i1 %i.jl, label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit103
  %.not.i.i.i89 = icmp eq ptr %.sroa.0.0.copyload.i.i36, null
  br i1 %.not.i.i.i89, label %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !1887
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %8) #24, !noalias !1887
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %8, ptr nonnull %.sroa.0.0.copyload.i.i36, i64 %.sroa.2.0.copyload.i.i38) #24, !noalias !1887
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !1887
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %8, ptr noundef nonnull align 1 dereferenceable(16) %9) #24, !noalias !1887
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %9, align 8, !noalias !1887
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !1887
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !1887
  %.pre631 = load ptr, ptr %i.e, align 8, !tbaa !751, !noalias !1888
  %.pre632 = load ptr, ptr %i.f, align 8, !tbaa !752, !noalias !1888
  %.pre633 = load i32, ptr %i.g, align 4, !tbaa !753, !noalias !1888
  br label %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i

_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i: ; preds = %bb.aa, %bb.z
  %i.jm = phi i32 [ %.pre633, %bb.aa ], [ %i.ig, %bb.z ] ; 3 uses
  %i.jn = phi ptr [ %.pre632, %bb.aa ], [ %i.if, %bb.z ] ; 2 uses
  %i.jo = phi ptr [ %.pre631, %bb.aa ], [ %i.ie, %bb.z ] ; 2 uses
  %.0.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i, %bb.aa ], [ %.sroa.2.0.copyload.i.i38, %bb.z ] ; 2 uses
  %i.jp = icmp eq i32 %i.jm, 0
  br i1 %i.jp, label %.loopexit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i
  %i.jq = add i32 %i.jm, -1                       ; 2 uses
  %i.jr = mul i64 %.0.i.i.i, -4658895280553007687 ; 2 uses
  %i.js = lshr i64 %i.jr, 31
  %i.jt = xor i64 %i.js, %i.jr
  %i.ju = trunc i64 %i.jt to i32
  %i.jv = and i32 %i.jq, %i.ju                    ; 3 uses
  %i.jw = zext i32 %i.jv to i64                   ; 2 uses
  %i.jx = lshr i64 %i.jw, 5
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !279, !noalias !1889
  %i.ka = and i32 %i.jv, 31
  %i.kb = lshr i32 %i.jz, %i.ka
  %i.kc = trunc i32 %i.kb to i1
  br i1 %i.kc, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !404

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ab, %bb.ac
  %i.kd = phi i64 [ %i.kj, %bb.ac ], [ %i.jw, %bb.ab ] ; 2 uses
  %.017.i.i.i.i.i = phi i32 [ %i.ki, %bb.ac ], [ %i.jv, %bb.ab ]
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %i.kd
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !124, !noalias !1889
  %i.kg = icmp eq i64 %.0.i.i.i, %i.kf
  br i1 %i.kg, label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit, label %bb.ac, !prof !405

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.kh = add nuw i32 %.017.i.i.i.i.i, 1
  %i.ki = and i32 %i.kh, %i.jq                    ; 3 uses
  %i.kj = zext i32 %i.ki to i64                   ; 2 uses
  %i.kk = lshr i64 %i.kj, 5
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !279, !noalias !1889
  %i.kn = and i32 %i.ki, 31
  %i.ko = lshr i32 %i.km, %i.kn
  %i.kp = trunc i32 %i.ko to i1
  br i1 %i.kp, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !406

.loopexit.i.i.i:                                  ; preds = %bb.ac, %bb.ab, %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i
  %i.kq = zext i32 %i.jm to i64
  br label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit

_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.i.i.i
  %i.kr = phi i64 [ %i.kq, %.loopexit.i.i.i ], [ %i.kd, %.lr.ph.i.i.i.i.i ]
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !729 ; 8 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i97, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !729 ; 12 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 32 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 24 ; 7 uses
  %.02738.i242 = load ptr, ptr %i.kx, align 8, !tbaa !498 ; 3 uses
  %.not39.i243 = icmp eq ptr %.02738.i242, null
  br i1 %.not39.i243, label %._crit_edge.thread.i274, label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit
  %i.kz = load ptr, ptr %i.kw, align 8, !tbaa !475
  %.fr.i245 = freeze ptr %i.kz                    ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !124 ; 4 uses
  %.not.i.i.i.i.i246 = icmp eq ptr %.fr.i245, null
  br i1 %.not.i.i.i.i.i246, label %.lr.ph.split.us.i277, label %.lr.ph.split.i247

.lr.ph.split.us.i277:                             ; preds = %.lr.ph.i244, %.lr.ph.split.us.i277
  %.02740.us.i278 = phi ptr [ %.027.us.i282, %.lr.ph.split.us.i277 ], [ %.02738.i242, %.lr.ph.i244 ] ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.02740.us.i278, i64 40
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !699 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !475
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !124
  %i.lh = icmp ne ptr %i.le, null
  %i.li = icmp ult i64 %i.lb, %i.lg
  %or.cond.i279 = select i1 %i.lh, i1 true, i1 %i.li ; 2 uses
  %.in.us.v.i280 = select i1 %or.cond.i279, i64 16, i64 24
  %.in.us.i281 = getelementptr inbounds nuw i8, ptr %.02740.us.i278, i64 %.in.us.v.i280
  %.027.us.i282 = load ptr, ptr %.in.us.i281, align 8, !tbaa !498 ; 2 uses
  %.not.us.i283 = icmp eq ptr %.027.us.i282, null
  br i1 %.not.us.i283, label %._crit_edge.i258, label %.lr.ph.split.us.i277, !llvm.loop !29

.lr.ph.split.i247:                                ; preds = %.lr.ph.i244, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i254
  %.02740.i248 = phi ptr [ %.027.i256, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i254 ], [ %.02738.i242, %.lr.ph.i244 ] ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.02740.i248, i64 40
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !699 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !475 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !124 ; 2 uses
  %i.lo = call i64 @llvm.umin.i64(i64 %i.ln, i64 %i.lb)
  %i.lp = icmp eq ptr %.fr.i245, %i.ll
  br i1 %i.lp, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i276, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split.i247
  %.not9.i.i.i.i.i249 = icmp eq ptr %i.ll, null
  br i1 %.not9.i.i.i.i.i249, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i253, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i250

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i250: ; preds = %bb.ad
  %i.lq = call i32 @memcmp(ptr noundef nonnull %.fr.i245, ptr noundef nonnull %i.ll, i64 noundef %i.lo) #28 ; 2 uses
  %.not.i.i.i.i251 = icmp eq i32 %i.lq, 0
  br i1 %.not.i.i.i.i251, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i276, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i252

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i276: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i250, %.lr.ph.split.i247
  %i.lr = icmp ult i64 %i.lb, %i.ln
  br i1 %i.lr, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i254, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i253

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i252: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i250
  %i.ls = icmp slt i32 %i.lq, 0
  br i1 %i.ls, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i254, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i253

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i253: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i252, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i276, %bb.ad
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i254

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i254: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i253, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i252, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i276
  %.sink.i255 = phi i64 [ 24, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i253 ], [ 16, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i276 ], [ 16, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i252 ]
  %i.lt = phi i1 [ false, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i253 ], [ true, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i276 ], [ true, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i252 ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.02740.i248, i64 %.sink.i255
  %.027.i256 = load ptr, ptr %i.lu, align 8, !tbaa !498 ; 2 uses
  %.not.i257 = icmp eq ptr %.027.i256, null
  br i1 %.not.i257, label %._crit_edge.i258, label %.lr.ph.split.i247, !llvm.loop !29

._crit_edge.i258:                                 ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i254, %.lr.ph.split.us.i277
  %.026.lcssa.i259 = phi ptr [ %.02740.us.i278, %.lr.ph.split.us.i277 ], [ %.02740.i248, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i254 ] ; 3 uses
  %.0.lcssa.i260 = phi i1 [ %or.cond.i279, %.lr.ph.split.us.i277 ], [ %i.lt, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i254 ]
  br i1 %.0.lcssa.i260, label %._crit_edge.thread.i274, label %bb.af

._crit_edge.thread.i274:                          ; preds = %._crit_edge.i258, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit
  %.026.lcssa51.i275 = phi ptr [ %.026.lcssa.i259, %._crit_edge.i258 ], [ %i.ky, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit ] ; 4 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !439
  %i.lx = icmp eq ptr %.026.lcssa51.i275, %i.lw
  br i1 %i.lx, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.thread.i274
  %i.ly = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.026.lcssa51.i275) #28
  %.pre634 = load ptr, ptr %i.kw, align 8, !tbaa !475
  %.phi.trans.insert635 = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %.pre636 = load i64, ptr %.phi.trans.insert635, align 8, !tbaa !124
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge.i258
  %i.lz = phi i64 [ %.pre636, %bb.ae ], [ %i.lb, %._crit_edge.i258 ] ; 2 uses
  %i.ma = phi ptr [ %.pre634, %bb.ae ], [ %.fr.i245, %._crit_edge.i258 ] ; 3 uses
  %.026.lcssa50.i261 = phi ptr [ %.026.lcssa51.i275, %bb.ae ], [ %.026.lcssa.i259, %._crit_edge.i258 ] ; 3 uses
  %.sroa.012.0.i262 = phi ptr [ %i.ly, %bb.ae ], [ %.026.lcssa.i259, %._crit_edge.i258 ] ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i262, i64 40
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !699 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !475 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 3 uses
  %i.mg = load i64, ptr %i.me, align 8, !tbaa !124 ; 2 uses
  %i.mh = call i64 @llvm.umin.i64(i64 %i.lz, i64 %i.mg)
  %i.mi = icmp eq ptr %i.md, %i.ma
  br i1 %i.mi, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i273, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.i.i.i.i5.i263 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.i5.i263, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not9.i.i.i.i6.i264 = icmp eq ptr %i.ma, null
  br i1 %.not9.i.i.i.i6.i264, label %bb.an, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i265

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i265: ; preds = %bb.ah
  %i.mj = call i32 @memcmp(ptr noundef nonnull %i.md, ptr noundef nonnull %i.ma, i64 noundef %i.mh) #28 ; 2 uses
  %.not.i.i.i8.i266 = icmp eq i32 %i.mj, 0
  br i1 %.not.i.i.i8.i266, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i273, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i267

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i273: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i265, %bb.af
  %i.mk = icmp ult i64 %i.mg, %i.lz
  br i1 %i.mk, label %bb.ai, label %bb.an

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i267: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i265
  %i.ml = icmp slt i32 %i.mj, 0
  br i1 %i.ml, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %._crit_edge.thread.i274, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i267, %bb.ag, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i273
  %.sroa.4.0.i270.ph = phi ptr [ %.026.lcssa50.i261, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i273 ], [ %.026.lcssa50.i261, %bb.ag ], [ %.026.lcssa50.i261, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i267 ], [ %.026.lcssa51.i275, %._crit_edge.thread.i274 ] ; 3 uses
  %i.mm = icmp eq ptr %.sroa.4.0.i270.ph, %i.ky
  br i1 %i.mm, label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit88.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i270.ph, i64 40
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !699 ; 2 uses
  %i.mp = load ptr, ptr %i.kw, align 8, !tbaa !475 ; 3 uses
  %i.mq = load ptr, ptr %i.mo, align 8, !tbaa !475 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !124 ; 3 uses
  %i.mu = load i64, ptr %i.mr, align 8, !tbaa !124 ; 3 uses
  %i.mv = call i64 @llvm.umin.i64(i64 %i.mt, i64 %i.mu)
  %i.mw = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mw, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i87, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.i.i.i76 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i.i.i.i76, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i80, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not9.i.i.i.i.i.i77 = icmp eq ptr %i.mq, null
  br i1 %.not9.i.i.i.i.i.i77, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i80, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i78

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i78: ; preds = %bb.al
  %i.mx = call i32 @memcmp(ptr noundef nonnull %i.mp, ptr noundef nonnull %i.mq, i64 noundef %i.mv) #28 ; 2 uses
  %.not.i.i.i.i.i79 = icmp eq i32 %i.mx, 0
  br i1 %.not.i.i.i.i.i79, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i87, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i80

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i87: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i78, %bb.aj
  %i.my = icmp eq i64 %i.mu, %i.mt
  br i1 %i.my, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i80, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i87
  %i.mz = icmp ult i64 %i.mu, %i.mt
  %i.na = select i1 %i.mz, i32 -1, i32 1
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i80

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i80: ; preds = %bb.am, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i87, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i78, %bb.al, %bb.ak
  %.0.i.i.i.i.i81 = phi i32 [ %i.na, %bb.am ], [ %i.mx, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i78 ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i87 ], [ 1, %bb.al ], [ -1, %bb.ak ]
  %i.nb = icmp slt i32 %.0.i.i.i.i.i81, 0
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit88.thread

_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit88.thread: ; preds = %bb.ai, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i80
  %i.nc = phi i1 [ %i.nb, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i80 ], [ true, %bb.ai ]
  %i.nd = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  store ptr %i.ku, ptr %i.ne, align 8, !tbaa !465
  %.sroa.5440.0..sroa_idx441 = getelementptr inbounds nuw i8, ptr %i.nd, i64 40
  store ptr %i.kw, ptr %.sroa.5440.0..sroa_idx441, align 8, !tbaa !465
  %.sroa.12.0..sroa_idx448 = getelementptr inbounds nuw i8, ptr %i.nd, i64 48
  store i64 %i.id, ptr %.sroa.12.0..sroa_idx448, align 8, !tbaa !124
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.nc, ptr noundef nonnull %i.nd, ptr noundef nonnull %.sroa.4.0.i270.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.ky) #24
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ku, i64 56 ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !441
  %i.nh = add i64 %i.ng, 1
  store i64 %i.nh, ptr %i.nf, align 8, !tbaa !441
  br label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit

bb.an:                                            ; preds = %bb.ah, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i273, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i267
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i262, i64 48
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !700
  %i.nk = add i64 %i.nj, %i.id
  %i.nl = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.012.0.i262, ptr noundef nonnull align 8 dereferenceable(32) %i.ky) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.nl, i64 noundef 56) #25
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ku, i64 56 ; 4 uses
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !441
  %i.no = add i64 %i.nn, -1
  store i64 %i.no, ptr %i.nm, align 8, !tbaa !441
  %.02738.i199 = load ptr, ptr %i.kx, align 8, !tbaa !498 ; 3 uses
  %.not39.i200 = icmp eq ptr %.02738.i199, null
  br i1 %.not39.i200, label %._crit_edge.thread.i231, label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %bb.an
  %i.np = load ptr, ptr %i.kw, align 8, !tbaa !475
  %.fr.i202 = freeze ptr %i.np                    ; 4 uses
  %i.nq = load i64, ptr %i.mf, align 8, !tbaa !124 ; 4 uses
  %.not.i.i.i.i.i203 = icmp eq ptr %.fr.i202, null
  br i1 %.not.i.i.i.i.i203, label %.lr.ph.split.us.i234, label %.lr.ph.split.i204

.lr.ph.split.us.i234:                             ; preds = %.lr.ph.i201, %.lr.ph.split.us.i234
  %.02740.us.i235 = phi ptr [ %.027.us.i239, %.lr.ph.split.us.i234 ], [ %.02738.i199, %.lr.ph.i201 ] ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.02740.us.i235, i64 40
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !699 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !475
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !124
  %i.nw = icmp ne ptr %i.nt, null
  %i.nx = icmp ult i64 %i.nq, %i.nv
  %or.cond.i236 = select i1 %i.nw, i1 true, i1 %i.nx ; 2 uses
  %.in.us.v.i237 = select i1 %or.cond.i236, i64 16, i64 24
  %.in.us.i238 = getelementptr inbounds nuw i8, ptr %.02740.us.i235, i64 %.in.us.v.i237
  %.027.us.i239 = load ptr, ptr %.in.us.i238, align 8, !tbaa !498 ; 2 uses
  %.not.us.i240 = icmp eq ptr %.027.us.i239, null
  br i1 %.not.us.i240, label %._crit_edge.i215, label %.lr.ph.split.us.i234, !llvm.loop !29

.lr.ph.split.i204:                                ; preds = %.lr.ph.i201, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i211
  %.02740.i205 = phi ptr [ %.027.i213, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i211 ], [ %.02738.i199, %.lr.ph.i201 ] ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.02740.i205, i64 40
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !699 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !475 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !124 ; 2 uses
  %i.od = call i64 @llvm.umin.i64(i64 %i.oc, i64 %i.nq)
  %i.oe = icmp eq ptr %.fr.i202, %i.oa
  br i1 %i.oe, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i233, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.split.i204
  %.not9.i.i.i.i.i206 = icmp eq ptr %i.oa, null
  br i1 %.not9.i.i.i.i.i206, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i210, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i207

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i207: ; preds = %bb.ao
  %i.of = call i32 @memcmp(ptr noundef nonnull %.fr.i202, ptr noundef nonnull %i.oa, i64 noundef %i.od) #28 ; 2 uses
  %.not.i.i.i.i208 = icmp eq i32 %i.of, 0
  br i1 %.not.i.i.i.i208, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i233, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i209

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i233: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i207, %.lr.ph.split.i204
  %i.og = icmp ult i64 %i.nq, %i.oc
  br i1 %i.og, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i211, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i210

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i209: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i207
  %i.oh = icmp slt i32 %i.of, 0
  br i1 %i.oh, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i211, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i210

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i210: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i209, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i233, %bb.ao
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i211

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i211: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i210, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i209, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i233
  %.sink.i212 = phi i64 [ 24, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i210 ], [ 16, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i233 ], [ 16, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i209 ]
  %i.oi = phi i1 [ false, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i210 ], [ true, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i233 ], [ true, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i209 ]
  %i.oj = getelementptr inbounds nuw i8, ptr %.02740.i205, i64 %.sink.i212
  %.027.i213 = load ptr, ptr %i.oj, align 8, !tbaa !498 ; 2 uses
  %.not.i214 = icmp eq ptr %.027.i213, null
  br i1 %.not.i214, label %._crit_edge.i215, label %.lr.ph.split.i204, !llvm.loop !29

._crit_edge.i215:                                 ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i211, %.lr.ph.split.us.i234
  %.026.lcssa.i216 = phi ptr [ %.02740.us.i235, %.lr.ph.split.us.i234 ], [ %.02740.i205, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i211 ] ; 3 uses
  %.0.lcssa.i217 = phi i1 [ %or.cond.i236, %.lr.ph.split.us.i234 ], [ %i.oi, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i211 ]
  br i1 %.0.lcssa.i217, label %._crit_edge.thread.i231, label %bb.aq

._crit_edge.thread.i231:                          ; preds = %._crit_edge.i215, %bb.an
  %.026.lcssa51.i232 = phi ptr [ %.026.lcssa.i216, %._crit_edge.i215 ], [ %i.ky, %bb.an ] ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !439
  %i.om = icmp eq ptr %.026.lcssa51.i232, %i.ol
  br i1 %i.om, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.thread.i231
  %i.on = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.026.lcssa51.i232) #28
  %.pre637 = load ptr, ptr %i.kw, align 8, !tbaa !475
  %.pre638 = load i64, ptr %i.mf, align 8, !tbaa !124
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i215
  %i.oo = phi i64 [ %.pre638, %bb.ap ], [ %i.nq, %._crit_edge.i215 ] ; 2 uses
  %i.op = phi ptr [ %.pre637, %bb.ap ], [ %.fr.i202, %._crit_edge.i215 ] ; 3 uses
  %.026.lcssa50.i218 = phi ptr [ %.026.lcssa51.i232, %bb.ap ], [ %.026.lcssa.i216, %._crit_edge.i215 ] ; 3 uses
  %.sroa.012.0.i219 = phi ptr [ %i.on, %bb.ap ], [ %.026.lcssa.i216, %._crit_edge.i215 ]
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i219, i64 40
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !699 ; 2 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !475 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !124 ; 2 uses
  %i.ov = call i64 @llvm.umin.i64(i64 %i.oo, i64 %i.ou)
  %i.ow = icmp eq ptr %i.os, %i.op
  br i1 %i.ow, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i230, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not.i.i.i.i5.i220 = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i.i5.i220, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not9.i.i.i.i6.i221 = icmp eq ptr %i.op, null
  br i1 %.not9.i.i.i.i6.i221, label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i222

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i222: ; preds = %bb.as
  %i.ox = call i32 @memcmp(ptr noundef nonnull %i.os, ptr noundef nonnull %i.op, i64 noundef %i.ov) #28 ; 2 uses
  %.not.i.i.i8.i223 = icmp eq i32 %i.ox, 0
  br i1 %.not.i.i.i8.i223, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i230, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i224

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i230: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i222, %bb.aq
  %i.oy = icmp ult i64 %i.ou, %i.oo
  br i1 %i.oy, label %bb.at, label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i224: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i222
  %i.oz = icmp slt i32 %i.ox, 0
  br i1 %i.oz, label %bb.at, label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit

bb.at:                                            ; preds = %._crit_edge.thread.i231, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i224, %bb.ar, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i230
  %.sroa.4.0.i227.ph = phi ptr [ %.026.lcssa50.i218, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i230 ], [ %.026.lcssa50.i218, %bb.ar ], [ %.026.lcssa50.i218, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i224 ], [ %.026.lcssa51.i232, %._crit_edge.thread.i231 ] ; 3 uses
  %i.pa = icmp eq ptr %.sroa.4.0.i227.ph, %i.ky
  br i1 %i.pa, label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i227.ph, i64 40
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !699 ; 2 uses
  %i.pd = load ptr, ptr %i.kw, align 8, !tbaa !475 ; 3 uses
  %i.pe = load ptr, ptr %i.pc, align 8, !tbaa !475 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !124 ; 3 uses
  %i.ph = load i64, ptr %i.mf, align 8, !tbaa !124 ; 3 uses
  %i.pi = call i64 @llvm.umin.i64(i64 %i.pg, i64 %i.ph)
  %i.pj = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pj, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not.i.i.i.i.i.i69 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i.i.i.i69, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.pe, null
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.aw
  %i.pk = call i32 @memcmp(ptr noundef nonnull %i.pd, ptr noundef nonnull %i.pe, i64 noundef %i.pi) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.pk, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.au
  %i.pl = icmp eq i64 %i.ph, %i.pg
  br i1 %i.pl, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i
  %i.pm = icmp ult i64 %i.ph, %i.pg
  %i.pn = select i1 %i.pm, i32 -1, i32 1
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i: ; preds = %bb.ax, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.aw, %bb.av
  %.0.i.i.i.i.i = phi i32 [ %i.pn, %bb.ax ], [ %i.pk, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ 1, %bb.aw ], [ -1, %bb.av ]
  %i.po = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i

_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, %bb.at
  %i.pp = phi i1 [ %i.po, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i ], [ true, %bb.at ]
  %i.pq = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 32
  store ptr %i.ku, ptr %i.pr, align 8, !tbaa !465
  %.sroa.5440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pq, i64 40
  store ptr %i.kw, ptr %.sroa.5440.0..sroa_idx, align 8, !tbaa !465
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pq, i64 48
  store i64 %i.nk, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !124
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.pp, ptr noundef nonnull %i.pq, ptr noundef nonnull %.sroa.4.0.i227.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.ky) #24
  %i.ps = load i64, ptr %i.nm, align 8, !tbaa !441
  %i.pt = add i64 %i.ps, 1
  store i64 %i.pt, ptr %i.nm, align 8, !tbaa !441
  br label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit

_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit: ; preds = %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i, %bb.as, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i230, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i224, %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit88.thread, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit103
  %i.pu = add i64 %.pn, 24
  %i.pv = sdiv exact i64 %i.pu, 24                ; 3 uses
  %.not.i.i = icmp ult i64 %i.pv, %i.bc
  br i1 %.not.i.i, label %bb.ay, label %._crit_edge

bb.ay:                                            ; preds = %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit
  %i.pw = lshr i64 %i.pv, 5                       ; 3 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4, !tbaa !279
  %i.pz = trunc nuw i64 %i.pv to i32
  %i.qa = and i32 %i.pz, 31
  %i.qb = shl nsw i32 -1, %i.qa
  %i.qc = and i32 %i.py, %i.qb                    ; 2 uses
  %i.qd = icmp eq i32 %i.qc, 0
  br i1 %i.qd, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.ay
  %i.qe = add nuw nsw i64 %i.pw, 1                ; 2 uses
  %i.qf = icmp eq i64 %i.qe, %i.bs
  br i1 %i.qf, label %._crit_edge, label %.lr.ph805

.lr.ph.i.i:                                       ; preds = %.lr.ph805
  %i.qg = add i64 %i.qi, 1                        ; 2 uses
  %i.qh = icmp eq i64 %i.qg, %i.bs
  br i1 %i.qh, label %._crit_edge, label %.lr.ph805, !llvm.loop !31

.lr.ph805:                                        ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.qi = phi i64 [ %i.qg, %.lr.ph.i.i ], [ %i.qe, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !279 ; 2 uses
  %i.ql = icmp eq i32 %i.qk, 0
  br i1 %i.ql, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit, !llvm.loop !31

_ZN4llvm16DenseMapIteratorINS_10sampleprof10FunctionIdEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEELb1EEppEv.exit: ; preds = %.lr.ph805, %bb.ay
  %.012.lcssa.i.i = phi i64 [ %i.pw, %bb.ay ], [ %i.qi, %.lr.ph805 ]
  %.0.lcssa.i.i = phi i32 [ %i.qc, %bb.ay ], [ %i.qk, %.lr.ph805 ]
  %i.qm = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = mul i64 %.012.lcssa.i.i, 768
  %narrow773 = mul nuw nsw i32 %i.qm, 24
  %.idx772 = zext nneg i32 %narrow773 to i64
  %i.qn = add i64 %.idx.i.i, %.idx772             ; 2 uses
  %.not555 = icmp eq i64 %i.qn, %.idx771
  br i1 %.not555, label %._crit_edge, label %bb.d

._crit_edge601:                                   ; preds = %._crit_edge596, %._crit_edge591
  ret void

bb.az:                                            ; preds = %.lr.ph600, %._crit_edge596
  %.sroa.0424.0598 = phi ptr [ %i.y, %.lr.ph600 ], [ %i.qr, %._crit_edge596 ] ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0424.0598, i64 64
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !439 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.0424.0598, i64 48 ; 2 uses
  %.not554592 = icmp eq ptr %i.qp, %i.qq
  br i1 %.not554592, label %._crit_edge596, label %.lr.ph595

._crit_edge596:                                   ; preds = %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit62, %bb.az
  %i.qr = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0424.0598) #28 ; 2 uses
  %.not553 = icmp eq ptr %i.qr, %i.z
  br i1 %.not553, label %._crit_edge601, label %bb.az

.lr.ph595:                                        ; preds = %bb.az, %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit62
  %.sroa.0420.0593 = phi ptr [ %i.aet, %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit62 ], [ %i.qp, %bb.az ] ; 4 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0420.0593, i64 32 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %i.qs, align 8, !tbaa !290 ; 3 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0420.0593, i64 40 ; 2 uses
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i.i41 = icmp eq ptr %.sroa.03.0.copyload, null
  br i1 %.not.i.i.i.i41, label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE11try_emplaceIJEEESt4pairINS_16DenseMapIteratorImS5_NS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EELb0EEEbERKS3_DpOT_.exit.i43, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph595
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !1890
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %10) #24, !noalias !1890
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %10, ptr nonnull %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload) #24, !noalias !1890
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !1890
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %10, ptr noundef nonnull align 1 dereferenceable(16) %11) #24, !noalias !1890
  %.0.copyload.i.i.i.i.i.i.i.i.i.i42 = load i64, ptr %11, align 8, !noalias !1890
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !1890
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !1890
  br label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE11try_emplaceIJEEESt4pairINS_16DenseMapIteratorImS5_NS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EELb0EEEbERKS3_DpOT_.exit.i43

_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE11try_emplaceIJEEESt4pairINS_16DenseMapIteratorImS5_NS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EELb0EEEbERKS3_DpOT_.exit.i43: ; preds = %bb.ba, %.lr.ph595
  %.0.i.i.i.i44 = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i.i42, %bb.ba ], [ %.sroa.24.0.copyload, %.lr.ph595 ] ; 5 uses
  %i.qt = load ptr, ptr %i.aa, align 8, !tbaa !751, !noalias !1891 ; 3 uses
  %i.qu = load ptr, ptr %i.ab, align 8, !tbaa !752, !noalias !1891 ; 3 uses
  %i.qv = load i32, ptr %i.ac, align 4, !tbaa !753, !noalias !1891 ; 4 uses
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %.loopexit.i120, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE11try_emplaceIJEEESt4pairINS_16DenseMapIteratorImS5_NS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EELb0EEEbERKS3_DpOT_.exit.i43
  %i.qx = add i32 %i.qv, -1                       ; 2 uses
  %i.qy = mul i64 %.0.i.i.i.i44, -4658895280553007687 ; 2 uses
  %i.qz = lshr i64 %i.qy, 31
  %i.ra = xor i64 %i.qz, %i.qy
  %i.rb = trunc i64 %i.ra to i32
  %i.rc = and i32 %i.qx, %i.rb                    ; 3 uses
  %i.rd = zext i32 %i.rc to i64                   ; 2 uses
  %i.re = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %i.rd ; 2 uses
  %i.rf = lshr i64 %i.rd, 5
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !279, !noalias !1892
  %i.ri = and i32 %i.rc, 31
  %i.rj = lshr i32 %i.rh, %i.ri
  %i.rk = trunc i32 %i.rj to i1
  br i1 %i.rk, label %.lr.ph.i.i131, label %.loopexit.i120, !prof !404

.lr.ph.i.i131:                                    ; preds = %bb.bb, %bb.bc
  %i.rl = phi ptr [ %i.rr, %bb.bc ], [ %i.re, %bb.bb ]
  %.024.i.i132 = phi i32 [ %i.rp, %bb.bc ], [ %i.rc, %bb.bb ]
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !124, !noalias !1892
  %i.rn = icmp eq i64 %.0.i.i.i.i44, %i.rm
  br i1 %i.rn, label %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit54, label %bb.bc, !prof !405

bb.bc:                                            ; preds = %.lr.ph.i.i131
  %i.ro = add nuw i32 %.024.i.i132, 1
  %i.rp = and i32 %i.ro, %i.qx                    ; 3 uses
  %i.rq = zext i32 %i.rp to i64                   ; 2 uses
  %i.rr = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %i.rq ; 2 uses
  %i.rs = lshr i64 %i.rq, 5
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %i.rs
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !279, !noalias !1892
  %i.rv = and i32 %i.rp, 31
  %i.rw = lshr i32 %i.ru, %i.rv
  %i.rx = trunc i32 %i.rw to i1
  br i1 %i.rx, label %.lr.ph.i.i131, label %.loopexit.i120, !prof !406, !llvm.loop !28

.loopexit.i120:                                   ; preds = %bb.bc, %bb.bb, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE11try_emplaceIJEEESt4pairINS_16DenseMapIteratorImS5_NS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EELb0EEEbERKS3_DpOT_.exit.i43
  %.lcssa28.sink.i.ph.i121 = phi ptr [ %i.re, %bb.bb ], [ null, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE11try_emplaceIJEEESt4pairINS_16DenseMapIteratorImS5_NS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EELb0EEEbERKS3_DpOT_.exit.i43 ], [ %i.rr, %bb.bc ]
  %i.ry = load i32, ptr %i.ad, align 8, !tbaa !754, !noalias !1892
  %i.rz = shl i32 %i.ry, 2
  %i.sa = add i32 %i.rz, 4
  %i.sb = mul i32 %i.qv, 3
  %.not.i.i122 = icmp ult i32 %i.sa, %i.sb
  br i1 %.not.i.i122, label %.loopexit, label %bb.bd, !prof !405

bb.bd:                                            ; preds = %.loopexit.i120
  %i.sc = shl i32 %i.qv, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4growEj(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i32 noundef %i.sc), !noalias !1892
  %i.sd = load ptr, ptr %i.aa, align 8, !tbaa !751, !noalias !1893 ; 5 uses
  %i.se = load ptr, ptr %i.ab, align 8, !tbaa !752, !noalias !1893 ; 5 uses
  %i.sf = load i32, ptr %i.ac, align 4, !tbaa !753, !noalias !1893 ; 2 uses
  %i.sg = icmp ne i32 %i.sf, 0
  call void @llvm.assume(i1 %i.sg)
  %i.sh = add i32 %i.sf, -1                       ; 2 uses
  %i.si = mul i64 %.0.i.i.i.i44, -4658895280553007687 ; 2 uses
  %i.sj = lshr i64 %i.si, 31
  %i.sk = xor i64 %i.sj, %i.si
  %i.sl = trunc i64 %i.sk to i32
  %i.sm = and i32 %i.sh, %i.sl                    ; 3 uses
  %i.sn = zext i32 %i.sm to i64                   ; 2 uses
  %i.so = getelementptr inbounds nuw [16 x i8], ptr %i.sd, i64 %i.sn ; 2 uses
  %i.sp = lshr i64 %i.sn, 5
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.sp
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !279, !noalias !1892
  %i.ss = and i32 %i.sm, 31
  %i.st = lshr i32 %i.sr, %i.ss
  %i.su = trunc i32 %i.st to i1
  br i1 %i.su, label %.lr.ph.i331, label %.loopexit, !prof !404

.lr.ph.i331:                                      ; preds = %bb.bd, %bb.be
  %i.sv = phi ptr [ %i.tb, %bb.be ], [ %i.so, %bb.bd ] ; 2 uses
  %.024.i332 = phi i32 [ %i.sz, %bb.be ], [ %i.sm, %bb.bd ]
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !124, !noalias !1892
  %i.sx = icmp eq i64 %.0.i.i.i.i44, %i.sw
  br i1 %i.sx, label %.loopexit, label %bb.be, !prof !405

bb.be:                                            ; preds = %.lr.ph.i331
  %i.sy = add nuw i32 %.024.i332, 1
  %i.sz = and i32 %i.sy, %i.sh                    ; 3 uses
  %i.ta = zext i32 %i.sz to i64                   ; 2 uses
  %i.tb = getelementptr inbounds nuw [16 x i8], ptr %i.sd, i64 %i.ta ; 2 uses
  %i.tc = lshr i64 %i.ta, 5
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !tbaa !279, !noalias !1892
  %i.tf = and i32 %i.sz, 31
  %i.tg = lshr i32 %i.te, %i.tf
  %i.th = trunc i32 %i.tg to i1
  br i1 %i.th, label %.lr.ph.i331, label %.loopexit, !prof !406, !llvm.loop !28

.loopexit:                                        ; preds = %.lr.ph.i331, %bb.be, %.loopexit.i120, %bb.bd
  %i.ti = phi ptr [ %i.qt, %.loopexit.i120 ], [ %i.sd, %bb.bd ], [ %i.sd, %bb.be ], [ %i.sd, %.lr.ph.i331 ]
  %i.tj = phi ptr [ %i.qu, %.loopexit.i120 ], [ %i.se, %bb.bd ], [ %i.se, %bb.be ], [ %i.se, %.lr.ph.i331 ]
end_hunk_4
begin_hunk_5_@_ZN4llvm10sampleprof17ProfiledCallGraph16addProfiledCallsERKNS0_15FunctionSamplesE:bb.a
  store <2 x ptr> %i.as, ptr %i.ah, align 8, !tbaa !498
  store i64 0, ptr %i.aj, align 8, !tbaa !441
  br label %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i49

bb.bg:                                            ; preds = %.loopexit
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tz, i64 48
  store ptr null, ptr %i.uj, align 8, !tbaa !438
  br label %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i49

_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i49: ; preds = %bb.bg, %bb.bf
  %.sink8.i.i.i.i50 = phi ptr [ %i.ub, %bb.bg ], [ %i.uf, %bb.bf ]
  %.sink7.i.i.i.i51 = phi ptr [ %i.ub, %bb.bg ], [ %i.ug, %bb.bf ]
  %.sink.i.i.i.i52 = phi i64 [ 0, %bb.bg ], [ %i.ui, %bb.bf ]
  %.sink.i.i.i.i.i.i.i.i.i53 = phi i32 [ 0, %bb.bg ], [ %i.ud, %bb.bf ]
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tz, i64 56
  store ptr %.sink8.i.i.i.i50, ptr %i.uk, align 8, !tbaa !439
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tz, i64 64
  store ptr %.sink7.i.i.i.i51, ptr %i.ul, align 8, !tbaa !440
  %i.um = getelementptr inbounds nuw i8, ptr %i.tz, i64 72
  store i64 %.sink.i.i.i.i52, ptr %i.um, align 8, !tbaa !441
  store i32 %.sink.i.i.i.i.i.i.i.i.i53, ptr %i.ub, align 8, !tbaa !437
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.tz, ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #24
  %i.un = load i64, ptr %i.ak, align 8, !tbaa !727
  %i.uo = add i64 %i.un, 1
  store i64 %i.uo, ptr %i.ak, align 8, !tbaa !727
  %i.up = load ptr, ptr %i.al, align 8, !tbaa !444
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ur = load ptr, ptr %i.ag, align 8, !tbaa !438
  call void @_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef %i.ur)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  store ptr %i.uq, ptr %i.ty, align 8, !tbaa !729
  %i.us = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 5 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 32
  %i.uu = load ptr, ptr %i.ty, align 8, !tbaa !465 ; 7 uses
  store ptr %0, ptr %i.ut, align 8, !tbaa !755
  %i.uv = getelementptr inbounds nuw i8, ptr %i.us, i64 40
  store ptr %i.uu, ptr %i.uv, align 8, !tbaa !699
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 48
  store i64 0, ptr %i.uw, align 8, !tbaa !700
  %.02738.i285 = load ptr, ptr %i.an, align 8, !tbaa !498 ; 3 uses
  %.not39.i286 = icmp eq ptr %.02738.i285, null
  br i1 %.not39.i286, label %._crit_edge.thread.i317, label %.lr.ph.i287

.lr.ph.i287:                                      ; preds = %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i49
  %i.ux = load ptr, ptr %i.uu, align 8, !tbaa !475
  %.fr.i288 = freeze ptr %i.ux                    ; 4 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !124 ; 4 uses
  %.not.i.i.i.i.i289 = icmp eq ptr %.fr.i288, null
  br i1 %.not.i.i.i.i.i289, label %.lr.ph.split.us.i320, label %.lr.ph.split.i290

.lr.ph.split.us.i320:                             ; preds = %.lr.ph.i287, %.lr.ph.split.us.i320
  %.02740.us.i321 = phi ptr [ %.027.us.i325, %.lr.ph.split.us.i320 ], [ %.02738.i285, %.lr.ph.i287 ] ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.02740.us.i321, i64 40
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !699 ; 2 uses
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !475
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !124
  %i.vf = icmp ne ptr %i.vc, null
  %i.vg = icmp ult i64 %i.uz, %i.ve
  %or.cond.i322 = select i1 %i.vf, i1 true, i1 %i.vg ; 2 uses
  %.in.us.v.i323 = select i1 %or.cond.i322, i64 16, i64 24
  %.in.us.i324 = getelementptr inbounds nuw i8, ptr %.02740.us.i321, i64 %.in.us.v.i323
  %.027.us.i325 = load ptr, ptr %.in.us.i324, align 8, !tbaa !498 ; 2 uses
  %.not.us.i326 = icmp eq ptr %.027.us.i325, null
  br i1 %.not.us.i326, label %._crit_edge.i301, label %.lr.ph.split.us.i320, !llvm.loop !29

.lr.ph.split.i290:                                ; preds = %.lr.ph.i287, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i297
  %.02740.i291 = phi ptr [ %.027.i299, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i297 ], [ %.02738.i285, %.lr.ph.i287 ] ; 3 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.02740.i291, i64 40
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !699 ; 2 uses
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !475 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !124 ; 2 uses
  %i.vm = call i64 @llvm.umin.i64(i64 %i.vl, i64 %i.uz)
  %i.vn = icmp eq ptr %.fr.i288, %i.vj
  br i1 %i.vn, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i319, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.split.i290
  %.not9.i.i.i.i.i292 = icmp eq ptr %i.vj, null
  br i1 %.not9.i.i.i.i.i292, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i296, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i293

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i293: ; preds = %bb.bh
  %i.vo = call i32 @memcmp(ptr noundef nonnull %.fr.i288, ptr noundef nonnull %i.vj, i64 noundef %i.vm) #28 ; 2 uses
  %.not.i.i.i.i294 = icmp eq i32 %i.vo, 0
  br i1 %.not.i.i.i.i294, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i319, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i295

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i319: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i293, %.lr.ph.split.i290
  %i.vp = icmp ult i64 %i.uz, %i.vl
  br i1 %i.vp, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i297, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i296

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i295: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i293
  %i.vq = icmp slt i32 %i.vo, 0
  br i1 %i.vq, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i297, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i296

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i296: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i295, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i319, %bb.bh
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i297

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i297: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i296, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i295, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i319
  %.sink.i298 = phi i64 [ 24, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i296 ], [ 16, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i319 ], [ 16, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i295 ]
  %i.vr = phi i1 [ false, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i296 ], [ true, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i319 ], [ true, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i295 ]
  %i.vs = getelementptr inbounds nuw i8, ptr %.02740.i291, i64 %.sink.i298
  %.027.i299 = load ptr, ptr %i.vs, align 8, !tbaa !498 ; 2 uses
  %.not.i300 = icmp eq ptr %.027.i299, null
  br i1 %.not.i300, label %._crit_edge.i301, label %.lr.ph.split.i290, !llvm.loop !29

._crit_edge.i301:                                 ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i297, %.lr.ph.split.us.i320
  %.026.lcssa.i302 = phi ptr [ %.02740.us.i321, %.lr.ph.split.us.i320 ], [ %.02740.i291, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i297 ] ; 3 uses
  %.0.lcssa.i303 = phi i1 [ %or.cond.i322, %.lr.ph.split.us.i320 ], [ %i.vr, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i297 ]
  br i1 %.0.lcssa.i303, label %._crit_edge.thread.i317, label %bb.bj

._crit_edge.thread.i317:                          ; preds = %._crit_edge.i301, %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i49
  %.026.lcssa51.i318 = phi ptr [ %.026.lcssa.i302, %._crit_edge.i301 ], [ %i.ao, %_ZNSt7__cxx114listIN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit.i49 ] ; 4 uses
  %i.vt = load ptr, ptr %i.ap, align 8, !tbaa !439
  %i.vu = icmp eq ptr %.026.lcssa51.i318, %i.vt
  br i1 %i.vu, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.thread.i317
  %i.vv = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.026.lcssa51.i318) #28
  %.pre639 = load ptr, ptr %i.uu, align 8, !tbaa !475
  %.phi.trans.insert640 = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %.pre641 = load i64, ptr %.phi.trans.insert640, align 8, !tbaa !124
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge.i301
  %i.vw = phi i64 [ %.pre641, %bb.bi ], [ %i.uz, %._crit_edge.i301 ] ; 2 uses
  %i.vx = phi ptr [ %.pre639, %bb.bi ], [ %.fr.i288, %._crit_edge.i301 ] ; 3 uses
  %.026.lcssa50.i304 = phi ptr [ %.026.lcssa51.i318, %bb.bi ], [ %.026.lcssa.i302, %._crit_edge.i301 ] ; 3 uses
  %.sroa.012.0.i305 = phi ptr [ %i.vv, %bb.bi ], [ %.026.lcssa.i302, %._crit_edge.i301 ]
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i305, i64 40
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !699 ; 2 uses
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !475 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !124 ; 2 uses
  %i.wd = call i64 @llvm.umin.i64(i64 %i.vw, i64 %i.wc)
  %i.we = icmp eq ptr %i.wa, %i.vx
  br i1 %i.we, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i316, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not.i.i.i.i5.i306 = icmp eq ptr %i.wa, null
  br i1 %.not.i.i.i.i5.i306, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not9.i.i.i.i6.i307 = icmp eq ptr %i.vx, null
  br i1 %.not9.i.i.i.i6.i307, label %bb.br, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i308

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i308: ; preds = %bb.bl
  %i.wf = call i32 @memcmp(ptr noundef nonnull %i.wa, ptr noundef nonnull %i.vx, i64 noundef %i.wd) #28 ; 2 uses
  %.not.i.i.i8.i309 = icmp eq i32 %i.wf, 0
  br i1 %.not.i.i.i8.i309, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i316, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i310

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i316: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i308, %bb.bj
  %i.wg = icmp ult i64 %i.wc, %i.vw
  br i1 %i.wg, label %bb.bm, label %bb.br

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i310: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i308
  %i.wh = icmp slt i32 %i.wf, 0
  br i1 %i.wh, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %._crit_edge.thread.i317, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i310, %bb.bk, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i316
  %.sroa.4.0.i313.ph = phi ptr [ %.026.lcssa50.i304, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i316 ], [ %.026.lcssa50.i304, %bb.bk ], [ %.026.lcssa50.i304, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i310 ], [ %.026.lcssa51.i318, %._crit_edge.thread.i317 ] ; 3 uses
  %i.wi = icmp eq ptr %.sroa.4.0.i313.ph, %i.ao
  br i1 %i.wi, label %.thread.i113, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i313.ph, i64 40
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !699 ; 2 uses
  %i.wl = load ptr, ptr %i.uu, align 8, !tbaa !475 ; 3 uses
  %i.wm = load ptr, ptr %i.wk, align 8, !tbaa !475 ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !124 ; 3 uses
  %i.wq = load i64, ptr %i.wn, align 8, !tbaa !124 ; 3 uses
  %i.wr = call i64 @llvm.umin.i64(i64 %i.wp, i64 %i.wq)
  %i.ws = icmp eq ptr %i.wl, %i.wm
  br i1 %i.ws, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i118, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.not.i.i.i.i.i.i.i107 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i.i.i.i.i.i107, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i111, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not9.i.i.i.i.i.i.i108 = icmp eq ptr %i.wm, null
  br i1 %.not9.i.i.i.i.i.i.i108, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i111, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i109

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i109: ; preds = %bb.bp
  %i.wt = call i32 @memcmp(ptr noundef nonnull %i.wl, ptr noundef nonnull %i.wm, i64 noundef %i.wr) #28 ; 2 uses
  %.not.i.i.i.i.i.i110 = icmp eq i32 %i.wt, 0
  br i1 %.not.i.i.i.i.i.i110, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i118, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i111

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i118: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i109, %bb.bn
  %i.wu = icmp eq i64 %i.wq, %i.wp
  br i1 %i.wu, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i111, label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i118
  %i.wv = icmp ult i64 %i.wq, %i.wp
  %i.ww = select i1 %i.wv, i32 -1, i32 1
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i111

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i111: ; preds = %bb.bq, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i118, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i109, %bb.bp, %bb.bo
  %.0.i.i.i.i.i.i112 = phi i32 [ %i.ww, %bb.bq ], [ %i.wt, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i109 ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i118 ], [ 1, %bb.bp ], [ -1, %bb.bo ]
  %i.wx = icmp slt i32 %.0.i.i.i.i.i.i112, 0
  br label %.thread.i113

.thread.i113:                                     ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i111, %bb.bm
  %i.wy = phi i1 [ %i.wx, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i.i111 ], [ true, %bb.bm ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.wy, ptr noundef nonnull %i.us, ptr noundef nonnull %.sroa.4.0.i313.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #24
  %i.wz = load i64, ptr %i.aq, align 8, !tbaa !441
  %i.xa = add i64 %i.wz, 1
  store i64 %i.xa, ptr %i.aq, align 8, !tbaa !441
  br label %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit54

bb.br:                                            ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i310, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i316, %bb.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.us, i64 noundef 56) #25
  br label %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit54

_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit54: ; preds = %.lr.ph.i.i131, %bb.br, %.thread.i113
  %.sroa.0.0.copyload.i.i55 = load ptr, ptr %i.a, align 8, !tbaa !290 ; 2 uses
  %.sroa.2.0.copyload.i.i57 = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !124 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.qs, align 8, !tbaa !290 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !124 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.0420.0593, i64 48 ; 2 uses
  %i.xc = call noundef i64 @_ZNK4llvm10sampleprof15FunctionSamples22getHeadSamplesEstimateEv(ptr noundef nonnull align 8 dereferenceable(224) %i.xb) ; 2 uses
  %.not.i.i.i179 = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i.i.i179, label %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i181, label %bb.bs

bb.bs:                                            ; preds = %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !1894
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %2) #24, !noalias !1894
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr nonnull %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #24, !noalias !1894
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !1894
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr noundef nonnull align 1 dereferenceable(16) %3) #24, !noalias !1894
  %.0.copyload.i.i.i.i.i.i.i.i.i180 = load i64, ptr %3, align 8, !noalias !1894
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !1894
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !1894
  br label %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i181

_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i181: ; preds = %bb.bs, %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit54
  %.0.i.i.i182 = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i180, %bb.bs ], [ %.sroa.2.0.copyload, %_ZN4llvm10sampleprof17ProfiledCallGraph19addProfiledFunctionENS0_10FunctionIdE.exit54 ] ; 2 uses
  %i.xd = load ptr, ptr %i.aa, align 8, !tbaa !751, !noalias !1895 ; 4 uses
  %i.xe = load ptr, ptr %i.ab, align 8, !tbaa !752, !noalias !1895 ; 3 uses
  %i.xf = load i32, ptr %i.ac, align 4, !tbaa !753, !noalias !1895 ; 5 uses
  %i.xg = icmp eq i32 %i.xf, 0
  br i1 %i.xg, label %.loopexit.i.i.i183, label %bb.bt

bb.bt:                                            ; preds = %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i181
  %i.xh = add i32 %i.xf, -1                       ; 2 uses
  %i.xi = mul i64 %.0.i.i.i182, -4658895280553007687 ; 2 uses
  %i.xj = lshr i64 %i.xi, 31
  %i.xk = xor i64 %i.xj, %i.xi
  %i.xl = trunc i64 %i.xk to i32
  %i.xm = and i32 %i.xh, %i.xl                    ; 3 uses
  %i.xn = zext i32 %i.xm to i64                   ; 2 uses
  %i.xo = lshr i64 %i.xn, 5
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %i.xo
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !279, !noalias !1896
  %i.xr = and i32 %i.xm, 31
  %i.xs = lshr i32 %i.xq, %i.xr
  %i.xt = trunc i32 %i.xs to i1
  br i1 %i.xt, label %.lr.ph.i.i.i.i.i189, label %.loopexit.i.i.i183, !prof !404

.lr.ph.i.i.i.i.i189:                              ; preds = %bb.bt, %bb.bu
  %i.xu = phi i64 [ %i.ya, %bb.bu ], [ %i.xn, %bb.bt ]
  %.017.i.i.i.i.i190 = phi i32 [ %i.xz, %bb.bu ], [ %i.xm, %bb.bt ]
  %i.xv = getelementptr inbounds nuw [16 x i8], ptr %i.xd, i64 %i.xu ; 2 uses
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !124, !noalias !1896
  %i.xx = icmp eq i64 %.0.i.i.i182, %i.xw
  br i1 %i.xx, label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit191.loopexit, label %bb.bu, !prof !405

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i189
  %i.xy = add nuw i32 %.017.i.i.i.i.i190, 1
  %i.xz = and i32 %i.xy, %i.xh                    ; 3 uses
  %i.ya = zext i32 %i.xz to i64                   ; 2 uses
  %i.yb = lshr i64 %i.ya, 5
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %i.yb
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !279, !noalias !1896
  %i.ye = and i32 %i.xz, 31
  %i.yf = lshr i32 %i.yd, %i.ye
  %i.yg = trunc i32 %i.yf to i1
  br i1 %i.yg, label %.lr.ph.i.i.i.i.i189, label %.loopexit.i.i.i183, !prof !406

.loopexit.i.i.i183:                               ; preds = %bb.bu, %bb.bt, %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i181
  %i.yh = zext i32 %i.xf to i64                   ; 2 uses
  %i.yi = getelementptr inbounds nuw [16 x i8], ptr %i.xd, i64 %i.yh
  br label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit191

_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit191.loopexit: ; preds = %.lr.ph.i.i.i.i.i189
  %.pre650 = zext i32 %i.xf to i64
  br label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit191

_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit191: ; preds = %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit191.loopexit, %.loopexit.i.i.i183
  %.pre-phi = phi i64 [ %.pre650, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit191.loopexit ], [ %i.yh, %.loopexit.i.i.i183 ]
  %.lcssa.sink.i.i.i185 = phi ptr [ %i.xv, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit191.loopexit ], [ %i.yi, %.loopexit.i.i.i183 ] ; 2 uses
  %i.yj = getelementptr inbounds nuw [16 x i8], ptr %i.xd, i64 %.pre-phi
  %i.yk = icmp eq ptr %.lcssa.sink.i.i.i185, %i.yj
  br i1 %i.yk, label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit62, label %bb.bv

bb.bv:                                            ; preds = %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit191
  %.not.i.i.i166 = icmp eq ptr %.sroa.0.0.copyload.i.i55, null
  br i1 %.not.i.i.i166, label %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i168, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !1897
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %4) #24, !noalias !1897
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %4, ptr nonnull %.sroa.0.0.copyload.i.i55, i64 %.sroa.2.0.copyload.i.i57) #24, !noalias !1897
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !1897
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %4, ptr noundef nonnull align 1 dereferenceable(16) %5) #24, !noalias !1897
  %.0.copyload.i.i.i.i.i.i.i.i.i167 = load i64, ptr %5, align 8, !noalias !1897
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !1897
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !1897
  %.pre642 = load ptr, ptr %i.aa, align 8, !tbaa !751, !noalias !1898
  %.pre643 = load ptr, ptr %i.ab, align 8, !tbaa !752, !noalias !1898
  %.pre644 = load i32, ptr %i.ac, align 4, !tbaa !753, !noalias !1898
  br label %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i168

_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i168: ; preds = %bb.bw, %bb.bv
  %i.yl = phi i32 [ %.pre644, %bb.bw ], [ %i.xf, %bb.bv ] ; 3 uses
  %i.ym = phi ptr [ %.pre643, %bb.bw ], [ %i.xe, %bb.bv ] ; 2 uses
  %i.yn = phi ptr [ %.pre642, %bb.bw ], [ %i.xd, %bb.bv ] ; 2 uses
  %.0.i.i.i169 = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i.i167, %bb.bw ], [ %.sroa.2.0.copyload.i.i57, %bb.bv ] ; 2 uses
  %i.yo = icmp eq i32 %i.yl, 0
  br i1 %i.yo, label %.loopexit.i.i.i170, label %bb.bx

bb.bx:                                            ; preds = %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i168
  %i.yp = add i32 %i.yl, -1                       ; 2 uses
  %i.yq = mul i64 %.0.i.i.i169, -4658895280553007687 ; 2 uses
  %i.yr = lshr i64 %i.yq, 31
  %i.ys = xor i64 %i.yr, %i.yq
  %i.yt = trunc i64 %i.ys to i32
  %i.yu = and i32 %i.yp, %i.yt                    ; 3 uses
  %i.yv = zext i32 %i.yu to i64                   ; 2 uses
  %i.yw = lshr i64 %i.yv, 5
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %i.yw
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !279, !noalias !1899
  %i.yz = and i32 %i.yu, 31
  %i.za = lshr i32 %i.yy, %i.yz
  %i.zb = trunc i32 %i.za to i1
  br i1 %i.zb, label %.lr.ph.i.i.i.i.i176, label %.loopexit.i.i.i170, !prof !404

.lr.ph.i.i.i.i.i176:                              ; preds = %bb.bx, %bb.by
  %i.zc = phi i64 [ %i.zi, %bb.by ], [ %i.yv, %bb.bx ] ; 2 uses
  %.017.i.i.i.i.i177 = phi i32 [ %i.zh, %bb.by ], [ %i.yu, %bb.bx ]
  %i.zd = getelementptr inbounds nuw [16 x i8], ptr %i.yn, i64 %i.zc
  %i.ze = load i64, ptr %i.zd, align 8, !tbaa !124, !noalias !1899
  %i.zf = icmp eq i64 %.0.i.i.i169, %i.ze
  br i1 %i.zf, label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit178, label %bb.by, !prof !405

bb.by:                                            ; preds = %.lr.ph.i.i.i.i.i176
  %i.zg = add nuw i32 %.017.i.i.i.i.i177, 1
  %i.zh = and i32 %i.zg, %i.yp                    ; 3 uses
  %i.zi = zext i32 %i.zh to i64                   ; 2 uses
  %i.zj = lshr i64 %i.zi, 5
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %i.zj
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !279, !noalias !1899
  %i.zm = and i32 %i.zh, 31
  %i.zn = lshr i32 %i.zl, %i.zm
  %i.zo = trunc i32 %i.zn to i1
  br i1 %i.zo, label %.lr.ph.i.i.i.i.i176, label %.loopexit.i.i.i170, !prof !406

.loopexit.i.i.i170:                               ; preds = %bb.by, %bb.bx, %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit.i168
  %i.zp = zext i32 %i.yl to i64
  br label %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit178

_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit178: ; preds = %.lr.ph.i.i.i.i.i176, %.loopexit.i.i.i170
  %i.zq = phi i64 [ %i.zp, %.loopexit.i.i.i170 ], [ %i.zc, %.lr.ph.i.i.i.i.i176 ]
  %i.zr = getelementptr inbounds nuw [16 x i8], ptr %i.yn, i64 %i.zq
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !729 ; 8 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i185, i64 8
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !729 ; 12 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 32 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 24 ; 7 uses
  %.02738.i377 = load ptr, ptr %i.zw, align 8, !tbaa !498 ; 3 uses
  %.not39.i378 = icmp eq ptr %.02738.i377, null
  br i1 %.not39.i378, label %._crit_edge.thread.i409, label %.lr.ph.i379

.lr.ph.i379:                                      ; preds = %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit178
  %i.zy = load ptr, ptr %i.zv, align 8, !tbaa !475
  %.fr.i380 = freeze ptr %i.zy                    ; 4 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.aaa = load i64, ptr %i.zz, align 8, !tbaa !124 ; 4 uses
  %.not.i.i.i.i.i381 = icmp eq ptr %.fr.i380, null
  br i1 %.not.i.i.i.i.i381, label %.lr.ph.split.us.i412, label %.lr.ph.split.i382

.lr.ph.split.us.i412:                             ; preds = %.lr.ph.i379, %.lr.ph.split.us.i412
  %.02740.us.i413 = phi ptr [ %.027.us.i417, %.lr.ph.split.us.i412 ], [ %.02738.i377, %.lr.ph.i379 ] ; 3 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.02740.us.i413, i64 40
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !699 ; 2 uses
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !475
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aaf = load i64, ptr %i.aae, align 8, !tbaa !124
  %i.aag = icmp ne ptr %i.aad, null
  %i.aah = icmp ult i64 %i.aaa, %i.aaf
  %or.cond.i414 = select i1 %i.aag, i1 true, i1 %i.aah ; 2 uses
  %.in.us.v.i415 = select i1 %or.cond.i414, i64 16, i64 24
  %.in.us.i416 = getelementptr inbounds nuw i8, ptr %.02740.us.i413, i64 %.in.us.v.i415
  %.027.us.i417 = load ptr, ptr %.in.us.i416, align 8, !tbaa !498 ; 2 uses
  %.not.us.i418 = icmp eq ptr %.027.us.i417, null
  br i1 %.not.us.i418, label %._crit_edge.i393, label %.lr.ph.split.us.i412, !llvm.loop !29

.lr.ph.split.i382:                                ; preds = %.lr.ph.i379, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i389
  %.02740.i383 = phi ptr [ %.027.i391, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i389 ], [ %.02738.i377, %.lr.ph.i379 ] ; 3 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.02740.i383, i64 40
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !699 ; 2 uses
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !475 ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !124 ; 2 uses
  %i.aan = call i64 @llvm.umin.i64(i64 %i.aam, i64 %i.aaa)
  %i.aao = icmp eq ptr %.fr.i380, %i.aak
  br i1 %i.aao, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i411, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.split.i382
  %.not9.i.i.i.i.i384 = icmp eq ptr %i.aak, null
  br i1 %.not9.i.i.i.i.i384, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i388, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i385

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i385: ; preds = %bb.bz
  %i.aap = call i32 @memcmp(ptr noundef nonnull %.fr.i380, ptr noundef nonnull %i.aak, i64 noundef %i.aan) #28 ; 2 uses
  %.not.i.i.i.i386 = icmp eq i32 %i.aap, 0
  br i1 %.not.i.i.i.i386, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i411, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i387

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i411: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i385, %.lr.ph.split.i382
  %i.aaq = icmp ult i64 %i.aaa, %i.aam
  br i1 %i.aaq, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i389, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i388

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i387: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i385
  %i.aar = icmp slt i32 %i.aap, 0
  br i1 %i.aar, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i389, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i388

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i388: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i387, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i411, %bb.bz
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i389

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i389: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i388, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i387, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i411
  %.sink.i390 = phi i64 [ 24, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i388 ], [ 16, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i411 ], [ 16, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i387 ]
  %i.aas = phi i1 [ false, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i388 ], [ true, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i411 ], [ true, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i387 ]
  %i.aat = getelementptr inbounds nuw i8, ptr %.02740.i383, i64 %.sink.i390
  %.027.i391 = load ptr, ptr %i.aat, align 8, !tbaa !498 ; 2 uses
  %.not.i392 = icmp eq ptr %.027.i391, null
  br i1 %.not.i392, label %._crit_edge.i393, label %.lr.ph.split.i382, !llvm.loop !29

._crit_edge.i393:                                 ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i389, %.lr.ph.split.us.i412
  %.026.lcssa.i394 = phi ptr [ %.02740.us.i413, %.lr.ph.split.us.i412 ], [ %.02740.i383, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i389 ] ; 3 uses
  %.0.lcssa.i395 = phi i1 [ %or.cond.i414, %.lr.ph.split.us.i412 ], [ %i.aas, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i389 ]
  br i1 %.0.lcssa.i395, label %._crit_edge.thread.i409, label %bb.cb

._crit_edge.thread.i409:                          ; preds = %._crit_edge.i393, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit178
  %.026.lcssa51.i410 = phi ptr [ %.026.lcssa.i394, %._crit_edge.i393 ], [ %i.zx, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit178 ] ; 4 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.zt, i64 40
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !439
  %i.aaw = icmp eq ptr %.026.lcssa51.i410, %i.aav
  br i1 %i.aaw, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.thread.i409
  %i.aax = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.026.lcssa51.i410) #28
  %.pre645 = load ptr, ptr %i.zv, align 8, !tbaa !475
  %.phi.trans.insert646 = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %.pre647 = load i64, ptr %.phi.trans.insert646, align 8, !tbaa !124
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge.i393
  %i.aay = phi i64 [ %.pre647, %bb.ca ], [ %i.aaa, %._crit_edge.i393 ] ; 2 uses
  %i.aaz = phi ptr [ %.pre645, %bb.ca ], [ %.fr.i380, %._crit_edge.i393 ] ; 3 uses
  %.026.lcssa50.i396 = phi ptr [ %.026.lcssa51.i410, %bb.ca ], [ %.026.lcssa.i394, %._crit_edge.i393 ] ; 3 uses
  %.sroa.012.0.i397 = phi ptr [ %i.aax, %bb.ca ], [ %.026.lcssa.i394, %._crit_edge.i393 ] ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i397, i64 40
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !699 ; 2 uses
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !475 ; 3 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  %i.abe = getelementptr inbounds nuw i8, ptr %i.zv, i64 8 ; 3 uses
  %i.abf = load i64, ptr %i.abd, align 8, !tbaa !124 ; 2 uses
  %i.abg = call i64 @llvm.umin.i64(i64 %i.aay, i64 %i.abf)
  %i.abh = icmp eq ptr %i.abc, %i.aaz
  br i1 %i.abh, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i408, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.not.i.i.i.i5.i398 = icmp eq ptr %i.abc, null
  br i1 %.not.i.i.i.i5.i398, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not9.i.i.i.i6.i399 = icmp eq ptr %i.aaz, null
  br i1 %.not9.i.i.i.i6.i399, label %bb.cj, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i400

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i400: ; preds = %bb.cd
  %i.abi = call i32 @memcmp(ptr noundef nonnull %i.abc, ptr noundef nonnull %i.aaz, i64 noundef %i.abg) #28 ; 2 uses
  %.not.i.i.i8.i401 = icmp eq i32 %i.abi, 0
  br i1 %.not.i.i.i8.i401, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i408, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i402

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i408: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i400, %bb.cb
  %i.abj = icmp ult i64 %i.abf, %i.aay
  br i1 %i.abj, label %bb.ce, label %bb.cj

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i402: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i400
  %i.abk = icmp slt i32 %i.abi, 0
  br i1 %i.abk, label %bb.ce, label %bb.cj

bb.ce:                                            ; preds = %._crit_edge.thread.i409, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i402, %bb.cc, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i408
  %.sroa.4.0.i405.ph = phi ptr [ %.026.lcssa50.i396, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i408 ], [ %.026.lcssa50.i396, %bb.cc ], [ %.026.lcssa50.i396, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i402 ], [ %.026.lcssa51.i410, %._crit_edge.thread.i409 ] ; 3 uses
  %i.abl = icmp eq ptr %.sroa.4.0.i405.ph, %i.zx
  br i1 %i.abl, label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit165.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.abm = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i405.ph, i64 40
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !699 ; 2 uses
  %i.abo = load ptr, ptr %i.zv, align 8, !tbaa !475 ; 3 uses
  %i.abp = load ptr, ptr %i.abn, align 8, !tbaa !475 ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !124 ; 3 uses
  %i.abt = load i64, ptr %i.abq, align 8, !tbaa !124 ; 3 uses
  %i.abu = call i64 @llvm.umin.i64(i64 %i.abs, i64 %i.abt)
  %i.abv = icmp eq ptr %i.abo, %i.abp
  br i1 %i.abv, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i164, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.not.i.i.i.i.i.i153 = icmp eq ptr %i.abo, null
  br i1 %.not.i.i.i.i.i.i153, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i157, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not9.i.i.i.i.i.i154 = icmp eq ptr %i.abp, null
  br i1 %.not9.i.i.i.i.i.i154, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i157, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i155

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i155: ; preds = %bb.ch
  %i.abw = call i32 @memcmp(ptr noundef nonnull %i.abo, ptr noundef nonnull %i.abp, i64 noundef %i.abu) #28 ; 2 uses
  %.not.i.i.i.i.i156 = icmp eq i32 %i.abw, 0
  br i1 %.not.i.i.i.i.i156, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i164, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i157

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i164: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i155, %bb.cf
  %i.abx = icmp eq i64 %i.abt, %i.abs
  br i1 %i.abx, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i157, label %bb.ci

bb.ci:                                            ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i164
  %i.aby = icmp ult i64 %i.abt, %i.abs
  %i.abz = select i1 %i.aby, i32 -1, i32 1
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i157

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i157: ; preds = %bb.ci, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i164, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i155, %bb.ch, %bb.cg
  %.0.i.i.i.i.i158 = phi i32 [ %i.abz, %bb.ci ], [ %i.abw, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i155 ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i164 ], [ 1, %bb.ch ], [ -1, %bb.cg ]
  %i.aca = icmp slt i32 %.0.i.i.i.i.i158, 0
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit165.thread

_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit165.thread: ; preds = %bb.ce, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i157
  %i.acb = phi i1 [ %i.aca, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i157 ], [ true, %bb.ce ]
  %i.acc = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 4 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 32
  store ptr %i.zt, ptr %i.acd, align 8, !tbaa !465
  %.sroa.5469.0..sroa_idx470 = getelementptr inbounds nuw i8, ptr %i.acc, i64 40
  store ptr %i.zv, ptr %.sroa.5469.0..sroa_idx470, align 8, !tbaa !465
  %.sroa.12477.0..sroa_idx478 = getelementptr inbounds nuw i8, ptr %i.acc, i64 48
  store i64 %i.xc, ptr %.sroa.12477.0..sroa_idx478, align 8, !tbaa !124
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.acb, ptr noundef nonnull %i.acc, ptr noundef nonnull %.sroa.4.0.i405.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.zx) #24
  %i.ace = getelementptr inbounds nuw i8, ptr %i.zt, i64 56 ; 2 uses
  %i.acf = load i64, ptr %i.ace, align 8, !tbaa !441
  %i.acg = add i64 %i.acf, 1
  store i64 %i.acg, ptr %i.ace, align 8, !tbaa !441
  br label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit62

bb.cj:                                            ; preds = %bb.cd, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i408, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i402
  %i.ach = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i397, i64 48
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !700
  %i.acj = add i64 %i.aci, %i.xc
  %i.ack = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.012.0.i397, ptr noundef nonnull align 8 dereferenceable(32) %i.zx) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.ack, i64 noundef 56) #25
  %i.acl = getelementptr inbounds nuw i8, ptr %i.zt, i64 56 ; 4 uses
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !441
  %i.acn = add i64 %i.acm, -1
  store i64 %i.acn, ptr %i.acl, align 8, !tbaa !441
  %.02738.i334 = load ptr, ptr %i.zw, align 8, !tbaa !498 ; 3 uses
  %.not39.i335 = icmp eq ptr %.02738.i334, null
  br i1 %.not39.i335, label %._crit_edge.thread.i366, label %.lr.ph.i336

.lr.ph.i336:                                      ; preds = %bb.cj
  %i.aco = load ptr, ptr %i.zv, align 8, !tbaa !475
  %.fr.i337 = freeze ptr %i.aco                   ; 4 uses
  %i.acp = load i64, ptr %i.abe, align 8, !tbaa !124 ; 4 uses
  %.not.i.i.i.i.i338 = icmp eq ptr %.fr.i337, null
  br i1 %.not.i.i.i.i.i338, label %.lr.ph.split.us.i369, label %.lr.ph.split.i339

.lr.ph.split.us.i369:                             ; preds = %.lr.ph.i336, %.lr.ph.split.us.i369
  %.02740.us.i370 = phi ptr [ %.027.us.i374, %.lr.ph.split.us.i369 ], [ %.02738.i334, %.lr.ph.i336 ] ; 3 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %.02740.us.i370, i64 40
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !699 ; 2 uses
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !475
  %i.act = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.acu = load i64, ptr %i.act, align 8, !tbaa !124
  %i.acv = icmp ne ptr %i.acs, null
  %i.acw = icmp ult i64 %i.acp, %i.acu
  %or.cond.i371 = select i1 %i.acv, i1 true, i1 %i.acw ; 2 uses
  %.in.us.v.i372 = select i1 %or.cond.i371, i64 16, i64 24
  %.in.us.i373 = getelementptr inbounds nuw i8, ptr %.02740.us.i370, i64 %.in.us.v.i372
  %.027.us.i374 = load ptr, ptr %.in.us.i373, align 8, !tbaa !498 ; 2 uses
  %.not.us.i375 = icmp eq ptr %.027.us.i374, null
  br i1 %.not.us.i375, label %._crit_edge.i350, label %.lr.ph.split.us.i369, !llvm.loop !29

.lr.ph.split.i339:                                ; preds = %.lr.ph.i336, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i346
  %.02740.i340 = phi ptr [ %.027.i348, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i346 ], [ %.02738.i334, %.lr.ph.i336 ] ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.02740.i340, i64 40
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !699 ; 2 uses
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !475 ; 3 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !124 ; 2 uses
  %i.adc = call i64 @llvm.umin.i64(i64 %i.adb, i64 %i.acp)
  %i.add = icmp eq ptr %.fr.i337, %i.acz
  br i1 %i.add, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i368, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.split.i339
  %.not9.i.i.i.i.i341 = icmp eq ptr %i.acz, null
  br i1 %.not9.i.i.i.i.i341, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i345, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i342

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i342: ; preds = %bb.ck
  %i.ade = call i32 @memcmp(ptr noundef nonnull %.fr.i337, ptr noundef nonnull %i.acz, i64 noundef %i.adc) #28 ; 2 uses
  %.not.i.i.i.i343 = icmp eq i32 %i.ade, 0
  br i1 %.not.i.i.i.i343, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i368, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i344

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i368: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i342, %.lr.ph.split.i339
  %i.adf = icmp ult i64 %i.acp, %i.adb
  br i1 %i.adf, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i346, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i345

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i344: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i342
  %i.adg = icmp slt i32 %i.ade, 0
  br i1 %i.adg, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i346, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i345

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i345: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i344, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i368, %bb.ck
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i346

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i346: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i345, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i344, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i368
  %.sink.i347 = phi i64 [ 24, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i345 ], [ 16, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i368 ], [ 16, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i344 ]
  %i.adh = phi i1 [ false, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread.i345 ], [ true, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i368 ], [ true, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i344 ]
  %i.adi = getelementptr inbounds nuw i8, ptr %.02740.i340, i64 %.sink.i347
  %.027.i348 = load ptr, ptr %i.adi, align 8, !tbaa !498 ; 2 uses
  %.not.i349 = icmp eq ptr %.027.i348, null
  br i1 %.not.i349, label %._crit_edge.i350, label %.lr.ph.split.i339, !llvm.loop !29

._crit_edge.i350:                                 ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i346, %.lr.ph.split.us.i369
  %.026.lcssa.i351 = phi ptr [ %.02740.us.i370, %.lr.ph.split.us.i369 ], [ %.02740.i340, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i346 ] ; 3 uses
  %.0.lcssa.i352 = phi i1 [ %or.cond.i371, %.lr.ph.split.us.i369 ], [ %i.adh, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.thread30.i346 ]
  br i1 %.0.lcssa.i352, label %._crit_edge.thread.i366, label %bb.cm

._crit_edge.thread.i366:                          ; preds = %._crit_edge.i350, %bb.cj
  %.026.lcssa51.i367 = phi ptr [ %.026.lcssa.i351, %._crit_edge.i350 ], [ %i.zx, %bb.cj ] ; 4 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.zt, i64 40
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !439
  %i.adl = icmp eq ptr %.026.lcssa51.i367, %i.adk
  br i1 %i.adl, label %bb.cp, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge.thread.i366
  %i.adm = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.026.lcssa51.i367) #28
  %.pre648 = load ptr, ptr %i.zv, align 8, !tbaa !475
  %.pre649 = load i64, ptr %i.abe, align 8, !tbaa !124
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %._crit_edge.i350
  %i.adn = phi i64 [ %.pre649, %bb.cl ], [ %i.acp, %._crit_edge.i350 ] ; 2 uses
  %i.ado = phi ptr [ %.pre648, %bb.cl ], [ %.fr.i337, %._crit_edge.i350 ] ; 3 uses
  %.026.lcssa50.i353 = phi ptr [ %.026.lcssa51.i367, %bb.cl ], [ %.026.lcssa.i351, %._crit_edge.i350 ] ; 3 uses
  %.sroa.012.0.i354 = phi ptr [ %i.adm, %bb.cl ], [ %.026.lcssa.i351, %._crit_edge.i350 ]
  %i.adp = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i354, i64 40
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !699 ; 2 uses
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !475 ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %i.adt = load i64, ptr %i.ads, align 8, !tbaa !124 ; 2 uses
  %i.adu = call i64 @llvm.umin.i64(i64 %i.adn, i64 %i.adt)
  %i.adv = icmp eq ptr %i.adr, %i.ado
  br i1 %i.adv, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i365, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.not.i.i.i.i5.i355 = icmp eq ptr %i.adr, null
  br i1 %.not.i.i.i.i5.i355, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.not9.i.i.i.i6.i356 = icmp eq ptr %i.ado, null
  br i1 %.not9.i.i.i.i6.i356, label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit62, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i357

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i357: ; preds = %bb.co
  %i.adw = call i32 @memcmp(ptr noundef nonnull %i.adr, ptr noundef nonnull %i.ado, i64 noundef %i.adu) #28 ; 2 uses
  %.not.i.i.i8.i358 = icmp eq i32 %i.adw, 0
  br i1 %.not.i.i.i8.i358, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i365, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i359

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i365: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i357, %bb.cm
  %i.adx = icmp ult i64 %i.adt, %i.adn
  br i1 %i.adx, label %bb.cp, label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit62

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i359: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i7.i357
  %i.ady = icmp slt i32 %i.adw, 0
  br i1 %i.ady, label %bb.cp, label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit62

bb.cp:                                            ; preds = %._crit_edge.thread.i366, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i359, %bb.cn, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i365
  %.sroa.4.0.i362.ph = phi ptr [ %.026.lcssa50.i353, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i365 ], [ %.026.lcssa50.i353, %bb.cn ], [ %.026.lcssa50.i353, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i359 ], [ %.026.lcssa51.i367, %._crit_edge.thread.i366 ] ; 3 uses
  %i.adz = icmp eq ptr %.sroa.4.0.i362.ph, %i.zx
  br i1 %i.adz, label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i143, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aea = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i362.ph, i64 40
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !699 ; 2 uses
  %i.aec = load ptr, ptr %i.zv, align 8, !tbaa !475 ; 3 uses
  %i.aed = load ptr, ptr %i.aeb, align 8, !tbaa !475 ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !124 ; 3 uses
  %i.aeg = load i64, ptr %i.abe, align 8, !tbaa !124 ; 3 uses
  %i.aeh = call i64 @llvm.umin.i64(i64 %i.aef, i64 %i.aeg)
  %i.aei = icmp eq ptr %i.aec, %i.aed
  br i1 %i.aei, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i148, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.not.i.i.i.i.i.i137 = icmp eq ptr %i.aec, null
  br i1 %.not.i.i.i.i.i.i137, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i141, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.not9.i.i.i.i.i.i138 = icmp eq ptr %i.aed, null
  br i1 %.not9.i.i.i.i.i.i138, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i141, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i139

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i139: ; preds = %bb.cs
  %i.aej = call i32 @memcmp(ptr noundef nonnull %i.aec, ptr noundef nonnull %i.aed, i64 noundef %i.aeh) #28 ; 2 uses
  %.not.i.i.i.i.i140 = icmp eq i32 %i.aej, 0
  br i1 %.not.i.i.i.i.i140, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i148, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i141

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i148: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i139, %bb.cq
  %i.aek = icmp eq i64 %i.aeg, %i.aef
  br i1 %i.aek, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i141, label %bb.ct

bb.ct:                                            ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i148
  %i.ael = icmp ult i64 %i.aeg, %i.aef
  %i.aem = select i1 %i.ael, i32 -1, i32 1
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i141

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i141: ; preds = %bb.ct, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i148, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i139, %bb.cs, %bb.cr
  %.0.i.i.i.i.i142 = phi i32 [ %i.aem, %bb.ct ], [ %i.aej, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i139 ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i148 ], [ 1, %bb.cs ], [ -1, %bb.cr ]
  %i.aen = icmp slt i32 %.0.i.i.i.i.i142, 0
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i143

_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i143: ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i141, %bb.cp
  %i.aeo = phi i1 [ %i.aen, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i141 ], [ true, %bb.cp ]
  %i.aep = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 4 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 32
  store ptr %i.zt, ptr %i.aeq, align 8, !tbaa !465
  %.sroa.5469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aep, i64 40
  store ptr %i.zv, ptr %.sroa.5469.0..sroa_idx, align 8, !tbaa !465
  %.sroa.12477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aep, i64 48
  store i64 %i.acj, ptr %.sroa.12477.0..sroa_idx, align 8, !tbaa !124
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aeo, ptr noundef nonnull %i.aep, ptr noundef nonnull %.sroa.4.0.i362.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.zx) #24
  %i.aer = load i64, ptr %i.acl, align 8, !tbaa !441
  %i.aes = add i64 %i.aer, 1
  store i64 %i.aes, ptr %i.acl, align 8, !tbaa !441
  br label %_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit62

_ZN4llvm10sampleprof17ProfiledCallGraph15addProfiledCallENS0_10FunctionIdES2_m.exit62: ; preds = %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i143, %bb.co, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i10.i365, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit11.i359, %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_.exit165.thread, %_ZN4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdEPNS0_21ProfiledCallGraphNodeEJEE4findERKS3_.exit191
  call void @_ZN4llvm10sampleprof17ProfiledCallGraph16addProfiledCallsERKNS0_15FunctionSamplesE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(224) %i.xb)
  %i.aet = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0420.0593) #28 ; 2 uses
  %.not554 = icmp eq ptr %i.aet, %i.qq
  br i1 %.not554, label %._crit_edge596, label %.lr.ph595
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !751, !noalias !1904 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !752, !noalias !1904 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !753, !noalias !1904 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !279
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !404

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load i64, ptr %i.w, align 8, !tbaa !124
  %i.y = icmp eq i64 %i.i, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E15LookupBucketForImEEbRKT_RPS9_.exit, label %bb.c, !prof !405

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add nuw i32 %.024.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !279
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit, !prof !406, !llvm.loop !28

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !762
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !754
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit, label %bb.d, !prof !405

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E15LookupBucketForImEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !762
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !752
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !751
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !279
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !279
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !754
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !124
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !124
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr null, ptr %i.bh, align 8, !tbaa !465
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E15LookupBucketForImEEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E15LookupBucketForImEEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E22findBucketForInsertionImEEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E15LookupBucketForImEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !751, !noalias !1909 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !752, !noalias !1909 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !753, !noalias !1909 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !279
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !404

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !124
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !405

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !279
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !406, !llvm.loop !28

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !762
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.899", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E4growEj:bb.a
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit

_ZN4llvm8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !751    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !752
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !753  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !752  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !751
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !753
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !279  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !124  ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !279 ; 2 uses
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.016.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !279 ; 2 uses
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1910

_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store i64 %i.v, ptr %i.as, align 8, !tbaa !124
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !465
  store ptr %i.av, ptr %i.at, align 8, !tbaa !465
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = or i32 %i.aw, %.lcssa11.i
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !279
  %i.ay = add i32 %.0.i15, -1
  %i.az = and i32 %i.ay, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1911

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEEEmS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1912

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !753
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !754
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !754
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bf = zext i32 %i.ba to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bk, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !753
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEE4killEv.exit

_ZN4llvm8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImPNS_10sampleprof21ProfiledCallGraphNodeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE17_M_emplace_uniqueIJPS5_RSA_iEEESt4pairISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !465
  %i.d = load ptr, ptr %2, align 8, !tbaa !465
  %i.e = load i32, ptr %3, align 4, !tbaa !279
  %i.f = sext i32 %i.e to i64
  store ptr %i.c, ptr %i.b, align 8, !tbaa !755
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store ptr %i.d, ptr %i.g, align 8, !tbaa !699
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.f, ptr %i.h, align 8, !tbaa !700
  %i.i = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE24_M_get_insert_unique_posERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.i, 1        ; 4 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.j, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.m
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !699  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !699  ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !475  ; 3 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !475  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !124  ; 3 uses
  %i.v = load i64, ptr %i.s, align 8, !tbaa !124  ; 3 uses
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.v)
  %i.x = icmp eq ptr %i.q, %i.r
  br i1 %i.x, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.y = tail call i32 @memcmp(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i64 noundef %i.w) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.c
  %i.z = icmp eq i64 %i.v, %i.u
  br i1 %i.z, label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i
  %i.aa = icmp ult i64 %i.v, %i.u
  %i.ab = select i1 %i.aa, i32 -1, i32 1
  br label %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i

_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i: ; preds = %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i, %bb.e, %bb.d
  %.0.i.i.i.i.i = phi i32 [ %i.ab, %bb.f ], [ %i.y, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ 1, %bb.e ], [ -1, %bb.d ]
  %i.ac = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i, %bb.b
  %i.ad = phi i1 [ %i.ac, %_ZNK4llvm10sampleprof21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerclERKNS0_21ProfiledCallGraphEdgeES5_.exit.i.i ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !441
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !441
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #25
  br label %_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4llvm10sampleprof21ProfiledCallGraphEdgeES2_St9_IdentityIS2_ENS1_21ProfiledCallGraphNode29ProfiledCallGraphEdgeComparerESaIS2_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.g
  %.sroa.3.016 = phi i8 [ 1, %.thread ], [ 0, %bb.g ]
  %.sroa.010.015 = phi ptr [ %i.a, %.thread ], [ %i.j, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.010.015, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.016, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm12scc_iteratorIPNS_10sampleprof17ProfiledCallGraphENS_11GraphTraitsIS3_EEE11DFSVisitOneEPNS1_21ProfiledCallGraphNodeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !465
  %i.b = load i32, ptr %0, align 8, !tbaa !459
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %0, align 8, !tbaa !459
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10sampleprof21ProfiledCallGraphNodeEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i32 %i.c, ptr %i.f, align 4, !tbaa !279
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !462  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !463
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !465  ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !465
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !462
  br label %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !461  ; 4 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #27
  unreachable

_ZNKSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #26 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !465 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !465
  %i.ab = icmp sgt i64 %i.q, 0
  br i1 %i.ab, label %bb.e, label %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !463
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.af) #25
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !465
  br label %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.f ], [ %i.aa, %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i ]
  store ptr %i.y, ptr %i.g, align 8, !tbaa !461
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !462
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !463
  br label %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.ah = phi ptr [ %i.l, %bb.b ], [ %.pre, %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !439
  %i.al = load i32, ptr %0, align 8, !tbaa !459   ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !763 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !481
  %.not.i.i = icmp eq ptr %i.ao, %i.aq
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE9push_backERKS3_.exit
  store ptr %i.ah, ptr %i.ao, align 8, !tbaa !465
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.am, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !498
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 %i.al, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !279
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !763
  br label %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE9push_backEOS8_.exit

bb.h:                                             ; preds = %_ZNSt6vectorIPN4llvm10sampleprof21ProfiledCallGraphNodeESaIS3_EE9push_backERKS3_.exit
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !480 ; 5 uses
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 3 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.i, label %_ZNKSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #27
  unreachable

_ZNKSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ax = sdiv exact i64 %i.av, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = call i64 @llvm.umin.i64(i64 %i.ay, i64 384307168202282325)
  %i.bb = select i1 %i.az, i64 384307168202282325, i64 %i.ba ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bc = mul nuw nsw i64 %i.bb, 24
  %i.bd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #26 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av ; 3 uses
  store ptr %i.ah, ptr %i.be, align 8, !tbaa !465
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.am, ptr %.sroa.5.0..sroa_idx3, align 8, !tbaa !498
  %.sroa.6.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i32 %i.al, ptr %.sroa.6.0..sroa_idx5, align 8, !tbaa !279
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.as, %i.ao
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i ], [ %i.bd, %_ZNKSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %i.as, %_ZNKSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !1917, !alias.scope !1918
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1916

_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bd, %_ZNKSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bg, %.lr.ph.i.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  %i.bi = load ptr, ptr %i.ap, align 8, !tbaa !481
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bk) #25
  br label %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !480
  store ptr %i.bh, ptr %i.an, align 8, !tbaa !763
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bl, ptr %i.ap, align 8, !tbaa !481
  br label %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE9push_backEOS8_.exit: ; preds = %bb.g, %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_10sampleprof17ProfiledCallGraphENS0_11GraphTraitsIS4_EEE12StackElementESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm12scc_iteratorIPNS_10sampleprof17ProfiledCallGraphENS_11GraphTraitsIS3_EEE10GetNextSCCEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
end_hunk_6
begin_hunk_7_@_ZNK4llvm10sampleprof10HashKeyMapINS_8DenseMapENS0_10FunctionIdES3_JEE4findERKS3_:bb.a
.loopexit.i.i:                                    ; preds = %bb.d, %bb.c, %_ZN4llvm10sampleprof10hash_valueERKNS0_10FunctionIdE.exit
  %i.al = zext i32 %i.h to i64                    ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.al ; 2 uses
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImNS_10sampleprof10FunctionIdENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapImNS_10sampleprof10FunctionIdENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit: ; preds = %bb.e, %.loopexit.i.i
  %.pre-phi = phi i64 [ %i.aj, %bb.e ], [ %i.al, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.x, %bb.e ], [ %i.am, %.loopexit.i.i ] ; 2 uses
  %.sink.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.am, %.loopexit.i.i ]
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.pre-phi ; 2 uses
  %.not = icmp eq ptr %.lcssa.sink.i.i, %i.an
  %spec.select10 = select i1 %.not, ptr %i.an, ptr %.sink.i.i
  store ptr %.lcssa.sink.i.i, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select10, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.aq, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4llvm10sampleprof10HashKeyMapISt13unordered_mapNS0_13SampleContextENS0_15FunctionSamplesEJEE4findERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::MD5", align 4         ; 5 uses
  %3 = alloca %"struct.llvm::MD5::MD5Result", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !497
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !617 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !124
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i
  %i.e = tail call i64 @_ZN4llvm7hashing6detail23hash_combine_range_implIPKNS_10sampleprof18SampleContextFrameEEENS_9hash_codeET_S8_(ptr noundef %.sroa.0.0.copyload.i.i.i, ptr noundef %i.d)
  br label %_ZN4llvm10sampleprofL10hash_valueERKNS0_13SampleContextE.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %1, align 8, !tbaa !290 ; 2 uses
  %.sroa.2.0..sroa_idx.i2.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i3.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i2.i.i, align 8, !tbaa !124 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i1.i.i, null
  br i1 %.not.i.i.i, label %_ZN4llvm10sampleprofL10hash_valueERKNS0_13SampleContextE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN4llvm3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %2) #24
  call void @_ZN4llvm3MD56updateENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr nonnull %.sroa.0.0.copyload.i1.i.i, i64 %.sroa.2.0.copyload.i3.i.i) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN4llvm3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr noundef nonnull align 1 dereferenceable(16) %3) #24
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN4llvm10sampleprofL10hash_valueERKNS0_13SampleContextE.exit

_ZN4llvm10sampleprofL10hash_valueERKNS0_13SampleContextE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i.i = phi i64 [ %i.e, %bb.b ], [ %.0.copyload.i.i.i.i.i.i.i.i.i, %bb.d ], [ %.sroa.2.0.copyload.i3.i.i, %bb.c ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !637
  %.not.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.not.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4llvm10sampleprofL10hash_valueERKNS0_13SampleContextE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.06.0.in.i.i = phi ptr [ %i.h, %bb.e ], [ %.sroa.06.0.i.i, %bb.g ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !428 ; 4 uses
  %.not.i.i2 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i2, label %_ZNSt13unordered_mapIN4llvm9hash_codeENS0_10sampleprof15FunctionSamplesESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S3_EEE4findERS9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !631
  %i.k = icmp eq i64 %.0.i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIN4llvm9hash_codeENS0_10sampleprof15FunctionSamplesESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S3_EEE4findERS9_.exit, label %bb.f, !llvm.loop !2184

bb.h:                                             ; preds = %_ZN4llvm10sampleprofL10hash_valueERKNS0_13SampleContextE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !390  ; 2 uses
  %i.n = urem i64 %.0.i.i, %i.m                   ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !389
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !632  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIN4llvm9hash_codeENS0_10sampleprof15FunctionSamplesESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S3_EEE4findERS9_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !428  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  %i.u = load i64, ptr %i.t, align 8, !tbaa !634
  %i.v = icmp eq i64 %.0.i.i, %i.u
  %i.w = load i64, ptr %i.s, align 8
  %i.x = icmp eq i64 %.0.i.i, %i.w
  %i.y = select i1 %i.v, i1 %i.x, i1 false
  br i1 %i.y, label %_ZNSt13unordered_mapIN4llvm9hash_codeENS0_10sampleprof15FunctionSamplesESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aa = icmp eq i64 %.0.i.i, %i.ag
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = icmp eq i64 %.0.i.i, %i.ab
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %i.ad, label %_ZNSt13unordered_mapIN4llvm9hash_codeENS0_10sampleprof15FunctionSamplesESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !17

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %.020.i.i.i.i = phi ptr [ %i.ae, %bb.j ], [ %i.r, %bb.i ]
  %i.ae = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !428 ; 5 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIN4llvm9hash_codeENS0_10sampleprof15FunctionSamplesESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S3_EEE4findERS9_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !634 ; 2 uses
  %i.ah = urem i64 %i.ag, %i.m
  %.not19.i.i.i.i = icmp eq i64 %i.ah, %i.n
  br i1 %.not19.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !17

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.k
  br label %_ZNSt13unordered_mapIN4llvm9hash_codeENS0_10sampleprof15FunctionSamplesESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S3_EEE4findERS9_.exit, !llvm.loop !17

_ZNSt13unordered_mapIN4llvm9hash_codeENS0_10sampleprof15FunctionSamplesESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S3_EEE4findERS9_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.j, %bb.f, %bb.g, %bb.h, %..loopexit_crit_edge21.i.i.i.i, %bb.i
  %.sroa.0.0 = phi ptr [ %i.r, %bb.i ], [ %.sroa.06.0.i.i, %bb.g ], [ null, %bb.h ], [ null, %..loopexit_crit_edge21.i.i.i.i ], [ null, %bb.f ], [ null, %.lr.ph.i.i.i.i ], [ %i.ae, %bb.j ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm10sampleprof13SampleContextltERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !497  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !497  ; 2 uses
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
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2186 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2186 ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  %.not58 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2187
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !2187
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !475    ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !475    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !124  ; 3 uses
  %i.s = load i64, ptr %i.p, align 8, !tbaa !124  ; 3 uses
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
  %i.v = tail call i32 @memcmp(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i64 noundef %i.t) #28 ; 2 uses
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
  %.0.i.i = phi i32 [ %i.y, %bb.g ], [ %i.v, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i ], [ 1, %bb.f ], [ -1, %bb.e ]
  %i.z = icmp slt i32 %.0.i.i, 0
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

bb.h:                                             ; preds = %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit
  %i.aa = add nuw i64 %.02056, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !2185

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.02056 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.02056 ; 4 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.02056 ; 4 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !475 ; 3 uses
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !475 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !124 ; 3 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !124 ; 3 uses
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
  %i.al = tail call i32 @memcmp(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, i64 noundef %i.aj) #28 ; 2 uses
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i, label %.loopexit.loopexit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i, %bb.i
  %i.am = icmp eq i64 %i.ai, %i.ah
  br i1 %i.am, label %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i
  %i.an = icmp ult i64 %i.ai, %i.ah
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

.loopexit.loopexit:                               ; preds = %bb.j, %bb.k, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i
  %.0.i.ph.ph = phi i32 [ -1, %bb.j ], [ 1, %bb.k ], [ %i.al, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i ]
  %i.ao = icmp slt i32 %.0.i.ph.ph, 0
  br label %_ZNK4llvm10sampleprof12LineLocationltERKS1_.exit.thread

_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ar = load i32, ptr %i.ap, align 8, !tbaa !562 ; 3 uses
  %i.as = load i32, ptr %i.aq, align 8, !tbaa !562 ; 3 uses
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
define linkonce_odr noundef zeroext i1 @_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE26computeAndPropagateWeightsERS1_RKNS_8DenseSetImNS_12DenseMapInfoImvEEEE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !354
  %i.d = icmp ne i32 %i.c, 0
  %i.e = tail call noundef zeroext i1 @_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE19computeBlockWeightsERS1_(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(140) %1)
  %i.f = or i1 %i.d, %i.e                         ; 2 uses
  br i1 %i.f, label %bb.b, label %_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE25finalizeWeightPropagationERS1_RKNS_8DenseSetImNS_12DenseMapInfoImvEEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !496
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !620
  %i.k = add i64 %i.j, 1
  tail call void @_ZN4llvm8Function13setEntryCountEmPKNS_8DenseSetImNS_12DenseMapInfoImvEEEE(ptr noundef nonnull align 8 dereferenceable(140) %1, i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm21SampleProfileUseProfiE, i64 120), align 8, !tbaa !265, !range !74, !noundef !75
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE21initWeightPropagationERS1_RKNS_8DenseSetImNS_12DenseMapInfoImvEEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE27computeDominanceAndLoopInfoERS1_(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(140) %1)
  tail call void @_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE22findEquivalenceClassesERS1_(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(140) %1)
  br label %_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE21initWeightPropagationERS1_RKNS_8DenseSetImNS_12DenseMapInfoImvEEEE.exit

_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE21initWeightPropagationERS1_RKNS_8DenseSetImNS_12DenseMapInfoImvEEEE.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE10buildEdgesERS1_(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(140) %1)
  tail call void @_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE16propagateWeightsERS1_(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(140) %1)
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm21SampleProfileUseProfiE, i64 120), align 8, !tbaa !265, !range !74, !noundef !75
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE25finalizeWeightPropagationERS1_RKNS_8DenseSetImNS_12DenseMapInfoImvEEEE.exit

bb.d:                                             ; preds = %_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE21initWeightPropagationERS1_RKNS_8DenseSetImNS_12DenseMapInfoImvEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !395
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -24
  store ptr %i.r, ptr %i.a, align 8, !tbaa !844
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !124
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10BasicBlockEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i4.i = extractvalue { ptr, i8 } %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i4.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !124
  call void @_ZN4llvm8Function13setEntryCountEmPKNS_8DenseSetImNS_12DenseMapInfoImvEEEE(ptr noundef nonnull align 8 dereferenceable(140) %1, i64 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE25finalizeWeightPropagationERS1_RKNS_8DenseSetImNS_12DenseMapInfoImvEEEE.exit

_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE25finalizeWeightPropagationERS1_RKNS_8DenseSetImNS_12DenseMapInfoImvEEEE.exit: ; preds = %bb.f, %_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE21initWeightPropagationERS1_RKNS_8DenseSetImNS_12DenseMapInfoImvEEEE.exit, %bb.a
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm27SampleProfileLoaderBaseImplINS_8FunctionEE19emitCoverageRemarksERS1_(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DiagnosticInfoSampleProfile", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %5 = alloca %"class.llvm::DiagnosticInfoSampleProfile", align 8 ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %8 = alloca %"class.llvm::DiagnosticInfoSampleProfile", align 8 ; 10 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::DiagnosticInfoSampleProfile", align 8 ; 10 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm27SampleProfileRecordCoverageE, i64 120), align 8, !tbaa !402
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !496
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !396
  %i.g = tail call noundef i32 @_ZNK4llvm14sampleprofutil21SampleCoverageTracker16countUsedRecordsEPKNS_10sampleprof15FunctionSamplesEPNS_18ProfileSummaryInfoE(ptr noundef nonnull align 8 dereferenceable(33) %i.b, ptr noundef %i.d, ptr noundef %i.f) #24 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !496
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !396
  %i.j = tail call noundef i32 @_ZNK4llvm14sampleprofutil21SampleCoverageTracker16countBodyRecordsEPKNS_10sampleprof15FunctionSamplesEPNS_18ProfileSummaryInfoE(ptr noundef nonnull align 8 dereferenceable(33) %i.b, ptr noundef %i.h, ptr noundef %i.i) #24 ; 2 uses
  %i.k = tail call noundef i32 @_ZNK4llvm14sampleprofutil21SampleCoverageTracker15computeCoverageEjj(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i32 noundef %i.g, i32 noundef %i.j) #24 ; 2 uses
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm27SampleProfileRecordCoverageE, i64 120), align 8, !tbaa !402
  %i.m = icmp ult i32 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.o = tail call noundef ptr @_ZNK4llvm8Function13getSubprogramEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #24 ; 4 uses
  %i.p = load i8, ptr %i.o, align 4, !tbaa !522
  %i.q = icmp eq i8 %i.p, 16
  br i1 %i.q, label %_ZNK4llvm7DIScope7getFileEv.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = and i64 %i.s, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 -32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !78
  br label %_ZNK4llvm7DIScope7getFileEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.w = lshr i64 %i.s, 2
  %i.x = and i64 %i.w, 15
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.y
  br label %_ZNK4llvm7DIScope7getFileEv.exit.i

_ZNK4llvm7DIScope7getFileEv.exit.i:               ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.z, %bb.f ], [ %i.v, %bb.e ]
  %i.aa = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !520 ; 2 uses
  %.not.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.not.i, label %_ZNK4llvm7DIScope11getFilenameEv.exit, label %_ZNK4llvm7DIScope7getFileEv.exit.thread.i

_ZNK4llvm7DIScope7getFileEv.exit.thread.i:        ; preds = %_ZNK4llvm7DIScope7getFileEv.exit.i, %bb.c
  %i.ab = phi ptr [ %i.aa, %_ZNK4llvm7DIScope7getFileEv.exit.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm7DIScope7getFileEv.exit.thread.i
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !78
  br label %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i

bb.h:                                             ; preds = %_ZNK4llvm7DIScope7getFileEv.exit.thread.i
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i

_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.h ], [ %i.ag, %bb.g ]
  %i.al = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !520 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.not.i.i.i, label %_ZNK4llvm7DIScope11getFilenameEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i
end_hunk_7
begin_hunk_8_@_ZSt16__introsort_loopIPSt4pairIN4llvm10sampleprof10FunctionIdEmElN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_T1_:bb.a
  tail call void @_ZSt13__adjust_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull byval(%"struct.std::pair.697") align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.t = icmp sgt i64 %i.r, 24
  br i1 %i.t, label %bb.d, label %_ZSt14__partial_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_T0_.exit, !llvm.loop !3031

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
  br i1 %i.ac, label %bb.b, label %_ZSt14__partial_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_T0_.exit, !llvm.loop !3029

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
  %i.g = load i64, ptr %i.f, align 8, !tbaa !758  ; 3 uses
  %.not.i.i.us.i.i = icmp eq i64 %.sroa.6.0.copyload.i.i, %i.g
  br i1 %.not.i.i.us.i.i, label %bb.c, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split17.us.i.i
  %i.h = icmp ugt i64 %.sroa.6.0.copyload.i.i, %i.g
  br i1 %i.h, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

bb.c:                                             ; preds = %.split17.us.i.i
  %i.i = load ptr, ptr %.0.us.i.i, align 8, !tbaa !475
  %i.j = getelementptr inbounds i8, ptr %.09.us.i.i, i64 -16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !124
  %i.l = icmp ne ptr %i.i, null
  %i.m = icmp ult i64 %.sroa.5.0.copyload.i.i, %i.k
  %or.cond.i.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.us.i.i: ; preds = %bb.c, %.split.us.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.us.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.us.i.i, i64 16, i1 false), !tbaa.struct !623
  %i.n = getelementptr inbounds nuw i8, ptr %.09.us.i.i, i64 16
  store i64 %i.g, ptr %i.n, align 8, !tbaa !758
  br label %.split17.us.i.i, !llvm.loop !50

.split17.i.i:                                     ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i
  %.09.i.i = phi ptr [ %.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i ], [ %.08.i, %.lr.ph.i ] ; 9 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.09.i.i, i64 -24 ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.09.i.i, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !758  ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.6.0.copyload.i.i, %i.p
  br i1 %.not.i.i.i.i, label %bb.d, label %.split.i.i

.split.i.i:                                       ; preds = %.split17.i.i
  %i.q = icmp ugt i64 %.sroa.6.0.copyload.i.i, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

bb.d:                                             ; preds = %.split17.i.i
  %i.r = load ptr, ptr %.0.i.i, align 8, !tbaa !475 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.09.i.i, i64 -16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !124  ; 2 uses
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %.sroa.5.0.copyload.i.i)
  %i.v = icmp eq ptr %.sroa.0.0.copyload.fr.i.i, %i.r
  br i1 %i.v, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.w = tail call i32 @memcmp(ptr noundef nonnull %.sroa.0.0.copyload.fr.i.i, ptr noundef nonnull %i.r, i64 noundef %i.u) #28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i, %bb.d
  %i.x = icmp ult i64 %.sroa.5.0.copyload.i.i, %i.t
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i.i
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.thread15.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, %.split.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 16, i1 false), !tbaa.struct !623
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  store i64 %i.p, ptr %i.z, align 8, !tbaa !758
  br label %.split17.i.i, !llvm.loop !50

_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i, %bb.e, %.split.i.i, %bb.c, %.split.us.i.i
  %.us-phi.i.i = phi ptr [ %.09.us.i.i, %bb.c ], [ %.09.us.i.i, %.split.us.i.i ], [ %.09.i.i, %.split.i.i ], [ %.09.i.i, %bb.e ], [ %.09.i.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i.i ], [ %.09.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclISt4pairINS3_10FunctionIdEmEPSA_EEbRT_T0_.exit.i.i ] ; 3 uses
  store ptr %.sroa.0.0.copyload.fr.i.i, ptr %.us-phi.i.i, align 8, !tbaa !290
  %.sroa.5.0..09.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i, align 8, !tbaa !124
  %i.aa = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.aa, align 8, !tbaa !758
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i, label %_ZSt26__unguarded_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_.exit, label %.lr.ph.i, !llvm.loop !3032

bb.f:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_(ptr noundef %0, ptr noundef %1)
  br label %_ZSt26__unguarded_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_.exit

_ZSt26__unguarded_insertion_sortIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops14_Val_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_.exit.i, %bb.b, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__adjust_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"struct.std::pair.697") align 8 %3) local_unnamed_addr #3 comdat {
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !758  ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !758  ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = icmp ugt i64 %i.i, %i.k
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %i.g, i64 24
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !475  ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !475  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = getelementptr i8, ptr %i.g, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !124  ; 3 uses
  %i.s = load i64, ptr %i.p, align 8, !tbaa !124  ; 3 uses
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
  %i.v = tail call i32 @memcmp(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i64 noundef %i.t) #28 ; 2 uses
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
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ %i.v, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i ], [ 0, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i ], [ 1, %bb.e ], [ -1, %bb.d ]
  %i.z = icmp slt i32 %.0.i.i.i.i, 0
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit: ; preds = %bb.b, %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i
  %.0.i.i = phi i1 [ %i.l, %bb.b ], [ %i.z, %_ZN4llvm10sampleprofltERKNS0_10FunctionIdES3_.exit.i.i ]
  %i.aa = or disjoint i64 %i.d, 1
  %spec.select = select i1 %.0.i.i, i64 %i.aa, i64 %i.e ; 4 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr %0, i64 %.037 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 16, i1 false), !tbaa.struct !623
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !124
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !758
  %i.ag = icmp slt i64 %spec.select, %i.b
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !3033

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 16, i1 false), !tbaa.struct !623
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !124
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !758
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
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !758 ; 3 uses
  %.not.i.i.us.i = icmp eq i64 %i.aw, %.sroa.3.0.copyload
  br i1 %.not.i.i.us.i, label %bb.j, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  %i.ax = icmp ugt i64 %i.aw, %.sroa.3.0.copyload
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !475
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i: ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !124
  %i.bc = icmp ult i64 %i.bb, %.sroa.2.0.copyload
  br i1 %i.bc, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i, %.split.us.i
  %i.bd = getelementptr inbounds [24 x i8], ptr %0, i64 %.01320.us.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 16, i1 false), !tbaa.struct !623
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.aw, ptr %i.be, align 8, !tbaa !758
  %.0.in.us.i = add nsw i64 %.021.us.i, -1
  %.0.us.i = sdiv i64 %.0.in.us.i, 2
  %i.bf = icmp sgt i64 %.021.us.i, %1
  br i1 %i.bf, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit, !llvm.loop !3034

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i
  %.021.i = phi i64 [ %.0.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i ], [ %.019.i, %.lr.ph.i ] ; 5 uses
  %.01320.i = phi i64 [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i ], [ %.127, %.lr.ph.i ] ; 4 uses
  %i.bg = getelementptr inbounds [24 x i8], ptr %0, i64 %.021.i ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !758 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.bi, %.sroa.3.0.copyload
  br i1 %.not.i.i.i, label %bb.k, label %.split.i

.split.i:                                         ; preds = %.lr.ph.split.i
  %i.bj = icmp ugt i64 %i.bi, %.sroa.3.0.copyload
  br i1 %i.bj, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit

bb.k:                                             ; preds = %.lr.ph.split.i
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !475 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !124 ; 2 uses
  %i.bn = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload, i64 %i.bm)
  %i.bo = icmp eq ptr %i.bk, %.fr.i
  br i1 %i.bo, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i.i: ; preds = %bb.l
  %i.bp = tail call i32 @memcmp(ptr noundef nonnull %i.bk, ptr noundef nonnull %.fr.i, i64 noundef %i.bn) #28 ; 2 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 16, i1 false), !tbaa.struct !623
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %i.bi, ptr %i.bt, align 8, !tbaa !758
  %.0.in.i = add nsw i64 %.021.i, -1
  %.0.i = sdiv i64 %.0.in.i, 2
  %i.bu = icmp sgt i64 %.021.i, %1
  br i1 %i.bu, label %.lr.ph.split.i, label %_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit, !llvm.loop !3034

_ZSt11__push_heapIPSt4pairIN4llvm10sampleprof10FunctionIdEmElS4_N9__gnu_cxx5__ops14_Iter_comp_valINS2_12SampleRecord20CallTargetComparatorEEEEvT_T0_SD_T1_RT2_.exit: ; preds = %.split.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i, %.split.us.i, %bb.j, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i, %bb.i
  %.013.lcssa.i = phi i64 [ %.127, %bb.i ], [ %.021.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.us.i ], [ %.01320.us.i, %.split.us.i ], [ %.01320.us.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.us.i ], [ %.01320.us.i, %bb.j ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.thread16.i ], [ %.01320.i, %.split.i ], [ %.01320.i, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i.i ], [ %.01320.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESA_EEbT_RT0_.exit.i ]
  %i.bv = getelementptr inbounds [24 x i8], ptr %0, i64 %.013.lcssa.i ; 3 uses
  store ptr %.fr.i, ptr %i.bv, align 8, !tbaa !290
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.5.0..sroa_idx31, align 8, !tbaa !124
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %.sroa.3.0.copyload, ptr %i.bw, align 8, !tbaa !758
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !758  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !758  ; 6 uses
  %.not.i.i = icmp eq i64 %i.b, %i.d
  br i1 %.not.i.i, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread64, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !475    ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !475    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !124  ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !tbaa !124  ; 2 uses
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
  %i.n = tail call i32 @memcmp(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, i64 noundef %i.l) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i, %bb.b
  %i.o = icmp ult i64 %i.k, %i.j
  br i1 %i.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread64, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i
end_hunk_8
begin_hunk_9_@_ZSt22__move_median_to_firstIPSt4pairIN4llvm10sampleprof10FunctionIdEmEN9__gnu_cxx5__ops15_Iter_comp_iterINS2_12SampleRecord20CallTargetComparatorEEEEvT_SC_SC_SC_T0_:bb.a
  %i.ap = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ap, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i.i34 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i34, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread76, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not9.i.i.i.i.i35 = icmp eq ptr %i.aj, null
  br i1 %.not9.i.i.i.i.i35, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i36

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i36: ; preds = %bb.j
  %i.aq = tail call i32 @memcmp(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, i64 noundef %i.ao) #28 ; 2 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 16, i1 false), !tbaa.struct !623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !623
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !124
  %i.av = load i64, ptr %i.q, align 8, !tbaa !124
  store i64 %i.av, ptr %i.at, align 8, !tbaa !124
  store i64 %i.au, ptr %i.q, align 8, !tbaa !124
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41.thread: ; preds = %bb.j, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i40, %.split72, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 16, i1 false), !tbaa.struct !623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !623
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !124
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !124
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !124
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread: ; preds = %bb.d, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %.split, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !758 ; 4 uses
  %.not.i.i42 = icmp eq i64 %i.b, %i.ba
  br i1 %.not.i.i42, label %bb.k, label %.split78

.split78:                                         ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread
  %i.bb = icmp ugt i64 %i.b, %i.ba
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread82, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread
  %i.bc = load ptr, ptr %1, align 8, !tbaa !475   ; 3 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !475   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !124 ; 2 uses
  %i.bh = load i64, ptr %i.be, align 8, !tbaa !124 ; 2 uses
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
  %i.bk = tail call i32 @memcmp(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, i64 noundef %i.bi) #28 ; 2 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 16, i1 false), !tbaa.struct !623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !623
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !124
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !124
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !124
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread: ; preds = %bb.m, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i50, %.split78, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51
  %.not.i.i52 = icmp eq i64 %i.d, %i.ba
  br i1 %.not.i.i52, label %bb.n, label %.split84

.split84:                                         ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread
  %i.bq = icmp ugt i64 %i.d, %i.ba
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread88, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit51.thread
  %i.br = load ptr, ptr %2, align 8, !tbaa !475   ; 3 uses
  %i.bs = load ptr, ptr %3, align 8, !tbaa !475   ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !124 ; 2 uses
  %i.bw = load i64, ptr %i.bt, align 8, !tbaa !124 ; 2 uses
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
  %i.bz = tail call i32 @memcmp(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bs, i64 noundef %i.bx) #28 ; 2 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 16, i1 false), !tbaa.struct !623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !623
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !124
  %i.ce = load i64, ptr %i.az, align 8, !tbaa !124
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !124
  store i64 %i.cd, ptr %i.az, align 8, !tbaa !124
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61.thread: ; preds = %bb.p, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i60, %.split84, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 16, i1 false), !tbaa.struct !623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !623
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !124
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !124
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !124
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !124
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
  %i.c = load i64, ptr %i.a, align 8, !tbaa !758  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, %bb.b
  %.1 = phi ptr [ %.0, %bb.b ], [ %i.r, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread ] ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !758  ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, %i.c
  br i1 %.not.i.i, label %bb.d, label %.split

.split:                                           ; preds = %bb.c
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.f, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit, %.split
  %i.g = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  br label %.backedge

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.1, align 8, !tbaa !475   ; 3 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !475    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.k = load i64, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.l = load i64, ptr %i.j, align 8, !tbaa !124  ; 2 uses
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
  %i.o = tail call i32 @memcmp(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef %i.m) #28 ; 2 uses
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
  br label %bb.c, !llvm.loop !3035

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %.013.pn = phi ptr [ %.013, %.preheader ], [ %.114, %.backedge.backedge ] ; 4 uses
  %.114 = getelementptr inbounds i8, ptr %.013.pn, i64 -24 ; 6 uses
  %i.s = getelementptr inbounds i8, ptr %.013.pn, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !758  ; 2 uses
  %.not.i.i15 = icmp eq i64 %i.c, %i.t
  br i1 %.not.i.i15, label %bb.g, label %.split26

.split26:                                         ; preds = %.backedge
  %i.u = icmp ugt i64 %i.c, %i.t
  br i1 %i.u, label %.backedge.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread

bb.g:                                             ; preds = %.backedge
  %i.v = load ptr, ptr %2, align 8, !tbaa !475    ; 3 uses
  %i.w = load ptr, ptr %.114, align 8, !tbaa !475 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.013.pn, i64 -16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !124  ; 2 uses
  %i.z = load i64, ptr %i.b, align 8, !tbaa !124  ; 2 uses
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
  %i.ac = tail call i32 @memcmp(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i64 noundef %i.aa) #28 ; 2 uses
  %.not.i.i.i.i20 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i20, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i19, %bb.g
  %i.ad = icmp ult i64 %i.z, %i.y
  br i1 %i.ad, label %.backedge.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24.thread

.backedge.backedge:                               ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i23, %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10sampleprof12SampleRecord20CallTargetComparatorEEclIPSt4pairINS3_10FunctionIdEmESB_EEbT_T0_.exit24, %.split26
  br label %.backedge, !llvm.loop !3036

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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %.1, i64 16, i1 false), !tbaa.struct !623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.1, ptr noundef nonnull align 8 dereferenceable(24) %.114, i64 16, i1 false), !tbaa.struct !623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.114, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !623
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !124
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !124
  store i64 %i.ai, ptr %i.g, align 8, !tbaa !124
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !124
  %i.aj = getelementptr inbounds nuw i8, ptr %.1, i64 24
  br label %bb.b, !llvm.loop !3037
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
  %i.f = load i64, ptr %i.e, align 8, !tbaa !758  ; 8 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !758  ; 2 uses
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
  %i.i = load ptr, ptr %.025, align 8, !tbaa !475 ; 6 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !475    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn24, i64 32
  %i.l = load i64, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !124  ; 5 uses
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
  %i.p = tail call i32 @memcmp(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i64 noundef %i.n) #28 ; 2 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 16, i1 false), !tbaa.struct !623
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !124
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !758
  %i.ac = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ad = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
end_hunk_9
