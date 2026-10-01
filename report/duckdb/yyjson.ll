Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/yyjson?download=true
inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br label %vector.body6033

vector.body6033:                                  ; preds = %vector.body6033, %vector.ph6031
  %index6034 = phi i64 [ 0, %vector.ph6031 ], [ %index.next6039, %vector.body6033 ] ; 2 uses
  %i.abi = shl i64 %index6034, 2                  ; 2 uses
  %next.gep6035 = getelementptr i8, ptr %.018.i76.lcssa, i64 %i.abi ; 2 uses
  %next.gep6036 = getelementptr i8, ptr %.021.i75.lcssa, i64 %i.abi ; 2 uses
  %i.abj = getelementptr i8, ptr %next.gep6035, i64 16
  %wide.load6037 = load <4 x i32>, ptr %next.gep6035, align 1
  %wide.load6038 = load <4 x i32>, ptr %i.abj, align 1
  %i.abk = getelementptr i8, ptr %next.gep6036, i64 16
  store <4 x i32> %wide.load6037, ptr %next.gep6036, align 1
  store <4 x i32> %wide.load6038, ptr %i.abk, align 1
  %index.next6039 = add nuw i64 %index6034, 8     ; 2 uses
  %i.abl = icmp eq i64 %index.next6039, %n.vec6032
  br i1 %i.abl, label %middle.block6040, label %vector.body6033, !llvm.loop !295

middle.block6040:                                 ; preds = %vector.body6033
  %cmp.n6041 = icmp eq i64 %i.abb, %n.vec6032
  br i1 %cmp.n6041, label %.preheader1873, label %.lr.ph3171.preheader6171

.lr.ph3171.preheader6171:                         ; preds = %.lr.ph3171.preheader, %middle.block6040
  %.1.i803170.ph = phi i64 [ %.0.i77.lcssa, %.lr.ph3171.preheader ], [ %i.abe, %middle.block6040 ]
  %.119.i793169.ph = phi ptr [ %.018.i76.lcssa, %.lr.ph3171.preheader ], [ %i.abg, %middle.block6040 ]
  %.122.i783168.ph = phi ptr [ %.021.i75.lcssa, %.lr.ph3171.preheader ], [ %i.abh, %middle.block6040 ]
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
  br i1 %i.abp, label %.lr.ph3164, label %.preheader1874, !llvm.loop !34

.preheader1873:                                   ; preds = %.lr.ph3171, %middle.block6040, %.preheader1874
  %.122.i78.lcssa = phi ptr [ %.021.i75.lcssa, %.preheader1874 ], [ %i.abh, %middle.block6040 ], [ %i.acj, %.lr.ph3171 ] ; 7 uses
  %.119.i79.lcssa = phi ptr [ %.018.i76.lcssa, %.preheader1874 ], [ %i.abg, %middle.block6040 ], [ %i.ack, %.lr.ph3171 ] ; 6 uses
  %.1.i80.lcssa = phi i64 [ %.0.i77.lcssa, %.preheader1874 ], [ %i.abe, %middle.block6040 ], [ %i.acl, %.lr.ph3171 ] ; 11 uses
  %.not.i843175 = icmp eq i64 %.1.i80.lcssa, 0
  br i1 %.not.i843175, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %iter.check6068

iter.check6068:                                   ; preds = %.preheader1873
  %.119.i79.lcssa6047 = ptrtoaddr ptr %.119.i79.lcssa to i64
  %.122.i78.lcssa6046 = ptrtoaddr ptr %.122.i78.lcssa to i64
  %min.iters.check6050.a = icmp ult i64 %.1.i80.lcssa, 4
  %i.abq = sub i64 %.119.i79.lcssa6047, %.122.i78.lcssa6046
  %diff.check6048 = icmp ugt i64 %i.abq, -32
  %or.cond6086.a = select i1 %min.iters.check6050.a, i1 true, i1 %diff.check6048
  br i1 %or.cond6086.a, label %.lr.ph3179.preheader, label %vector.main.loop.iter.check6051

vector.main.loop.iter.check6051:                  ; preds = %iter.check6068
  %min.iters.check6052 = icmp ult i64 %.1.i80.lcssa, 32
  br i1 %min.iters.check6052, label %vec.epilog.ph6072, label %vector.ph6053

vector.ph6053:                                    ; preds = %vector.main.loop.iter.check6051
  %i.abr = and i64 %.1.i80.lcssa, 28
  %n.vec6054 = and i64 %.1.i80.lcssa, -32         ; 5 uses
  %i.abs = and i64 %.1.i80.lcssa, 31
  %i.abt = getelementptr i8, ptr %.119.i79.lcssa, i64 %n.vec6054
  %i.abu = getelementptr i8, ptr %.122.i78.lcssa, i64 %n.vec6054 ; 2 uses
  br label %vector.body6055

vector.body6055:                                  ; preds = %vector.ph6053, %vector.body6055
  %index6056 = phi i64 [ 0, %vector.ph6053 ], [ %index.next6061, %vector.body6055 ] ; 3 uses
  %next.gep6057 = getelementptr i8, ptr %.119.i79.lcssa, i64 %index6056 ; 2 uses
  %next.gep6058 = getelementptr i8, ptr %.122.i78.lcssa, i64 %index6056 ; 2 uses
  %i.abv = getelementptr i8, ptr %next.gep6057, i64 16
  %wide.load6059 = load <16 x i8>, ptr %next.gep6057, align 1, !tbaa !99
  %wide.load6060 = load <16 x i8>, ptr %i.abv, align 1, !tbaa !99
  %i.abw = getelementptr i8, ptr %next.gep6058, i64 16
  store <16 x i8> %wide.load6059, ptr %next.gep6058, align 1, !tbaa !99
  store <16 x i8> %wide.load6060, ptr %i.abw, align 1, !tbaa !99
  %index.next6061 = add nuw i64 %index6056, 32    ; 2 uses
  %i.abx = icmp eq i64 %index.next6061, %n.vec6054
  br i1 %i.abx, label %middle.block6062, label %vector.body6055, !llvm.loop !296

middle.block6062:                                 ; preds = %vector.body6055
  %cmp.n6063 = icmp eq i64 %.1.i80.lcssa, %n.vec6054
  br i1 %cmp.n6063, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %vec.epilog.iter.check6070

vec.epilog.iter.check6070:                        ; preds = %middle.block6062
  %min.epilog.iters.check6071 = icmp eq i64 %i.abr, 0
  br i1 %min.epilog.iters.check6071, label %.lr.ph3179.preheader, label %vec.epilog.ph6072, !prof !154

vec.epilog.ph6072:                                ; preds = %vector.main.loop.iter.check6051, %vec.epilog.iter.check6070
  %vec.epilog.resume.val6064 = phi i64 [ %n.vec6054, %vec.epilog.iter.check6070 ], [ 0, %vector.main.loop.iter.check6051 ]
  %n.vec6073 = and i64 %.1.i80.lcssa, -4          ; 4 uses
  %i.aby = and i64 %.1.i80.lcssa, 3
  %i.abz = getelementptr i8, ptr %.119.i79.lcssa, i64 %n.vec6073
  %i.aca = getelementptr i8, ptr %.122.i78.lcssa, i64 %n.vec6073 ; 2 uses
  br label %vec.epilog.vector.body6074

vec.epilog.vector.body6074:                       ; preds = %vec.epilog.vector.body6074, %vec.epilog.ph6072
  %index6075 = phi i64 [ %vec.epilog.resume.val6064, %vec.epilog.ph6072 ], [ %index.next6079, %vec.epilog.vector.body6074 ] ; 3 uses
  %next.gep6076 = getelementptr i8, ptr %.119.i79.lcssa, i64 %index6075
  %next.gep6077 = getelementptr i8, ptr %.122.i78.lcssa, i64 %index6075
  %wide.load6078 = load <4 x i8>, ptr %next.gep6076, align 1, !tbaa !99
  store <4 x i8> %wide.load6078, ptr %next.gep6077, align 1, !tbaa !99
  %index.next6079 = add nuw i64 %index6075, 4     ; 2 uses
  %i.acb = icmp eq i64 %index.next6079, %n.vec6073
  br i1 %i.acb, label %vec.epilog.middle.block6080, label %vec.epilog.vector.body6074, !llvm.loop !297

vec.epilog.middle.block6080:                      ; preds = %vec.epilog.vector.body6074
  %cmp.n6081 = icmp eq i64 %.1.i80.lcssa, %n.vec6073
  br i1 %cmp.n6081, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %.lr.ph3179.preheader

.lr.ph3179.preheader:                             ; preds = %iter.check6068, %vec.epilog.iter.check6070, %vec.epilog.middle.block6080
  %.2.i833178.ph = phi i64 [ %.1.i80.lcssa, %iter.check6068 ], [ %i.abs, %vec.epilog.iter.check6070 ], [ %i.aby, %vec.epilog.middle.block6080 ] ; 4 uses
  %.220.i823177.ph = phi ptr [ %.119.i79.lcssa, %iter.check6068 ], [ %i.abt, %vec.epilog.iter.check6070 ], [ %i.abz, %vec.epilog.middle.block6080 ] ; 2 uses
  %.223.i813176.ph = phi ptr [ %.122.i78.lcssa, %iter.check6068 ], [ %i.abu, %vec.epilog.iter.check6070 ], [ %i.aca, %vec.epilog.middle.block6080 ] ; 2 uses
  %i.acc = add nsw i64 %.2.i833178.ph, -1
  %xtraiter6781 = and i64 %.2.i833178.ph, 7       ; 2 uses
  %lcmp.mod6782.not = icmp eq i64 %xtraiter6781, 0
  br i1 %lcmp.mod6782.not, label %.lr.ph3179.prol.loopexit, label %.lr.ph3179.prol

.lr.ph3179.prol:                                  ; preds = %.lr.ph3179.preheader, %.lr.ph3179.prol
  %.2.i833178.prol = phi i64 [ %i.acg, %.lr.ph3179.prol ], [ %.2.i833178.ph, %.lr.ph3179.preheader ]
  %.220.i823177.prol = phi ptr [ %i.acd, %.lr.ph3179.prol ], [ %.220.i823177.ph, %.lr.ph3179.preheader ] ; 2 uses
  %.223.i813176.prol = phi ptr [ %i.acf, %.lr.ph3179.prol ], [ %.223.i813176.ph, %.lr.ph3179.preheader ] ; 2 uses
  %prol.iter6783 = phi i64 [ %prol.iter6783.next, %.lr.ph3179.prol ], [ 0, %.lr.ph3179.preheader ]
  %i.acd = getelementptr inbounds nuw i8, ptr %.220.i823177.prol, i64 1 ; 2 uses
  %i.ace = load i8, ptr %.220.i823177.prol, align 1, !tbaa !99
  %i.acf = getelementptr inbounds nuw i8, ptr %.223.i813176.prol, i64 1 ; 3 uses
  store i8 %i.ace, ptr %.223.i813176.prol, align 1, !tbaa !99
  %i.acg = add nsw i64 %.2.i833178.prol, -1       ; 2 uses
  %prol.iter6783.next = add i64 %prol.iter6783, 1 ; 2 uses
  %prol.iter6783.cmp.not = icmp eq i64 %prol.iter6783.next, %xtraiter6781
  br i1 %prol.iter6783.cmp.not, label %.lr.ph3179.prol.loopexit, label %.lr.ph3179.prol, !llvm.loop !298

.lr.ph3179.prol.loopexit:                         ; preds = %.lr.ph3179.prol, %.lr.ph3179.preheader
  %.lcssa6170.unr = phi ptr [ poison, %.lr.ph3179.preheader ], [ %i.acf, %.lr.ph3179.prol ]
  %.2.i833178.unr = phi i64 [ %.2.i833178.ph, %.lr.ph3179.preheader ], [ %i.acg, %.lr.ph3179.prol ]
  %.220.i823177.unr = phi ptr [ %.220.i823177.ph, %.lr.ph3179.preheader ], [ %i.acd, %.lr.ph3179.prol ]
  %.223.i813176.unr = phi ptr [ %.223.i813176.ph, %.lr.ph3179.preheader ], [ %i.acf, %.lr.ph3179.prol ]
  %i.ach = icmp ult i64 %i.acc, 7
  br i1 %i.ach, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %.lr.ph3179

.lr.ph3171:                                       ; preds = %.lr.ph3171.preheader6171, %.lr.ph3171
  %.1.i803170 = phi i64 [ %i.acl, %.lr.ph3171 ], [ %.1.i803170.ph, %.lr.ph3171.preheader6171 ]
  %.119.i793169 = phi ptr [ %i.ack, %.lr.ph3171 ], [ %.119.i793169.ph, %.lr.ph3171.preheader6171 ] ; 2 uses
  %.122.i783168 = phi ptr [ %i.acj, %.lr.ph3171 ], [ %.122.i783168.ph, %.lr.ph3171.preheader6171 ] ; 2 uses
  %i.aci = load i32, ptr %.119.i793169, align 1
  store i32 %i.aci, ptr %.122.i783168, align 1
  %i.acj = getelementptr inbounds nuw i8, ptr %.122.i783168, i64 4 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.119.i793169, i64 4 ; 2 uses
  %i.acl = add nsw i64 %.1.i803170, -4            ; 3 uses
  %i.acm = icmp ugt i64 %i.acl, 3
  br i1 %i.acm, label %.lr.ph3171, label %.preheader1873, !llvm.loop !299

