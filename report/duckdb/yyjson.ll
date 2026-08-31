Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/yyjson?download=true
inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br label %vector.body6027

vector.body6027:                                  ; preds = %vector.body6027, %vector.ph6025
  %index6028 = phi i64 [ 0, %vector.ph6025 ], [ %index.next6033, %vector.body6027 ] ; 2 uses
  %i.abi = shl i64 %index6028, 2                  ; 2 uses
  %next.gep6029.a = getelementptr i8, ptr %.018.i76.lcssa, i64 %i.abi ; 2 uses
  %next.gep6030 = getelementptr i8, ptr %.021.i75.lcssa, i64 %i.abi ; 2 uses
  %i.abj = getelementptr i8, ptr %next.gep6029.a, i64 16
  %wide.load6031.a = load <4 x i32>, ptr %next.gep6029.a, align 1
  %wide.load6032 = load <4 x i32>, ptr %i.abj, align 1
  %i.abk = getelementptr i8, ptr %next.gep6030, i64 16
  store <4 x i32> %wide.load6031.a, ptr %next.gep6030, align 1
  store <4 x i32> %wide.load6032, ptr %i.abk, align 1
  %index.next6033 = add nuw i64 %index6028, 8     ; 2 uses
  %i.abl = icmp eq i64 %index.next6033, %n.vec6026
  br i1 %i.abl, label %middle.block6034, label %vector.body6027, !llvm.loop !291

middle.block6034:                                 ; preds = %vector.body6027
  %cmp.n6035 = icmp eq i64 %i.abb, %n.vec6026
  br i1 %cmp.n6035, label %.preheader1873, label %.lr.ph3171.preheader6165

.lr.ph3171.preheader6165:                         ; preds = %.lr.ph3171.preheader, %middle.block6034
  %.1.i803170.ph = phi i64 [ %.0.i77.lcssa, %.lr.ph3171.preheader ], [ %i.abe, %middle.block6034 ]
  %.119.i793169.ph = phi ptr [ %.018.i76.lcssa, %.lr.ph3171.preheader ], [ %i.abg, %middle.block6034 ]
  %.122.i783168.ph = phi ptr [ %.021.i75.lcssa, %.lr.ph3171.preheader ], [ %i.abh, %middle.block6034 ]
  br label %.lr.ph3171

.lr.ph3164:                                       ; preds = %bb.eb, %.lr.ph3164
  %.0.i773162 = phi i64 [ %i.abo, %.lr.ph3164 ], [ %i.t, %bb.eb ]
  %.018.i763161 = phi ptr [ %i.abn, %.lr.ph3164 ], [ %i.v, %bb.eb ] ; 2 uses
  %.021.i753160 = phi ptr [ %i.abm, %.lr.ph3164 ], [ %i.aaw, %bb.eb ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i753160, ptr noundef nonnull align 1 dereferenceable(16) %.018.i763161, i64 16, i1 false)
  %i.abm = getelementptr inbounds nuw i8, ptr %.021.i753160, i64 16 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.018.i763161, i64 16 ; 2 uses
  %i.abo = add nsw i64 %.0.i773162, -16           ; 3 uses
  %i.abp = icmp ugt i64 %i.abo, 15
  br i1 %i.abp, label %.lr.ph3164, label %.preheader1874, !llvm.loop !292

.preheader1873:                                   ; preds = %.lr.ph3171, %middle.block6034, %.preheader1874
  %.122.i78.lcssa = phi ptr [ %.021.i75.lcssa, %.preheader1874 ], [ %i.abh, %middle.block6034 ], [ %i.acj, %.lr.ph3171 ] ; 7 uses
  %.119.i79.lcssa = phi ptr [ %.018.i76.lcssa, %.preheader1874 ], [ %i.abg, %middle.block6034 ], [ %i.ack, %.lr.ph3171 ] ; 6 uses
  %.1.i80.lcssa = phi i64 [ %.0.i77.lcssa, %.preheader1874 ], [ %i.abe, %middle.block6034 ], [ %i.acl, %.lr.ph3171 ] ; 11 uses
  %.not.i843175 = icmp eq i64 %.1.i80.lcssa, 0
  br i1 %.not.i843175, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %iter.check6062

iter.check6062:                                   ; preds = %.preheader1873
  %.119.i79.lcssa6041 = ptrtoaddr ptr %.119.i79.lcssa to i64
  %.122.i78.lcssa6040 = ptrtoaddr ptr %.122.i78.lcssa to i64
  %min.iters.check6044 = icmp ult i64 %.1.i80.lcssa, 4
  %i.abq = sub i64 %.119.i79.lcssa6041, %.122.i78.lcssa6040
  %diff.check6042 = icmp ugt i64 %i.abq, -32
  %or.cond6080.a = select i1 %min.iters.check6044, i1 true, i1 %diff.check6042
  br i1 %or.cond6080.a, label %.lr.ph3179.preheader, label %vector.main.loop.iter.check6045

vector.main.loop.iter.check6045:                  ; preds = %iter.check6062
  %min.iters.check6046 = icmp ult i64 %.1.i80.lcssa, 32
  br i1 %min.iters.check6046, label %vec.epilog.ph6066, label %vector.ph6047

vector.ph6047:                                    ; preds = %vector.main.loop.iter.check6045
  %i.abr = and i64 %.1.i80.lcssa, 28
  %n.vec6048 = and i64 %.1.i80.lcssa, -32         ; 5 uses
  %i.abs = and i64 %.1.i80.lcssa, 31
  %i.abt = getelementptr i8, ptr %.119.i79.lcssa, i64 %n.vec6048
  %i.abu = getelementptr i8, ptr %.122.i78.lcssa, i64 %n.vec6048 ; 2 uses
  br label %vector.body6049

vector.body6049:                                  ; preds = %vector.body6049, %vector.ph6047
  %index6050 = phi i64 [ 0, %vector.ph6047 ], [ %index.next6055, %vector.body6049 ] ; 3 uses
  %next.gep6051.a = getelementptr i8, ptr %.119.i79.lcssa, i64 %index6050 ; 2 uses
  %next.gep6052 = getelementptr i8, ptr %.122.i78.lcssa, i64 %index6050 ; 2 uses
  %i.abv = getelementptr i8, ptr %next.gep6051.a, i64 16
  %wide.load6053.a = load <16 x i8>, ptr %next.gep6051.a, align 1, !tbaa !81
  %wide.load6054 = load <16 x i8>, ptr %i.abv, align 1, !tbaa !81
  %i.abw = getelementptr i8, ptr %next.gep6052, i64 16
  store <16 x i8> %wide.load6053.a, ptr %next.gep6052, align 1, !tbaa !81
  store <16 x i8> %wide.load6054, ptr %i.abw, align 1, !tbaa !81
  %index.next6055 = add nuw i64 %index6050, 32    ; 2 uses
  %i.abx = icmp eq i64 %index.next6055, %n.vec6048
  br i1 %i.abx, label %middle.block6056, label %vector.body6049, !llvm.loop !293

middle.block6056:                                 ; preds = %vector.body6049
  %cmp.n6057 = icmp eq i64 %.1.i80.lcssa, %n.vec6048
  br i1 %cmp.n6057, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %vec.epilog.iter.check6064

vec.epilog.iter.check6064:                        ; preds = %middle.block6056
  %min.epilog.iters.check6065 = icmp eq i64 %i.abr, 0
  br i1 %min.epilog.iters.check6065, label %.lr.ph3179.preheader, label %vec.epilog.ph6066, !prof !294

vec.epilog.ph6066:                                ; preds = %vector.main.loop.iter.check6045, %vec.epilog.iter.check6064
  %vec.epilog.resume.val6058 = phi i64 [ %n.vec6048, %vec.epilog.iter.check6064 ], [ 0, %vector.main.loop.iter.check6045 ]
  %n.vec6067 = and i64 %.1.i80.lcssa, -4          ; 4 uses
  %i.aby = and i64 %.1.i80.lcssa, 3
  %i.abz = getelementptr i8, ptr %.119.i79.lcssa, i64 %n.vec6067
  %i.aca = getelementptr i8, ptr %.122.i78.lcssa, i64 %n.vec6067 ; 2 uses
  br label %vec.epilog.vector.body6068

vec.epilog.vector.body6068:                       ; preds = %vec.epilog.vector.body6068, %vec.epilog.ph6066
  %index6069 = phi i64 [ %vec.epilog.resume.val6058, %vec.epilog.ph6066 ], [ %index.next6073, %vec.epilog.vector.body6068 ] ; 3 uses
  %next.gep6070.a = getelementptr i8, ptr %.119.i79.lcssa, i64 %index6069
  %next.gep6071 = getelementptr i8, ptr %.122.i78.lcssa, i64 %index6069
  %wide.load6072 = load <4 x i8>, ptr %next.gep6070.a, align 1, !tbaa !81
  store <4 x i8> %wide.load6072, ptr %next.gep6071, align 1, !tbaa !81
  %index.next6073 = add nuw i64 %index6069, 4     ; 2 uses
  %i.acb = icmp eq i64 %index.next6073, %n.vec6067
  br i1 %i.acb, label %vec.epilog.middle.block6074, label %vec.epilog.vector.body6068, !llvm.loop !295

vec.epilog.middle.block6074:                      ; preds = %vec.epilog.vector.body6068
  %cmp.n6075 = icmp eq i64 %.1.i80.lcssa, %n.vec6067
  br i1 %cmp.n6075, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %.lr.ph3179.preheader

.lr.ph3179.preheader:                             ; preds = %iter.check6062, %vec.epilog.iter.check6064, %vec.epilog.middle.block6074
  %.2.i833178.ph = phi i64 [ %.1.i80.lcssa, %iter.check6062 ], [ %i.abs, %vec.epilog.iter.check6064 ], [ %i.aby, %vec.epilog.middle.block6074 ] ; 4 uses
  %.220.i823177.ph = phi ptr [ %.119.i79.lcssa, %iter.check6062 ], [ %i.abt, %vec.epilog.iter.check6064 ], [ %i.abz, %vec.epilog.middle.block6074 ] ; 2 uses
  %.223.i813176.ph = phi ptr [ %.122.i78.lcssa, %iter.check6062 ], [ %i.abu, %vec.epilog.iter.check6064 ], [ %i.aca, %vec.epilog.middle.block6074 ] ; 2 uses
  %i.acc = add nsw i64 %.2.i833178.ph, -1
  %xtraiter6775 = and i64 %.2.i833178.ph, 7       ; 2 uses
  %lcmp.mod6776.not = icmp eq i64 %xtraiter6775, 0
  br i1 %lcmp.mod6776.not, label %.lr.ph3179.prol.loopexit, label %.lr.ph3179.prol

.lr.ph3179.prol:                                  ; preds = %.lr.ph3179.preheader, %.lr.ph3179.prol
  %.2.i833178.prol = phi i64 [ %i.acg, %.lr.ph3179.prol ], [ %.2.i833178.ph, %.lr.ph3179.preheader ]
  %.220.i823177.prol = phi ptr [ %i.acd, %.lr.ph3179.prol ], [ %.220.i823177.ph, %.lr.ph3179.preheader ] ; 2 uses
  %.223.i813176.prol = phi ptr [ %i.acf, %.lr.ph3179.prol ], [ %.223.i813176.ph, %.lr.ph3179.preheader ] ; 2 uses
  %prol.iter6777 = phi i64 [ %prol.iter6777.next, %.lr.ph3179.prol ], [ 0, %.lr.ph3179.preheader ]
  %i.acd = getelementptr inbounds nuw i8, ptr %.220.i823177.prol, i64 1 ; 2 uses
  %i.ace = load i8, ptr %.220.i823177.prol, align 1, !tbaa !81
  %i.acf = getelementptr inbounds nuw i8, ptr %.223.i813176.prol, i64 1 ; 3 uses
  store i8 %i.ace, ptr %.223.i813176.prol, align 1, !tbaa !81
  %i.acg = add nsw i64 %.2.i833178.prol, -1       ; 2 uses
  %prol.iter6777.next = add i64 %prol.iter6777, 1 ; 2 uses
  %prol.iter6777.cmp.not = icmp eq i64 %prol.iter6777.next, %xtraiter6775
  br i1 %prol.iter6777.cmp.not, label %.lr.ph3179.prol.loopexit, label %.lr.ph3179.prol, !llvm.loop !296

.lr.ph3179.prol.loopexit:                         ; preds = %.lr.ph3179.prol, %.lr.ph3179.preheader
  %.lcssa6164.unr = phi ptr [ poison, %.lr.ph3179.preheader ], [ %i.acf, %.lr.ph3179.prol ]
  %.2.i833178.unr = phi i64 [ %.2.i833178.ph, %.lr.ph3179.preheader ], [ %i.acg, %.lr.ph3179.prol ]
  %.220.i823177.unr = phi ptr [ %.220.i823177.ph, %.lr.ph3179.preheader ], [ %i.acd, %.lr.ph3179.prol ]
  %.223.i813176.unr = phi ptr [ %.223.i813176.ph, %.lr.ph3179.preheader ], [ %i.acf, %.lr.ph3179.prol ]
  %i.ach = icmp ult i64 %i.acc, 7
  br i1 %i.ach, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %.lr.ph3179

.lr.ph3171:                                       ; preds = %.lr.ph3171.preheader6165, %.lr.ph3171
  %.1.i803170 = phi i64 [ %i.acl, %.lr.ph3171 ], [ %.1.i803170.ph, %.lr.ph3171.preheader6165 ]
  %.119.i793169 = phi ptr [ %i.ack, %.lr.ph3171 ], [ %.119.i793169.ph, %.lr.ph3171.preheader6165 ] ; 2 uses
  %.122.i783168 = phi ptr [ %i.acj, %.lr.ph3171 ], [ %.122.i783168.ph, %.lr.ph3171.preheader6165 ] ; 2 uses
  %i.aci = load i32, ptr %.119.i793169, align 1
  store i32 %i.aci, ptr %.122.i783168, align 1
  %i.acj = getelementptr inbounds nuw i8, ptr %.122.i783168, i64 4 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.119.i793169, i64 4 ; 2 uses
  %i.acl = add nsw i64 %.1.i803170, -4            ; 3 uses
  %i.acm = icmp ugt i64 %i.acl, 3
  br i1 %i.acm, label %.lr.ph3171, label %.preheader1873, !llvm.loop !297