.lr.ph3179:                                       ; preds = %.lr.ph3179.prol.loopexit, %.lr.ph3179
  %.2.i833178 = phi i64 [ %i.adl, %.lr.ph3179 ], [ %.2.i833178.unr, %.lr.ph3179.prol.loopexit ]
  %.220.i823177 = phi ptr [ %i.adi, %.lr.ph3179 ], [ %.220.i823177.unr, %.lr.ph3179.prol.loopexit ] ; 9 uses
  %.223.i813176 = phi ptr [ %i.adk, %.lr.ph3179 ], [ %.223.i813176.unr, %.lr.ph3179.prol.loopexit ] ; 9 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 1
  %i.aco = load i8, ptr %.220.i823177, align 1, !tbaa !99
  %i.acp = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 1
  store i8 %i.aco, ptr %.223.i813176, align 1, !tbaa !99
  %i.acq = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 2
  %i.acr = load i8, ptr %i.acn, align 1, !tbaa !99
  %i.acs = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 2
  store i8 %i.acr, ptr %i.acp, align 1, !tbaa !99
  %i.act = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 3
  %i.acu = load i8, ptr %i.acq, align 1, !tbaa !99
  %i.acv = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 3
  store i8 %i.acu, ptr %i.acs, align 1, !tbaa !99
  %i.acw = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 4
  %i.acx = load i8, ptr %i.act, align 1, !tbaa !99
  %i.acy = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 4
  store i8 %i.acx, ptr %i.acv, align 1, !tbaa !99
  %i.acz = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 5
  %i.ada = load i8, ptr %i.acw, align 1, !tbaa !99
  %i.adb = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 5
  store i8 %i.ada, ptr %i.acy, align 1, !tbaa !99
  %i.adc = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 6
  %i.add = load i8, ptr %i.acz, align 1, !tbaa !99
  %i.ade = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 6
  store i8 %i.add, ptr %i.adb, align 1, !tbaa !99
  %i.adf = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 7
  %i.adg = load i8, ptr %i.adc, align 1, !tbaa !99
  %i.adh = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 7
  store i8 %i.adg, ptr %i.ade, align 1, !tbaa !99
  %i.adi = getelementptr inbounds nuw i8, ptr %.220.i823177, i64 8
  %i.adj = load i8, ptr %i.adf, align 1, !tbaa !99
  %i.adk = getelementptr inbounds nuw i8, ptr %.223.i813176, i64 8 ; 2 uses
  store i8 %i.adj, ptr %i.adh, align 1, !tbaa !99
  %i.adl = add nsw i64 %.2.i833178, -8            ; 2 uses
  %.not.i84.7 = icmp eq i64 %i.adl, 0
  br i1 %.not.i84.7, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %.lr.ph3179, !llvm.loop !300

_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85: ; preds = %.lr.ph3179.prol.loopexit, %.lr.ph3179, %middle.block6062, %vec.epilog.middle.block6080, %.preheader1873
  %.223.i81.lcssa = phi ptr [ %.122.i78.lcssa, %.preheader1873 ], [ %i.aca, %vec.epilog.middle.block6080 ], [ %i.abu, %middle.block6062 ], [ %.lcssa6170.unr, %.lr.ph3179.prol.loopexit ], [ %i.adk, %.lr.ph3179 ] ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.223.i81.lcssa, i64 1
  store i8 34, ptr %.223.i81.lcssa, align 1, !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ec:                                            ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit59
  %i.adn = tail call noundef ptr %.sroa.01324.0.copyload(ptr noundef %.sroa.8.0.copyload, i64 noundef 34), !inline_history !292 ; 30 uses
  %.not102.i = icmp eq ptr %i.adn, null
  br i1 %.not102.i, label %bb.ii, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ado = load i64, ptr %0, align 8, !tbaa !98   ; 2 uses
  %i.adp = and i64 %i.ado, 16
  %.not.i548 = icmp eq i64 %i.adp, 0
  %i.adq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !99 ; 10 uses
  br i1 %.not.i548, label %bb.hg, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ads = and i64 %i.adr, 4503599627370495       ; 4 uses
  %i.adt = lshr i64 %i.adr, 52
  %i.adu = trunc nuw nsw i64 %i.adt to i32
  %i.adv = and i32 %i.adu, 2047                   ; 7 uses
  %i.adw = icmp eq i32 %i.adv, 2047
  br i1 %i.adw, label %bb.ef, label %bb.el, !prof !44

bb.ef:                                            ; preds = %bb.ee
  %i.adx = and i32 %1, 16
  %.not1829 = icmp eq i32 %i.adx, 0
  br i1 %.not1829, label %bb.eh, label %bb.eg, !prof !61

bb.eg:                                            ; preds = %bb.ef
  store i32 1819047278, ptr %i.adn, align 1
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adn, i64 4
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.eh:                                            ; preds = %bb.ef
  %i.adz = and i32 %1, 8
  %.not1830 = icmp eq i32 %i.adz, 0
  br i1 %.not1830, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit552.thread1654, label %bb.ei, !prof !61

bb.ei:                                            ; preds = %bb.eh
  %i.aea = icmp eq i64 %i.ads, 0
  br i1 %i.aea, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store i8 45, ptr %i.adn, align 1, !tbaa !99
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
  store i8 45, ptr %i.adn, align 1, !tbaa !99
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
  br i1 %.not.i625, label %bb.gj, label %bb.eo, !prof !44

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
  %i.akk = mul i32 %i.akh, 5243
  %i.akl = lshr i32 %i.akk, 19                    ; 2 uses
  %.neg62.i993 = mul nsw i32 %i.akj, -100
  %i.akm = add nsw i32 %.neg62.i993, %i.akg
  %.neg63.i994 = mul nsw i32 %i.akl, -100
  %i.akn = add nsw i32 %.neg63.i994, %i.akh
  %i.ako = icmp samesign ult i64 %i.aen, 1000000000000000 ; 2 uses
  %i.akp = shl nuw nsw i32 %i.akj, 1
  %i.akq = zext nneg i32 %i.akp to i64
  %i.akr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.akq
  %.neg64.i995 = sext i1 %i.ako to i64
  %i.aks = zext i1 %i.ako to i64
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.aks
  %i.aku = load i16, ptr %i.akt, align 1
  store i16 %i.aku, ptr %i.aee, align 1
  %i.akv = getelementptr inbounds i8, ptr %i.aee, i64 %.neg64.i995 ; 4 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 2
  %i.akx = shl nsw i32 %i.akm, 1
  %i.aky = zext i32 %i.akx to i64
  %i.akz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aky
  %i.ala = load i16, ptr %i.akz, align 2
  store i16 %i.ala, ptr %i.akw, align 1
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akv, i64 4
  %i.alc = shl nuw nsw i32 %i.akl, 1
  %i.ald = zext nneg i32 %i.alc to i64
  %i.ale = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ald
  %i.alf = load i16, ptr %i.ale, align 2
  store i16 %i.alf, ptr %i.alb, align 1
  %i.alg = getelementptr inbounds nuw i8, ptr %i.akv, i64 6
  %i.alh = shl nsw i32 %i.akn, 1
  %i.ali = zext i32 %i.alh to i64
  %i.alj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ali
  %i.alk = load i16, ptr %i.alj, align 2
  store i16 %i.alk, ptr %i.alg, align 1
  %i.all = getelementptr inbounds nuw i8, ptr %i.akv, i64 8
  br label %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1003

_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1003: ; preds = %bb.ez, %bb.fb, %bb.fd, %bb.fe
  %.0.i996 = phi ptr [ %i.ail, %bb.ez ], [ %i.ajd, %bb.fb ], [ %i.akd, %bb.fd ], [ %i.all, %bb.fe ] ; 5 uses
  %i.alm = and i64 %i.aia, 4294967295
  %i.aln = mul nuw nsw i64 %i.alm, 109951163
  %i.alo = lshr i64 %i.aln, 40
  %i.alp = trunc nuw nsw i64 %i.alo to i32        ; 3 uses
  %.neg.i1149 = mul i32 %i.alp, -10000
  %i.alq = add i32 %.neg.i1149, %i.aib            ; 2 uses
  %i.alr = mul nuw i32 %i.alp, 5243
  %i.als = lshr i32 %i.alr, 19                    ; 2 uses
  %i.alt = mul i32 %i.alq, 5243
  %i.alu = lshr i32 %i.alt, 19                    ; 2 uses
  %.neg17.i1150 = mul nsw i32 %i.als, -100
  %i.alv = add nsw i32 %.neg17.i1150, %i.alp
  %.neg18.i1151 = mul i32 %i.alu, 2147483548
  %i.alw = add i32 %.neg18.i1151, %i.alq
  %i.alx = shl nuw nsw i32 %i.als, 1
  %i.aly = zext nneg i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aly
  %i.ama = load i16, ptr %i.alz, align 2
  store i16 %i.ama, ptr %.0.i996, align 1
  %i.amb = getelementptr inbounds nuw i8, ptr %.0.i996, i64 2
  %i.amc = shl nsw i32 %i.alv, 1
  %i.amd = zext i32 %i.amc to i64
  %i.ame = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.amd
  %i.amf = load i16, ptr %i.ame, align 2
  store i16 %i.amf, ptr %i.amb, align 1
  %i.amg = getelementptr inbounds nuw i8, ptr %.0.i996, i64 4
  %i.amh = shl nuw nsw i32 %i.alu, 1
  %i.ami = zext nneg i32 %i.amh to i64
  %i.amj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ami
  %i.amk = load i16, ptr %i.amj, align 2
  store i16 %i.amk, ptr %i.amg, align 1
  %i.aml = getelementptr inbounds nuw i8, ptr %.0.i996, i64 6
  %i.amm = shl i32 %i.alw, 1
  %i.amn = zext i32 %i.amm to i64
  %i.amo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.amn
  %i.amp = load i16, ptr %i.amo, align 2
  store i16 %i.amp, ptr %i.aml, align 1
  %i.amq = getelementptr inbounds nuw i8, ptr %.0.i996, i64 8
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit679