.lr.ph3179:                                       ; preds = %.lr.ph3179.prol.loopexit, %.lr.ph3179
  %.2.i833178 = phi i64 [ %i.adl, %.lr.ph3179 ], [ %.2.i833178.unr, %.lr.ph3179.prol.loopexit ]
  %.220.i823177 = phi ptr [ %i.adi, %.lr.ph3179 ], [ %.220.i823177.unr, %.lr.ph3179.prol.loopexit ] ; 9 uses
  %.223.i813176 = phi ptr [ %i.adk, %.lr.ph3179 ], [ %.223.i813176.unr, %.lr.ph3179.prol.loopexit ] ; 9 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 1
  %i.aco = load i8, ptr %.220.i823177, align 1, !tbaa !81
  %i.acp = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 1
  store i8 %i.aco, ptr %.223.i813176, align 1, !tbaa !81
  %i.acq = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 2
  %i.acr = load i8, ptr %i.acn, align 1, !tbaa !81
  %i.acs = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 2
  store i8 %i.acr, ptr %i.acp, align 1, !tbaa !81
  %i.act = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 3
  %i.acu = load i8, ptr %i.acq, align 1, !tbaa !81
  %i.acv = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 3
  store i8 %i.acu, ptr %i.acs, align 1, !tbaa !81
  %i.acw = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 4
  %i.acx = load i8, ptr %i.act, align 1, !tbaa !81
  %i.acy = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 4
  store i8 %i.acx, ptr %i.acv, align 1, !tbaa !81
  %i.acz = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 5
  %i.ada = load i8, ptr %i.acw, align 1, !tbaa !81
  %i.adb = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 5
  store i8 %i.ada, ptr %i.acy, align 1, !tbaa !81
  %i.adc = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 6
  %i.add = load i8, ptr %i.acz, align 1, !tbaa !81
  %i.ade = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 6
  store i8 %i.add, ptr %i.adb, align 1, !tbaa !81
  %i.adf = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 7
  %i.adg = load i8, ptr %i.adc, align 1, !tbaa !81
  %i.adh = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 7
  store i8 %i.adg, ptr %i.ade, align 1, !tbaa !81
  %i.adi = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 8
  %i.adj = load i8, ptr %i.adf, align 1, !tbaa !81
  %i.adk = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 8 ; 2 uses
  store i8 %i.adj, ptr %i.adh, align 1, !tbaa !81
  %i.adl = add nsw i64 %.2.i833178, -8            ; 2 uses
  %.not.i84.7 = icmp eq i64 %i.adl, 0
  br i1 %.not.i84.7, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %.lr.ph3179, !llvm.loop !298

_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85: ; preds = %.lr.ph3179.prol.loopexit, %.lr.ph3179, %middle.block6056, %vec.epilog.middle.block6074, %.preheader1873
  %.223.i81.lcssa = phi ptr [ %.122.i78.lcssa, %.preheader1873 ], [ %i.aca, %vec.epilog.middle.block6074 ], [ %i.abu, %middle.block6056 ], [ %.lcssa6164.unr, %.lr.ph3179.prol.loopexit ], [ %i.adk, %.lr.ph3179 ] ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.223.i81.lcssa, i64 1
  store i8 34, ptr %.223.i81.lcssa, align 1, !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ec:                                            ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit59
  %i.adn = tail call noundef ptr %.sroa.01324.0.copyload(ptr noundef %.sroa.8.0.copyload, i64 noundef 34), !inline_history !283 ; 30 uses
  %.not102.i = icmp eq ptr %i.adn, null
  br i1 %.not102.i, label %bb.ii, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ado = load i64, ptr %0, align 8, !tbaa !79   ; 2 uses
  %i.adp = and i64 %i.ado, 16
  %.not.i548 = icmp eq i64 %i.adp, 0
  %i.adq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !81 ; 10 uses
  br i1 %.not.i548, label %bb.hg, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ads = and i64 %i.adr, 4503599627370495       ; 4 uses
  %i.adt = lshr i64 %i.adr, 52
  %i.adu = trunc nuw nsw i64 %i.adt to i32
  %i.adv = and i32 %i.adu, 2047                   ; 7 uses
  %i.adw = icmp eq i32 %i.adv, 2047
  br i1 %i.adw, label %bb.ef, label %bb.el, !prof !7

bb.ef:                                            ; preds = %bb.ee
  %i.adx = and i32 %1, 16
  %.not1829 = icmp eq i32 %i.adx, 0
  br i1 %.not1829, label %bb.eh, label %bb.eg, !prof !24

bb.eg:                                            ; preds = %bb.ef
  store i32 1819047278, ptr %i.adn, align 1
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adn, i64 4
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.eh:                                            ; preds = %bb.ef
  %i.adz = and i32 %1, 8
  %.not1830 = icmp eq i32 %i.adz, 0
  br i1 %.not1830, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit552.thread1654, label %bb.ei, !prof !24

bb.ei:                                            ; preds = %bb.eh
  %i.aea = icmp eq i64 %i.ads, 0
  br i1 %i.aea, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store i8 45, ptr %i.adn, align 1, !tbaa !81
  %.lobit131.i = lshr i64 %i.adr, 63
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adn, i64 %.lobit131.i ; 2 uses
  store i64 8751735898823355977, ptr %i.aeb, align 1
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ek:                                            ; preds = %bb.ei
  store i32 5136718, ptr %i.adn, align 1
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adn, i64 3
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.el:                                            ; preds = %bb.ee
  store i8 45, ptr %i.adn, align 1, !tbaa !81
  %.lobit.i624 = lshr i64 %i.adr, 63              ; 2 uses
  %i.aee = getelementptr i8, ptr %i.adn, i64 %.lobit.i624 ; 38 uses
  %.mask.i = and i64 %i.adr, 9223372036854775807
  %i.aef = icmp eq i64 %.mask.i, 0
  br i1 %i.aef, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i32 3157552, ptr %i.aee, align 1
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 3
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.en:                                            ; preds = %bb.el
  %.not.i625 = icmp eq i32 %i.adv, 0
  br i1 %.not.i625, label %bb.gj, label %bb.eo, !prof !7

bb.eo:                                            ; preds = %bb.en
  %i.aeh = or disjoint i64 %i.ads, 4503599627370496 ; 3 uses
  %i.aei = add nsw i32 %i.adv, -1023
  %or.cond.i626 = icmp ult i32 %i.aei, 53
  br i1 %or.cond.i626, label %bb.ep, label %bb.ff

bb.ep:                                            ; preds = %bb.eo
  %i.aej = tail call range(i64 0, 53) i64 @llvm.cttz.i64(i64 range(i64 4503599627370496, 9007199254740992) %i.aeh, i1 true)
  %i.aek = trunc nuw nsw i64 %i.aej to i32
  %i.ael = sub nuw nsw i32 1075, %i.adv           ; 2 uses
  %.not127.i = icmp samesign ugt i32 %i.ael, %i.aek
  br i1 %.not127.i, label %bb.ff, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aem = zext nneg i32 %i.ael to i64
  %i.aen = lshr i64 %i.aeh, %i.aem                ; 21 uses
  %i.aeo = icmp samesign ult i64 %i.aen, 100000000
  br i1 %i.aeo, label %bb.er, label %bb.ey

bb.er:                                            ; preds = %bb.eq
  %i.aep = trunc nuw nsw i64 %i.aen to i32        ; 4 uses
  %i.aeq = icmp samesign ult i64 %i.aen, 100
  br i1 %i.aeq, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.aer = icmp samesign ult i64 %i.aen, 10       ; 2 uses
  %i.aes = shl nuw nsw i64 %i.aen, 1
  %i.aet = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aes
  %.neg70.i990 = sext i1 %i.aer to i64
  %i.aeu = zext i1 %i.aer to i64
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aeu
  %i.aew = load i16, ptr %i.aev, align 1
  store i16 %i.aew, ptr %i.aee, align 1
  %i.aex = getelementptr inbounds i8, ptr %i.aee, i64 %.neg70.i990
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 2
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit679

bb.et:                                            ; preds = %bb.er
  %i.aez = icmp samesign ult i64 %i.aen, 10000
  br i1 %i.aez, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.afa = mul nuw nsw i32 %i.aep, 5243
  %i.afb = lshr i32 %i.afa, 19                    ; 2 uses
  %.neg68.i988 = mul nsw i32 %i.afb, -100
  %i.afc = add nsw i32 %.neg68.i988, %i.aep
  %i.afd = icmp samesign ult i64 %i.aen, 1000     ; 2 uses
  %i.afe = shl nuw nsw i32 %i.afb, 1
  %i.aff = zext nneg i32 %i.afe to i64
  %i.afg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aff
  %.neg69.i989 = sext i1 %i.afd to i64
  %i.afh = zext i1 %i.afd to i64
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 %i.afh
  %i.afj = load i16, ptr %i.afi, align 1
  store i16 %i.afj, ptr %i.aee, align 1
  %i.afk = getelementptr inbounds i8, ptr %i.aee, i64 %.neg69.i989 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 2
  %i.afm = shl nsw i32 %i.afc, 1
  %i.afn = zext i32 %i.afm to i64
  %i.afo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.afn
  %i.afp = load i16, ptr %i.afo, align 2
  store i16 %i.afp, ptr %i.afl, align 1
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afk, i64 4
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit679

bb.ev:                                            ; preds = %bb.et
  %i.afr = icmp samesign ult i64 %i.aen, 1000000
  br i1 %i.afr, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.afs = mul nuw nsw i64 %i.aen, 429497
  %i.aft = lshr i64 %i.afs, 32                    ; 2 uses
  %i.afu = trunc nuw nsw i64 %i.aft to i32
  %.neg65.i985 = mul nsw i32 %i.afu, -10000
  %i.afv = add nsw i32 %.neg65.i985, %i.aep       ; 2 uses
  %i.afw = mul i32 %i.afv, 5243
  %i.afx = lshr i32 %i.afw, 19                    ; 2 uses
  %.neg66.i986 = mul nsw i32 %i.afx, -100
  %i.afy = add nsw i32 %.neg66.i986, %i.afv
  %i.afz = icmp samesign ult i64 %i.aen, 100000   ; 2 uses
  %i.aga = shl nuw nsw i64 %i.aft, 1
  %i.agb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aga
  %.neg67.i987 = sext i1 %i.afz to i64
  %i.agc = zext i1 %i.afz to i64
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agb, i64 %i.agc
  %i.age = load i16, ptr %i.agd, align 1
  store i16 %i.age, ptr %i.aee, align 1
  %i.agf = getelementptr inbounds i8, ptr %i.aee, i64 %.neg67.i987 ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 2
  %i.agh = shl nuw nsw i32 %i.afx, 1
  %i.agi = zext nneg i32 %i.agh to i64
  %i.agj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.agi
  %i.agk = load i16, ptr %i.agj, align 2
  store i16 %i.agk, ptr %i.agg, align 1
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agf, i64 4
  %i.agm = shl nsw i32 %i.afy, 1
  %i.agn = zext i32 %i.agm to i64
  %i.ago = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.agn
  %i.agp = load i16, ptr %i.ago, align 2
  store i16 %i.agp, ptr %i.agl, align 1
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agf, i64 6
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit679

bb.ex:                                            ; preds = %bb.ev
  %i.agr = mul nuw nsw i64 %i.aen, 109951163
  %i.ags = lshr i64 %i.agr, 40
  %i.agt = trunc nuw nsw i64 %i.ags to i32        ; 3 uses
  %.neg.i980 = mul nsw i32 %i.agt, -10000
  %i.agu = add nsw i32 %.neg.i980, %i.aep         ; 2 uses
  %i.agv = mul nuw nsw i32 %i.agt, 5243
  %i.agw = lshr i32 %i.agv, 19                    ; 2 uses
  %i.agx = mul i32 %i.agu, 5243
  %i.agy = lshr i32 %i.agx, 19                    ; 2 uses
  %.neg62.i981 = mul nsw i32 %i.agw, -100
  %i.agz = add nsw i32 %.neg62.i981, %i.agt
  %.neg63.i982 = mul nsw i32 %i.agy, -100
  %i.aha = add nsw i32 %.neg63.i982, %i.agu
  %i.ahb = icmp samesign ult i64 %i.aen, 10000000 ; 2 uses
  %i.ahc = shl nuw nsw i32 %i.agw, 1
  %i.ahd = zext nneg i32 %i.ahc to i64
  %i.ahe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ahd
  %.neg64.i983 = sext i1 %i.ahb to i64
  %i.ahf = zext i1 %i.ahb to i64
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %i.ahf
  %i.ahh = load i16, ptr %i.ahg, align 1
  store i16 %i.ahh, ptr %i.aee, align 1
  %i.ahi = getelementptr inbounds i8, ptr %i.aee, i64 %.neg64.i983 ; 4 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 2
  %i.ahk = shl nsw i32 %i.agz, 1
  %i.ahl = zext i32 %i.ahk to i64
  %i.ahm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ahl
  %i.ahn = load i16, ptr %i.ahm, align 2
  store i16 %i.ahn, ptr %i.ahj, align 1
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahi, i64 4
  %i.ahp = shl nuw nsw i32 %i.agy, 1
  %i.ahq = zext nneg i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ahq
  %i.ahs = load i16, ptr %i.ahr, align 2
  store i16 %i.ahs, ptr %i.aho, align 1
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahi, i64 6
  %i.ahu = shl nsw i32 %i.aha, 1
  %i.ahv = zext i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ahv
  %i.ahx = load i16, ptr %i.ahw, align 2
  store i16 %i.ahx, ptr %i.aht, align 1
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit679

bb.ey:                                            ; preds = %bb.eq
  %i.ahz = udiv i64 %i.aen, 100000000             ; 5 uses
  %.neg.i677 = mul nuw nsw i64 %i.ahz, 4194967296
  %i.aia = add nuw nsw i64 %.neg.i677, %i.aen     ; 2 uses
  %i.aib = trunc i64 %i.aia to i32
  %i.aic = trunc nuw nsw i64 %i.ahz to i32        ; 4 uses
  %i.aid = icmp samesign ult i64 %i.aen, 10000000000
  br i1 %i.aid, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.aie = icmp samesign ult i64 %i.aen, 1000000000 ; 2 uses
  %i.aif = shl nuw nsw i64 %i.ahz, 1
  %i.aig = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aif
  %.neg70.i1002 = sext i1 %i.aie to i64
  %i.aih = zext i1 %i.aie to i64
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aig, i64 %i.aih
  %i.aij = load i16, ptr %i.aii, align 1
  store i16 %i.aij, ptr %i.aee, align 1
  %i.aik = getelementptr inbounds i8, ptr %i.aee, i64 %.neg70.i1002
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 2
  br label %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1003

bb.fa:                                            ; preds = %bb.ey
  %i.aim = icmp samesign ult i64 %i.aen, 1000000000000
  br i1 %i.aim, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.ain = mul nuw nsw i32 %i.aic, 5243
  %i.aio = lshr i32 %i.ain, 19                    ; 2 uses
  %.neg68.i1000 = mul nsw i32 %i.aio, -100
  %i.aip = add nsw i32 %.neg68.i1000, %i.aic
  %i.aiq = icmp samesign ult i64 %i.aen, 100000000000 ; 2 uses
  %i.air = shl nuw nsw i32 %i.aio, 1
  %i.ais = zext nneg i32 %i.air to i64
  %i.ait = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ais
  %.neg69.i1001 = sext i1 %i.aiq to i64
  %i.aiu = zext i1 %i.aiq to i64
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ait, i64 %i.aiu
end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %.neg.i827 = mul i64 %i.aql, 4194967296
  %i.aqn = add i64 %.neg.i827, %.11609            ; 4 uses
  %i.aqo = trunc i64 %i.aqn to i32                ; 6 uses
  %i.aqp = udiv i32 %i.aqm, 10000                 ; 3 uses
  %.neg95.i828 = mul i32 %i.aqp, -10000
  %i.aqq = add i32 %.neg95.i828, %i.aqm           ; 15 uses
  %i.aqr = zext nneg i32 %i.aqp to i64
  %i.aqs = mul nuw nsw i64 %i.aqr, 167773
  %i.aqt = lshr i64 %i.aqs, 24
  %i.aqu = trunc nuw nsw i64 %i.aqt to i32        ; 3 uses
  %i.aqv = mul nuw nsw i32 %i.aqu, 41
  %i.aqw = lshr i32 %i.aqv, 12                    ; 7 uses
  %.neg96.i829 = mul nsw i32 %i.aqw, -100
  %i.aqx = add nsw i32 %.neg96.i829, %i.aqu       ; 9 uses
  %.neg97.i830 = mul nsw i32 %i.aqu, -100
  %i.aqy = add nsw i32 %.neg97.i830, %i.aqp       ; 9 uses
  %i.aqz = trunc nuw nsw i32 %i.aqw to i8
  %i.ara = add nuw nsw i8 %i.aqz, 48              ; 3 uses
  br i1 %or.cond3.i, label %bb.fl, label %bb.ga