_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit679: ; preds = %bb.ex, %bb.ew, %bb.eu, %bb.es, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1003
  %.0.i678 = phi ptr [ %i.amq, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1003 ], [ %i.aey, %bb.es ], [ %i.afq, %bb.eu ], [ %i.agq, %bb.ew ], [ %i.ahy, %bb.ex ] ; 2 uses
  store i16 12334, ptr %.0.i678, align 1
  %i.amr = getelementptr inbounds nuw i8, ptr %.0.i678, i64 2
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ff:                                            ; preds = %bb.ep, %bb.eo
  %i.ams = icmp eq i64 %i.ads, 0
  %i.amt = icmp ne i32 %i.adv, 1
  %i.amu = and i1 %i.ams, %i.amt                  ; 2 uses
  %i.amv = shl nuw nsw i64 %i.aeh, 2              ; 3 uses
  %i.amw = add nsw i64 %i.amv, -2
  %i.amx = zext i1 %i.amu to i64
  %i.amy = or disjoint i64 %i.amw, %i.amx
  %i.amz = or disjoint i64 %i.amv, 2
  %i.ana = mul nuw nsw i32 %i.adv, 315653
  %i.anb = add nsw i32 %i.ana, -339326975
  %.neg.i702 = select i1 %i.amu, i32 -131237, i32 0
  %i.anc = add nsw i32 %.neg.i702, %i.anb
  %i.and = ashr i32 %i.anc, 20                    ; 5 uses
  %i.ane = mul nsw i32 %i.and, -217707
  %i.anf = ashr i32 %i.ane, 16
  %i.ang = add nsw i32 %i.adv, -1074
  %i.anh = add nsw i32 %i.ang, %i.anf
  %.neg1817 = mul nsw i32 %i.and, -2
  %i.ani = sext i32 %.neg1817 to i64
  %i.anj = getelementptr [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.ani ; 2 uses
  %i.ank = getelementptr i8, ptr %i.anj, i64 5488
  %i.anl = load i64, ptr %i.ank, align 16, !tbaa !105
  %i.anm = getelementptr i8, ptr %i.anj, i64 5496
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !105
  %i.ano = add nsw i32 %i.and, -1
  %i.anp = icmp ult i32 %i.ano, -56
  %i.anq = zext i1 %i.anp to i64
  %i.anr = add i64 %i.ann, %i.anq
  %i.ans = zext i32 %i.anh to i64                 ; 3 uses
  %i.ant = shl i64 %i.amy, %i.ans
  %i.anu = zext i64 %i.ant to i128                ; 2 uses
  %i.anv = zext i64 %i.anr to i128                ; 3 uses
  %i.anw = mul nuw i128 %i.anv, %i.anu
  %i.anx = lshr i128 %i.anw, 64
  %i.any = zext i64 %i.anl to i128                ; 3 uses
  %i.anz = mul nuw i128 %i.any, %i.anu
  %i.aoa = add nuw i128 %i.anx, %i.anz            ; 2 uses
  %i.aob = lshr i128 %i.aoa, 64
  %i.aoc = trunc nuw i128 %i.aob to i64
  %i.aod = and i128 %i.aoa, 18446744073709551614
  %i.aoe = icmp ne i128 %i.aod, 0
  %i.aof = zext i1 %i.aoe to i64
  %i.aog = or i64 %i.aof, %i.aoc
  %i.aoh = shl i64 %i.amv, %i.ans
  %i.aoi = zext i64 %i.aoh to i128                ; 2 uses
  %i.aoj = mul nuw i128 %i.anv, %i.aoi
  %i.aok = lshr i128 %i.aoj, 64
  %i.aol = mul nuw i128 %i.any, %i.aoi
  %i.aom = add nuw i128 %i.aok, %i.aol            ; 2 uses
  %i.aon = lshr i128 %i.aom, 64
  %i.aoo = trunc nuw i128 %i.aon to i64           ; 5 uses
  %i.aop = and i128 %i.aom, 18446744073709551614
  %i.aoq = icmp ne i128 %i.aop, 0
  %i.aor = zext i1 %i.aoq to i64
  %i.aos = or i64 %i.aor, %i.aoo                  ; 2 uses
  %i.aot = shl i64 %i.amz, %i.ans
  %i.aou = zext i64 %i.aot to i128                ; 2 uses
  %i.aov = mul nuw i128 %i.anv, %i.aou
  %i.aow = lshr i128 %i.aov, 64
  %i.aox = mul nuw i128 %i.any, %i.aou
  %i.aoy = add nuw i128 %i.aow, %i.aox            ; 2 uses
  %i.aoz = lshr i128 %i.aoy, 64
  %i.apa = trunc nuw i128 %i.aoz to i64
  %i.apb = and i128 %i.aoy, 18446744073709551614
  %i.apc = icmp ne i128 %i.apb, 0
  %i.apd = zext i1 %i.apc to i64
  %i.ape = or i64 %i.apd, %i.apa
  %i.apf = and i64 %i.adr, 1                      ; 2 uses
  %i.apg = add i64 %i.aog, %i.apf                 ; 2 uses
  %i.aph = sub i64 %i.ape, %i.apf                 ; 2 uses
  %i.api = lshr i64 %i.aoo, 2                     ; 2 uses
  %i.apj = icmp ugt i64 %i.aoo, 39
  br i1 %i.apj, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  %i.apk = udiv i64 %i.aoo, 40                    ; 2 uses
  %i.apl = mul nuw i64 %i.apk, 40                 ; 2 uses
  %i.apm = add i64 %i.apl, 40
  %i.apn = icmp uge i64 %i.aph, %i.apm            ; 2 uses
  %i.apo = icmp ugt i64 %i.apg, %i.apl
  %.not.i705 = xor i1 %i.apo, %i.apn
  br i1 %.not.i705, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.app = zext i1 %i.apn to i64
  %i.apq = add nuw nsw i64 %i.apk, %i.app
  %i.apr = add nsw i32 %i.and, 1
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706

bb.fi:                                            ; preds = %bb.fg, %bb.ff
  %i.aps = and i64 %i.aoo, -4                     ; 3 uses
  %i.apt = add i64 %i.aps, 4
  %i.apu = icmp uge i64 %i.aph, %i.apt            ; 2 uses
  %i.apv = or disjoint i64 %i.aps, 2              ; 2 uses
  %i.apw = icmp ugt i64 %i.aos, %i.apv
  br i1 %i.apw, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.apx = icmp eq i64 %i.aos, %i.apv
  %i.apy = trunc i64 %i.api to i1
  %i.apz = and i1 %i.apx, %i.apy
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.aqa = phi i1 [ true, %bb.fi ], [ %i.apz, %bb.fj ]
  %i.aqb = icmp ugt i64 %i.apg, %i.aps
  %.not58.i703 = xor i1 %i.aqb, %i.apu
  %i.aqc = select i1 %.not58.i703, i1 %i.aqa, i1 %i.apu
  %i.aqd = zext i1 %i.aqc to i64
  %i.aqe = add nuw nsw i64 %i.api, %i.aqd
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706: ; preds = %bb.fh, %bb.fk
  %.11609 = phi i64 [ %i.aqe, %bb.fk ], [ %i.apq, %bb.fh ] ; 4 uses
  %storemerge.i704 = phi i32 [ %i.and, %bb.fk ], [ %i.apr, %bb.fh ]
  %i.aqf = icmp samesign ult i64 %.11609, 10000000000000000
  %i.aqg = select i1 %i.aqf, i32 16, i32 17
  %i.aqh = icmp samesign ult i64 %.11609, 1000000000000000
  %.neg129.i = sext i1 %i.aqh to i32
  %i.aqi = add nsw i32 %i.aqg, %.neg129.i
  %i.aqj = add nsw i32 %i.aqi, %storemerge.i704   ; 8 uses
  %i.aqk = add nsw i32 %i.aqj, 5
  %or.cond3.i = icmp ult i32 %i.aqk, 27
  %i.aql = udiv i64 %.11609, 100000000            ; 2 uses
  %i.aqm = trunc i64 %i.aql to i32                ; 2 uses
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
  %i.aqw = lshr i32 %i.aqv, 12                    ; 5 uses
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
  store i8 %i.ara, ptr %i.are, align 1, !tbaa !99
  %i.arf = icmp ne i32 %i.aqw, 0                  ; 2 uses
  %i.arg = zext i1 %i.arf to i64
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.arg ; 2 uses
  %i.ari = icmp ult i32 %i.aqx, 10
  %.not3780 = xor i1 %i.arf, true
  %i.arj = and i1 %i.ari, %.not3780               ; 2 uses
  %i.ark = shl nsw i32 %i.aqx, 1
  %i.arl = zext i32 %i.ark to i64
  %i.arm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.arl
  %.neg98.i831 = sext i1 %i.arj to i64
  %i.arn = zext i1 %i.arj to i64
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arm, i64 %i.arn
  %i.arp = load i16, ptr %i.aro, align 1
  store i16 %i.arp, ptr %i.arh, align 1
  %i.arq = getelementptr inbounds i8, ptr %i.arh, i64 %.neg98.i831 ; 10 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 2
  %i.ars = shl nsw i32 %i.aqy, 1
  %i.art = zext i32 %i.ars to i64
  %i.aru = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.art
  %i.arv = load i16, ptr %i.aru, align 2
  store i16 %i.arv, ptr %i.arr, align 1
  %.not.i832 = icmp eq i32 %i.aqo, 0
  br i1 %.not.i832, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.arw = mul i32 %i.aqq, 5243
  %i.arx = lshr i32 %i.arw, 19                    ; 2 uses
  %.neg103.i833 = mul i32 %i.arx, 2147483548
  %i.ary = add i32 %.neg103.i833, %i.aqq
  %i.arz = and i64 %i.aqn, 4294967295
  %i.asa = mul nuw nsw i64 %i.arz, 109951163
  %i.asb = lshr i64 %i.asa, 40
  %i.asc = trunc nuw nsw i64 %i.asb to i32        ; 3 uses
  %.neg104.i834 = mul i32 %i.asc, -10000
  %i.asd = add i32 %.neg104.i834, %i.aqo          ; 3 uses
  %i.ase = mul nuw i32 %i.asc, 5243
  %i.asf = lshr i32 %i.ase, 19                    ; 3 uses
  %.neg105.i835 = mul nsw i32 %i.asf, -100
  %i.asg = add nsw i32 %.neg105.i835, %i.asc      ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.arq, i64 4
  %i.asi = shl nuw nsw i32 %i.arx, 1
  %i.asj = zext nneg i32 %i.asi to i64
  %i.ask = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asj
  %i.asl = load i16, ptr %i.ask, align 2
  store i16 %i.asl, ptr %i.ash, align 1
  %i.asm = getelementptr inbounds nuw i8, ptr %i.arq, i64 6
  %i.asn = shl i32 %i.ary, 1
  %i.aso = zext i32 %i.asn to i64
  %i.asp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aso
  %i.asq = load i16, ptr %i.asp, align 2
  store i16 %i.asq, ptr %i.asm, align 1
  %i.asr = getelementptr inbounds nuw i8, ptr %i.arq, i64 8
  %i.ass = shl nuw nsw i32 %i.asf, 1
  %i.ast = zext nneg i32 %i.ass to i64
  %i.asu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ast
  %i.asv = load i16, ptr %i.asu, align 2
  store i16 %i.asv, ptr %i.asr, align 1
  %i.asw = getelementptr inbounds nuw i8, ptr %i.arq, i64 10
  %i.asx = shl nsw i32 %i.asg, 1
  %i.asy = zext i32 %i.asx to i64
  %i.asz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asy
  %i.ata = load i16, ptr %i.asz, align 2
  store i16 %i.ata, ptr %i.asw, align 1
  %.not106.i836 = icmp eq i32 %i.asd, 0
  br i1 %.not106.i836, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.atb = mul i32 %i.asd, 5243
  %i.atc = lshr i32 %i.atb, 19                    ; 3 uses
  %.neg108.i837 = mul nsw i32 %i.atc, -100
  %i.atd = add i32 %.neg108.i837, %i.asd          ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.arq, i64 12
  %i.atf = shl nuw nsw i32 %i.atc, 1
  %i.atg = zext nneg i32 %i.atf to i64
  %i.ath = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.atg
  %i.ati = load i16, ptr %i.ath, align 2
  store i16 %i.ati, ptr %i.ate, align 1
  %i.atj = getelementptr inbounds nuw i8, ptr %i.arq, i64 14
  %i.atk = shl nuw i32 %i.atd, 1
  %i.atl = zext i32 %i.atk to i64
  %i.atm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.atl
  %i.atn = load i16, ptr %i.atm, align 2
  store i16 %i.atn, ptr %i.atj, align 1
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %.sink5214.a = phi i32 [ %i.atc, %bb.fo ], [ %i.asf, %bb.fn ]
  %.sink5210 = phi i32 [ %i.atd, %bb.fo ], [ %i.asg, %bb.fn ] ; 2 uses
  %.sink = phi i64 [ 16, %bb.fo ], [ 12, %bb.fn ]
  %i.ato = zext nneg i32 %.sink5214.a to i64
  %i.atp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ato
  %i.atq = load i8, ptr %i.atp, align 1, !tbaa !99
  %i.atr = zext i8 %i.atq to i64
  %i.ats = zext i32 %.sink5210 to i64
  %i.att = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ats
  %i.atu = load i8, ptr %i.att, align 1, !tbaa !99
  %i.atv = zext i8 %i.atu to i64
  %.not107.i843 = icmp eq i32 %.sink5210, 0
  %i.atw = add nuw nsw i64 %i.atr, 2
  %i.atx = select i1 %.not107.i843, i64 %i.atw, i64 %i.atv
  %i.aty = sub nsw i64 %.sink, %i.atx
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848

bb.fq:                                            ; preds = %bb.fm
  %.not99.i844 = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i844, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.atz = mul i32 %i.aqq, 5243
  %i.aua = lshr i32 %i.atz, 19                    ; 3 uses
  %.neg101.i845 = mul nsw i32 %i.aua, -100
  %i.aub = add i32 %.neg101.i845, %i.aqq          ; 3 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.arq, i64 4
  %i.aud = shl nuw nsw i32 %i.aua, 1
  %i.aue = zext nneg i32 %i.aud to i64
  %i.auf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aue
  %i.aug = load i16, ptr %i.auf, align 2
  store i16 %i.aug, ptr %i.auc, align 1
  %i.auh = getelementptr inbounds nuw i8, ptr %i.arq, i64 6
  %i.aui = shl nuw i32 %i.aub, 1
  %i.auj = zext i32 %i.aui to i64
  %i.auk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auj
  %i.aul = load i16, ptr %i.auk, align 2
  store i16 %i.aul, ptr %i.auh, align 1
  %i.aum = zext nneg i32 %i.aua to i64
  %i.aun = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aum
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !99
  %i.aup = zext i8 %i.auo to i64
  %i.auq = zext i32 %i.aub to i64
  %i.aur = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auq
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !99
  %i.aut = zext i8 %i.aus to i64
  %.not102.i846 = icmp eq i32 %i.aub, 0
  %i.auu = add nuw nsw i64 %i.aup, 2
  %i.auv = select i1 %.not102.i846, i64 %i.auu, i64 %i.aut
  %i.auw = sub nsw i64 8, %i.auv
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848

bb.fs:                                            ; preds = %bb.fq
  %i.aux = zext i32 %i.aqx to i64
  %i.auy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aux
  %i.auz = load i8, ptr %i.auy, align 1, !tbaa !99
  %i.ava = zext i8 %i.auz to i64
  %i.avb = zext i32 %i.aqy to i64
  %i.avc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.avb
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !99
  %i.ave = zext i8 %i.avd to i64
  %.not100.i847 = icmp eq i32 %i.aqy, 0
  %i.avf = select i1 %.not100.i847, i64 %i.ava, i64 0
  %i.avg = add nuw nsw i64 %i.avf, %i.ave
  %i.avh = sub nsw i64 4, %i.avg
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848: ; preds = %bb.fp, %bb.fr, %bb.fs
  %.sink5215 = phi i64 [ %i.aty, %bb.fp ], [ %i.auw, %bb.fr ], [ %i.avh, %bb.fs ]
  %.pn.i840 = and i64 %.sink5215, 4294967295
  %.0.i841 = getelementptr inbounds nuw i8, ptr %i.arq, i64 %.pn.i840 ; 2 uses
  store i8 48, ptr %i.aee, align 1, !tbaa !99
  %i.avi = getelementptr inbounds nuw i8, ptr %i.aee, i64 1
  store i8 46, ptr %i.avi, align 1, !tbaa !99
  %i.avj = icmp slt i32 %i.aqj, 0
  br i1 %i.avj, label %.lr.ph3129.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

.lr.ph3129.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848
  %i.avk = getelementptr i8, ptr %i.aee, i64 2
  %narrow3965 = sub nsw i32 0, %i.aqj
  %i.avl = zext nneg i32 %narrow3965 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.avk, i8 48, i64 %i.avl, i1 false), !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ft:                                            ; preds = %bb.fl
  %i.avm = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aee, i8 48, i64 24, i1 false)
  store i8 %i.ara, ptr %i.avm, align 1, !tbaa !99
  %i.avn = icmp ne i32 %i.aqw, 0                  ; 2 uses
  %i.avo = zext i1 %i.avn to i64
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avm, i64 %i.avo ; 2 uses
  %i.avq = icmp ult i32 %i.aqx, 10
  %.not3779 = xor i1 %i.avn, true
  %i.avr = and i1 %i.avq, %.not3779               ; 2 uses
  %i.avs = shl nsw i32 %i.aqx, 1
  %i.avt = zext i32 %i.avs to i64
  %i.avu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.avt
  %.neg98.i853 = sext i1 %i.avr to i64
  %i.avv = zext i1 %i.avr to i64
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avu, i64 %i.avv
  %i.avx = load i16, ptr %i.avw, align 1
  store i16 %i.avx, ptr %i.avp, align 1
  %i.avy = getelementptr inbounds i8, ptr %i.avp, i64 %.neg98.i853 ; 10 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 2
  %i.awa = shl nsw i32 %i.aqy, 1
  %i.awb = zext i32 %i.awa to i64
  %i.awc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awb
  %i.awd = load i16, ptr %i.awc, align 2
  store i16 %i.awd, ptr %i.avz, align 1
  %.not.i854 = icmp eq i32 %i.aqo, 0
  br i1 %.not.i854, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.awe = mul i32 %i.aqq, 5243
  %i.awf = lshr i32 %i.awe, 19                    ; 2 uses
  %.neg103.i855 = mul i32 %i.awf, 2147483548
  %i.awg = add i32 %.neg103.i855, %i.aqq
  %i.awh = and i64 %i.aqn, 4294967295
  %i.awi = mul nuw nsw i64 %i.awh, 109951163
  %i.awj = lshr i64 %i.awi, 40
  %i.awk = trunc nuw nsw i64 %i.awj to i32        ; 3 uses
  %.neg104.i856 = mul i32 %i.awk, -10000
  %i.awl = add i32 %.neg104.i856, %i.aqo          ; 3 uses
  %i.awm = mul nuw i32 %i.awk, 5243
  %i.awn = lshr i32 %i.awm, 19                    ; 3 uses
  %.neg105.i857 = mul nsw i32 %i.awn, -100
  %i.awo = add nsw i32 %.neg105.i857, %i.awk      ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.avy, i64 4
  %i.awq = shl nuw nsw i32 %i.awf, 1
  %i.awr = zext nneg i32 %i.awq to i64
  %i.aws = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awr
  %i.awt = load i16, ptr %i.aws, align 2
  store i16 %i.awt, ptr %i.awp, align 1
  %i.awu = getelementptr inbounds nuw i8, ptr %i.avy, i64 6
  %i.awv = shl i32 %i.awg, 1
  %i.aww = zext i32 %i.awv to i64
  %i.awx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aww
  %i.awy = load i16, ptr %i.awx, align 2
  store i16 %i.awy, ptr %i.awu, align 1
  %i.awz = getelementptr inbounds nuw i8, ptr %i.avy, i64 8
  %i.axa = shl nuw nsw i32 %i.awn, 1
  %i.axb = zext nneg i32 %i.axa to i64
  %i.axc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axb
  %i.axd = load i16, ptr %i.axc, align 2
  store i16 %i.axd, ptr %i.awz, align 1
  %i.axe = getelementptr inbounds nuw i8, ptr %i.avy, i64 10
  %i.axf = shl nsw i32 %i.awo, 1
  %i.axg = zext i32 %i.axf to i64
  %i.axh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axg
  %i.axi = load i16, ptr %i.axh, align 2
  store i16 %i.axi, ptr %i.axe, align 1
  %.not106.i858 = icmp eq i32 %i.awl, 0
  br i1 %.not106.i858, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.axj = mul i32 %i.awl, 5243
  %i.axk = lshr i32 %i.axj, 19                    ; 3 uses
  %.neg108.i859 = mul nsw i32 %i.axk, -100
  %i.axl = add i32 %.neg108.i859, %i.awl          ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.avy, i64 12
  %i.axn = shl nuw nsw i32 %i.axk, 1
  %i.axo = zext nneg i32 %i.axn to i64
  %i.axp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axo
  %i.axq = load i16, ptr %i.axp, align 2
  store i16 %i.axq, ptr %i.axm, align 1
  %i.axr = getelementptr inbounds nuw i8, ptr %i.avy, i64 14
  %i.axs = shl nuw i32 %i.axl, 1
  %i.axt = zext i32 %i.axs to i64
  %i.axu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axt
  %i.axv = load i16, ptr %i.axu, align 2
  store i16 %i.axv, ptr %i.axr, align 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  %.sink5229.a = phi i32 [ %i.axk, %bb.fv ], [ %i.awn, %bb.fu ]
  %.sink5225 = phi i32 [ %i.axl, %bb.fv ], [ %i.awo, %bb.fu ] ; 2 uses
  %.sink5216 = phi i64 [ 16, %bb.fv ], [ 12, %bb.fu ]
  %i.axw = zext nneg i32 %.sink5229.a to i64
  %i.axx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.axw
  %i.axy = load i8, ptr %i.axx, align 1, !tbaa !99
  %i.axz = zext i8 %i.axy to i64
  %i.aya = zext i32 %.sink5225 to i64
  %i.ayb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aya
  %i.ayc = load i8, ptr %i.ayb, align 1, !tbaa !99
  %i.ayd = zext i8 %i.ayc to i64
  %.not107.i865 = icmp eq i32 %.sink5225, 0
  %i.aye = add nuw nsw i64 %i.axz, 2
  %i.ayf = select i1 %.not107.i865, i64 %i.aye, i64 %i.ayd
  %i.ayg = sub nsw i64 %.sink5216, %i.ayf
  br label %._crit_edge3127