bb.fl:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706
  %i.arb = icmp slt i32 %i.aqj, 1
  br i1 %i.arb, label %bb.fm, label %bb.ft

bb.fm:                                            ; preds = %bb.fl
  %i.arc = sub nsw i32 2, %i.aqj
  %i.ard = zext nneg i32 %i.arc to i64
  %i.are = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.ard ; 2 uses
  store i8 %i.ara, ptr %i.are, align 1, !tbaa !81
  %i.arf = icmp ne i32 %i.aqw, 0
  %i.arg = zext i1 %i.arf to i64
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.arg ; 2 uses
  %i.ari = icmp ult i32 %i.aqx, 10
  %i.arj = icmp eq i32 %i.aqw, 0
  %i.ark = and i1 %i.arj, %i.ari                  ; 2 uses
  %i.arl = shl nsw i32 %i.aqx, 1
  %i.arm = zext i32 %i.arl to i64
  %i.arn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.arm
  %.neg98.i831 = sext i1 %i.ark to i64
  %i.aro = zext i1 %i.ark to i64
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.aro
  %i.arq = load i16, ptr %i.arp, align 1
  store i16 %i.arq, ptr %i.arh, align 1
  %i.arr = getelementptr inbounds i8, ptr %i.arh, i64 %.neg98.i831 ; 10 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 2
  %i.art = shl nsw i32 %i.aqy, 1
  %i.aru = zext i32 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aru
  %i.arw = load i16, ptr %i.arv, align 2
  store i16 %i.arw, ptr %i.ars, align 1
  %.not.i832 = icmp eq i32 %i.aqo, 0
  br i1 %.not.i832, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.arx = mul i32 %i.aqq, 5243
  %i.ary = lshr i32 %i.arx, 19                    ; 2 uses
  %.neg103.i833 = mul i32 %i.ary, 2147483548
  %i.arz = add i32 %.neg103.i833, %i.aqq
  %i.asa = and i64 %i.aqn, 4294967295
  %i.asb = mul nuw nsw i64 %i.asa, 109951163
  %i.asc = lshr i64 %i.asb, 40
  %i.asd = trunc nuw nsw i64 %i.asc to i32        ; 3 uses
  %.neg104.i834 = mul i32 %i.asd, -10000
  %i.ase = add i32 %.neg104.i834, %i.aqo          ; 3 uses
  %i.asf = mul nuw i32 %i.asd, 5243
  %i.asg = lshr i32 %i.asf, 19                    ; 3 uses
  %.neg105.i835 = mul nsw i32 %i.asg, -100
  %i.ash = add nsw i32 %.neg105.i835, %i.asd      ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  %i.asj = shl nuw nsw i32 %i.ary, 1
  %i.ask = zext nneg i32 %i.asj to i64
  %i.asl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ask
  %i.asm = load i16, ptr %i.asl, align 2
  store i16 %i.asm, ptr %i.asi, align 1
  %i.asn = getelementptr inbounds nuw i8, ptr %i.arr, i64 6
  %i.aso = shl i32 %i.arz, 1
  %i.asp = zext i32 %i.aso to i64
  %i.asq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asp
  %i.asr = load i16, ptr %i.asq, align 2
  store i16 %i.asr, ptr %i.asn, align 1
  %i.ass = getelementptr inbounds nuw i8, ptr %i.arr, i64 8
  %i.ast = shl nuw nsw i32 %i.asg, 1
  %i.asu = zext nneg i32 %i.ast to i64
  %i.asv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asu
  %i.asw = load i16, ptr %i.asv, align 2
  store i16 %i.asw, ptr %i.ass, align 1
  %i.asx = getelementptr inbounds nuw i8, ptr %i.arr, i64 10
  %i.asy = shl nsw i32 %i.ash, 1
  %i.asz = zext i32 %i.asy to i64
  %i.ata = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asz
  %i.atb = load i16, ptr %i.ata, align 2
  store i16 %i.atb, ptr %i.asx, align 1
  %.not106.i836 = icmp eq i32 %i.ase, 0
  br i1 %.not106.i836, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.atc = mul i32 %i.ase, 5243
  %i.atd = lshr i32 %i.atc, 19                    ; 3 uses
  %.neg108.i837 = mul nsw i32 %i.atd, -100
  %i.ate = add i32 %.neg108.i837, %i.ase          ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.arr, i64 12
  %i.atg = shl nuw nsw i32 %i.atd, 1
  %i.ath = zext nneg i32 %i.atg to i64
  %i.ati = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ath
  %i.atj = load i16, ptr %i.ati, align 2
  store i16 %i.atj, ptr %i.atf, align 1
  %i.atk = getelementptr inbounds nuw i8, ptr %i.arr, i64 14
  %i.atl = shl nuw i32 %i.ate, 1
  %i.atm = zext i32 %i.atl to i64
  %i.atn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.atm
  %i.ato = load i16, ptr %i.atn, align 2
  store i16 %i.ato, ptr %i.atk, align 1
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %.sink5208.a = phi i32 [ %i.atd, %bb.fo ], [ %i.asg, %bb.fn ]
  %.sink5204 = phi i32 [ %i.ate, %bb.fo ], [ %i.ash, %bb.fn ] ; 2 uses
  %.sink = phi i64 [ 16, %bb.fo ], [ 12, %bb.fn ]
  %i.atp = zext nneg i32 %.sink5208.a to i64
  %i.atq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.atp
  %i.atr = load i8, ptr %i.atq, align 1, !tbaa !81
  %i.ats = zext i8 %i.atr to i64
  %i.att = zext i32 %.sink5204 to i64
  %i.atu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.att
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !81
  %i.atw = zext i8 %i.atv to i64
  %.not107.i843 = icmp eq i32 %.sink5204, 0
  %i.atx = add nuw nsw i64 %i.ats, 2
  %i.aty = select i1 %.not107.i843, i64 %i.atx, i64 %i.atw
  %i.atz = sub nsw i64 %.sink, %i.aty
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848

bb.fq:                                            ; preds = %bb.fm
  %.not99.i844 = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i844, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aua = mul i32 %i.aqq, 5243
  %i.aub = lshr i32 %i.aua, 19                    ; 3 uses
  %.neg101.i845 = mul nsw i32 %i.aub, -100
  %i.auc = add i32 %.neg101.i845, %i.aqq          ; 3 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  %i.aue = shl nuw nsw i32 %i.aub, 1
  %i.auf = zext nneg i32 %i.aue to i64
  %i.aug = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auf
  %i.auh = load i16, ptr %i.aug, align 2
  store i16 %i.auh, ptr %i.aud, align 1
  %i.aui = getelementptr inbounds nuw i8, ptr %i.arr, i64 6
  %i.auj = shl nuw i32 %i.auc, 1
  %i.auk = zext i32 %i.auj to i64
  %i.aul = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auk
  %i.aum = load i16, ptr %i.aul, align 2
  store i16 %i.aum, ptr %i.aui, align 1
  %i.aun = zext nneg i32 %i.aub to i64
  %i.auo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aun
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !81
  %i.auq = zext i8 %i.aup to i64
  %i.aur = zext i32 %i.auc to i64
  %i.aus = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aur
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !81
  %i.auu = zext i8 %i.aut to i64
  %.not102.i846 = icmp eq i32 %i.auc, 0
  %i.auv = add nuw nsw i64 %i.auq, 2
  %i.auw = select i1 %.not102.i846, i64 %i.auv, i64 %i.auu
  %i.aux = sub nsw i64 8, %i.auw
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848

bb.fs:                                            ; preds = %bb.fq
  %i.auy = zext i32 %i.aqx to i64
  %i.auz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auy
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !81
  %i.avb = zext i8 %i.ava to i64
  %i.avc = zext i32 %i.aqy to i64
  %i.avd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.avc
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !81
  %i.avf = zext i8 %i.ave to i64
  %.not100.i847 = icmp eq i32 %i.aqy, 0
  %i.avg = select i1 %.not100.i847, i64 %i.avb, i64 0
  %i.avh = add nuw nsw i64 %i.avg, %i.avf
  %i.avi = sub nsw i64 4, %i.avh
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848: ; preds = %bb.fp, %bb.fr, %bb.fs
  %.sink5209.a = phi i64 [ %i.atz, %bb.fp ], [ %i.aux, %bb.fr ], [ %i.avi, %bb.fs ]
  %.pn.i840 = and i64 %.sink5209.a, 4294967295
  %.0.i841 = getelementptr inbounds nuw i8, ptr %i.arr, i64 %.pn.i840 ; 2 uses
  store i8 48, ptr %i.aee, align 1, !tbaa !81
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aee, i64 1
  store i8 46, ptr %i.avj, align 1, !tbaa !81
  %i.avk = icmp slt i32 %i.aqj, 0
  br i1 %i.avk, label %.lr.ph3129.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

.lr.ph3129.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848
  %i.avl = getelementptr i8, ptr %i.aee, i64 2
  %narrow3959 = sub nsw i32 0, %i.aqj
  %i.avm = zext nneg i32 %narrow3959 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.avl, i8 48, i64 %i.avm, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ft:                                            ; preds = %bb.fl
  %i.avn = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aee, i8 48, i64 24, i1 false)
  store i8 %i.ara, ptr %i.avn, align 1, !tbaa !81
  %i.avo = icmp ne i32 %i.aqw, 0
  %i.avp = zext i1 %i.avo to i64
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avn, i64 %i.avp ; 2 uses
  %i.avr = icmp ult i32 %i.aqx, 10
  %i.avs = icmp eq i32 %i.aqw, 0
  %i.avt = and i1 %i.avs, %i.avr                  ; 2 uses
  %i.avu = shl nsw i32 %i.aqx, 1
  %i.avv = zext i32 %i.avu to i64
  %i.avw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.avv
  %.neg98.i853 = sext i1 %i.avt to i64
  %i.avx = zext i1 %i.avt to i64
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avw, i64 %i.avx
  %i.avz = load i16, ptr %i.avy, align 1
  store i16 %i.avz, ptr %i.avq, align 1
  %i.awa = getelementptr inbounds i8, ptr %i.avq, i64 %.neg98.i853 ; 10 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 2
  %i.awc = shl nsw i32 %i.aqy, 1
  %i.awd = zext i32 %i.awc to i64
  %i.awe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awd
  %i.awf = load i16, ptr %i.awe, align 2
  store i16 %i.awf, ptr %i.awb, align 1
  %.not.i854 = icmp eq i32 %i.aqo, 0
  br i1 %.not.i854, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.awg = mul i32 %i.aqq, 5243
  %i.awh = lshr i32 %i.awg, 19                    ; 2 uses
  %.neg103.i855 = mul i32 %i.awh, 2147483548
  %i.awi = add i32 %.neg103.i855, %i.aqq
  %i.awj = and i64 %i.aqn, 4294967295
  %i.awk = mul nuw nsw i64 %i.awj, 109951163
  %i.awl = lshr i64 %i.awk, 40
  %i.awm = trunc nuw nsw i64 %i.awl to i32        ; 3 uses
  %.neg104.i856 = mul i32 %i.awm, -10000
  %i.awn = add i32 %.neg104.i856, %i.aqo          ; 3 uses
  %i.awo = mul nuw i32 %i.awm, 5243
  %i.awp = lshr i32 %i.awo, 19                    ; 3 uses
  %.neg105.i857 = mul nsw i32 %i.awp, -100
  %i.awq = add nsw i32 %.neg105.i857, %i.awm      ; 2 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awa, i64 4
  %i.aws = shl nuw nsw i32 %i.awh, 1
  %i.awt = zext nneg i32 %i.aws to i64
  %i.awu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awt
  %i.awv = load i16, ptr %i.awu, align 2
  store i16 %i.awv, ptr %i.awr, align 1
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awa, i64 6
  %i.awx = shl i32 %i.awi, 1
  %i.awy = zext i32 %i.awx to i64
  %i.awz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awy
  %i.axa = load i16, ptr %i.awz, align 2
  store i16 %i.axa, ptr %i.aww, align 1
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awa, i64 8
  %i.axc = shl nuw nsw i32 %i.awp, 1
  %i.axd = zext nneg i32 %i.axc to i64
  %i.axe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axd
  %i.axf = load i16, ptr %i.axe, align 2
  store i16 %i.axf, ptr %i.axb, align 1
  %i.axg = getelementptr inbounds nuw i8, ptr %i.awa, i64 10
  %i.axh = shl nsw i32 %i.awq, 1
  %i.axi = zext i32 %i.axh to i64
  %i.axj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axi
  %i.axk = load i16, ptr %i.axj, align 2
  store i16 %i.axk, ptr %i.axg, align 1
  %.not106.i858 = icmp eq i32 %i.awn, 0
  br i1 %.not106.i858, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.axl = mul i32 %i.awn, 5243
  %i.axm = lshr i32 %i.axl, 19                    ; 3 uses
  %.neg108.i859 = mul nsw i32 %i.axm, -100
  %i.axn = add i32 %.neg108.i859, %i.awn          ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.awa, i64 12
  %i.axp = shl nuw nsw i32 %i.axm, 1
  %i.axq = zext nneg i32 %i.axp to i64
  %i.axr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axq
  %i.axs = load i16, ptr %i.axr, align 2
  store i16 %i.axs, ptr %i.axo, align 1
  %i.axt = getelementptr inbounds nuw i8, ptr %i.awa, i64 14
  %i.axu = shl nuw i32 %i.axn, 1
  %i.axv = zext i32 %i.axu to i64
  %i.axw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axv
  %i.axx = load i16, ptr %i.axw, align 2
  store i16 %i.axx, ptr %i.axt, align 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  %.sink5223.a = phi i32 [ %i.axm, %bb.fv ], [ %i.awp, %bb.fu ]
  %.sink5219 = phi i32 [ %i.axn, %bb.fv ], [ %i.awq, %bb.fu ] ; 2 uses
  %.sink5210 = phi i64 [ 16, %bb.fv ], [ 12, %bb.fu ]
  %i.axy = zext nneg i32 %.sink5223.a to i64
  %i.axz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.axy
  %i.aya = load i8, ptr %i.axz, align 1, !tbaa !81
  %i.ayb = zext i8 %i.aya to i64
  %i.ayc = zext i32 %.sink5219 to i64
  %i.ayd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayc
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !81
  %i.ayf = zext i8 %i.aye to i64
  %.not107.i865 = icmp eq i32 %.sink5219, 0
  %i.ayg = add nuw nsw i64 %i.ayb, 2
  %i.ayh = select i1 %.not107.i865, i64 %i.ayg, i64 %i.ayf
  %i.ayi = sub nsw i64 %.sink5210, %i.ayh
  br label %._crit_edge3127

bb.fx:                                            ; preds = %bb.ft
  %.not99.i866 = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i866, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ayj = mul i32 %i.aqq, 5243
  %i.ayk = lshr i32 %i.ayj, 19                    ; 3 uses
  %.neg101.i867 = mul nsw i32 %i.ayk, -100
  %i.ayl = add i32 %.neg101.i867, %i.aqq          ; 3 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.awa, i64 4
  %i.ayn = shl nuw nsw i32 %i.ayk, 1
  %i.ayo = zext nneg i32 %i.ayn to i64
  %i.ayp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayo
  %i.ayq = load i16, ptr %i.ayp, align 2
  store i16 %i.ayq, ptr %i.aym, align 1
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.awa, i64 6
  %i.ays = shl nuw i32 %i.ayl, 1
  %i.ayt = zext i32 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayt
  %i.ayv = load i16, ptr %i.ayu, align 2
  store i16 %i.ayv, ptr %i.ayr, align 1
  %i.ayw = zext nneg i32 %i.ayk to i64
  %i.ayx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayw
  %i.ayy = load i8, ptr %i.ayx, align 1, !tbaa !81
  %i.ayz = zext i8 %i.ayy to i64
  %i.aza = zext i32 %i.ayl to i64
  %i.azb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aza
  %i.azc = load i8, ptr %i.azb, align 1, !tbaa !81
  %i.azd = zext i8 %i.azc to i64
  %.not102.i868 = icmp eq i32 %i.ayl, 0
  %i.aze = add nuw nsw i64 %i.ayz, 2
  %i.azf = select i1 %.not102.i868, i64 %i.aze, i64 %i.azd
  %i.azg = sub nsw i64 8, %i.azf
  br label %._crit_edge3127

bb.fz:                                            ; preds = %bb.fx
  %i.azh = zext i32 %i.aqx to i64
  %i.azi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azh
  %i.azj = load i8, ptr %i.azi, align 1, !tbaa !81
  %i.azk = zext i8 %i.azj to i64
  %i.azl = zext i32 %i.aqy to i64
  %i.azm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azl
  %i.azn = load i8, ptr %i.azm, align 1, !tbaa !81
  %i.azo = zext i8 %i.azn to i64
  %.not100.i869 = icmp eq i32 %i.aqy, 0
  %i.azp = select i1 %.not100.i869, i64 %i.azk, i64 0
  %i.azq = add nuw nsw i64 %i.azp, %i.azo
  %i.azr = sub nsw i64 4, %i.azq
  br label %._crit_edge3127

._crit_edge3127:                                  ; preds = %bb.fw, %bb.fy, %bb.fz
  %.sink5224.a = phi i64 [ %i.ayi, %bb.fw ], [ %i.azg, %bb.fy ], [ %i.azr, %bb.fz ]
  %.pn.i862 = and i64 %.sink5224.a, 4294967295
  %.0.i863 = getelementptr inbounds nuw i8, ptr %i.awa, i64 %.pn.i862 ; 2 uses
  %6 = getelementptr i8, ptr %i.adn, i64 %.lobit.i624
  %scevgep3718 = getelementptr i8, ptr %6, i64 1
  %i.azs = zext nneg i32 %i.aqj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aee, ptr align 1 %scevgep3718, i64 %i.azs, i1 false), !tbaa !81
  %i.azt = zext nneg i32 %i.aqj to i64
  %i.azu = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.azt ; 2 uses
  store i8 46, ptr %i.azu, align 1, !tbaa !81
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 2 ; 2 uses
  %i.azw = icmp ult ptr %i.azv, %.0.i863
  %spec.select = select i1 %i.azw, ptr %.0.i863, ptr %i.azv
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ga:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706
  %.ptr1823 = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 3 uses
  store i8 %i.ara, ptr %.ptr1823, align 1, !tbaa !81
  %.not1828 = icmp eq i32 %i.aqw, 0               ; 2 uses
  %.add1818 = select i1 %.not1828, i64 1, i64 2   ; 2 uses
  %.ptr1824 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add1818
  %i.azx = icmp ult i32 %i.aqx, 10
  %i.azy = and i1 %.not1828, %i.azx               ; 2 uses
  %i.azz = shl nsw i32 %i.aqx, 1
  %i.baa = zext i32 %i.azz to i64
  %i.bab = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.baa
  %.neg98.i875 = sext i1 %i.azy to i64
  %i.bac = zext i1 %i.azy to i64
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bab, i64 %i.bac
  %i.bae = load i16, ptr %i.bad, align 1
  store i16 %i.bae, ptr %.ptr1824, align 1
  %.add1819 = add nsw i64 %.add1818, %.neg98.i875 ; 2 uses
  %.ptr1825 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add1819 ; 9 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 2
  %i.bag = shl nsw i32 %i.aqy, 1
  %i.bah = zext i32 %i.bag to i64
  %i.bai = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bah
  %i.baj = load i16, ptr %i.bai, align 2
  store i16 %i.baj, ptr %i.baf, align 1
  %.not.i876 = icmp eq i32 %i.aqo, 0
  br i1 %.not.i876, label %bb.ge, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.bak = mul i32 %i.aqq, 5243
  %i.bal = lshr i32 %i.bak, 19                    ; 2 uses
  %.neg103.i877 = mul i32 %i.bal, 2147483548
  %i.bam = add i32 %.neg103.i877, %i.aqq
  %i.ban = and i64 %i.aqn, 4294967295
  %i.bao = mul nuw nsw i64 %i.ban, 109951163
  %i.bap = lshr i64 %i.bao, 40
  %i.baq = trunc nuw nsw i64 %i.bap to i32        ; 3 uses
  %.neg104.i878 = mul i32 %i.baq, -10000
  %i.bar = add i32 %.neg104.i878, %i.aqo          ; 3 uses
  %i.bas = mul nuw i32 %i.baq, 5243
  %i.bat = lshr i32 %i.bas, 19                    ; 3 uses
  %.neg105.i879 = mul nsw i32 %i.bat, -100
  %i.bau = add nsw i32 %.neg105.i879, %i.baq      ; 3 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 4
  %i.baw = shl nuw nsw i32 %i.bal, 1
  %i.bax = zext nneg i32 %i.baw to i64
  %i.bay = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bax
  %i.baz = load i16, ptr %i.bay, align 2
  store i16 %i.baz, ptr %i.bav, align 1
  %i.bba = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 6
  %i.bbb = shl i32 %i.bam, 1
  %i.bbc = zext i32 %i.bbb to i64
  %i.bbd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbc
  %i.bbe = load i16, ptr %i.bbd, align 2
  store i16 %i.bbe, ptr %i.bba, align 1
  %i.bbf = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 8
  %i.bbg = shl nuw nsw i32 %i.bat, 1
  %i.bbh = zext nneg i32 %i.bbg to i64
  %i.bbi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbh
  %i.bbj = load i16, ptr %i.bbi, align 2
  store i16 %i.bbj, ptr %i.bbf, align 1
  %i.bbk = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 10
  %i.bbl = shl nsw i32 %i.bau, 1
  %i.bbm = zext i32 %i.bbl to i64
  %i.bbn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbm
  %i.bbo = load i16, ptr %i.bbn, align 2
  store i16 %i.bbo, ptr %i.bbk, align 1
  %.not106.i880 = icmp eq i32 %i.bar, 0
  br i1 %.not106.i880, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.bbp = mul i32 %i.bar, 5243
  %i.bbq = lshr i32 %i.bbp, 19                    ; 3 uses
  %.neg108.i881 = mul nsw i32 %i.bbq, -100
  %i.bbr = add i32 %.neg108.i881, %i.bar          ; 3 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 12
  %i.bbt = shl nuw nsw i32 %i.bbq, 1
  %i.bbu = zext nneg i32 %i.bbt to i64
  %i.bbv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbu
  %i.bbw = load i16, ptr %i.bbv, align 2
  store i16 %i.bbw, ptr %i.bbs, align 1
  %i.bbx = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 14
  %i.bby = shl nuw i32 %i.bbr, 1
  %i.bbz = zext i32 %i.bby to i64
  %i.bca = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbz
  %i.bcb = load i16, ptr %i.bca, align 2
  store i16 %i.bcb, ptr %i.bbx, align 1
  %i.bcc = zext nneg i32 %i.bbq to i64
  %i.bcd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcc
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !81
  %i.bcf = zext i8 %i.bce to i64
  %i.bcg = zext i32 %i.bbr to i64
  %i.bch = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcg
  %i.bci = load i8, ptr %i.bch, align 1, !tbaa !81
  %i.bcj = zext i8 %i.bci to i64
  %.not109.i882 = icmp eq i32 %i.bbr, 0
  %i.bck = add nuw nsw i64 %i.bcf, 2
  %i.bcl = select i1 %.not109.i882, i64 %i.bck, i64 %i.bcj
  %i.bcm = sub nsw i64 16, %i.bcl
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.gd:                                            ; preds = %bb.gb
  %i.bcn = zext nneg i32 %i.bat to i64
  %i.bco = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcn
  %i.bcp = load i8, ptr %i.bco, align 1, !tbaa !81
  %i.bcq = zext i8 %i.bcp to i64
  %i.bcr = zext i32 %i.bau to i64
  %i.bcs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcr
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !81
  %i.bcu = zext i8 %i.bct to i64
  %.not107.i887 = icmp eq i32 %i.bau, 0
  %i.bcv = add nuw nsw i64 %i.bcq, 2
  %i.bcw = select i1 %.not107.i887, i64 %i.bcv, i64 %i.bcu
  %i.bcx = sub nsw i64 12, %i.bcw
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.ge:                                            ; preds = %bb.ga
  %.not99.i888 = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i888, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.bcy = mul i32 %i.aqq, 5243
  %i.bcz = lshr i32 %i.bcy, 19                    ; 3 uses
  %.neg101.i889 = mul nsw i32 %i.bcz, -100
  %i.bda = add i32 %.neg101.i889, %i.aqq          ; 3 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 4
  %i.bdc = shl nuw nsw i32 %i.bcz, 1
  %i.bdd = zext nneg i32 %i.bdc to i64
  %i.bde = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdd
  %i.bdf = load i16, ptr %i.bde, align 2
  store i16 %i.bdf, ptr %i.bdb, align 1
  %i.bdg = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 6
  %i.bdh = shl nuw i32 %i.bda, 1
  %i.bdi = zext i32 %i.bdh to i64
  %i.bdj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdi
  %i.bdk = load i16, ptr %i.bdj, align 2
  store i16 %i.bdk, ptr %i.bdg, align 1
  %i.bdl = zext nneg i32 %i.bcz to i64
  %i.bdm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdl
  %i.bdn = load i8, ptr %i.bdm, align 1, !tbaa !81
  %i.bdo = zext i8 %i.bdn to i64
  %i.bdp = zext i32 %i.bda to i64
  %i.bdq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdp
  %i.bdr = load i8, ptr %i.bdq, align 1, !tbaa !81
  %i.bds = zext i8 %i.bdr to i64
  %.not102.i890 = icmp eq i32 %i.bda, 0
  %i.bdt = add nuw nsw i64 %i.bdo, 2
  %i.bdu = select i1 %.not102.i890, i64 %i.bdt, i64 %i.bds
  %i.bdv = sub nsw i64 8, %i.bdu
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.gg:                                            ; preds = %bb.ge
  %i.bdw = zext i32 %i.aqx to i64
  %i.bdx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdw
  %i.bdy = load i8, ptr %i.bdx, align 1, !tbaa !81
  %i.bdz = zext i8 %i.bdy to i64
  %i.bea = zext i32 %i.aqy to i64
  %i.beb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bea
  %i.bec = load i8, ptr %i.beb, align 1, !tbaa !81
  %i.bed = zext i8 %i.bec to i64
  %.not100.i891 = icmp eq i32 %i.aqy, 0
  %i.bee = select i1 %.not100.i891, i64 %i.bdz, i64 0
  %i.bef = add nuw nsw i64 %i.bee, %i.bed
  %i.beg = sub nsw i64 4, %i.bef
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892: ; preds = %bb.gc, %bb.gd, %bb.gf, %bb.gg
  %.pn.i884.pn.in = phi i64 [ %i.beg, %bb.gg ], [ %i.bdv, %bb.gf ], [ %i.bcm, %bb.gc ], [ %i.bcx, %bb.gd ]
  %.pn.i884.pn = and i64 %.pn.i884.pn.in, 4294967295
  %.1.i886.idx = add nuw nsw i64 %.pn.i884.pn, %.add1819 ; 2 uses
  %.1.i886.ptr = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.1.i886.idx
  %i.beh = icmp eq i64 %.1.i886.idx, 2
  %.neg130.i = sext i1 %i.beh to i64
  %i.bei = getelementptr inbounds i8, ptr %.1.i886.ptr, i64 %.neg130.i ; 2 uses
  %i.bej = add nsw i32 %i.aqj, -1                 ; 2 uses
  %i.bek = load i8, ptr %.ptr1823, align 1, !tbaa !81
  store i8 %i.bek, ptr %i.aee, align 1, !tbaa !81
  store i8 46, ptr %.ptr1823, align 1, !tbaa !81
  store i8 101, ptr %i.bei, align 1, !tbaa !81
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bei, i64 1 ; 2 uses
  store i8 45, ptr %i.bel, align 1, !tbaa !81
  %.lobit.i901 = lshr i32 %i.bej, 31
  %i.bem = zext nneg i32 %.lobit.i901 to i64
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bel, i64 %i.bem ; 5 uses
  %i.beo = tail call i32 @llvm.abs.i32(i32 %i.bej, i1 true) ; 5 uses
  %i.bep = icmp samesign ult i32 %i.beo, 100
  br i1 %i.bep, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892
  %i.beq = icmp samesign ult i32 %i.beo, 10       ; 2 uses
  %i.ber = shl nuw nsw i32 %i.beo, 1
  %i.bes = zext nneg i32 %i.ber to i64
  %i.bet = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bes
  %.neg22.i904 = sext i1 %i.beq to i64
  %i.beu = zext i1 %i.beq to i64
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bet, i64 %i.beu
  %i.bew = load i16, ptr %i.bev, align 1
  store i16 %i.bew, ptr %i.ben, align 1
  %i.bex = getelementptr inbounds nuw i8, ptr %i.ben, i64 2
end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br label %vector.body5224