bb.fx:                                            ; preds = %bb.ft
  %.not99.i866 = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i866, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ayh = mul i32 %i.aqq, 5243
  %i.ayi = lshr i32 %i.ayh, 19                    ; 3 uses
  %.neg101.i867 = mul nsw i32 %i.ayi, -100
  %i.ayj = add i32 %.neg101.i867, %i.aqq          ; 3 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.avy, i64 4
  %i.ayl = shl nuw nsw i32 %i.ayi, 1
  %i.aym = zext nneg i32 %i.ayl to i64
  %i.ayn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aym
  %i.ayo = load i16, ptr %i.ayn, align 2
  store i16 %i.ayo, ptr %i.ayk, align 1
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.avy, i64 6
  %i.ayq = shl nuw i32 %i.ayj, 1
  %i.ayr = zext i32 %i.ayq to i64
  %i.ays = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayr
  %i.ayt = load i16, ptr %i.ays, align 2
  store i16 %i.ayt, ptr %i.ayp, align 1
  %i.ayu = zext nneg i32 %i.ayi to i64
  %i.ayv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayu
  %i.ayw = load i8, ptr %i.ayv, align 1, !tbaa !99
  %i.ayx = zext i8 %i.ayw to i64
  %i.ayy = zext i32 %i.ayj to i64
  %i.ayz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayy
  %i.aza = load i8, ptr %i.ayz, align 1, !tbaa !99
  %i.azb = zext i8 %i.aza to i64
  %.not102.i868 = icmp eq i32 %i.ayj, 0
  %i.azc = add nuw nsw i64 %i.ayx, 2
  %i.azd = select i1 %.not102.i868, i64 %i.azc, i64 %i.azb
  %i.aze = sub nsw i64 8, %i.azd
  br label %._crit_edge3127

bb.fz:                                            ; preds = %bb.fx
  %i.azf = zext i32 %i.aqx to i64
  %i.azg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azf
  %i.azh = load i8, ptr %i.azg, align 1, !tbaa !99
  %i.azi = zext i8 %i.azh to i64
  %i.azj = zext i32 %i.aqy to i64
  %i.azk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azj
  %i.azl = load i8, ptr %i.azk, align 1, !tbaa !99
  %i.azm = zext i8 %i.azl to i64
  %.not100.i869 = icmp eq i32 %i.aqy, 0
  %i.azn = select i1 %.not100.i869, i64 %i.azi, i64 0
  %i.azo = add nuw nsw i64 %i.azn, %i.azm
  %i.azp = sub nsw i64 4, %i.azo
  br label %._crit_edge3127

._crit_edge3127:                                  ; preds = %bb.fw, %bb.fy, %bb.fz
  %.sink5230 = phi i64 [ %i.ayg, %bb.fw ], [ %i.aze, %bb.fy ], [ %i.azp, %bb.fz ]
  %.pn.i862 = and i64 %.sink5230, 4294967295
  %.0.i863 = getelementptr inbounds nuw i8, ptr %i.avy, i64 %.pn.i862 ; 2 uses
  %6 = getelementptr i8, ptr %i.adn, i64 %.lobit.i624
  %scevgep3718 = getelementptr i8, ptr %6, i64 1
  %i.azq = zext nneg i32 %i.aqj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aee, ptr align 1 %scevgep3718, i64 %i.azq, i1 false), !tbaa !99
  %i.azr = zext nneg i32 %i.aqj to i64
  %i.azs = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.azr ; 2 uses
  store i8 46, ptr %i.azs, align 1, !tbaa !99
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azs, i64 2 ; 2 uses
  %i.azu = icmp ult ptr %i.azt, %.0.i863
  %spec.select = select i1 %i.azu, ptr %.0.i863, ptr %i.azt
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ga:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706
  %.ptr1823 = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 3 uses
  store i8 %i.ara, ptr %.ptr1823, align 1, !tbaa !99
  %.not1828 = icmp eq i32 %i.aqw, 0               ; 2 uses
  %.add1818 = select i1 %.not1828, i64 1, i64 2   ; 2 uses
  %.ptr1824 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add1818
  %i.azv = icmp ult i32 %i.aqx, 10
  %i.azw = and i1 %.not1828, %i.azv               ; 2 uses
  %i.azx = shl nsw i32 %i.aqx, 1
  %i.azy = zext i32 %i.azx to i64
  %i.azz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.azy
  %.neg98.i875 = sext i1 %i.azw to i64
  %i.baa = zext i1 %i.azw to i64
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azz, i64 %i.baa
  %i.bac = load i16, ptr %i.bab, align 1
  store i16 %i.bac, ptr %.ptr1824, align 1
  %.add1819 = add nsw i64 %.add1818, %.neg98.i875 ; 2 uses
  %.ptr1825 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add1819 ; 9 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 2
  %i.bae = shl nsw i32 %i.aqy, 1
  %i.baf = zext i32 %i.bae to i64
  %i.bag = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.baf
  %i.bah = load i16, ptr %i.bag, align 2
  store i16 %i.bah, ptr %i.bad, align 1
  %.not.i876 = icmp eq i32 %i.aqo, 0
  br i1 %.not.i876, label %bb.ge, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.bai = mul i32 %i.aqq, 5243
  %i.baj = lshr i32 %i.bai, 19                    ; 2 uses
  %.neg103.i877 = mul i32 %i.baj, 2147483548
  %i.bak = add i32 %.neg103.i877, %i.aqq
  %i.bal = and i64 %i.aqn, 4294967295
  %i.bam = mul nuw nsw i64 %i.bal, 109951163
  %i.ban = lshr i64 %i.bam, 40
  %i.bao = trunc nuw nsw i64 %i.ban to i32        ; 3 uses
  %.neg104.i878 = mul i32 %i.bao, -10000
  %i.bap = add i32 %.neg104.i878, %i.aqo          ; 3 uses
  %i.baq = mul nuw i32 %i.bao, 5243
  %i.bar = lshr i32 %i.baq, 19                    ; 3 uses
  %.neg105.i879 = mul nsw i32 %i.bar, -100
  %i.bas = add nsw i32 %.neg105.i879, %i.bao      ; 3 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 4
  %i.bau = shl nuw nsw i32 %i.baj, 1
  %i.bav = zext nneg i32 %i.bau to i64
  %i.baw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bav
  %i.bax = load i16, ptr %i.baw, align 2
  store i16 %i.bax, ptr %i.bat, align 1
  %i.bay = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 6
  %i.baz = shl i32 %i.bak, 1
  %i.bba = zext i32 %i.baz to i64
  %i.bbb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bba
  %i.bbc = load i16, ptr %i.bbb, align 2
  store i16 %i.bbc, ptr %i.bay, align 1
  %i.bbd = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 8
  %i.bbe = shl nuw nsw i32 %i.bar, 1
  %i.bbf = zext nneg i32 %i.bbe to i64
  %i.bbg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbf
  %i.bbh = load i16, ptr %i.bbg, align 2
  store i16 %i.bbh, ptr %i.bbd, align 1
  %i.bbi = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 10
  %i.bbj = shl nsw i32 %i.bas, 1
  %i.bbk = zext i32 %i.bbj to i64
  %i.bbl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbk
  %i.bbm = load i16, ptr %i.bbl, align 2
  store i16 %i.bbm, ptr %i.bbi, align 1
  %.not106.i880 = icmp eq i32 %i.bap, 0
  br i1 %.not106.i880, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.bbn = mul i32 %i.bap, 5243
  %i.bbo = lshr i32 %i.bbn, 19                    ; 3 uses
  %.neg108.i881 = mul nsw i32 %i.bbo, -100
  %i.bbp = add i32 %.neg108.i881, %i.bap          ; 3 uses
  %i.bbq = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 12
  %i.bbr = shl nuw nsw i32 %i.bbo, 1
  %i.bbs = zext nneg i32 %i.bbr to i64
  %i.bbt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbs
  %i.bbu = load i16, ptr %i.bbt, align 2
  store i16 %i.bbu, ptr %i.bbq, align 1
  %i.bbv = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 14
  %i.bbw = shl nuw i32 %i.bbp, 1
  %i.bbx = zext i32 %i.bbw to i64
  %i.bby = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbx
  %i.bbz = load i16, ptr %i.bby, align 2
  store i16 %i.bbz, ptr %i.bbv, align 1
  %i.bca = zext nneg i32 %i.bbo to i64
  %i.bcb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bca
  %i.bcc = load i8, ptr %i.bcb, align 1, !tbaa !99
  %i.bcd = zext i8 %i.bcc to i64
  %i.bce = zext i32 %i.bbp to i64
  %i.bcf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bce
  %i.bcg = load i8, ptr %i.bcf, align 1, !tbaa !99
  %i.bch = zext i8 %i.bcg to i64
  %.not109.i882 = icmp eq i32 %i.bbp, 0
  %i.bci = add nuw nsw i64 %i.bcd, 2
  %i.bcj = select i1 %.not109.i882, i64 %i.bci, i64 %i.bch
  %i.bck = sub nsw i64 16, %i.bcj
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.gd:                                            ; preds = %bb.gb
  %i.bcl = zext nneg i32 %i.bar to i64
  %i.bcm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcl
  %i.bcn = load i8, ptr %i.bcm, align 1, !tbaa !99
  %i.bco = zext i8 %i.bcn to i64
  %i.bcp = zext i32 %i.bas to i64
  %i.bcq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcp
  %i.bcr = load i8, ptr %i.bcq, align 1, !tbaa !99
  %i.bcs = zext i8 %i.bcr to i64
  %.not107.i887 = icmp eq i32 %i.bas, 0
  %i.bct = add nuw nsw i64 %i.bco, 2
  %i.bcu = select i1 %.not107.i887, i64 %i.bct, i64 %i.bcs
  %i.bcv = sub nsw i64 12, %i.bcu
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.ge:                                            ; preds = %bb.ga
  %.not99.i888 = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i888, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.bcw = mul i32 %i.aqq, 5243
  %i.bcx = lshr i32 %i.bcw, 19                    ; 3 uses
  %.neg101.i889 = mul nsw i32 %i.bcx, -100
  %i.bcy = add i32 %.neg101.i889, %i.aqq          ; 3 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 4
  %i.bda = shl nuw nsw i32 %i.bcx, 1
  %i.bdb = zext nneg i32 %i.bda to i64
  %i.bdc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdb
  %i.bdd = load i16, ptr %i.bdc, align 2
  store i16 %i.bdd, ptr %i.bcz, align 1
  %i.bde = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 6
  %i.bdf = shl nuw i32 %i.bcy, 1
  %i.bdg = zext i32 %i.bdf to i64
  %i.bdh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdg
  %i.bdi = load i16, ptr %i.bdh, align 2
  store i16 %i.bdi, ptr %i.bde, align 1
  %i.bdj = zext nneg i32 %i.bcx to i64
  %i.bdk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdj
  %i.bdl = load i8, ptr %i.bdk, align 1, !tbaa !99
  %i.bdm = zext i8 %i.bdl to i64
  %i.bdn = zext i32 %i.bcy to i64
  %i.bdo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdn
  %i.bdp = load i8, ptr %i.bdo, align 1, !tbaa !99
  %i.bdq = zext i8 %i.bdp to i64
  %.not102.i890 = icmp eq i32 %i.bcy, 0
  %i.bdr = add nuw nsw i64 %i.bdm, 2
  %i.bds = select i1 %.not102.i890, i64 %i.bdr, i64 %i.bdq
  %i.bdt = sub nsw i64 8, %i.bds
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.gg:                                            ; preds = %bb.ge
  %i.bdu = zext i32 %i.aqx to i64
  %i.bdv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdu
  %i.bdw = load i8, ptr %i.bdv, align 1, !tbaa !99
  %i.bdx = zext i8 %i.bdw to i64
  %i.bdy = zext i32 %i.aqy to i64
  %i.bdz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdy
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !99
  %i.beb = zext i8 %i.bea to i64
  %.not100.i891 = icmp eq i32 %i.aqy, 0
  %i.bec = select i1 %.not100.i891, i64 %i.bdx, i64 0
  %i.bed = add nuw nsw i64 %i.bec, %i.beb
  %i.bee = sub nsw i64 4, %i.bed
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892: ; preds = %bb.gc, %bb.gd, %bb.gf, %bb.gg
  %.pn.i884.pn.in = phi i64 [ %i.bee, %bb.gg ], [ %i.bdt, %bb.gf ], [ %i.bck, %bb.gc ], [ %i.bcv, %bb.gd ]
  %.pn.i884.pn = and i64 %.pn.i884.pn.in, 4294967295
  %.1.i886.idx = add nuw nsw i64 %.pn.i884.pn, %.add1819 ; 2 uses
  %.1.i886.ptr = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.1.i886.idx
  %i.bef = icmp eq i64 %.1.i886.idx, 2
  %.neg130.i = sext i1 %i.bef to i64
  %i.beg = getelementptr inbounds i8, ptr %.1.i886.ptr, i64 %.neg130.i ; 2 uses
  %i.beh = add nsw i32 %i.aqj, -1                 ; 2 uses
  %i.bei = load i8, ptr %.ptr1823, align 1, !tbaa !99
  store i8 %i.bei, ptr %i.aee, align 1, !tbaa !99
  store i8 46, ptr %.ptr1823, align 1, !tbaa !99
  store i8 101, ptr %i.beg, align 1, !tbaa !99
  %i.bej = getelementptr inbounds nuw i8, ptr %i.beg, i64 1 ; 2 uses
  store i8 45, ptr %i.bej, align 1, !tbaa !99
  %.lobit.i901 = lshr i32 %i.beh, 31
  %i.bek = zext nneg i32 %.lobit.i901 to i64
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bej, i64 %i.bek ; 5 uses
  %i.bem = tail call i32 @llvm.abs.i32(i32 %i.beh, i1 true) ; 5 uses
  %i.ben = icmp samesign ult i32 %i.bem, 100
  br i1 %i.ben, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892
  %i.beo = icmp samesign ult i32 %i.bem, 10       ; 2 uses
  %i.bep = shl nuw nsw i32 %i.bem, 1
  %i.beq = zext nneg i32 %i.bep to i64
  %i.ber = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.beq
end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br label %vector.body5230

vector.body5230:                                  ; preds = %vector.body5230, %vector.ph5228
  %index5231 = phi i64 [ 0, %vector.ph5228 ], [ %index.next5236, %vector.body5230 ] ; 2 uses
  %i.abi = shl i64 %index5231, 2                  ; 2 uses
  %next.gep5232 = getelementptr i8, ptr %.018.i.i.lcssa, i64 %i.abi ; 2 uses
  %next.gep5233 = getelementptr i8, ptr %.021.i.i.lcssa, i64 %i.abi ; 2 uses
  %i.abj = getelementptr i8, ptr %next.gep5232, i64 16
  %wide.load5234 = load <4 x i32>, ptr %next.gep5232, align 1
  %wide.load5235 = load <4 x i32>, ptr %i.abj, align 1
  %i.abk = getelementptr i8, ptr %next.gep5233, i64 16
  store <4 x i32> %wide.load5234, ptr %next.gep5233, align 1
  store <4 x i32> %wide.load5235, ptr %i.abk, align 1
  %index.next5236 = add nuw i64 %index5231, 8     ; 2 uses
  %i.abl = icmp eq i64 %index.next5236, %n.vec5229
  br i1 %i.abl, label %middle.block5237, label %vector.body5230, !llvm.loop !332

middle.block5237:                                 ; preds = %vector.body5230
  %cmp.n5238 = icmp eq i64 %i.abb, %n.vec5229
  br i1 %cmp.n5238, label %.preheader1052, label %.lr.ph2352.preheader5368

.lr.ph2352.preheader5368:                         ; preds = %.lr.ph2352.preheader, %middle.block5237
  %.1.i5.i2351.ph = phi i64 [ %.0.i4.i.lcssa, %.lr.ph2352.preheader ], [ %i.abe, %middle.block5237 ]
  %.119.i.i2350.ph = phi ptr [ %.018.i.i.lcssa, %.lr.ph2352.preheader ], [ %i.abg, %middle.block5237 ]
  %.122.i.i2349.ph = phi ptr [ %.021.i.i.lcssa, %.lr.ph2352.preheader ], [ %i.abh, %middle.block5237 ]
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
  br i1 %i.abp, label %.lr.ph2345, label %.preheader1053, !llvm.loop !34

.preheader1052:                                   ; preds = %.lr.ph2352, %middle.block5237, %.preheader1053
  %.122.i.i.lcssa = phi ptr [ %.021.i.i.lcssa, %.preheader1053 ], [ %i.abh, %middle.block5237 ], [ %i.acj, %.lr.ph2352 ] ; 7 uses
  %.119.i.i.lcssa = phi ptr [ %.018.i.i.lcssa, %.preheader1053 ], [ %i.abg, %middle.block5237 ], [ %i.ack, %.lr.ph2352 ] ; 6 uses
  %.1.i5.i.lcssa = phi i64 [ %.0.i4.i.lcssa, %.preheader1053 ], [ %i.abe, %middle.block5237 ], [ %i.acl, %.lr.ph2352 ] ; 11 uses
  %.not.i6.i2356 = icmp eq i64 %.1.i5.i.lcssa, 0
  br i1 %.not.i6.i2356, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %iter.check5265

iter.check5265:                                   ; preds = %.preheader1052
  %.119.i.i.lcssa5244 = ptrtoaddr ptr %.119.i.i.lcssa to i64
  %.122.i.i.lcssa5243 = ptrtoaddr ptr %.122.i.i.lcssa to i64
  %min.iters.check5247.a = icmp ult i64 %.1.i5.i.lcssa, 4
  %i.abq = sub i64 %.119.i.i.lcssa5244, %.122.i.i.lcssa5243
  %diff.check5245 = icmp ugt i64 %i.abq, -32
  %or.cond5283.a = select i1 %min.iters.check5247.a, i1 true, i1 %diff.check5245
  br i1 %or.cond5283.a, label %.lr.ph2360.preheader, label %vector.main.loop.iter.check5248

vector.main.loop.iter.check5248:                  ; preds = %iter.check5265
  %min.iters.check5249 = icmp ult i64 %.1.i5.i.lcssa, 32
  br i1 %min.iters.check5249, label %vec.epilog.ph5269, label %vector.ph5250

vector.ph5250:                                    ; preds = %vector.main.loop.iter.check5248
  %i.abr = and i64 %.1.i5.i.lcssa, 28
  %n.vec5251 = and i64 %.1.i5.i.lcssa, -32        ; 5 uses
  %i.abs = and i64 %.1.i5.i.lcssa, 31
  %i.abt = getelementptr i8, ptr %.119.i.i.lcssa, i64 %n.vec5251
  %i.abu = getelementptr i8, ptr %.122.i.i.lcssa, i64 %n.vec5251 ; 2 uses
  br label %vector.body5252

vector.body5252:                                  ; preds = %vector.ph5250, %vector.body5252
  %index5253 = phi i64 [ 0, %vector.ph5250 ], [ %index.next5258, %vector.body5252 ] ; 3 uses
  %next.gep5254 = getelementptr i8, ptr %.119.i.i.lcssa, i64 %index5253 ; 2 uses
  %next.gep5255 = getelementptr i8, ptr %.122.i.i.lcssa, i64 %index5253 ; 2 uses
  %i.abv = getelementptr i8, ptr %next.gep5254, i64 16
  %wide.load5256 = load <16 x i8>, ptr %next.gep5254, align 1, !tbaa !99
  %wide.load5257 = load <16 x i8>, ptr %i.abv, align 1, !tbaa !99
  %i.abw = getelementptr i8, ptr %next.gep5255, i64 16
  store <16 x i8> %wide.load5256, ptr %next.gep5255, align 1, !tbaa !99
  store <16 x i8> %wide.load5257, ptr %i.abw, align 1, !tbaa !99
  %index.next5258 = add nuw i64 %index5253, 32    ; 2 uses
  %i.abx = icmp eq i64 %index.next5258, %n.vec5251
  br i1 %i.abx, label %middle.block5259, label %vector.body5252, !llvm.loop !333

middle.block5259:                                 ; preds = %vector.body5252
  %cmp.n5260 = icmp eq i64 %.1.i5.i.lcssa, %n.vec5251
  br i1 %cmp.n5260, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %vec.epilog.iter.check5267

vec.epilog.iter.check5267:                        ; preds = %middle.block5259
  %min.epilog.iters.check5268 = icmp eq i64 %i.abr, 0
  br i1 %min.epilog.iters.check5268, label %.lr.ph2360.preheader, label %vec.epilog.ph5269, !prof !154

vec.epilog.ph5269:                                ; preds = %vector.main.loop.iter.check5248, %vec.epilog.iter.check5267
  %vec.epilog.resume.val5261 = phi i64 [ %n.vec5251, %vec.epilog.iter.check5267 ], [ 0, %vector.main.loop.iter.check5248 ]
  %n.vec5270 = and i64 %.1.i5.i.lcssa, -4         ; 4 uses
  %i.aby = and i64 %.1.i5.i.lcssa, 3
  %i.abz = getelementptr i8, ptr %.119.i.i.lcssa, i64 %n.vec5270
  %i.aca = getelementptr i8, ptr %.122.i.i.lcssa, i64 %n.vec5270 ; 2 uses
  br label %vec.epilog.vector.body5271

vec.epilog.vector.body5271:                       ; preds = %vec.epilog.vector.body5271, %vec.epilog.ph5269
  %index5272 = phi i64 [ %vec.epilog.resume.val5261, %vec.epilog.ph5269 ], [ %index.next5276, %vec.epilog.vector.body5271 ] ; 3 uses
  %next.gep5273 = getelementptr i8, ptr %.119.i.i.lcssa, i64 %index5272
  %next.gep5274 = getelementptr i8, ptr %.122.i.i.lcssa, i64 %index5272
  %wide.load5275 = load <4 x i8>, ptr %next.gep5273, align 1, !tbaa !99
  store <4 x i8> %wide.load5275, ptr %next.gep5274, align 1, !tbaa !99
  %index.next5276 = add nuw i64 %index5272, 4     ; 2 uses
  %i.acb = icmp eq i64 %index.next5276, %n.vec5270
  br i1 %i.acb, label %vec.epilog.middle.block5277, label %vec.epilog.vector.body5271, !llvm.loop !334

vec.epilog.middle.block5277:                      ; preds = %vec.epilog.vector.body5271
  %cmp.n5278 = icmp eq i64 %.1.i5.i.lcssa, %n.vec5270
  br i1 %cmp.n5278, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %.lr.ph2360.preheader

.lr.ph2360.preheader:                             ; preds = %iter.check5265, %vec.epilog.iter.check5267, %vec.epilog.middle.block5277
  %.2.i.i2359.ph = phi i64 [ %.1.i5.i.lcssa, %iter.check5265 ], [ %i.abs, %vec.epilog.iter.check5267 ], [ %i.aby, %vec.epilog.middle.block5277 ] ; 4 uses
  %.220.i.i2358.ph = phi ptr [ %.119.i.i.lcssa, %iter.check5265 ], [ %i.abt, %vec.epilog.iter.check5267 ], [ %i.abz, %vec.epilog.middle.block5277 ] ; 2 uses
  %.223.i.i2357.ph = phi ptr [ %.122.i.i.lcssa, %iter.check5265 ], [ %i.abu, %vec.epilog.iter.check5267 ], [ %i.aca, %vec.epilog.middle.block5277 ] ; 2 uses
  %i.acc = add nsw i64 %.2.i.i2359.ph, -1
  %xtraiter5980 = and i64 %.2.i.i2359.ph, 7       ; 2 uses
  %lcmp.mod5981.not = icmp eq i64 %xtraiter5980, 0
  br i1 %lcmp.mod5981.not, label %.lr.ph2360.prol.loopexit, label %.lr.ph2360.prol

.lr.ph2360.prol:                                  ; preds = %.lr.ph2360.preheader, %.lr.ph2360.prol
  %.2.i.i2359.prol = phi i64 [ %i.acg, %.lr.ph2360.prol ], [ %.2.i.i2359.ph, %.lr.ph2360.preheader ]
  %.220.i.i2358.prol = phi ptr [ %i.acd, %.lr.ph2360.prol ], [ %.220.i.i2358.ph, %.lr.ph2360.preheader ] ; 2 uses
  %.223.i.i2357.prol = phi ptr [ %i.acf, %.lr.ph2360.prol ], [ %.223.i.i2357.ph, %.lr.ph2360.preheader ] ; 2 uses
  %prol.iter5982 = phi i64 [ %prol.iter5982.next, %.lr.ph2360.prol ], [ 0, %.lr.ph2360.preheader ]
  %i.acd = getelementptr inbounds nuw i8, ptr %.220.i.i2358.prol, i64 1 ; 2 uses
  %i.ace = load i8, ptr %.220.i.i2358.prol, align 1, !tbaa !99
  %i.acf = getelementptr inbounds nuw i8, ptr %.223.i.i2357.prol, i64 1 ; 3 uses
  store i8 %i.ace, ptr %.223.i.i2357.prol, align 1, !tbaa !99
  %i.acg = add nsw i64 %.2.i.i2359.prol, -1       ; 2 uses
  %prol.iter5982.next = add i64 %prol.iter5982, 1 ; 2 uses
  %prol.iter5982.cmp.not = icmp eq i64 %prol.iter5982.next, %xtraiter5980
  br i1 %prol.iter5982.cmp.not, label %.lr.ph2360.prol.loopexit, label %.lr.ph2360.prol, !llvm.loop !335

.lr.ph2360.prol.loopexit:                         ; preds = %.lr.ph2360.prol, %.lr.ph2360.preheader
  %.lcssa5367.unr = phi ptr [ poison, %.lr.ph2360.preheader ], [ %i.acf, %.lr.ph2360.prol ]
  %.2.i.i2359.unr = phi i64 [ %.2.i.i2359.ph, %.lr.ph2360.preheader ], [ %i.acg, %.lr.ph2360.prol ]
  %.220.i.i2358.unr = phi ptr [ %.220.i.i2358.ph, %.lr.ph2360.preheader ], [ %i.acd, %.lr.ph2360.prol ]
  %.223.i.i2357.unr = phi ptr [ %.223.i.i2357.ph, %.lr.ph2360.preheader ], [ %i.acf, %.lr.ph2360.prol ]
  %i.ach = icmp ult i64 %i.acc, 7
  br i1 %i.ach, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %.lr.ph2360