vector.body5224:                                  ; preds = %vector.body5224, %vector.ph5222
  %index5225 = phi i64 [ 0, %vector.ph5222 ], [ %index.next5230, %vector.body5224 ] ; 2 uses
  %i.abi = shl i64 %index5225, 2                  ; 2 uses
  %next.gep5226.a = getelementptr i8, ptr %.018.i.i.lcssa, i64 %i.abi ; 2 uses
  %next.gep5227 = getelementptr i8, ptr %.021.i.i.lcssa, i64 %i.abi ; 2 uses
  %i.abj = getelementptr i8, ptr %next.gep5226.a, i64 16
  %wide.load5228.a = load <4 x i32>, ptr %next.gep5226.a, align 1
  %wide.load5229 = load <4 x i32>, ptr %i.abj, align 1
  %i.abk = getelementptr i8, ptr %next.gep5227, i64 16
  store <4 x i32> %wide.load5228.a, ptr %next.gep5227, align 1
  store <4 x i32> %wide.load5229, ptr %i.abk, align 1
  %index.next5230 = add nuw i64 %index5225, 8     ; 2 uses
  %i.abl = icmp eq i64 %index.next5230, %n.vec5223
  br i1 %i.abl, label %middle.block5231, label %vector.body5224, !llvm.loop !332

middle.block5231:                                 ; preds = %vector.body5224
  %cmp.n5232 = icmp eq i64 %i.abb, %n.vec5223
  br i1 %cmp.n5232, label %.preheader1052, label %.lr.ph2352.preheader5362

.lr.ph2352.preheader5362:                         ; preds = %.lr.ph2352.preheader, %middle.block5231
  %.1.i5.i2351.ph = phi i64 [ %.0.i4.i.lcssa, %.lr.ph2352.preheader ], [ %i.abe, %middle.block5231 ]
  %.119.i.i2350.ph = phi ptr [ %.018.i.i.lcssa, %.lr.ph2352.preheader ], [ %i.abg, %middle.block5231 ]
  %.122.i.i2349.ph = phi ptr [ %.021.i.i.lcssa, %.lr.ph2352.preheader ], [ %i.abh, %middle.block5231 ]
  br label %.lr.ph2352

.lr.ph2345:                                       ; preds = %bb.eb, %.lr.ph2345
  %.0.i4.i2343 = phi i64 [ %i.abo, %.lr.ph2345 ], [ %i.t, %bb.eb ]
  %.018.i.i2342 = phi ptr [ %i.abn, %.lr.ph2345 ], [ %i.v, %bb.eb ] ; 2 uses
  %.021.i.i2341 = phi ptr [ %i.abm, %.lr.ph2345 ], [ %i.aaw, %bb.eb ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.021.i.i2341, ptr noundef nonnull align 1 dereferenceable(16) %.018.i.i2342, i64 16, i1 false)
  %i.abm = getelementptr inbounds nuw i8, ptr %.021.i.i2341, i64 16 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.018.i.i2342, i64 16 ; 2 uses
  %i.abo = add nsw i64 %.0.i4.i2343, -16          ; 3 uses
  %i.abp = icmp ugt i64 %i.abo, 15
  br i1 %i.abp, label %.lr.ph2345, label %.preheader1053, !llvm.loop !292

.preheader1052:                                   ; preds = %.lr.ph2352, %middle.block5231, %.preheader1053
  %.122.i.i.lcssa = phi ptr [ %.021.i.i.lcssa, %.preheader1053 ], [ %i.abh, %middle.block5231 ], [ %i.acj, %.lr.ph2352 ] ; 7 uses
  %.119.i.i.lcssa = phi ptr [ %.018.i.i.lcssa, %.preheader1053 ], [ %i.abg, %middle.block5231 ], [ %i.ack, %.lr.ph2352 ] ; 6 uses
  %.1.i5.i.lcssa = phi i64 [ %.0.i4.i.lcssa, %.preheader1053 ], [ %i.abe, %middle.block5231 ], [ %i.acl, %.lr.ph2352 ] ; 11 uses
  %.not.i6.i2356 = icmp eq i64 %.1.i5.i.lcssa, 0
  br i1 %.not.i6.i2356, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %iter.check5259

iter.check5259:                                   ; preds = %.preheader1052
  %.119.i.i.lcssa5238 = ptrtoaddr ptr %.119.i.i.lcssa to i64
  %.122.i.i.lcssa5237 = ptrtoaddr ptr %.122.i.i.lcssa to i64
  %min.iters.check5241 = icmp ult i64 %.1.i5.i.lcssa, 4
  %i.abq = sub i64 %.119.i.i.lcssa5238, %.122.i.i.lcssa5237
  %diff.check5239 = icmp ugt i64 %i.abq, -32
  %or.cond5277.a = select i1 %min.iters.check5241, i1 true, i1 %diff.check5239
  br i1 %or.cond5277.a, label %.lr.ph2360.preheader, label %vector.main.loop.iter.check5242

vector.main.loop.iter.check5242:                  ; preds = %iter.check5259
  %min.iters.check5243 = icmp ult i64 %.1.i5.i.lcssa, 32
  br i1 %min.iters.check5243, label %vec.epilog.ph5263, label %vector.ph5244

vector.ph5244:                                    ; preds = %vector.main.loop.iter.check5242
  %i.abr = and i64 %.1.i5.i.lcssa, 28
  %n.vec5245 = and i64 %.1.i5.i.lcssa, -32        ; 5 uses
  %i.abs = and i64 %.1.i5.i.lcssa, 31
  %i.abt = getelementptr i8, ptr %.119.i.i.lcssa, i64 %n.vec5245
  %i.abu = getelementptr i8, ptr %.122.i.i.lcssa, i64 %n.vec5245 ; 2 uses
  br label %vector.body5246

vector.body5246:                                  ; preds = %vector.body5246, %vector.ph5244
  %index5247 = phi i64 [ 0, %vector.ph5244 ], [ %index.next5252, %vector.body5246 ] ; 3 uses
  %next.gep5248.a = getelementptr i8, ptr %.119.i.i.lcssa, i64 %index5247 ; 2 uses
  %next.gep5249 = getelementptr i8, ptr %.122.i.i.lcssa, i64 %index5247 ; 2 uses
  %i.abv = getelementptr i8, ptr %next.gep5248.a, i64 16
  %wide.load5250.a = load <16 x i8>, ptr %next.gep5248.a, align 1, !tbaa !81
  %wide.load5251 = load <16 x i8>, ptr %i.abv, align 1, !tbaa !81
  %i.abw = getelementptr i8, ptr %next.gep5249, i64 16
  store <16 x i8> %wide.load5250.a, ptr %next.gep5249, align 1, !tbaa !81
  store <16 x i8> %wide.load5251, ptr %i.abw, align 1, !tbaa !81
  %index.next5252 = add nuw i64 %index5247, 32    ; 2 uses
  %i.abx = icmp eq i64 %index.next5252, %n.vec5245
  br i1 %i.abx, label %middle.block5253, label %vector.body5246, !llvm.loop !333

middle.block5253:                                 ; preds = %vector.body5246
  %cmp.n5254 = icmp eq i64 %.1.i5.i.lcssa, %n.vec5245
  br i1 %cmp.n5254, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %vec.epilog.iter.check5261

vec.epilog.iter.check5261:                        ; preds = %middle.block5253
  %min.epilog.iters.check5262 = icmp eq i64 %i.abr, 0
  br i1 %min.epilog.iters.check5262, label %.lr.ph2360.preheader, label %vec.epilog.ph5263, !prof !294

vec.epilog.ph5263:                                ; preds = %vector.main.loop.iter.check5242, %vec.epilog.iter.check5261
  %vec.epilog.resume.val5255 = phi i64 [ %n.vec5245, %vec.epilog.iter.check5261 ], [ 0, %vector.main.loop.iter.check5242 ]
  %n.vec5264 = and i64 %.1.i5.i.lcssa, -4         ; 4 uses
  %i.aby = and i64 %.1.i5.i.lcssa, 3
  %i.abz = getelementptr i8, ptr %.119.i.i.lcssa, i64 %n.vec5264
  %i.aca = getelementptr i8, ptr %.122.i.i.lcssa, i64 %n.vec5264 ; 2 uses
  br label %vec.epilog.vector.body5265

vec.epilog.vector.body5265:                       ; preds = %vec.epilog.vector.body5265, %vec.epilog.ph5263
  %index5266 = phi i64 [ %vec.epilog.resume.val5255, %vec.epilog.ph5263 ], [ %index.next5270, %vec.epilog.vector.body5265 ] ; 3 uses
  %next.gep5267.a = getelementptr i8, ptr %.119.i.i.lcssa, i64 %index5266
  %next.gep5268 = getelementptr i8, ptr %.122.i.i.lcssa, i64 %index5266
  %wide.load5269 = load <4 x i8>, ptr %next.gep5267.a, align 1, !tbaa !81
  store <4 x i8> %wide.load5269, ptr %next.gep5268, align 1, !tbaa !81
  %index.next5270 = add nuw i64 %index5266, 4     ; 2 uses
  %i.acb = icmp eq i64 %index.next5270, %n.vec5264
  br i1 %i.acb, label %vec.epilog.middle.block5271, label %vec.epilog.vector.body5265, !llvm.loop !334

vec.epilog.middle.block5271:                      ; preds = %vec.epilog.vector.body5265
  %cmp.n5272 = icmp eq i64 %.1.i5.i.lcssa, %n.vec5264
  br i1 %cmp.n5272, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %.lr.ph2360.preheader

.lr.ph2360.preheader:                             ; preds = %iter.check5259, %vec.epilog.iter.check5261, %vec.epilog.middle.block5271
  %.2.i.i2359.ph = phi i64 [ %.1.i5.i.lcssa, %iter.check5259 ], [ %i.abs, %vec.epilog.iter.check5261 ], [ %i.aby, %vec.epilog.middle.block5271 ] ; 4 uses
  %.220.i.i2358.ph = phi ptr [ %.119.i.i.lcssa, %iter.check5259 ], [ %i.abt, %vec.epilog.iter.check5261 ], [ %i.abz, %vec.epilog.middle.block5271 ] ; 2 uses
  %.223.i.i2357.ph = phi ptr [ %.122.i.i.lcssa, %iter.check5259 ], [ %i.abu, %vec.epilog.iter.check5261 ], [ %i.aca, %vec.epilog.middle.block5271 ] ; 2 uses
  %i.acc = add nsw i64 %.2.i.i2359.ph, -1
  %xtraiter5974 = and i64 %.2.i.i2359.ph, 7       ; 2 uses
  %lcmp.mod5975.not = icmp eq i64 %xtraiter5974, 0
  br i1 %lcmp.mod5975.not, label %.lr.ph2360.prol.loopexit, label %.lr.ph2360.prol

.lr.ph2360.prol:                                  ; preds = %.lr.ph2360.preheader, %.lr.ph2360.prol
  %.2.i.i2359.prol = phi i64 [ %i.acg, %.lr.ph2360.prol ], [ %.2.i.i2359.ph, %.lr.ph2360.preheader ]
  %.220.i.i2358.prol = phi ptr [ %i.acd, %.lr.ph2360.prol ], [ %.220.i.i2358.ph, %.lr.ph2360.preheader ] ; 2 uses
  %.223.i.i2357.prol = phi ptr [ %i.acf, %.lr.ph2360.prol ], [ %.223.i.i2357.ph, %.lr.ph2360.preheader ] ; 2 uses
  %prol.iter5976 = phi i64 [ %prol.iter5976.next, %.lr.ph2360.prol ], [ 0, %.lr.ph2360.preheader ]
  %i.acd = getelementptr inbounds nuw i8, ptr %.220.i.i2358.prol, i64 1 ; 2 uses
  %i.ace = load i8, ptr %.220.i.i2358.prol, align 1, !tbaa !81
  %i.acf = getelementptr inbounds nuw i8, ptr %.223.i.i2357.prol, i64 1 ; 3 uses
  store i8 %i.ace, ptr %.223.i.i2357.prol, align 1, !tbaa !81
  %i.acg = add nsw i64 %.2.i.i2359.prol, -1       ; 2 uses
  %prol.iter5976.next = add i64 %prol.iter5976, 1 ; 2 uses
  %prol.iter5976.cmp.not = icmp eq i64 %prol.iter5976.next, %xtraiter5974
  br i1 %prol.iter5976.cmp.not, label %.lr.ph2360.prol.loopexit, label %.lr.ph2360.prol, !llvm.loop !335

.lr.ph2360.prol.loopexit:                         ; preds = %.lr.ph2360.prol, %.lr.ph2360.preheader
  %.lcssa5361.unr = phi ptr [ poison, %.lr.ph2360.preheader ], [ %i.acf, %.lr.ph2360.prol ]
  %.2.i.i2359.unr = phi i64 [ %.2.i.i2359.ph, %.lr.ph2360.preheader ], [ %i.acg, %.lr.ph2360.prol ]
  %.220.i.i2358.unr = phi ptr [ %.220.i.i2358.ph, %.lr.ph2360.preheader ], [ %i.acd, %.lr.ph2360.prol ]
  %.223.i.i2357.unr = phi ptr [ %.223.i.i2357.ph, %.lr.ph2360.preheader ], [ %i.acf, %.lr.ph2360.prol ]
  %i.ach = icmp ult i64 %i.acc, 7
  br i1 %i.ach, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %.lr.ph2360

.lr.ph2352:                                       ; preds = %.lr.ph2352.preheader5362, %.lr.ph2352
  %.1.i5.i2351 = phi i64 [ %i.acl, %.lr.ph2352 ], [ %.1.i5.i2351.ph, %.lr.ph2352.preheader5362 ]
  %.119.i.i2350 = phi ptr [ %i.ack, %.lr.ph2352 ], [ %.119.i.i2350.ph, %.lr.ph2352.preheader5362 ] ; 2 uses
  %.122.i.i2349 = phi ptr [ %i.acj, %.lr.ph2352 ], [ %.122.i.i2349.ph, %.lr.ph2352.preheader5362 ] ; 2 uses
  %i.aci = load i32, ptr %.119.i.i2350, align 1
  store i32 %i.aci, ptr %.122.i.i2349, align 1
  %i.acj = getelementptr inbounds nuw i8, ptr %.122.i.i2349, i64 4 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.119.i.i2350, i64 4 ; 2 uses
  %i.acl = add nsw i64 %.1.i5.i2351, -4           ; 3 uses
  %i.acm = icmp ugt i64 %i.acl, 3
  br i1 %i.acm, label %.lr.ph2352, label %.preheader1052, !llvm.loop !336

.lr.ph2360:                                       ; preds = %.lr.ph2360.prol.loopexit, %.lr.ph2360
  %.2.i.i2359 = phi i64 [ %i.adl, %.lr.ph2360 ], [ %.2.i.i2359.unr, %.lr.ph2360.prol.loopexit ]
  %.220.i.i2358 = phi ptr [ %i.adi, %.lr.ph2360 ], [ %.220.i.i2358.unr, %.lr.ph2360.prol.loopexit ] ; 9 uses
  %.223.i.i2357 = phi ptr [ %i.adk, %.lr.ph2360 ], [ %.223.i.i2357.unr, %.lr.ph2360.prol.loopexit ] ; 9 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 1
  %i.aco = load i8, ptr %.220.i.i2358, align 1, !tbaa !81
  %i.acp = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 1
  store i8 %i.aco, ptr %.223.i.i2357, align 1, !tbaa !81
  %i.acq = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 2
  %i.acr = load i8, ptr %i.acn, align 1, !tbaa !81
  %i.acs = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 2
  store i8 %i.acr, ptr %i.acp, align 1, !tbaa !81
  %i.act = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 3
  %i.acu = load i8, ptr %i.acq, align 1, !tbaa !81
  %i.acv = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 3
  store i8 %i.acu, ptr %i.acs, align 1, !tbaa !81
  %i.acw = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 4
  %i.acx = load i8, ptr %i.act, align 1, !tbaa !81
  %i.acy = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 4
  store i8 %i.acx, ptr %i.acv, align 1, !tbaa !81
  %i.acz = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 5
  %i.ada = load i8, ptr %i.acw, align 1, !tbaa !81
  %i.adb = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 5
  store i8 %i.ada, ptr %i.acy, align 1, !tbaa !81
  %i.adc = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 6
  %i.add = load i8, ptr %i.acz, align 1, !tbaa !81
  %i.ade = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 6
  store i8 %i.add, ptr %i.adb, align 1, !tbaa !81
  %i.adf = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 7
  %i.adg = load i8, ptr %i.adc, align 1, !tbaa !81
  %i.adh = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 7
  store i8 %i.adg, ptr %i.ade, align 1, !tbaa !81
  %i.adi = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 8
  %i.adj = load i8, ptr %i.adf, align 1, !tbaa !81
  %i.adk = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 8 ; 2 uses
  store i8 %i.adj, ptr %i.adh, align 1, !tbaa !81
  %i.adl = add nsw i64 %.2.i.i2359, -8            ; 2 uses
  %.not.i6.i.7 = icmp eq i64 %i.adl, 0
  br i1 %.not.i6.i.7, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %.lr.ph2360, !llvm.loop !337

_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i: ; preds = %.lr.ph2360.prol.loopexit, %.lr.ph2360, %middle.block5253, %vec.epilog.middle.block5271, %.preheader1052
  %.223.i.i.lcssa = phi ptr [ %.122.i.i.lcssa, %.preheader1052 ], [ %i.aca, %vec.epilog.middle.block5271 ], [ %i.abu, %middle.block5253 ], [ %.lcssa5361.unr, %.lr.ph2360.prol.loopexit ], [ %i.adk, %.lr.ph2360 ] ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.223.i.i.lcssa, i64 1
  store i8 34, ptr %.223.i.i.lcssa, align 1, !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ec:                                            ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i
  %i.adn = tail call noundef ptr %.sroa.0491.0.copyload(ptr noundef %.sroa.8.0.copyload, i64 noundef 34), !inline_history !329 ; 30 uses
  %.not102.i.i = icmp eq ptr %i.adn, null
  br i1 %.not102.i.i, label %bb.ii, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ado = load i64, ptr %0, align 8, !tbaa !79   ; 2 uses
  %i.adp = and i64 %i.ado, 16
  %.not.i99.i = icmp eq i64 %i.adp, 0
  %i.adq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !81 ; 10 uses
  br i1 %.not.i99.i, label %bb.hg, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ads = and i64 %i.adr, 4503599627370495       ; 4 uses
  %i.adt = lshr i64 %i.adr, 52
  %i.adu = trunc nuw nsw i64 %i.adt to i32
  %i.adv = and i32 %i.adu, 2047                   ; 7 uses
  %i.adw = icmp eq i32 %i.adv, 2047
  br i1 %i.adw, label %bb.ef, label %bb.el, !prof !7

bb.ef:                                            ; preds = %bb.ee
  %i.adx = and i32 %2, 16
  %.not1008 = icmp eq i32 %i.adx, 0
  br i1 %.not1008, label %bb.eh, label %bb.eg, !prof !24

bb.eg:                                            ; preds = %bb.ef
  store i32 1819047278, ptr %i.adn, align 1
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adn, i64 4
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.eh:                                            ; preds = %bb.ef
  %i.adz = and i32 %2, 8
  %.not1009 = icmp eq i32 %i.adz, 0
  br i1 %.not1009, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i.thread833, label %bb.ei, !prof !24

bb.ei:                                            ; preds = %bb.eh
  %i.aea = icmp eq i64 %i.ads, 0
  br i1 %i.aea, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store i8 45, ptr %i.adn, align 1, !tbaa !81
  %.lobit131.i.i = lshr i64 %i.adr, 63
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adn, i64 %.lobit131.i.i ; 2 uses
  store i64 8751735898823355977, ptr %i.aeb, align 1
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ek:                                            ; preds = %bb.ei
  store i32 5136718, ptr %i.adn, align 1
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adn, i64 3
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.el:                                            ; preds = %bb.ee
  store i8 45, ptr %i.adn, align 1, !tbaa !81
  %.lobit.i120.i = lshr i64 %i.adr, 63            ; 2 uses
  %i.aee = getelementptr i8, ptr %i.adn, i64 %.lobit.i120.i ; 38 uses
  %.mask.i.i = and i64 %i.adr, 9223372036854775807
  %i.aef = icmp eq i64 %.mask.i.i, 0
  br i1 %i.aef, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i32 3157552, ptr %i.aee, align 1
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 3
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.en:                                            ; preds = %bb.el
  %.not.i121.i = icmp eq i32 %i.adv, 0
  br i1 %.not.i121.i, label %bb.gj, label %bb.eo, !prof !7

bb.eo:                                            ; preds = %bb.en
  %i.aeh = or disjoint i64 %i.ads, 4503599627370496 ; 3 uses
  %i.aei = add nsw i32 %i.adv, -1023
  %or.cond.i122.i = icmp ult i32 %i.aei, 53
  br i1 %or.cond.i122.i, label %bb.ep, label %bb.ff

bb.ep:                                            ; preds = %bb.eo
  %i.aej = tail call range(i64 0, 53) i64 @llvm.cttz.i64(i64 range(i64 4503599627370496, 9007199254740992) %i.aeh, i1 true)
  %i.aek = trunc nuw nsw i64 %i.aej to i32
  %i.ael = sub nuw nsw i32 1075, %i.adv           ; 2 uses
  %.not127.i.i = icmp samesign ugt i32 %i.ael, %i.aek
  br i1 %.not127.i.i, label %bb.ff, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aem = zext nneg i32 %i.ael to i64
  %i.aen = lshr i64 %i.aeh, %i.aem                ; 21 uses
  %i.aeo = icmp samesign ult i64 %i.aen, 100000000
  br i1 %i.aeo, label %bb.er, label %bb.ey

bb.er:                                            ; preds = %bb.eq
  %i.aep = trunc nuw nsw i64 %i.aen to i32        ; 4 uses
  %i.aeq = icmp samesign ult i64 %i.aen, 100
  br i1 %i.aeq, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.aer = icmp samesign ult i64 %i.aen, 10       ; 2 uses
  %i.aes = shl nuw nsw i64 %i.aen, 1
  %i.aet = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aes
  %.neg70.i220.i = sext i1 %i.aer to i64
  %i.aeu = zext i1 %i.aer to i64
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aeu
  %i.aew = load i16, ptr %i.aev, align 1
  store i16 %i.aew, ptr %i.aee, align 1
  %i.aex = getelementptr inbounds i8, ptr %i.aee, i64 %.neg70.i220.i
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 2
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i

bb.et:                                            ; preds = %bb.er
  %i.aez = icmp samesign ult i64 %i.aen, 10000
  br i1 %i.aez, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.afa = mul nuw nsw i32 %i.aep, 5243
  %i.afb = lshr i32 %i.afa, 19                    ; 2 uses
  %.neg68.i218.i = mul nsw i32 %i.afb, -100
  %i.afc = add nsw i32 %.neg68.i218.i, %i.aep
  %i.afd = icmp samesign ult i64 %i.aen, 1000     ; 2 uses
  %i.afe = shl nuw nsw i32 %i.afb, 1
  %i.aff = zext nneg i32 %i.afe to i64
  %i.afg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aff
  %.neg69.i219.i = sext i1 %i.afd to i64
  %i.afh = zext i1 %i.afd to i64
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 %i.afh
  %i.afj = load i16, ptr %i.afi, align 1
  store i16 %i.afj, ptr %i.aee, align 1
  %i.afk = getelementptr inbounds i8, ptr %i.aee, i64 %.neg69.i219.i ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 2
  %i.afm = shl nsw i32 %i.afc, 1
  %i.afn = zext i32 %i.afm to i64
  %i.afo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.afn
  %i.afp = load i16, ptr %i.afo, align 2
  store i16 %i.afp, ptr %i.afl, align 1
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afk, i64 4
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i

bb.ev:                                            ; preds = %bb.et
  %i.afr = icmp samesign ult i64 %i.aen, 1000000
  br i1 %i.afr, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.afs = mul nuw nsw i64 %i.aen, 429497
  %i.aft = lshr i64 %i.afs, 32                    ; 2 uses
  %i.afu = trunc nuw nsw i64 %i.aft to i32
  %.neg65.i215.i = mul nsw i32 %i.afu, -10000
  %i.afv = add nsw i32 %.neg65.i215.i, %i.aep     ; 2 uses
  %i.afw = mul i32 %i.afv, 5243
  %i.afx = lshr i32 %i.afw, 19                    ; 2 uses
  %.neg66.i216.i = mul nsw i32 %i.afx, -100
  %i.afy = add nsw i32 %.neg66.i216.i, %i.afv
  %i.afz = icmp samesign ult i64 %i.aen, 100000   ; 2 uses
  %i.aga = shl nuw nsw i64 %i.aft, 1
  %i.agb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aga
  %.neg67.i217.i = sext i1 %i.afz to i64
  %i.agc = zext i1 %i.afz to i64
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agb, i64 %i.agc
  %i.age = load i16, ptr %i.agd, align 1
  store i16 %i.age, ptr %i.aee, align 1
  %i.agf = getelementptr inbounds i8, ptr %i.aee, i64 %.neg67.i217.i ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 2
  %i.agh = shl nuw nsw i32 %i.afx, 1
  %i.agi = zext nneg i32 %i.agh to i64
  %i.agj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.agi
  %i.agk = load i16, ptr %i.agj, align 2
  store i16 %i.agk, ptr %i.agg, align 1
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agf, i64 4
  %i.agm = shl nsw i32 %i.afy, 1
  %i.agn = zext i32 %i.agm to i64
  %i.ago = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.agn
  %i.agp = load i16, ptr %i.ago, align 2
  store i16 %i.agp, ptr %i.agl, align 1
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agf, i64 6
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i

bb.ex:                                            ; preds = %bb.ev
  %i.agr = mul nuw nsw i64 %i.aen, 109951163
  %i.ags = lshr i64 %i.agr, 40
  %i.agt = trunc nuw nsw i64 %i.ags to i32        ; 3 uses
  %.neg.i210.i = mul nsw i32 %i.agt, -10000
  %i.agu = add nsw i32 %.neg.i210.i, %i.aep       ; 2 uses
  %i.agv = mul nuw nsw i32 %i.agt, 5243
  %i.agw = lshr i32 %i.agv, 19                    ; 2 uses
  %i.agx = mul i32 %i.agu, 5243
  %i.agy = lshr i32 %i.agx, 19                    ; 2 uses
  %.neg62.i211.i = mul nsw i32 %i.agw, -100
  %i.agz = add nsw i32 %.neg62.i211.i, %i.agt
  %.neg63.i212.i = mul nsw i32 %i.agy, -100
  %i.aha = add nsw i32 %.neg63.i212.i, %i.agu
  %i.ahb = icmp samesign ult i64 %i.aen, 10000000 ; 2 uses
  %i.ahc = shl nuw nsw i32 %i.agw, 1
  %i.ahd = zext nneg i32 %i.ahc to i64
  %i.ahe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ahd
  %.neg64.i213.i = sext i1 %i.ahb to i64
  %i.ahf = zext i1 %i.ahb to i64
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %i.ahf
  %i.ahh = load i16, ptr %i.ahg, align 1
  store i16 %i.ahh, ptr %i.aee, align 1
  %i.ahi = getelementptr inbounds i8, ptr %i.aee, i64 %.neg64.i213.i ; 4 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 2
  %i.ahk = shl nsw i32 %i.agz, 1
  %i.ahl = zext i32 %i.ahk to i64
  %i.ahm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ahl
  %i.ahn = load i16, ptr %i.ahm, align 2
  store i16 %i.ahn, ptr %i.ahj, align 1
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahi, i64 4
  %i.ahp = shl nuw nsw i32 %i.agy, 1
  %i.ahq = zext nneg i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ahq
  %i.ahs = load i16, ptr %i.ahr, align 2
  store i16 %i.ahs, ptr %i.aho, align 1
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahi, i64 6
  %i.ahu = shl nsw i32 %i.aha, 1
  %i.ahv = zext i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ahv
  %i.ahx = load i16, ptr %i.ahw, align 2
  store i16 %i.ahx, ptr %i.aht, align 1
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i

bb.ey:                                            ; preds = %bb.eq
  %i.ahz = udiv i64 %i.aen, 100000000             ; 5 uses
  %.neg.i128.i = mul nuw nsw i64 %i.ahz, 4194967296
  %i.aia = add nuw nsw i64 %.neg.i128.i, %i.aen   ; 2 uses
  %i.aib = trunc i64 %i.aia to i32
  %i.aic = trunc nuw nsw i64 %i.ahz to i32        ; 4 uses
  %i.aid = icmp samesign ult i64 %i.aen, 10000000000
  br i1 %i.aid, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.aie = icmp samesign ult i64 %i.aen, 1000000000 ; 2 uses
  %i.aif = shl nuw nsw i64 %i.ahz, 1
  %i.aig = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aif
  %.neg70.i232.i = sext i1 %i.aie to i64
  %i.aih = zext i1 %i.aie to i64
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aig, i64 %i.aih
  %i.aij = load i16, ptr %i.aii, align 1
  store i16 %i.aij, ptr %i.aee, align 1
  %i.aik = getelementptr inbounds i8, ptr %i.aee, i64 %.neg70.i232.i
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 2
  br label %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit233.i

bb.fa:                                            ; preds = %bb.ey
  %i.aim = icmp samesign ult i64 %i.aen, 1000000000000
  br i1 %i.aim, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.ain = mul nuw nsw i32 %i.aic, 5243
  %i.aio = lshr i32 %i.ain, 19                    ; 2 uses
  %.neg68.i230.i = mul nsw i32 %i.aio, -100
  %i.aip = add nsw i32 %.neg68.i230.i, %i.aic
  %i.aiq = icmp samesign ult i64 %i.aen, 100000000000 ; 2 uses
  %i.air = shl nuw nsw i32 %i.aio, 1
  %i.ais = zext nneg i32 %i.air to i64
  %i.ait = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ais
  %.neg69.i231.i = sext i1 %i.aiq to i64
  %i.aiu = zext i1 %i.aiq to i64
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ait, i64 %i.aiu
end_hunk_2
begin_hunk_3_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %.neg.i137.i = mul i64 %i.aql, 4194967296
  %i.aqn = add i64 %.neg.i137.i, %.0775           ; 4 uses
  %i.aqo = trunc i64 %i.aqn to i32                ; 6 uses
  %i.aqp = udiv i32 %i.aqm, 10000                 ; 3 uses
  %.neg95.i.i = mul i32 %i.aqp, -10000
  %i.aqq = add i32 %.neg95.i.i, %i.aqm            ; 15 uses
  %i.aqr = zext nneg i32 %i.aqp to i64
  %i.aqs = mul nuw nsw i64 %i.aqr, 167773
  %i.aqt = lshr i64 %i.aqs, 24
  %i.aqu = trunc nuw nsw i64 %i.aqt to i32        ; 3 uses
  %i.aqv = mul nuw nsw i32 %i.aqu, 41
  %i.aqw = lshr i32 %i.aqv, 12                    ; 7 uses
  %.neg96.i.i = mul nsw i32 %i.aqw, -100
  %i.aqx = add nsw i32 %.neg96.i.i, %i.aqu        ; 9 uses
  %.neg97.i.i = mul nsw i32 %i.aqu, -100
  %i.aqy = add nsw i32 %.neg97.i.i, %i.aqp        ; 9 uses
  %i.aqz = trunc nuw nsw i32 %i.aqw to i8
  %i.ara = add nuw nsw i8 %i.aqz, 48              ; 3 uses
  br i1 %or.cond3.i.i, label %bb.fl, label %bb.ga