.lr.ph2352:                                       ; preds = %.lr.ph2352.preheader5368, %.lr.ph2352
  %.1.i5.i2351 = phi i64 [ %i.acl, %.lr.ph2352 ], [ %.1.i5.i2351.ph, %.lr.ph2352.preheader5368 ]
  %.119.i.i2350 = phi ptr [ %i.ack, %.lr.ph2352 ], [ %.119.i.i2350.ph, %.lr.ph2352.preheader5368 ] ; 2 uses
  %.122.i.i2349 = phi ptr [ %i.acj, %.lr.ph2352 ], [ %.122.i.i2349.ph, %.lr.ph2352.preheader5368 ] ; 2 uses
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
  %i.aco = load i8, ptr %.220.i.i2358, align 1, !tbaa !99
  %i.acp = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 1
  store i8 %i.aco, ptr %.223.i.i2357, align 1, !tbaa !99
  %i.acq = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 2
  %i.acr = load i8, ptr %i.acn, align 1, !tbaa !99
  %i.acs = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 2
  store i8 %i.acr, ptr %i.acp, align 1, !tbaa !99
  %i.act = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 3
  %i.acu = load i8, ptr %i.acq, align 1, !tbaa !99
  %i.acv = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 3
  store i8 %i.acu, ptr %i.acs, align 1, !tbaa !99
  %i.acw = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 4
  %i.acx = load i8, ptr %i.act, align 1, !tbaa !99
  %i.acy = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 4
  store i8 %i.acx, ptr %i.acv, align 1, !tbaa !99
  %i.acz = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 5
  %i.ada = load i8, ptr %i.acw, align 1, !tbaa !99
  %i.adb = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 5
  store i8 %i.ada, ptr %i.acy, align 1, !tbaa !99
  %i.adc = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 6
  %i.add = load i8, ptr %i.acz, align 1, !tbaa !99
  %i.ade = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 6
  store i8 %i.add, ptr %i.adb, align 1, !tbaa !99
  %i.adf = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 7
  %i.adg = load i8, ptr %i.adc, align 1, !tbaa !99
  %i.adh = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 7
  store i8 %i.adg, ptr %i.ade, align 1, !tbaa !99
  %i.adi = getelementptr inbounds nuw i8, ptr %.220.i.i2358, i64 8
  %i.adj = load i8, ptr %i.adf, align 1, !tbaa !99
  %i.adk = getelementptr inbounds nuw i8, ptr %.223.i.i2357, i64 8 ; 2 uses
  store i8 %i.adj, ptr %i.adh, align 1, !tbaa !99
  %i.adl = add nsw i64 %.2.i.i2359, -8            ; 2 uses
  %.not.i6.i.7 = icmp eq i64 %i.adl, 0
  br i1 %.not.i6.i.7, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %.lr.ph2360, !llvm.loop !337

_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i: ; preds = %.lr.ph2360.prol.loopexit, %.lr.ph2360, %middle.block5259, %vec.epilog.middle.block5277, %.preheader1052
  %.223.i.i.lcssa = phi ptr [ %.122.i.i.lcssa, %.preheader1052 ], [ %i.aca, %vec.epilog.middle.block5277 ], [ %i.abu, %middle.block5259 ], [ %.lcssa5367.unr, %.lr.ph2360.prol.loopexit ], [ %i.adk, %.lr.ph2360 ] ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.223.i.i.lcssa, i64 1
  store i8 34, ptr %.223.i.i.lcssa, align 1, !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ec:                                            ; preds = %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit.i
  %i.adn = tail call noundef ptr %.sroa.0491.0.copyload(ptr noundef %.sroa.8.0.copyload, i64 noundef 34), !inline_history !329 ; 30 uses
  %.not102.i.i = icmp eq ptr %i.adn, null
  br i1 %.not102.i.i, label %bb.ii, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ado = load i64, ptr %0, align 8, !tbaa !98   ; 2 uses
  %i.adp = and i64 %i.ado, 16
  %.not.i99.i = icmp eq i64 %i.adp, 0
  %i.adq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !99 ; 10 uses
  br i1 %.not.i99.i, label %bb.hg, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ads = and i64 %i.adr, 4503599627370495       ; 4 uses
  %i.adt = lshr i64 %i.adr, 52
  %i.adu = trunc nuw nsw i64 %i.adt to i32
  %i.adv = and i32 %i.adu, 2047                   ; 7 uses
  %i.adw = icmp eq i32 %i.adv, 2047
  br i1 %i.adw, label %bb.ef, label %bb.el, !prof !44

bb.ef:                                            ; preds = %bb.ee
  %i.adx = and i32 %2, 16
  %.not1008 = icmp eq i32 %i.adx, 0
  br i1 %.not1008, label %bb.eh, label %bb.eg, !prof !61

bb.eg:                                            ; preds = %bb.ef
  store i32 1819047278, ptr %i.adn, align 1
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adn, i64 4
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.eh:                                            ; preds = %bb.ef
  %i.adz = and i32 %2, 8
  %.not1009 = icmp eq i32 %i.adz, 0
  br i1 %.not1009, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i.thread833, label %bb.ei, !prof !61

bb.ei:                                            ; preds = %bb.eh
  %i.aea = icmp eq i64 %i.ads, 0
  br i1 %i.aea, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store i8 45, ptr %i.adn, align 1, !tbaa !99
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
  store i8 45, ptr %i.adn, align 1, !tbaa !99
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
  br i1 %.not.i121.i, label %bb.gj, label %bb.eo, !prof !44

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
  %i.akk = mul i32 %i.akh, 5243
  %i.akl = lshr i32 %i.akk, 19                    ; 2 uses
  %.neg62.i223.i = mul nsw i32 %i.akj, -100
  %i.akm = add nsw i32 %.neg62.i223.i, %i.akg
  %.neg63.i224.i = mul nsw i32 %i.akl, -100
  %i.akn = add nsw i32 %.neg63.i224.i, %i.akh
  %i.ako = icmp samesign ult i64 %i.aen, 1000000000000000 ; 2 uses
  %i.akp = shl nuw nsw i32 %i.akj, 1
  %i.akq = zext nneg i32 %i.akp to i64
  %i.akr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.akq
  %.neg64.i225.i = sext i1 %i.ako to i64
  %i.aks = zext i1 %i.ako to i64
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.aks
  %i.aku = load i16, ptr %i.akt, align 1
  store i16 %i.aku, ptr %i.aee, align 1
  %i.akv = getelementptr inbounds i8, ptr %i.aee, i64 %.neg64.i225.i ; 4 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 2
  %i.akx = shl nsw i32 %i.akm, 1
  %i.aky = zext i32 %i.akx to i64
  %i.akz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aky
  %i.ala = load i16, ptr %i.akz, align 2
  store i16 %i.ala, ptr %i.akw, align 1
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akv, i64 4
  %i.alc = shl nuw nsw i32 %i.akl, 1
  %i.ald = zext nneg i32 %i.alc to i64
  %i.ale = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ald
  %i.alf = load i16, ptr %i.ale, align 2
  store i16 %i.alf, ptr %i.alb, align 1
  %i.alg = getelementptr inbounds nuw i8, ptr %i.akv, i64 6
  %i.alh = shl nsw i32 %i.akn, 1
  %i.ali = zext i32 %i.alh to i64
  %i.alj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ali
  %i.alk = load i16, ptr %i.alj, align 2
  store i16 %i.alk, ptr %i.alg, align 1
  %i.all = getelementptr inbounds nuw i8, ptr %i.akv, i64 8
  br label %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit233.i

_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit233.i: ; preds = %bb.fe, %bb.fd, %bb.fb, %bb.ez
  %.0.i226.i = phi ptr [ %i.ail, %bb.ez ], [ %i.ajd, %bb.fb ], [ %i.akd, %bb.fd ], [ %i.all, %bb.fe ] ; 5 uses
  %i.alm = and i64 %i.aia, 4294967295
  %i.aln = mul nuw nsw i64 %i.alm, 109951163
  %i.alo = lshr i64 %i.aln, 40
  %i.alp = trunc nuw nsw i64 %i.alo to i32        ; 3 uses
  %.neg.i265.i = mul i32 %i.alp, -10000
  %i.alq = add i32 %.neg.i265.i, %i.aib           ; 2 uses
  %i.alr = mul nuw i32 %i.alp, 5243
  %i.als = lshr i32 %i.alr, 19                    ; 2 uses
  %i.alt = mul i32 %i.alq, 5243
  %i.alu = lshr i32 %i.alt, 19                    ; 2 uses
  %.neg17.i266.i = mul nsw i32 %i.als, -100
  %i.alv = add nsw i32 %.neg17.i266.i, %i.alp
  %.neg18.i267.i = mul i32 %i.alu, 2147483548
  %i.alw = add i32 %.neg18.i267.i, %i.alq
  %i.alx = shl nuw nsw i32 %i.als, 1
  %i.aly = zext nneg i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aly
  %i.ama = load i16, ptr %i.alz, align 2
  store i16 %i.ama, ptr %.0.i226.i, align 1
  %i.amb = getelementptr inbounds nuw i8, ptr %.0.i226.i, i64 2
  %i.amc = shl nsw i32 %i.alv, 1
  %i.amd = zext i32 %i.amc to i64
  %i.ame = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.amd
  %i.amf = load i16, ptr %i.ame, align 2
  store i16 %i.amf, ptr %i.amb, align 1
  %i.amg = getelementptr inbounds nuw i8, ptr %.0.i226.i, i64 4
  %i.amh = shl nuw nsw i32 %i.alu, 1
  %i.ami = zext nneg i32 %i.amh to i64
  %i.amj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ami
  %i.amk = load i16, ptr %i.amj, align 2
  store i16 %i.amk, ptr %i.amg, align 1
  %i.aml = getelementptr inbounds nuw i8, ptr %.0.i226.i, i64 6
  %i.amm = shl i32 %i.alw, 1
  %i.amn = zext i32 %i.amm to i64
  %i.amo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.amn
  %i.amp = load i16, ptr %i.amo, align 2
  store i16 %i.amp, ptr %i.aml, align 1
  %i.amq = getelementptr inbounds nuw i8, ptr %.0.i226.i, i64 8
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i