bb.fl:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i
  %i.arb = icmp slt i32 %i.aqj, 1
  br i1 %i.arb, label %bb.fm, label %bb.ft

bb.fm:                                            ; preds = %bb.fl
  %i.arc = sub nsw i32 2, %i.aqj
  %i.ard = zext nneg i32 %i.arc to i64
  %i.are = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.ard ; 2 uses
  store i8 %i.ara, ptr %i.are, align 1, !tbaa !81
  %i.arf = icmp ne i32 %i.aqw, 0
  %i.arg = zext i1 %i.arf to i64
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.arg ; 2 uses
  %i.ari = icmp ult i32 %i.aqx, 10
  %i.arj = icmp eq i32 %i.aqw, 0
  %i.ark = and i1 %i.arj, %i.ari                  ; 2 uses
  %i.arl = shl nsw i32 %i.aqx, 1
  %i.arm = zext i32 %i.arl to i64
  %i.arn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.arm
  %.neg98.i.i = sext i1 %i.ark to i64
  %i.aro = zext i1 %i.ark to i64
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.aro
  %i.arq = load i16, ptr %i.arp, align 1
  store i16 %i.arq, ptr %i.arh, align 1
  %i.arr = getelementptr inbounds i8, ptr %i.arh, i64 %.neg98.i.i ; 10 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 2
  %i.art = shl nsw i32 %i.aqy, 1
  %i.aru = zext i32 %i.art to i64
  %i.arv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aru
  %i.arw = load i16, ptr %i.arv, align 2
  store i16 %i.arw, ptr %i.ars, align 1
  %.not.i138.i = icmp eq i32 %i.aqo, 0
  br i1 %.not.i138.i, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.arx = mul i32 %i.aqq, 5243
  %i.ary = lshr i32 %i.arx, 19                    ; 2 uses
  %.neg103.i.i = mul i32 %i.ary, 2147483548
  %i.arz = add i32 %.neg103.i.i, %i.aqq
  %i.asa = and i64 %i.aqn, 4294967295
  %i.asb = mul nuw nsw i64 %i.asa, 109951163
  %i.asc = lshr i64 %i.asb, 40
  %i.asd = trunc nuw nsw i64 %i.asc to i32        ; 3 uses
  %.neg104.i.i = mul i32 %i.asd, -10000
  %i.ase = add i32 %.neg104.i.i, %i.aqo           ; 3 uses
  %i.asf = mul nuw i32 %i.asd, 5243
  %i.asg = lshr i32 %i.asf, 19                    ; 3 uses
  %.neg105.i.i = mul nsw i32 %i.asg, -100
  %i.ash = add nsw i32 %.neg105.i.i, %i.asd       ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  %i.asj = shl nuw nsw i32 %i.ary, 1
  %i.ask = zext nneg i32 %i.asj to i64
  %i.asl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ask
  %i.asm = load i16, ptr %i.asl, align 2
  store i16 %i.asm, ptr %i.asi, align 1
  %i.asn = getelementptr inbounds nuw i8, ptr %i.arr, i64 6
  %i.aso = shl i32 %i.arz, 1
  %i.asp = zext i32 %i.aso to i64
  %i.asq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asp
  %i.asr = load i16, ptr %i.asq, align 2
  store i16 %i.asr, ptr %i.asn, align 1
  %i.ass = getelementptr inbounds nuw i8, ptr %i.arr, i64 8
  %i.ast = shl nuw nsw i32 %i.asg, 1
  %i.asu = zext nneg i32 %i.ast to i64
  %i.asv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asu
  %i.asw = load i16, ptr %i.asv, align 2
  store i16 %i.asw, ptr %i.ass, align 1
  %i.asx = getelementptr inbounds nuw i8, ptr %i.arr, i64 10
  %i.asy = shl nsw i32 %i.ash, 1
  %i.asz = zext i32 %i.asy to i64
  %i.ata = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asz
  %i.atb = load i16, ptr %i.ata, align 2
  store i16 %i.atb, ptr %i.asx, align 1
  %.not106.i139.i = icmp eq i32 %i.ase, 0
  br i1 %.not106.i139.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.atc = mul i32 %i.ase, 5243
  %i.atd = lshr i32 %i.atc, 19                    ; 3 uses
  %.neg108.i.i = mul nsw i32 %i.atd, -100
  %i.ate = add i32 %.neg108.i.i, %i.ase           ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.arr, i64 12
  %i.atg = shl nuw nsw i32 %i.atd, 1
  %i.ath = zext nneg i32 %i.atg to i64
  %i.ati = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ath
  %i.atj = load i16, ptr %i.ati, align 2
  store i16 %i.atj, ptr %i.atf, align 1
  %i.atk = getelementptr inbounds nuw i8, ptr %i.arr, i64 14
  %i.atl = shl nuw i32 %i.ate, 1
  %i.atm = zext i32 %i.atl to i64
  %i.atn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.atm
  %i.ato = load i16, ptr %i.atn, align 2
  store i16 %i.ato, ptr %i.atk, align 1
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %.sink4397 = phi i32 [ %i.atd, %bb.fo ], [ %i.asg, %bb.fn ]
  %.sink4393 = phi i32 [ %i.ate, %bb.fo ], [ %i.ash, %bb.fn ] ; 2 uses
  %.sink = phi i64 [ 16, %bb.fo ], [ 12, %bb.fn ]
  %i.atp = zext nneg i32 %.sink4397 to i64
  %i.atq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.atp
  %i.atr = load i8, ptr %i.atq, align 1, !tbaa !81
  %i.ats = zext i8 %i.atr to i64
  %i.att = zext i32 %.sink4393 to i64
  %i.atu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.att
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !81
  %i.atw = zext i8 %i.atv to i64
  %.not107.i143.i = icmp eq i32 %.sink4393, 0
  %i.atx = add nuw nsw i64 %i.ats, 2
  %i.aty = select i1 %.not107.i143.i, i64 %i.atx, i64 %i.atw
  %i.atz = sub nsw i64 %.sink, %i.aty
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

bb.fq:                                            ; preds = %bb.fm
  %.not99.i144.i = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i144.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aua = mul i32 %i.aqq, 5243
  %i.aub = lshr i32 %i.aua, 19                    ; 3 uses
  %.neg101.i.i = mul nsw i32 %i.aub, -100
  %i.auc = add i32 %.neg101.i.i, %i.aqq           ; 3 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  %i.aue = shl nuw nsw i32 %i.aub, 1
  %i.auf = zext nneg i32 %i.aue to i64
  %i.aug = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auf
  %i.auh = load i16, ptr %i.aug, align 2
  store i16 %i.auh, ptr %i.aud, align 1
  %i.aui = getelementptr inbounds nuw i8, ptr %i.arr, i64 6
  %i.auj = shl nuw i32 %i.auc, 1
  %i.auk = zext i32 %i.auj to i64
  %i.aul = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auk
  %i.aum = load i16, ptr %i.aul, align 2
  store i16 %i.aum, ptr %i.aui, align 1
  %i.aun = zext nneg i32 %i.aub to i64
  %i.auo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aun
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !81
  %i.auq = zext i8 %i.aup to i64
  %i.aur = zext i32 %i.auc to i64
  %i.aus = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aur
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !81
  %i.auu = zext i8 %i.aut to i64
  %.not102.i145.i = icmp eq i32 %i.auc, 0
  %i.auv = add nuw nsw i64 %i.auq, 2
  %i.auw = select i1 %.not102.i145.i, i64 %i.auv, i64 %i.auu
  %i.aux = sub nsw i64 8, %i.auw
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

bb.fs:                                            ; preds = %bb.fq
  %i.auy = zext i32 %i.aqx to i64
  %i.auz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auy
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !81
  %i.avb = zext i8 %i.ava to i64
  %i.avc = zext i32 %i.aqy to i64
  %i.avd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.avc
  %i.ave = load i8, ptr %i.avd, align 1, !tbaa !81
  %i.avf = zext i8 %i.ave to i64
  %.not100.i146.i = icmp eq i32 %i.aqy, 0
  %i.avg = select i1 %.not100.i146.i, i64 %i.avb, i64 0
  %i.avh = add nuw nsw i64 %i.avg, %i.avf
  %i.avi = sub nsw i64 4, %i.avh
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i: ; preds = %bb.fs, %bb.fr, %bb.fp
  %.sink4399.a = phi i64 [ %i.avi, %bb.fs ], [ %i.aux, %bb.fr ], [ %i.atz, %bb.fp ]
  %i.avj = and i64 %.sink4399.a, 4294967295
  %i.avk = getelementptr inbounds nuw i8, ptr %i.arr, i64 %i.avj ; 2 uses
  store i8 48, ptr %i.aee, align 1, !tbaa !81
  %i.avl = getelementptr inbounds nuw i8, ptr %i.aee, i64 1
  store i8 46, ptr %i.avl, align 1, !tbaa !81
  %i.avm = icmp slt i32 %i.aqj, 0
  br i1 %i.avm, label %.lr.ph2310.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

.lr.ph2310.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i
  %i.avn = getelementptr i8, ptr %i.aee, i64 2
  %narrow3146 = sub nsw i32 0, %i.aqj
  %i.avo = zext nneg i32 %narrow3146 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.avn, i8 48, i64 %i.avo, i1 false), !tbaa !81
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ft:                                            ; preds = %bb.fl
  %i.avp = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aee, i8 48, i64 24, i1 false)
  store i8 %i.ara, ptr %i.avp, align 1, !tbaa !81
  %i.avq = icmp ne i32 %i.aqw, 0
  %i.avr = zext i1 %i.avq to i64
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avp, i64 %i.avr ; 2 uses
  %i.avt = icmp ult i32 %i.aqx, 10
  %i.avu = icmp eq i32 %i.aqw, 0
  %i.avv = and i1 %i.avu, %i.avt                  ; 2 uses
  %i.avw = shl nsw i32 %i.aqx, 1
  %i.avx = zext i32 %i.avw to i64
  %i.avy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.avx
  %.neg98.i151.i = sext i1 %i.avv to i64
  %i.avz = zext i1 %i.avv to i64
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avy, i64 %i.avz
  %i.awb = load i16, ptr %i.awa, align 1
  store i16 %i.awb, ptr %i.avs, align 1
  %i.awc = getelementptr inbounds i8, ptr %i.avs, i64 %.neg98.i151.i ; 10 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 2
  %i.awe = shl nsw i32 %i.aqy, 1
  %i.awf = zext i32 %i.awe to i64
  %i.awg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awf
  %i.awh = load i16, ptr %i.awg, align 2
  store i16 %i.awh, ptr %i.awd, align 1
  %.not.i152.i = icmp eq i32 %i.aqo, 0
  br i1 %.not.i152.i, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.awi = mul i32 %i.aqq, 5243
  %i.awj = lshr i32 %i.awi, 19                    ; 2 uses
  %.neg103.i153.i = mul i32 %i.awj, 2147483548
  %i.awk = add i32 %.neg103.i153.i, %i.aqq
  %i.awl = and i64 %i.aqn, 4294967295
  %i.awm = mul nuw nsw i64 %i.awl, 109951163
  %i.awn = lshr i64 %i.awm, 40
  %i.awo = trunc nuw nsw i64 %i.awn to i32        ; 3 uses
  %.neg104.i154.i = mul i32 %i.awo, -10000
  %i.awp = add i32 %.neg104.i154.i, %i.aqo        ; 3 uses
  %i.awq = mul nuw i32 %i.awo, 5243
  %i.awr = lshr i32 %i.awq, 19                    ; 3 uses
  %.neg105.i155.i = mul nsw i32 %i.awr, -100
  %i.aws = add nsw i32 %.neg105.i155.i, %i.awo    ; 2 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awc, i64 4
  %i.awu = shl nuw nsw i32 %i.awj, 1
  %i.awv = zext nneg i32 %i.awu to i64
  %i.aww = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awv
  %i.awx = load i16, ptr %i.aww, align 2
  store i16 %i.awx, ptr %i.awt, align 1
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awc, i64 6
  %i.awz = shl i32 %i.awk, 1
  %i.axa = zext i32 %i.awz to i64
  %i.axb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axa
  %i.axc = load i16, ptr %i.axb, align 2
  store i16 %i.axc, ptr %i.awy, align 1
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awc, i64 8
  %i.axe = shl nuw nsw i32 %i.awr, 1
  %i.axf = zext nneg i32 %i.axe to i64
  %i.axg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axf
  %i.axh = load i16, ptr %i.axg, align 2
  store i16 %i.axh, ptr %i.axd, align 1
  %i.axi = getelementptr inbounds nuw i8, ptr %i.awc, i64 10
  %i.axj = shl nsw i32 %i.aws, 1
  %i.axk = zext i32 %i.axj to i64
  %i.axl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axk
  %i.axm = load i16, ptr %i.axl, align 2
  store i16 %i.axm, ptr %i.axi, align 1
  %.not106.i156.i = icmp eq i32 %i.awp, 0
  br i1 %.not106.i156.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.axn = mul i32 %i.awp, 5243
  %i.axo = lshr i32 %i.axn, 19                    ; 3 uses
  %.neg108.i157.i = mul nsw i32 %i.axo, -100
  %i.axp = add i32 %.neg108.i157.i, %i.awp        ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.awc, i64 12
  %i.axr = shl nuw nsw i32 %i.axo, 1
  %i.axs = zext nneg i32 %i.axr to i64
  %i.axt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axs
  %i.axu = load i16, ptr %i.axt, align 2
  store i16 %i.axu, ptr %i.axq, align 1
  %i.axv = getelementptr inbounds nuw i8, ptr %i.awc, i64 14
  %i.axw = shl nuw i32 %i.axp, 1
  %i.axx = zext i32 %i.axw to i64
  %i.axy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axx
  %i.axz = load i16, ptr %i.axy, align 2
  store i16 %i.axz, ptr %i.axv, align 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  %.sink4413 = phi i32 [ %i.axo, %bb.fv ], [ %i.awr, %bb.fu ]
  %.sink4409 = phi i32 [ %i.axp, %bb.fv ], [ %i.aws, %bb.fu ] ; 2 uses
  %.sink4400 = phi i64 [ 16, %bb.fv ], [ 12, %bb.fu ]
  %i.aya = zext nneg i32 %.sink4413 to i64
  %i.ayb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aya
  %i.ayc = load i8, ptr %i.ayb, align 1, !tbaa !81
  %i.ayd = zext i8 %i.ayc to i64
  %i.aye = zext i32 %.sink4409 to i64
  %i.ayf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aye
  %i.ayg = load i8, ptr %i.ayf, align 1, !tbaa !81
  %i.ayh = zext i8 %i.ayg to i64
  %.not107.i163.i = icmp eq i32 %.sink4409, 0
  %i.ayi = add nuw nsw i64 %i.ayd, 2
  %i.ayj = select i1 %.not107.i163.i, i64 %i.ayi, i64 %i.ayh
  %i.ayk = sub nsw i64 %.sink4400, %i.ayj
  br label %._crit_edge2308

bb.fx:                                            ; preds = %bb.ft
  %.not99.i164.i = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i164.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ayl = mul i32 %i.aqq, 5243
  %i.aym = lshr i32 %i.ayl, 19                    ; 3 uses
  %.neg101.i165.i = mul nsw i32 %i.aym, -100
  %i.ayn = add i32 %.neg101.i165.i, %i.aqq        ; 3 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.awc, i64 4
  %i.ayp = shl nuw nsw i32 %i.aym, 1
  %i.ayq = zext nneg i32 %i.ayp to i64
  %i.ayr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayq
  %i.ays = load i16, ptr %i.ayr, align 2
  store i16 %i.ays, ptr %i.ayo, align 1
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.awc, i64 6
  %i.ayu = shl nuw i32 %i.ayn, 1
  %i.ayv = zext i32 %i.ayu to i64
  %i.ayw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayv
  %i.ayx = load i16, ptr %i.ayw, align 2
  store i16 %i.ayx, ptr %i.ayt, align 1
  %i.ayy = zext nneg i32 %i.aym to i64
  %i.ayz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayy
  %i.aza = load i8, ptr %i.ayz, align 1, !tbaa !81
  %i.azb = zext i8 %i.aza to i64
  %i.azc = zext i32 %i.ayn to i64
  %i.azd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azc
  %i.aze = load i8, ptr %i.azd, align 1, !tbaa !81
  %i.azf = zext i8 %i.aze to i64
  %.not102.i166.i = icmp eq i32 %i.ayn, 0
  %i.azg = add nuw nsw i64 %i.azb, 2
  %i.azh = select i1 %.not102.i166.i, i64 %i.azg, i64 %i.azf
  %i.azi = sub nsw i64 8, %i.azh
  br label %._crit_edge2308

bb.fz:                                            ; preds = %bb.fx
  %i.azj = zext i32 %i.aqx to i64
  %i.azk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azj
  %i.azl = load i8, ptr %i.azk, align 1, !tbaa !81
  %i.azm = zext i8 %i.azl to i64
  %i.azn = zext i32 %i.aqy to i64
  %i.azo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azn
  %i.azp = load i8, ptr %i.azo, align 1, !tbaa !81
  %i.azq = zext i8 %i.azp to i64
  %.not100.i167.i = icmp eq i32 %i.aqy, 0
  %i.azr = select i1 %.not100.i167.i, i64 %i.azm, i64 0
  %i.azs = add nuw nsw i64 %i.azr, %i.azq
  %i.azt = sub nsw i64 4, %i.azs
  br label %._crit_edge2308

._crit_edge2308:                                  ; preds = %bb.fz, %bb.fy, %bb.fw
  %.sink4415.a = phi i64 [ %i.azt, %bb.fz ], [ %i.azi, %bb.fy ], [ %i.ayk, %bb.fw ]
  %i.azu = and i64 %.sink4415.a, 4294967295
  %7 = getelementptr inbounds nuw i8, ptr %i.awc, i64 %i.azu ; 2 uses
  %8 = getelementptr i8, ptr %i.adn, i64 %.lobit.i120.i
  %scevgep2901 = getelementptr i8, ptr %8, i64 1
  %i.azv = zext nneg i32 %i.aqj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aee, ptr align 1 %scevgep2901, i64 %i.azv, i1 false), !tbaa !81
  %i.azw = zext nneg i32 %i.aqj to i64
  %i.azx = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.azw ; 2 uses
  store i8 46, ptr %i.azx, align 1, !tbaa !81
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 2 ; 2 uses
  %i.azz = icmp ult ptr %i.azy, %7
  %spec.select = select i1 %i.azz, ptr %7, ptr %i.azy
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ga:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i
  %.ptr1002 = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 3 uses
  store i8 %i.ara, ptr %.ptr1002, align 1, !tbaa !81
  %.not1007 = icmp eq i32 %i.aqw, 0               ; 2 uses
  %.add997 = select i1 %.not1007, i64 1, i64 2    ; 2 uses
  %.ptr1003 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add997
  %i.baa = icmp ult i32 %i.aqx, 10
  %i.bab = and i1 %.not1007, %i.baa               ; 2 uses
  %i.bac = shl nsw i32 %i.aqx, 1
  %i.bad = zext i32 %i.bac to i64
  %i.bae = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bad
  %.neg98.i173.i = sext i1 %i.bab to i64
  %i.baf = zext i1 %i.bab to i64
  %i.bag = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.baf
  %i.bah = load i16, ptr %i.bag, align 1
  store i16 %i.bah, ptr %.ptr1003, align 1
  %.add998 = add nsw i64 %.add997, %.neg98.i173.i ; 2 uses
  %.ptr1004 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add998 ; 9 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 2
  %i.baj = shl nsw i32 %i.aqy, 1
  %i.bak = zext i32 %i.baj to i64
  %i.bal = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bak
  %i.bam = load i16, ptr %i.bal, align 2
  store i16 %i.bam, ptr %i.bai, align 1
  %.not.i174.i = icmp eq i32 %i.aqo, 0
  br i1 %.not.i174.i, label %bb.ge, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ban = mul i32 %i.aqq, 5243
  %i.bao = lshr i32 %i.ban, 19                    ; 2 uses
  %.neg103.i175.i = mul i32 %i.bao, 2147483548
  %i.bap = add i32 %.neg103.i175.i, %i.aqq
  %i.baq = and i64 %i.aqn, 4294967295
  %i.bar = mul nuw nsw i64 %i.baq, 109951163
  %i.bas = lshr i64 %i.bar, 40
  %i.bat = trunc nuw nsw i64 %i.bas to i32        ; 3 uses
  %.neg104.i176.i = mul i32 %i.bat, -10000
  %i.bau = add i32 %.neg104.i176.i, %i.aqo        ; 3 uses
  %i.bav = mul nuw i32 %i.bat, 5243
  %i.baw = lshr i32 %i.bav, 19                    ; 3 uses
  %.neg105.i177.i = mul nsw i32 %i.baw, -100
  %i.bax = add nsw i32 %.neg105.i177.i, %i.bat    ; 3 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 4
  %i.baz = shl nuw nsw i32 %i.bao, 1
  %i.bba = zext nneg i32 %i.baz to i64
  %i.bbb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bba
  %i.bbc = load i16, ptr %i.bbb, align 2
  store i16 %i.bbc, ptr %i.bay, align 1
  %i.bbd = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 6
  %i.bbe = shl i32 %i.bap, 1
  %i.bbf = zext i32 %i.bbe to i64
  %i.bbg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbf
  %i.bbh = load i16, ptr %i.bbg, align 2
  store i16 %i.bbh, ptr %i.bbd, align 1
  %i.bbi = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 8
  %i.bbj = shl nuw nsw i32 %i.baw, 1
  %i.bbk = zext nneg i32 %i.bbj to i64
  %i.bbl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbk
  %i.bbm = load i16, ptr %i.bbl, align 2
  store i16 %i.bbm, ptr %i.bbi, align 1
  %i.bbn = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 10
  %i.bbo = shl nsw i32 %i.bax, 1
  %i.bbp = zext i32 %i.bbo to i64
  %i.bbq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbp
  %i.bbr = load i16, ptr %i.bbq, align 2
  store i16 %i.bbr, ptr %i.bbn, align 1
  %.not106.i178.i = icmp eq i32 %i.bau, 0
  br i1 %.not106.i178.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.bbs = mul i32 %i.bau, 5243
  %i.bbt = lshr i32 %i.bbs, 19                    ; 3 uses
  %.neg108.i179.i = mul nsw i32 %i.bbt, -100
  %i.bbu = add i32 %.neg108.i179.i, %i.bau        ; 3 uses
  %i.bbv = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 12
  %i.bbw = shl nuw nsw i32 %i.bbt, 1
  %i.bbx = zext nneg i32 %i.bbw to i64
  %i.bby = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbx
  %i.bbz = load i16, ptr %i.bby, align 2
  store i16 %i.bbz, ptr %i.bbv, align 1
  %i.bca = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 14
  %i.bcb = shl nuw i32 %i.bbu, 1
  %i.bcc = zext i32 %i.bcb to i64
  %i.bcd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bcc
  %i.bce = load i16, ptr %i.bcd, align 2
  store i16 %i.bce, ptr %i.bca, align 1
  %i.bcf = zext nneg i32 %i.bbt to i64
  %i.bcg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcf
  %i.bch = load i8, ptr %i.bcg, align 1, !tbaa !81
  %i.bci = zext i8 %i.bch to i64
  %i.bcj = zext i32 %i.bbu to i64
  %i.bck = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcj
  %i.bcl = load i8, ptr %i.bck, align 1, !tbaa !81
  %i.bcm = zext i8 %i.bcl to i64
  %.not109.i180.i = icmp eq i32 %i.bbu, 0
  %i.bcn = add nuw nsw i64 %i.bci, 2
  %i.bco = select i1 %.not109.i180.i, i64 %i.bcn, i64 %i.bcm
  %i.bcp = sub nsw i64 16, %i.bco
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.gd:                                            ; preds = %bb.gb
  %i.bcq = zext nneg i32 %i.baw to i64
  %i.bcr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcq
  %i.bcs = load i8, ptr %i.bcr, align 1, !tbaa !81
  %i.bct = zext i8 %i.bcs to i64
  %i.bcu = zext i32 %i.bax to i64
  %i.bcv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcu
  %i.bcw = load i8, ptr %i.bcv, align 1, !tbaa !81
  %i.bcx = zext i8 %i.bcw to i64
  %.not107.i185.i = icmp eq i32 %i.bax, 0
  %i.bcy = add nuw nsw i64 %i.bct, 2
  %i.bcz = select i1 %.not107.i185.i, i64 %i.bcy, i64 %i.bcx
  %i.bda = sub nsw i64 12, %i.bcz
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.ge:                                            ; preds = %bb.ga
  %.not99.i186.i = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i186.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.bdb = mul i32 %i.aqq, 5243
  %i.bdc = lshr i32 %i.bdb, 19                    ; 3 uses
  %.neg101.i187.i = mul nsw i32 %i.bdc, -100
  %i.bdd = add i32 %.neg101.i187.i, %i.aqq        ; 3 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 4
  %i.bdf = shl nuw nsw i32 %i.bdc, 1
  %i.bdg = zext nneg i32 %i.bdf to i64
  %i.bdh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdg
  %i.bdi = load i16, ptr %i.bdh, align 2
  store i16 %i.bdi, ptr %i.bde, align 1
  %i.bdj = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 6
  %i.bdk = shl nuw i32 %i.bdd, 1
  %i.bdl = zext i32 %i.bdk to i64
  %i.bdm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdl
  %i.bdn = load i16, ptr %i.bdm, align 2
  store i16 %i.bdn, ptr %i.bdj, align 1
  %i.bdo = zext nneg i32 %i.bdc to i64
  %i.bdp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdo
  %i.bdq = load i8, ptr %i.bdp, align 1, !tbaa !81
  %i.bdr = zext i8 %i.bdq to i64
  %i.bds = zext i32 %i.bdd to i64
  %i.bdt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bds
  %i.bdu = load i8, ptr %i.bdt, align 1, !tbaa !81
  %i.bdv = zext i8 %i.bdu to i64
  %.not102.i188.i = icmp eq i32 %i.bdd, 0
  %i.bdw = add nuw nsw i64 %i.bdr, 2
  %i.bdx = select i1 %.not102.i188.i, i64 %i.bdw, i64 %i.bdv
  %i.bdy = sub nsw i64 8, %i.bdx
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.gg:                                            ; preds = %bb.ge
  %i.bdz = zext i32 %i.aqx to i64
  %i.bea = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdz
  %i.beb = load i8, ptr %i.bea, align 1, !tbaa !81
  %i.bec = zext i8 %i.beb to i64
  %i.bed = zext i32 %i.aqy to i64
  %i.bee = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bed
  %i.bef = load i8, ptr %i.bee, align 1, !tbaa !81
  %i.beg = zext i8 %i.bef to i64
  %.not100.i189.i = icmp eq i32 %i.aqy, 0
  %i.beh = select i1 %.not100.i189.i, i64 %i.bec, i64 0
  %i.bei = add nuw nsw i64 %i.beh, %i.beg
  %i.bej = sub nsw i64 4, %i.bei
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i: ; preds = %bb.gc, %bb.gd, %bb.gg, %bb.gf
  %.pn.i182.i.pn.in = phi i64 [ %i.bej, %bb.gg ], [ %i.bdy, %bb.gf ], [ %i.bcp, %bb.gc ], [ %i.bda, %bb.gd ]
  %.pn.i182.i.pn = and i64 %.pn.i182.i.pn.in, 4294967295
  %.1.i184.i.idx = add nuw nsw i64 %.pn.i182.i.pn, %.add998 ; 2 uses
  %.1.i184.i.ptr = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.1.i184.i.idx
  %i.bek = icmp eq i64 %.1.i184.i.idx, 2
  %.neg130.i.i = sext i1 %i.bek to i64
  %i.bel = getelementptr inbounds i8, ptr %.1.i184.i.ptr, i64 %.neg130.i.i ; 2 uses
  %i.bem = add nsw i32 %i.aqj, -1                 ; 2 uses
  %i.ben = load i8, ptr %.ptr1002, align 1, !tbaa !81
  store i8 %i.ben, ptr %i.aee, align 1, !tbaa !81
  store i8 46, ptr %.ptr1002, align 1, !tbaa !81
  store i8 101, ptr %i.bel, align 1, !tbaa !81
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bel, i64 1 ; 2 uses
  store i8 45, ptr %i.beo, align 1, !tbaa !81
  %.lobit.i191.i = lshr i32 %i.bem, 31
  %i.bep = zext nneg i32 %.lobit.i191.i to i64
  %i.beq = getelementptr inbounds nuw i8, ptr %i.beo, i64 %i.bep ; 5 uses
  %i.ber = tail call i32 @llvm.abs.i32(i32 %i.bem, i1 true) ; 5 uses
  %i.bes = icmp samesign ult i32 %i.ber, 100
  br i1 %i.bes, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i
  %i.bet = icmp samesign ult i32 %i.ber, 10       ; 2 uses
  %i.beu = shl nuw nsw i32 %i.ber, 1
  %i.bev = zext nneg i32 %i.beu to i64
  %i.bew = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bev
  %.neg22.i.i = sext i1 %i.bet to i64
  %i.bex = zext i1 %i.bet to i64
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bew, i64 %i.bex
  %i.bez = load i16, ptr %i.bey, align 1
  store i16 %i.bez, ptr %i.beq, align 1
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.beq, i64 2
end_hunk_3