_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i: ; preds = %bb.es, %bb.eu, %bb.ew, %bb.ex, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit233.i
  %.0.i129.i = phi ptr [ %i.amq, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit233.i ], [ %i.aey, %bb.es ], [ %i.afq, %bb.eu ], [ %i.agq, %bb.ew ], [ %i.ahy, %bb.ex ] ; 2 uses
  store i16 12334, ptr %.0.i129.i, align 1
  %i.amr = getelementptr inbounds nuw i8, ptr %.0.i129.i, i64 2
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ff:                                            ; preds = %bb.ep, %bb.eo
  %i.ams = icmp eq i64 %i.ads, 0
  %i.amt = icmp ne i32 %i.adv, 1
  %i.amu = and i1 %i.ams, %i.amt                  ; 2 uses
  %i.amv = shl nuw nsw i64 %i.aeh, 2              ; 3 uses
  %i.amw = add nsw i64 %i.amv, -2
  %i.amx = zext i1 %i.amu to i64
  %i.amy = or disjoint i64 %i.amw, %i.amx
  %i.amz = or disjoint i64 %i.amv, 2
  %i.ana = mul nuw nsw i32 %i.adv, 315653
  %i.anb = add nsw i32 %i.ana, -339326975
  %.neg.i132.i = select i1 %i.amu, i32 -131237, i32 0
  %i.anc = add nsw i32 %.neg.i132.i, %i.anb
  %i.and = ashr i32 %i.anc, 20                    ; 5 uses
  %i.ane = mul nsw i32 %i.and, -217707
  %i.anf = ashr i32 %i.ane, 16
  %i.ang = add nsw i32 %i.adv, -1074
  %i.anh = add nsw i32 %i.ang, %i.anf
  %.neg996 = mul nsw i32 %i.and, -2
  %i.ani = sext i32 %.neg996 to i64
  %i.anj = getelementptr [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.ani ; 2 uses
  %i.ank = getelementptr i8, ptr %i.anj, i64 5488
  %i.anl = load i64, ptr %i.ank, align 16, !tbaa !105
  %i.anm = getelementptr i8, ptr %i.anj, i64 5496
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !105
  %i.ano = add nsw i32 %i.and, -1
  %i.anp = icmp ult i32 %i.ano, -56
  %i.anq = zext i1 %i.anp to i64
  %i.anr = add i64 %i.ann, %i.anq
  %i.ans = zext i32 %i.anh to i64                 ; 3 uses
  %i.ant = shl i64 %i.amy, %i.ans
  %i.anu = zext i64 %i.ant to i128                ; 2 uses
  %i.anv = zext i64 %i.anr to i128                ; 3 uses
  %i.anw = mul nuw i128 %i.anv, %i.anu
  %i.anx = lshr i128 %i.anw, 64
  %i.any = zext i64 %i.anl to i128                ; 3 uses
  %i.anz = mul nuw i128 %i.any, %i.anu
  %i.aoa = add nuw i128 %i.anx, %i.anz            ; 2 uses
  %i.aob = lshr i128 %i.aoa, 64
  %i.aoc = trunc nuw i128 %i.aob to i64
  %i.aod = and i128 %i.aoa, 18446744073709551614
  %i.aoe = icmp ne i128 %i.aod, 0
  %i.aof = zext i1 %i.aoe to i64
  %i.aog = or i64 %i.aof, %i.aoc
  %i.aoh = shl i64 %i.amv, %i.ans
  %i.aoi = zext i64 %i.aoh to i128                ; 2 uses
  %i.aoj = mul nuw i128 %i.anv, %i.aoi
  %i.aok = lshr i128 %i.aoj, 64
  %i.aol = mul nuw i128 %i.any, %i.aoi
  %i.aom = add nuw i128 %i.aok, %i.aol            ; 2 uses
  %i.aon = lshr i128 %i.aom, 64
  %i.aoo = trunc nuw i128 %i.aon to i64           ; 5 uses
  %i.aop = and i128 %i.aom, 18446744073709551614
  %i.aoq = icmp ne i128 %i.aop, 0
  %i.aor = zext i1 %i.aoq to i64
  %i.aos = or i64 %i.aor, %i.aoo                  ; 2 uses
  %i.aot = shl i64 %i.amz, %i.ans
  %i.aou = zext i64 %i.aot to i128                ; 2 uses
  %i.aov = mul nuw i128 %i.anv, %i.aou
  %i.aow = lshr i128 %i.aov, 64
  %i.aox = mul nuw i128 %i.any, %i.aou
  %i.aoy = add nuw i128 %i.aow, %i.aox            ; 2 uses
  %i.aoz = lshr i128 %i.aoy, 64
  %i.apa = trunc nuw i128 %i.aoz to i64
  %i.apb = and i128 %i.aoy, 18446744073709551614
  %i.apc = icmp ne i128 %i.apb, 0
  %i.apd = zext i1 %i.apc to i64
  %i.ape = or i64 %i.apd, %i.apa
  %i.apf = and i64 %i.adr, 1                      ; 2 uses
  %i.apg = add i64 %i.aog, %i.apf                 ; 2 uses
  %i.aph = sub i64 %i.ape, %i.apf                 ; 2 uses
  %i.api = lshr i64 %i.aoo, 2                     ; 2 uses
  %i.apj = icmp ugt i64 %i.aoo, 39
  br i1 %i.apj, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  %i.apk = udiv i64 %i.aoo, 40                    ; 2 uses
  %i.apl = mul nuw i64 %i.apk, 40                 ; 2 uses
  %i.apm = add i64 %i.apl, 40
  %i.apn = icmp uge i64 %i.aph, %i.apm            ; 2 uses
  %i.apo = icmp ugt i64 %i.apg, %i.apl
  %.not.i135.i = xor i1 %i.apo, %i.apn
  br i1 %.not.i135.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.app = zext i1 %i.apn to i64
  %i.apq = add nuw nsw i64 %i.apk, %i.app
  %i.apr = add nsw i32 %i.and, 1
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i

bb.fi:                                            ; preds = %bb.fg, %bb.ff
  %i.aps = and i64 %i.aoo, -4                     ; 3 uses
  %i.apt = add i64 %i.aps, 4
  %i.apu = icmp uge i64 %i.aph, %i.apt            ; 2 uses
  %i.apv = or disjoint i64 %i.aps, 2              ; 2 uses
  %i.apw = icmp ugt i64 %i.aos, %i.apv
  br i1 %i.apw, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.apx = icmp eq i64 %i.aos, %i.apv
  %i.apy = trunc i64 %i.api to i1
  %i.apz = and i1 %i.apx, %i.apy
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.aqa = phi i1 [ true, %bb.fi ], [ %i.apz, %bb.fj ]
  %i.aqb = icmp ugt i64 %i.apg, %i.aps
  %.not58.i133.i = xor i1 %i.aqb, %i.apu
  %i.aqc = select i1 %.not58.i133.i, i1 %i.aqa, i1 %i.apu
  %i.aqd = zext i1 %i.aqc to i64
  %i.aqe = add nuw nsw i64 %i.api, %i.aqd
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i: ; preds = %bb.fk, %bb.fh
  %.0775 = phi i64 [ %i.aqe, %bb.fk ], [ %i.apq, %bb.fh ] ; 4 uses
  %storemerge.i134.i = phi i32 [ %i.and, %bb.fk ], [ %i.apr, %bb.fh ]
  %i.aqf = icmp samesign ult i64 %.0775, 10000000000000000
  %i.aqg = select i1 %i.aqf, i32 16, i32 17
  %i.aqh = icmp samesign ult i64 %.0775, 1000000000000000
  %.neg129.i.i = sext i1 %i.aqh to i32
  %i.aqi = add nsw i32 %i.aqg, %.neg129.i.i
  %i.aqj = add nsw i32 %i.aqi, %storemerge.i134.i ; 8 uses
  %i.aqk = add nsw i32 %i.aqj, 5
  %or.cond3.i.i = icmp ult i32 %i.aqk, 27
  %i.aql = udiv i64 %.0775, 100000000             ; 2 uses
  %i.aqm = trunc i64 %i.aql to i32                ; 2 uses
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
  %i.aqw = lshr i32 %i.aqv, 12                    ; 5 uses
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
  store i8 %i.ara, ptr %i.are, align 1, !tbaa !99
  %i.arf = icmp ne i32 %i.aqw, 0                  ; 2 uses
  %i.arg = zext i1 %i.arf to i64
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.arg ; 2 uses
  %i.ari = icmp ult i32 %i.aqx, 10
  %.not2967 = xor i1 %i.arf, true
  %i.arj = and i1 %i.ari, %.not2967               ; 2 uses
  %i.ark = shl nsw i32 %i.aqx, 1
  %i.arl = zext i32 %i.ark to i64
  %i.arm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.arl
  %.neg98.i.i = sext i1 %i.arj to i64
  %i.arn = zext i1 %i.arj to i64
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arm, i64 %i.arn
  %i.arp = load i16, ptr %i.aro, align 1
  store i16 %i.arp, ptr %i.arh, align 1
  %i.arq = getelementptr inbounds i8, ptr %i.arh, i64 %.neg98.i.i ; 10 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 2
  %i.ars = shl nsw i32 %i.aqy, 1
  %i.art = zext i32 %i.ars to i64
  %i.aru = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.art
  %i.arv = load i16, ptr %i.aru, align 2
  store i16 %i.arv, ptr %i.arr, align 1
  %.not.i138.i = icmp eq i32 %i.aqo, 0
  br i1 %.not.i138.i, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.arw = mul i32 %i.aqq, 5243
  %i.arx = lshr i32 %i.arw, 19                    ; 2 uses
  %.neg103.i.i = mul i32 %i.arx, 2147483548
  %i.ary = add i32 %.neg103.i.i, %i.aqq
  %i.arz = and i64 %i.aqn, 4294967295
  %i.asa = mul nuw nsw i64 %i.arz, 109951163
  %i.asb = lshr i64 %i.asa, 40
  %i.asc = trunc nuw nsw i64 %i.asb to i32        ; 3 uses
  %.neg104.i.i = mul i32 %i.asc, -10000
  %i.asd = add i32 %.neg104.i.i, %i.aqo           ; 3 uses
  %i.ase = mul nuw i32 %i.asc, 5243
  %i.asf = lshr i32 %i.ase, 19                    ; 3 uses
  %.neg105.i.i = mul nsw i32 %i.asf, -100
  %i.asg = add nsw i32 %.neg105.i.i, %i.asc       ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.arq, i64 4
  %i.asi = shl nuw nsw i32 %i.arx, 1
  %i.asj = zext nneg i32 %i.asi to i64
  %i.ask = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asj
  %i.asl = load i16, ptr %i.ask, align 2
  store i16 %i.asl, ptr %i.ash, align 1
  %i.asm = getelementptr inbounds nuw i8, ptr %i.arq, i64 6
  %i.asn = shl i32 %i.ary, 1
  %i.aso = zext i32 %i.asn to i64
  %i.asp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aso
  %i.asq = load i16, ptr %i.asp, align 2
  store i16 %i.asq, ptr %i.asm, align 1
  %i.asr = getelementptr inbounds nuw i8, ptr %i.arq, i64 8
  %i.ass = shl nuw nsw i32 %i.asf, 1
  %i.ast = zext nneg i32 %i.ass to i64
  %i.asu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ast
  %i.asv = load i16, ptr %i.asu, align 2
  store i16 %i.asv, ptr %i.asr, align 1
  %i.asw = getelementptr inbounds nuw i8, ptr %i.arq, i64 10
  %i.asx = shl nsw i32 %i.asg, 1
  %i.asy = zext i32 %i.asx to i64
  %i.asz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asy
  %i.ata = load i16, ptr %i.asz, align 2
  store i16 %i.ata, ptr %i.asw, align 1
  %.not106.i139.i = icmp eq i32 %i.asd, 0
  br i1 %.not106.i139.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.atb = mul i32 %i.asd, 5243
  %i.atc = lshr i32 %i.atb, 19                    ; 3 uses
  %.neg108.i.i = mul nsw i32 %i.atc, -100
  %i.atd = add i32 %.neg108.i.i, %i.asd           ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.arq, i64 12
  %i.atf = shl nuw nsw i32 %i.atc, 1
  %i.atg = zext nneg i32 %i.atf to i64
  %i.ath = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.atg
  %i.ati = load i16, ptr %i.ath, align 2
  store i16 %i.ati, ptr %i.ate, align 1
  %i.atj = getelementptr inbounds nuw i8, ptr %i.arq, i64 14
  %i.atk = shl nuw i32 %i.atd, 1
  %i.atl = zext i32 %i.atk to i64
  %i.atm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.atl
  %i.atn = load i16, ptr %i.atm, align 2
  store i16 %i.atn, ptr %i.atj, align 1
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %.sink4403.a = phi i32 [ %i.atc, %bb.fo ], [ %i.asf, %bb.fn ]
  %.sink4399 = phi i32 [ %i.atd, %bb.fo ], [ %i.asg, %bb.fn ] ; 2 uses
  %.sink = phi i64 [ 16, %bb.fo ], [ 12, %bb.fn ]
  %i.ato = zext nneg i32 %.sink4403.a to i64
  %i.atp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ato
  %i.atq = load i8, ptr %i.atp, align 1, !tbaa !99
  %i.atr = zext i8 %i.atq to i64
  %i.ats = zext i32 %.sink4399 to i64
  %i.att = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ats
  %i.atu = load i8, ptr %i.att, align 1, !tbaa !99
  %i.atv = zext i8 %i.atu to i64
  %.not107.i143.i = icmp eq i32 %.sink4399, 0
  %i.atw = add nuw nsw i64 %i.atr, 2
  %i.atx = select i1 %.not107.i143.i, i64 %i.atw, i64 %i.atv
  %i.aty = sub nsw i64 %.sink, %i.atx
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

bb.fq:                                            ; preds = %bb.fm
  %.not99.i144.i = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i144.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.atz = mul i32 %i.aqq, 5243
  %i.aua = lshr i32 %i.atz, 19                    ; 3 uses
  %.neg101.i.i = mul nsw i32 %i.aua, -100
  %i.aub = add i32 %.neg101.i.i, %i.aqq           ; 3 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.arq, i64 4
  %i.aud = shl nuw nsw i32 %i.aua, 1
  %i.aue = zext nneg i32 %i.aud to i64
  %i.auf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aue
  %i.aug = load i16, ptr %i.auf, align 2
  store i16 %i.aug, ptr %i.auc, align 1
  %i.auh = getelementptr inbounds nuw i8, ptr %i.arq, i64 6
  %i.aui = shl nuw i32 %i.aub, 1
  %i.auj = zext i32 %i.aui to i64
  %i.auk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.auj
  %i.aul = load i16, ptr %i.auk, align 2
  store i16 %i.aul, ptr %i.auh, align 1
  %i.aum = zext nneg i32 %i.aua to i64
  %i.aun = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aum
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !99
  %i.aup = zext i8 %i.auo to i64
  %i.auq = zext i32 %i.aub to i64
  %i.aur = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auq
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !99
  %i.aut = zext i8 %i.aus to i64
  %.not102.i145.i = icmp eq i32 %i.aub, 0
  %i.auu = add nuw nsw i64 %i.aup, 2
  %i.auv = select i1 %.not102.i145.i, i64 %i.auu, i64 %i.aut
  %i.auw = sub nsw i64 8, %i.auv
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

bb.fs:                                            ; preds = %bb.fq
  %i.aux = zext i32 %i.aqx to i64
  %i.auy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aux
  %i.auz = load i8, ptr %i.auy, align 1, !tbaa !99
  %i.ava = zext i8 %i.auz to i64
  %i.avb = zext i32 %i.aqy to i64
  %i.avc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.avb
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !99
  %i.ave = zext i8 %i.avd to i64
  %.not100.i146.i = icmp eq i32 %i.aqy, 0
  %i.avf = select i1 %.not100.i146.i, i64 %i.ava, i64 0
  %i.avg = add nuw nsw i64 %i.avf, %i.ave
  %i.avh = sub nsw i64 4, %i.avg
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i: ; preds = %bb.fs, %bb.fr, %bb.fp
  %.sink4405 = phi i64 [ %i.avh, %bb.fs ], [ %i.auw, %bb.fr ], [ %i.aty, %bb.fp ]
  %i.avi = and i64 %.sink4405, 4294967295
  %i.avj = getelementptr inbounds nuw i8, ptr %i.arq, i64 %i.avi ; 2 uses
  store i8 48, ptr %i.aee, align 1, !tbaa !99
  %i.avk = getelementptr inbounds nuw i8, ptr %i.aee, i64 1
  store i8 46, ptr %i.avk, align 1, !tbaa !99
  %i.avl = icmp slt i32 %i.aqj, 0
  br i1 %i.avl, label %.lr.ph2310.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

.lr.ph2310.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i
  %i.avm = getelementptr i8, ptr %i.aee, i64 2
  %narrow3152 = sub nsw i32 0, %i.aqj
  %i.avn = zext nneg i32 %narrow3152 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.avm, i8 48, i64 %i.avn, i1 false), !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ft:                                            ; preds = %bb.fl
  %i.avo = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aee, i8 48, i64 24, i1 false)
  store i8 %i.ara, ptr %i.avo, align 1, !tbaa !99
  %i.avp = icmp ne i32 %i.aqw, 0                  ; 2 uses
  %i.avq = zext i1 %i.avp to i64
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avo, i64 %i.avq ; 2 uses
  %i.avs = icmp ult i32 %i.aqx, 10
  %.not2966 = xor i1 %i.avp, true
  %i.avt = and i1 %i.avs, %.not2966               ; 2 uses
  %i.avu = shl nsw i32 %i.aqx, 1
  %i.avv = zext i32 %i.avu to i64
  %i.avw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.avv
  %.neg98.i151.i = sext i1 %i.avt to i64
  %i.avx = zext i1 %i.avt to i64
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avw, i64 %i.avx
  %i.avz = load i16, ptr %i.avy, align 1
  store i16 %i.avz, ptr %i.avr, align 1
  %i.awa = getelementptr inbounds i8, ptr %i.avr, i64 %.neg98.i151.i ; 10 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 2
  %i.awc = shl nsw i32 %i.aqy, 1
  %i.awd = zext i32 %i.awc to i64
  %i.awe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awd
  %i.awf = load i16, ptr %i.awe, align 2
  store i16 %i.awf, ptr %i.awb, align 1
  %.not.i152.i = icmp eq i32 %i.aqo, 0
  br i1 %.not.i152.i, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.awg = mul i32 %i.aqq, 5243
  %i.awh = lshr i32 %i.awg, 19                    ; 2 uses
  %.neg103.i153.i = mul i32 %i.awh, 2147483548
  %i.awi = add i32 %.neg103.i153.i, %i.aqq
  %i.awj = and i64 %i.aqn, 4294967295
  %i.awk = mul nuw nsw i64 %i.awj, 109951163
  %i.awl = lshr i64 %i.awk, 40
  %i.awm = trunc nuw nsw i64 %i.awl to i32        ; 3 uses
  %.neg104.i154.i = mul i32 %i.awm, -10000
  %i.awn = add i32 %.neg104.i154.i, %i.aqo        ; 3 uses
  %i.awo = mul nuw i32 %i.awm, 5243
  %i.awp = lshr i32 %i.awo, 19                    ; 3 uses
  %.neg105.i155.i = mul nsw i32 %i.awp, -100
  %i.awq = add nsw i32 %.neg105.i155.i, %i.awm    ; 2 uses
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
  %.not106.i156.i = icmp eq i32 %i.awn, 0
  br i1 %.not106.i156.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.axl = mul i32 %i.awn, 5243
  %i.axm = lshr i32 %i.axl, 19                    ; 3 uses
  %.neg108.i157.i = mul nsw i32 %i.axm, -100
  %i.axn = add i32 %.neg108.i157.i, %i.awn        ; 2 uses
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
  %.sink4419.a = phi i32 [ %i.axm, %bb.fv ], [ %i.awp, %bb.fu ]
  %.sink4415 = phi i32 [ %i.axn, %bb.fv ], [ %i.awq, %bb.fu ] ; 2 uses
  %.sink4406 = phi i64 [ 16, %bb.fv ], [ 12, %bb.fu ]
  %i.axy = zext nneg i32 %.sink4419.a to i64
  %i.axz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.axy
  %i.aya = load i8, ptr %i.axz, align 1, !tbaa !99
  %i.ayb = zext i8 %i.aya to i64
  %i.ayc = zext i32 %.sink4415 to i64
  %i.ayd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayc
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !99
  %i.ayf = zext i8 %i.aye to i64
  %.not107.i163.i = icmp eq i32 %.sink4415, 0
  %i.ayg = add nuw nsw i64 %i.ayb, 2
  %i.ayh = select i1 %.not107.i163.i, i64 %i.ayg, i64 %i.ayf
  %i.ayi = sub nsw i64 %.sink4406, %i.ayh
  br label %._crit_edge2308

bb.fx:                                            ; preds = %bb.ft
  %.not99.i164.i = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i164.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ayj = mul i32 %i.aqq, 5243
  %i.ayk = lshr i32 %i.ayj, 19                    ; 3 uses
  %.neg101.i165.i = mul nsw i32 %i.ayk, -100
  %i.ayl = add i32 %.neg101.i165.i, %i.aqq        ; 3 uses
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
  %i.ayy = load i8, ptr %i.ayx, align 1, !tbaa !99
  %i.ayz = zext i8 %i.ayy to i64
  %i.aza = zext i32 %i.ayl to i64
  %i.azb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aza
  %i.azc = load i8, ptr %i.azb, align 1, !tbaa !99
  %i.azd = zext i8 %i.azc to i64
  %.not102.i166.i = icmp eq i32 %i.ayl, 0
  %i.aze = add nuw nsw i64 %i.ayz, 2
  %i.azf = select i1 %.not102.i166.i, i64 %i.aze, i64 %i.azd
  %i.azg = sub nsw i64 8, %i.azf
  br label %._crit_edge2308

bb.fz:                                            ; preds = %bb.fx
  %i.azh = zext i32 %i.aqx to i64
  %i.azi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azh
  %i.azj = load i8, ptr %i.azi, align 1, !tbaa !99
  %i.azk = zext i8 %i.azj to i64
  %i.azl = zext i32 %i.aqy to i64
  %i.azm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azl
  %i.azn = load i8, ptr %i.azm, align 1, !tbaa !99
  %i.azo = zext i8 %i.azn to i64
  %.not100.i167.i = icmp eq i32 %i.aqy, 0
  %i.azp = select i1 %.not100.i167.i, i64 %i.azk, i64 0
  %i.azq = add nuw nsw i64 %i.azp, %i.azo
  %i.azr = sub nsw i64 4, %i.azq
  br label %._crit_edge2308

._crit_edge2308:                                  ; preds = %bb.fz, %bb.fy, %bb.fw
  %.sink4421 = phi i64 [ %i.azr, %bb.fz ], [ %i.azg, %bb.fy ], [ %i.ayi, %bb.fw ]
  %i.azs = and i64 %.sink4421, 4294967295
  %i.azt = getelementptr inbounds nuw i8, ptr %i.awa, i64 %i.azs ; 2 uses
  %7 = getelementptr i8, ptr %i.adn, i64 %.lobit.i120.i
  %scevgep2901 = getelementptr i8, ptr %7, i64 1
  %i.azu = zext nneg i32 %i.aqj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aee, ptr align 1 %scevgep2901, i64 %i.azu, i1 false), !tbaa !99
  %i.azv = zext nneg i32 %i.aqj to i64
  %i.azw = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.azv ; 2 uses
  store i8 46, ptr %i.azw, align 1, !tbaa !99
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azw, i64 2 ; 2 uses
  %i.azy = icmp ult ptr %i.azx, %i.azt
  %spec.select = select i1 %i.azy, ptr %i.azt, ptr %i.azx
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ga:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i
  %.ptr1002 = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 3 uses
  store i8 %i.ara, ptr %.ptr1002, align 1, !tbaa !99
  %.not1007 = icmp eq i32 %i.aqw, 0               ; 2 uses
  %.add997 = select i1 %.not1007, i64 1, i64 2    ; 2 uses
  %.ptr1003 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add997
  %i.azz = icmp ult i32 %i.aqx, 10
  %i.baa = and i1 %.not1007, %i.azz               ; 2 uses
  %i.bab = shl nsw i32 %i.aqx, 1
  %i.bac = zext i32 %i.bab to i64
  %i.bad = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bac
  %.neg98.i173.i = sext i1 %i.baa to i64
  %i.bae = zext i1 %i.baa to i64
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bad, i64 %i.bae
  %i.bag = load i16, ptr %i.baf, align 1
  store i16 %i.bag, ptr %.ptr1003, align 1
  %.add998 = add nsw i64 %.add997, %.neg98.i173.i ; 2 uses
  %.ptr1004 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add998 ; 9 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 2
  %i.bai = shl nsw i32 %i.aqy, 1
  %i.baj = zext i32 %i.bai to i64
  %i.bak = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.baj
  %i.bal = load i16, ptr %i.bak, align 2
  store i16 %i.bal, ptr %i.bah, align 1
  %.not.i174.i = icmp eq i32 %i.aqo, 0
  br i1 %.not.i174.i, label %bb.ge, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.bam = mul i32 %i.aqq, 5243
  %i.ban = lshr i32 %i.bam, 19                    ; 2 uses
  %.neg103.i175.i = mul i32 %i.ban, 2147483548
  %i.bao = add i32 %.neg103.i175.i, %i.aqq
  %i.bap = and i64 %i.aqn, 4294967295
  %i.baq = mul nuw nsw i64 %i.bap, 109951163
  %i.bar = lshr i64 %i.baq, 40
  %i.bas = trunc nuw nsw i64 %i.bar to i32        ; 3 uses
  %.neg104.i176.i = mul i32 %i.bas, -10000
  %i.bat = add i32 %.neg104.i176.i, %i.aqo        ; 3 uses
  %i.bau = mul nuw i32 %i.bas, 5243
  %i.bav = lshr i32 %i.bau, 19                    ; 3 uses
  %.neg105.i177.i = mul nsw i32 %i.bav, -100
  %i.baw = add nsw i32 %.neg105.i177.i, %i.bas    ; 3 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 4
  %i.bay = shl nuw nsw i32 %i.ban, 1
  %i.baz = zext nneg i32 %i.bay to i64
  %i.bba = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.baz
  %i.bbb = load i16, ptr %i.bba, align 2
  store i16 %i.bbb, ptr %i.bax, align 1
  %i.bbc = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 6
  %i.bbd = shl i32 %i.bao, 1
  %i.bbe = zext i32 %i.bbd to i64
  %i.bbf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbe
  %i.bbg = load i16, ptr %i.bbf, align 2
  store i16 %i.bbg, ptr %i.bbc, align 1
  %i.bbh = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 8
  %i.bbi = shl nuw nsw i32 %i.bav, 1
  %i.bbj = zext nneg i32 %i.bbi to i64
  %i.bbk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbj
  %i.bbl = load i16, ptr %i.bbk, align 2
  store i16 %i.bbl, ptr %i.bbh, align 1
  %i.bbm = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 10
  %i.bbn = shl nsw i32 %i.baw, 1
  %i.bbo = zext i32 %i.bbn to i64
  %i.bbp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbo
  %i.bbq = load i16, ptr %i.bbp, align 2
  store i16 %i.bbq, ptr %i.bbm, align 1
  %.not106.i178.i = icmp eq i32 %i.bat, 0
  br i1 %.not106.i178.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.bbr = mul i32 %i.bat, 5243
  %i.bbs = lshr i32 %i.bbr, 19                    ; 3 uses
  %.neg108.i179.i = mul nsw i32 %i.bbs, -100
  %i.bbt = add i32 %.neg108.i179.i, %i.bat        ; 3 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 12
  %i.bbv = shl nuw nsw i32 %i.bbs, 1
  %i.bbw = zext nneg i32 %i.bbv to i64
  %i.bbx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbw
  %i.bby = load i16, ptr %i.bbx, align 2
  store i16 %i.bby, ptr %i.bbu, align 1
  %i.bbz = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 14
  %i.bca = shl nuw i32 %i.bbt, 1
  %i.bcb = zext i32 %i.bca to i64
  %i.bcc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bcb
  %i.bcd = load i16, ptr %i.bcc, align 2
  store i16 %i.bcd, ptr %i.bbz, align 1
  %i.bce = zext nneg i32 %i.bbs to i64
  %i.bcf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bce
  %i.bcg = load i8, ptr %i.bcf, align 1, !tbaa !99
  %i.bch = zext i8 %i.bcg to i64
  %i.bci = zext i32 %i.bbt to i64
  %i.bcj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bci
  %i.bck = load i8, ptr %i.bcj, align 1, !tbaa !99
  %i.bcl = zext i8 %i.bck to i64
  %.not109.i180.i = icmp eq i32 %i.bbt, 0
  %i.bcm = add nuw nsw i64 %i.bch, 2
  %i.bcn = select i1 %.not109.i180.i, i64 %i.bcm, i64 %i.bcl
  %i.bco = sub nsw i64 16, %i.bcn
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.gd:                                            ; preds = %bb.gb
  %i.bcp = zext nneg i32 %i.bav to i64
  %i.bcq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcp
  %i.bcr = load i8, ptr %i.bcq, align 1, !tbaa !99
  %i.bcs = zext i8 %i.bcr to i64
  %i.bct = zext i32 %i.baw to i64
  %i.bcu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bct
  %i.bcv = load i8, ptr %i.bcu, align 1, !tbaa !99
  %i.bcw = zext i8 %i.bcv to i64
  %.not107.i185.i = icmp eq i32 %i.baw, 0
  %i.bcx = add nuw nsw i64 %i.bcs, 2
  %i.bcy = select i1 %.not107.i185.i, i64 %i.bcx, i64 %i.bcw
  %i.bcz = sub nsw i64 12, %i.bcy
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.ge:                                            ; preds = %bb.ga
  %.not99.i186.i = icmp eq i32 %i.aqq, 0
  br i1 %.not99.i186.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.bda = mul i32 %i.aqq, 5243
  %i.bdb = lshr i32 %i.bda, 19                    ; 3 uses
  %.neg101.i187.i = mul nsw i32 %i.bdb, -100
  %i.bdc = add i32 %.neg101.i187.i, %i.aqq        ; 3 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 4
  %i.bde = shl nuw nsw i32 %i.bdb, 1
  %i.bdf = zext nneg i32 %i.bde to i64
  %i.bdg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdf
  %i.bdh = load i16, ptr %i.bdg, align 2
  store i16 %i.bdh, ptr %i.bdd, align 1
  %i.bdi = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 6
  %i.bdj = shl nuw i32 %i.bdc, 1
  %i.bdk = zext i32 %i.bdj to i64
  %i.bdl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdk
  %i.bdm = load i16, ptr %i.bdl, align 2
  store i16 %i.bdm, ptr %i.bdi, align 1
  %i.bdn = zext nneg i32 %i.bdb to i64
  %i.bdo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdn
  %i.bdp = load i8, ptr %i.bdo, align 1, !tbaa !99
  %i.bdq = zext i8 %i.bdp to i64
  %i.bdr = zext i32 %i.bdc to i64
  %i.bds = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdr
  %i.bdt = load i8, ptr %i.bds, align 1, !tbaa !99
  %i.bdu = zext i8 %i.bdt to i64
  %.not102.i188.i = icmp eq i32 %i.bdc, 0
  %i.bdv = add nuw nsw i64 %i.bdq, 2
  %i.bdw = select i1 %.not102.i188.i, i64 %i.bdv, i64 %i.bdu
  %i.bdx = sub nsw i64 8, %i.bdw
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.gg:                                            ; preds = %bb.ge
  %i.bdy = zext i32 %i.aqx to i64
  %i.bdz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdy
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !99
  %i.beb = zext i8 %i.bea to i64
  %i.bec = zext i32 %i.aqy to i64
  %i.bed = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bec
  %i.bee = load i8, ptr %i.bed, align 1, !tbaa !99
  %i.bef = zext i8 %i.bee to i64
  %.not100.i189.i = icmp eq i32 %i.aqy, 0
  %i.beg = select i1 %.not100.i189.i, i64 %i.beb, i64 0
  %i.beh = add nuw nsw i64 %i.beg, %i.bef
  %i.bei = sub nsw i64 4, %i.beh
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i: ; preds = %bb.gc, %bb.gd, %bb.gg, %bb.gf
  %.pn.i182.i.pn.in = phi i64 [ %i.bei, %bb.gg ], [ %i.bdx, %bb.gf ], [ %i.bco, %bb.gc ], [ %i.bcz, %bb.gd ]
  %.pn.i182.i.pn = and i64 %.pn.i182.i.pn.in, 4294967295
  %.1.i184.i.idx = add nuw nsw i64 %.pn.i182.i.pn, %.add998 ; 2 uses
  %.1.i184.i.ptr = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.1.i184.i.idx
  %i.bej = icmp eq i64 %.1.i184.i.idx, 2
  %.neg130.i.i = sext i1 %i.bej to i64
  %i.bek = getelementptr inbounds i8, ptr %.1.i184.i.ptr, i64 %.neg130.i.i ; 2 uses
  %i.bel = add nsw i32 %i.aqj, -1                 ; 2 uses
  %i.bem = load i8, ptr %.ptr1002, align 1, !tbaa !99
  store i8 %i.bem, ptr %i.aee, align 1, !tbaa !99
  store i8 46, ptr %.ptr1002, align 1, !tbaa !99
  store i8 101, ptr %i.bek, align 1, !tbaa !99
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bek, i64 1 ; 2 uses
  store i8 45, ptr %i.ben, align 1, !tbaa !99
  %.lobit.i191.i = lshr i32 %i.bel, 31
  %i.beo = zext nneg i32 %.lobit.i191.i to i64
  %i.bep = getelementptr inbounds nuw i8, ptr %i.ben, i64 %i.beo ; 5 uses
  %i.beq = tail call i32 @llvm.abs.i32(i32 %i.bel, i1 true) ; 5 uses
  %i.ber = icmp samesign ult i32 %i.beq, 100
  br i1 %i.ber, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i
  %i.bes = icmp samesign ult i32 %i.beq, 10       ; 2 uses
  %i.bet = shl nuw nsw i32 %i.beq, 1
  %i.beu = zext nneg i32 %i.bet to i64
  %i.bev = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.beu
end_hunk_3
