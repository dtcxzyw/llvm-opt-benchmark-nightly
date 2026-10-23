Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/yyjson?download=true
inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br label %vector.body6037

vector.body6037:                                  ; preds = %vector.body6037, %vector.ph6035
  %index6038 = phi i64 [ 0, %vector.ph6035 ], [ %index.next6043, %vector.body6037 ] ; 2 uses
  %i.abi = shl i64 %index6038, 2                  ; 2 uses
  %next.gep6039 = getelementptr i8, ptr %.018.i76.lcssa, i64 %i.abi ; 2 uses
  %next.gep6040 = getelementptr i8, ptr %.021.i75.lcssa, i64 %i.abi ; 2 uses
  %i.abj = getelementptr i8, ptr %next.gep6039, i64 16
  %wide.load6041 = load <4 x i32>, ptr %next.gep6039, align 1
  %wide.load6042 = load <4 x i32>, ptr %i.abj, align 1
  %i.abk = getelementptr i8, ptr %next.gep6040, i64 16
  store <4 x i32> %wide.load6041, ptr %next.gep6040, align 1
  store <4 x i32> %wide.load6042, ptr %i.abk, align 1
  %index.next6043 = add nuw i64 %index6038, 8     ; 2 uses
  %i.abl = icmp eq i64 %index.next6043, %n.vec6036
  br i1 %i.abl, label %middle.block6044, label %vector.body6037, !llvm.loop !295

middle.block6044:                                 ; preds = %vector.body6037
  %cmp.n6045 = icmp eq i64 %i.abb, %n.vec6036
  br i1 %cmp.n6045, label %.preheader1873, label %.lr.ph3171.preheader6179

.lr.ph3171.preheader6179:                         ; preds = %.lr.ph3171.preheader, %middle.block6044
  %.1.i803170.ph = phi i64 [ %.0.i77.lcssa, %.lr.ph3171.preheader ], [ %i.abe, %middle.block6044 ]
  %.119.i793169.ph = phi ptr [ %.018.i76.lcssa, %.lr.ph3171.preheader ], [ %i.abg, %middle.block6044 ]
  %.122.i783168.ph = phi ptr [ %.021.i75.lcssa, %.lr.ph3171.preheader ], [ %i.abh, %middle.block6044 ]
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

.preheader1873:                                   ; preds = %.lr.ph3171, %middle.block6044, %.preheader1874
  %.122.i78.lcssa = phi ptr [ %.021.i75.lcssa, %.preheader1874 ], [ %i.abh, %middle.block6044 ], [ %i.acj, %.lr.ph3171 ] ; 7 uses
  %.119.i79.lcssa = phi ptr [ %.018.i76.lcssa, %.preheader1874 ], [ %i.abg, %middle.block6044 ], [ %i.ack, %.lr.ph3171 ] ; 6 uses
  %.1.i80.lcssa = phi i64 [ %.0.i77.lcssa, %.preheader1874 ], [ %i.abe, %middle.block6044 ], [ %i.acl, %.lr.ph3171 ] ; 11 uses
  %.not.i843175 = icmp eq i64 %.1.i80.lcssa, 0
  br i1 %.not.i843175, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %iter.check6076

iter.check6076:                                   ; preds = %.preheader1873
  %.122.i78.lcssa6054 = ptrtoaddr ptr %.122.i78.lcssa to i64
  %.119.i79.lcssa6053 = ptrtoaddr ptr %.119.i79.lcssa to i64
  %min.iters.check6056 = icmp ult i64 %.1.i80.lcssa, 4
  %i.abq = sub i64 %.119.i79.lcssa6053, %.122.i78.lcssa6054
  %diff.check6058 = icmp ugt i64 %i.abq, -32
  %or.cond6094.a = select i1 %min.iters.check6056, i1 true, i1 %diff.check6058
  br i1 %or.cond6094.a, label %.lr.ph3179.preheader, label %vector.main.loop.iter.check6059

vector.main.loop.iter.check6059:                  ; preds = %iter.check6076
  %min.iters.check6060 = icmp ult i64 %.1.i80.lcssa, 32
  br i1 %min.iters.check6060, label %vec.epilog.ph6080, label %vector.ph6061

vector.ph6061:                                    ; preds = %vector.main.loop.iter.check6059
  %i.abr = and i64 %.1.i80.lcssa, 28
  %n.vec6062 = and i64 %.1.i80.lcssa, -32         ; 5 uses
  %i.abs = and i64 %.1.i80.lcssa, 31
  %i.abt = getelementptr i8, ptr %.119.i79.lcssa, i64 %n.vec6062
  %i.abu = getelementptr i8, ptr %.122.i78.lcssa, i64 %n.vec6062 ; 2 uses
  br label %vector.body6063

vector.body6063:                                  ; preds = %vector.ph6061, %vector.body6063
  %index6064 = phi i64 [ 0, %vector.ph6061 ], [ %index.next6069, %vector.body6063 ] ; 3 uses
  %next.gep6065 = getelementptr i8, ptr %.119.i79.lcssa, i64 %index6064 ; 2 uses
  %next.gep6066 = getelementptr i8, ptr %.122.i78.lcssa, i64 %index6064 ; 2 uses
  %i.abv = getelementptr i8, ptr %next.gep6065, i64 16
  %wide.load6067 = load <16 x i8>, ptr %next.gep6065, align 1, !tbaa !99
  %wide.load6068 = load <16 x i8>, ptr %i.abv, align 1, !tbaa !99
  %i.abw = getelementptr i8, ptr %next.gep6066, i64 16
  store <16 x i8> %wide.load6067, ptr %next.gep6066, align 1, !tbaa !99
  store <16 x i8> %wide.load6068, ptr %i.abw, align 1, !tbaa !99
  %index.next6069 = add nuw i64 %index6064, 32    ; 2 uses
  %i.abx = icmp eq i64 %index.next6069, %n.vec6062
  br i1 %i.abx, label %middle.block6070, label %vector.body6063, !llvm.loop !296

middle.block6070:                                 ; preds = %vector.body6063
  %cmp.n6071 = icmp eq i64 %.1.i80.lcssa, %n.vec6062
  br i1 %cmp.n6071, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %vec.epilog.iter.check6078

vec.epilog.iter.check6078:                        ; preds = %middle.block6070
  %min.epilog.iters.check6079 = icmp eq i64 %i.abr, 0
  br i1 %min.epilog.iters.check6079, label %.lr.ph3179.preheader, label %vec.epilog.ph6080, !prof !154

vec.epilog.ph6080:                                ; preds = %vector.main.loop.iter.check6059, %vec.epilog.iter.check6078
  %vec.epilog.resume.val6072 = phi i64 [ %n.vec6062, %vec.epilog.iter.check6078 ], [ 0, %vector.main.loop.iter.check6059 ]
  %n.vec6081 = and i64 %.1.i80.lcssa, -4          ; 4 uses
  %i.aby = and i64 %.1.i80.lcssa, 3
  %i.abz = getelementptr i8, ptr %.119.i79.lcssa, i64 %n.vec6081
  %i.aca = getelementptr i8, ptr %.122.i78.lcssa, i64 %n.vec6081 ; 2 uses
  br label %vec.epilog.vector.body6082

vec.epilog.vector.body6082:                       ; preds = %vec.epilog.vector.body6082, %vec.epilog.ph6080
  %index6083 = phi i64 [ %vec.epilog.resume.val6072, %vec.epilog.ph6080 ], [ %index.next6087, %vec.epilog.vector.body6082 ] ; 3 uses
  %next.gep6084 = getelementptr i8, ptr %.119.i79.lcssa, i64 %index6083
  %next.gep6085 = getelementptr i8, ptr %.122.i78.lcssa, i64 %index6083
  %wide.load6086 = load <4 x i8>, ptr %next.gep6084, align 1, !tbaa !99
  store <4 x i8> %wide.load6086, ptr %next.gep6085, align 1, !tbaa !99
  %index.next6087 = add nuw i64 %index6083, 4     ; 2 uses
  %i.acb = icmp eq i64 %index.next6087, %n.vec6081
  br i1 %i.acb, label %vec.epilog.middle.block6088, label %vec.epilog.vector.body6082, !llvm.loop !297

vec.epilog.middle.block6088:                      ; preds = %vec.epilog.vector.body6082
  %cmp.n6089 = icmp eq i64 %.1.i80.lcssa, %n.vec6081
  br i1 %cmp.n6089, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %.lr.ph3179.preheader

.lr.ph3179.preheader:                             ; preds = %iter.check6076, %vec.epilog.iter.check6078, %vec.epilog.middle.block6088
  %.2.i833178.ph = phi i64 [ %.1.i80.lcssa, %iter.check6076 ], [ %i.abs, %vec.epilog.iter.check6078 ], [ %i.aby, %vec.epilog.middle.block6088 ] ; 4 uses
  %.220.i823177.ph = phi ptr [ %.119.i79.lcssa, %iter.check6076 ], [ %i.abt, %vec.epilog.iter.check6078 ], [ %i.abz, %vec.epilog.middle.block6088 ] ; 2 uses
  %.223.i813176.ph = phi ptr [ %.122.i78.lcssa, %iter.check6076 ], [ %i.abu, %vec.epilog.iter.check6078 ], [ %i.aca, %vec.epilog.middle.block6088 ] ; 2 uses
  %i.acc = add nsw i64 %.2.i833178.ph, -1
  %xtraiter6789 = and i64 %.2.i833178.ph, 7       ; 2 uses
  %lcmp.mod6790.not = icmp eq i64 %xtraiter6789, 0
  br i1 %lcmp.mod6790.not, label %.lr.ph3179.prol.loopexit, label %.lr.ph3179.prol

.lr.ph3179.prol:                                  ; preds = %.lr.ph3179.preheader, %.lr.ph3179.prol
  %.2.i833178.prol = phi i64 [ %i.acg, %.lr.ph3179.prol ], [ %.2.i833178.ph, %.lr.ph3179.preheader ]
  %.220.i823177.prol = phi ptr [ %i.acd, %.lr.ph3179.prol ], [ %.220.i823177.ph, %.lr.ph3179.preheader ] ; 2 uses
  %.223.i813176.prol = phi ptr [ %i.acf, %.lr.ph3179.prol ], [ %.223.i813176.ph, %.lr.ph3179.preheader ] ; 2 uses
  %prol.iter6791 = phi i64 [ %prol.iter6791.next, %.lr.ph3179.prol ], [ 0, %.lr.ph3179.preheader ]
  %i.acd = getelementptr inbounds nuw i8, ptr %.220.i823177.prol, i64 1 ; 2 uses
  %i.ace = load i8, ptr %.220.i823177.prol, align 1, !tbaa !99
  %i.acf = getelementptr inbounds nuw i8, ptr %.223.i813176.prol, i64 1 ; 3 uses
  store i8 %i.ace, ptr %.223.i813176.prol, align 1, !tbaa !99
  %i.acg = add nsw i64 %.2.i833178.prol, -1       ; 2 uses
  %prol.iter6791.next = add i64 %prol.iter6791, 1 ; 2 uses
  %prol.iter6791.cmp.not = icmp eq i64 %prol.iter6791.next, %xtraiter6789
  br i1 %prol.iter6791.cmp.not, label %.lr.ph3179.prol.loopexit, label %.lr.ph3179.prol, !llvm.loop !298

.lr.ph3179.prol.loopexit:                         ; preds = %.lr.ph3179.prol, %.lr.ph3179.preheader
  %.lcssa6178.unr = phi ptr [ poison, %.lr.ph3179.preheader ], [ %i.acf, %.lr.ph3179.prol ]
  %.2.i833178.unr = phi i64 [ %.2.i833178.ph, %.lr.ph3179.preheader ], [ %i.acg, %.lr.ph3179.prol ]
  %.220.i823177.unr = phi ptr [ %.220.i823177.ph, %.lr.ph3179.preheader ], [ %i.acd, %.lr.ph3179.prol ]
  %.223.i813176.unr = phi ptr [ %.223.i813176.ph, %.lr.ph3179.preheader ], [ %i.acf, %.lr.ph3179.prol ]
  %i.ach = icmp ult i64 %i.acc, 7
  br i1 %i.ach, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85, label %.lr.ph3179

.lr.ph3171:                                       ; preds = %.lr.ph3171.preheader6179, %.lr.ph3171
  %.1.i803170 = phi i64 [ %i.acl, %.lr.ph3171 ], [ %.1.i803170.ph, %.lr.ph3171.preheader6179 ]
  %.119.i793169 = phi ptr [ %i.ack, %.lr.ph3171 ], [ %.119.i793169.ph, %.lr.ph3171.preheader6179 ] ; 2 uses
  %.122.i783168 = phi ptr [ %i.acj, %.lr.ph3171 ], [ %.122.i783168.ph, %.lr.ph3171.preheader6179 ] ; 2 uses
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

_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit85: ; preds = %.lr.ph3179.prol.loopexit, %.lr.ph3179, %middle.block6070, %vec.epilog.middle.block6088, %.preheader1873
  %.223.i81.lcssa = phi ptr [ %.122.i78.lcssa, %.preheader1873 ], [ %i.aca, %vec.epilog.middle.block6088 ], [ %i.abu, %middle.block6070 ], [ %.lcssa6178.unr, %.lr.ph3179.prol.loopexit ], [ %i.adk, %.lr.ph3179 ] ; 2 uses
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
  %i.akj = lshr i32 %i.aki, 19                    ; 2 uses
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
  %i.anr = add i64 %i.ann, %i.anq                 ; 3 uses
  %i.ans = zext i32 %i.anh to i64                 ; 3 uses
  %i.ant = shl i64 %i.amy, %i.ans                 ; 2 uses
  %i.anu = zext i64 %i.ant to i128
  %i.anv = tail call i64 @llvm.umulh.i64(i64 %i.ant, i64 %i.anr)
  %i.anw = zext i64 %i.anv to i128
  %i.anx = zext i64 %i.anl to i128                ; 3 uses
  %i.any = mul nuw i128 %i.anx, %i.anu
  %i.anz = add nuw i128 %i.any, %i.anw            ; 2 uses
  %i.aoa = lshr i128 %i.anz, 64
  %i.aob = trunc nuw i128 %i.aoa to i64
  %i.aoc = and i128 %i.anz, 18446744073709551614
  %i.aod = icmp ne i128 %i.aoc, 0
  %i.aoe = zext i1 %i.aod to i64
  %i.aof = or i64 %i.aoe, %i.aob
  %i.aog = shl i64 %i.amv, %i.ans                 ; 2 uses
  %i.aoh = zext i64 %i.aog to i128
  %i.aoi = tail call i64 @llvm.umulh.i64(i64 %i.aog, i64 %i.anr)
  %i.aoj = zext i64 %i.aoi to i128
  %i.aok = mul nuw i128 %i.anx, %i.aoh
  %i.aol = add nuw i128 %i.aok, %i.aoj            ; 2 uses
  %i.aom = lshr i128 %i.aol, 64
  %i.aon = trunc nuw i128 %i.aom to i64           ; 5 uses
  %i.aoo = and i128 %i.aol, 18446744073709551614
  %i.aop = icmp ne i128 %i.aoo, 0
  %i.aoq = zext i1 %i.aop to i64
  %i.aor = or i64 %i.aoq, %i.aon                  ; 2 uses
  %i.aos = shl i64 %i.amz, %i.ans                 ; 2 uses
  %i.aot = zext i64 %i.aos to i128
  %i.aou = tail call i64 @llvm.umulh.i64(i64 %i.aos, i64 %i.anr)
  %i.aov = zext i64 %i.aou to i128
  %i.aow = mul nuw i128 %i.anx, %i.aot
  %i.aox = add nuw i128 %i.aow, %i.aov            ; 2 uses
  %i.aoy = lshr i128 %i.aox, 64
  %i.aoz = trunc nuw i128 %i.aoy to i64
  %i.apa = and i128 %i.aox, 18446744073709551614
  %i.apb = icmp ne i128 %i.apa, 0
  %i.apc = zext i1 %i.apb to i64
  %i.apd = or i64 %i.apc, %i.aoz
  %i.ape = and i64 %i.adr, 1                      ; 2 uses
  %i.apf = add i64 %i.aof, %i.ape                 ; 2 uses
  %i.apg = sub i64 %i.apd, %i.ape                 ; 2 uses
  %i.aph = lshr i64 %i.aon, 2                     ; 2 uses
  %i.api = icmp ugt i64 %i.aon, 39
  br i1 %i.api, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  %i.apj = udiv i64 %i.aon, 40                    ; 2 uses
  %i.apk = mul nuw i64 %i.apj, 40                 ; 2 uses
  %i.apl = add i64 %i.apk, 40
  %i.apm = icmp uge i64 %i.apg, %i.apl            ; 2 uses
  %i.apn = icmp ugt i64 %i.apf, %i.apk
  %.not.i705 = xor i1 %i.apn, %i.apm
  br i1 %.not.i705, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.apo = zext i1 %i.apm to i64
  %i.app = add nuw nsw i64 %i.apj, %i.apo
  %i.apq = add nsw i32 %i.and, 1
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706

bb.fi:                                            ; preds = %bb.fg, %bb.ff
  %i.apr = and i64 %i.aon, -4                     ; 3 uses
  %i.aps = add i64 %i.apr, 4
  %i.apt = icmp uge i64 %i.apg, %i.aps            ; 2 uses
  %i.apu = or disjoint i64 %i.apr, 2              ; 2 uses
  %i.apv = icmp ugt i64 %i.aor, %i.apu
  br i1 %i.apv, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.apw = icmp eq i64 %i.aor, %i.apu
  %i.apx = trunc i64 %i.aph to i1
  %i.apy = and i1 %i.apw, %i.apx
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.apz = phi i1 [ true, %bb.fi ], [ %i.apy, %bb.fj ]
  %i.aqa = icmp ugt i64 %i.apf, %i.apr
  %.not58.i703 = xor i1 %i.aqa, %i.apt
  %i.aqb = select i1 %.not58.i703, i1 %i.apz, i1 %i.apt
  %i.aqc = zext i1 %i.aqb to i64
  %i.aqd = add nuw nsw i64 %i.aph, %i.aqc
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706: ; preds = %bb.fh, %bb.fk
  %.11609 = phi i64 [ %i.aqd, %bb.fk ], [ %i.app, %bb.fh ] ; 4 uses
  %storemerge.i704 = phi i32 [ %i.and, %bb.fk ], [ %i.apq, %bb.fh ]
  %i.aqe = icmp samesign ult i64 %.11609, 10000000000000000
  %i.aqf = select i1 %i.aqe, i32 16, i32 17
  %i.aqg = icmp samesign ult i64 %.11609, 1000000000000000
  %.neg129.i = sext i1 %i.aqg to i32
  %i.aqh = add nsw i32 %i.aqf, %.neg129.i
  %i.aqi = add nsw i32 %i.aqh, %storemerge.i704   ; 8 uses
  %i.aqj = add nsw i32 %i.aqi, 5
  %or.cond3.i = icmp ult i32 %i.aqj, 27
  %i.aqk = udiv i64 %.11609, 100000000            ; 2 uses
  %i.aql = trunc i64 %i.aqk to i32                ; 2 uses
  %.neg.i827 = mul i64 %i.aqk, 4194967296
  %i.aqm = add i64 %.neg.i827, %.11609            ; 4 uses
  %i.aqn = trunc i64 %i.aqm to i32                ; 6 uses
  %i.aqo = udiv i32 %i.aql, 10000                 ; 3 uses
  %.neg95.i828 = mul i32 %i.aqo, -10000
  %i.aqp = add i32 %.neg95.i828, %i.aql           ; 15 uses
  %i.aqq = zext nneg i32 %i.aqo to i64
  %i.aqr = mul nuw nsw i64 %i.aqq, 167773
  %i.aqs = lshr i64 %i.aqr, 24
  %i.aqt = trunc nuw nsw i64 %i.aqs to i32        ; 3 uses
  %i.aqu = mul nuw nsw i32 %i.aqt, 41
  %i.aqv = lshr i32 %i.aqu, 12                    ; 5 uses
  %.neg96.i829 = mul nsw i32 %i.aqv, -100
  %i.aqw = add nsw i32 %.neg96.i829, %i.aqt       ; 9 uses
  %.neg97.i830 = mul nsw i32 %i.aqt, -100
  %i.aqx = add nsw i32 %.neg97.i830, %i.aqo       ; 9 uses
  %i.aqy = trunc nuw nsw i32 %i.aqv to i8
  %i.aqz = add nuw nsw i8 %i.aqy, 48              ; 3 uses
  br i1 %or.cond3.i, label %bb.fl, label %bb.ga

bb.fl:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706
  %i.ara = icmp slt i32 %i.aqi, 1
  br i1 %i.ara, label %bb.fm, label %bb.ft

bb.fm:                                            ; preds = %bb.fl
  %i.arb = sub nsw i32 2, %i.aqi
  %i.arc = zext nneg i32 %i.arb to i64
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.arc ; 2 uses
  store i8 %i.aqz, ptr %i.ard, align 1, !tbaa !99
  %i.are = icmp ne i32 %i.aqv, 0                  ; 2 uses
  %i.arf = zext i1 %i.are to i64
  %i.arg = getelementptr inbounds nuw i8, ptr %i.ard, i64 %i.arf ; 2 uses
  %i.arh = icmp ult i32 %i.aqw, 10
  %.not3780 = xor i1 %i.are, true
  %i.ari = and i1 %i.arh, %.not3780               ; 2 uses
  %i.arj = shl nsw i32 %i.aqw, 1
  %i.ark = zext i32 %i.arj to i64
  %i.arl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ark
  %.neg98.i831 = sext i1 %i.ari to i64
  %i.arm = zext i1 %i.ari to i64
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arl, i64 %i.arm
  %i.aro = load i16, ptr %i.arn, align 1
  store i16 %i.aro, ptr %i.arg, align 1
  %i.arp = getelementptr inbounds i8, ptr %i.arg, i64 %.neg98.i831 ; 10 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 2
  %i.arr = shl nsw i32 %i.aqx, 1
  %i.ars = zext i32 %i.arr to i64
  %i.art = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ars
  %i.aru = load i16, ptr %i.art, align 2
  store i16 %i.aru, ptr %i.arq, align 1
  %.not.i832 = icmp eq i32 %i.aqn, 0
  br i1 %.not.i832, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.arv = mul i32 %i.aqp, 5243
  %i.arw = lshr i32 %i.arv, 19                    ; 2 uses
  %.neg103.i833 = mul i32 %i.arw, 2147483548
  %i.arx = add i32 %.neg103.i833, %i.aqp
  %i.ary = and i64 %i.aqm, 4294967295
  %i.arz = mul nuw nsw i64 %i.ary, 109951163
  %i.asa = lshr i64 %i.arz, 40
  %i.asb = trunc nuw nsw i64 %i.asa to i32        ; 3 uses
  %.neg104.i834 = mul i32 %i.asb, -10000
  %i.asc = add i32 %.neg104.i834, %i.aqn          ; 3 uses
  %i.asd = mul nuw i32 %i.asb, 5243
  %i.ase = lshr i32 %i.asd, 19                    ; 3 uses
  %.neg105.i835 = mul nsw i32 %i.ase, -100
  %i.asf = add nsw i32 %.neg105.i835, %i.asb      ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arp, i64 4
  %i.ash = shl nuw nsw i32 %i.arw, 1
  %i.asi = zext nneg i32 %i.ash to i64
  %i.asj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asi
  %i.ask = load i16, ptr %i.asj, align 2
  store i16 %i.ask, ptr %i.asg, align 1
  %i.asl = getelementptr inbounds nuw i8, ptr %i.arp, i64 6
  %i.asm = shl i32 %i.arx, 1
  %i.asn = zext i32 %i.asm to i64
  %i.aso = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asn
  %i.asp = load i16, ptr %i.aso, align 2
  store i16 %i.asp, ptr %i.asl, align 1
  %i.asq = getelementptr inbounds nuw i8, ptr %i.arp, i64 8
  %i.asr = shl nuw nsw i32 %i.ase, 1
  %i.ass = zext nneg i32 %i.asr to i64
  %i.ast = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ass
  %i.asu = load i16, ptr %i.ast, align 2
  store i16 %i.asu, ptr %i.asq, align 1
  %i.asv = getelementptr inbounds nuw i8, ptr %i.arp, i64 10
  %i.asw = shl nsw i32 %i.asf, 1
  %i.asx = zext i32 %i.asw to i64
  %i.asy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asx
  %i.asz = load i16, ptr %i.asy, align 2
  store i16 %i.asz, ptr %i.asv, align 1
  %.not106.i836 = icmp eq i32 %i.asc, 0
  br i1 %.not106.i836, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ata = mul i32 %i.asc, 5243
  %i.atb = lshr i32 %i.ata, 19                    ; 3 uses
  %.neg108.i837 = mul nsw i32 %i.atb, -100
  %i.atc = add i32 %.neg108.i837, %i.asc          ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.arp, i64 12
  %i.ate = shl nuw nsw i32 %i.atb, 1
  %i.atf = zext nneg i32 %i.ate to i64
  %i.atg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.atf
  %i.ath = load i16, ptr %i.atg, align 2
  store i16 %i.ath, ptr %i.atd, align 1
  %i.ati = getelementptr inbounds nuw i8, ptr %i.arp, i64 14
  %i.atj = shl nuw i32 %i.atc, 1
  %i.atk = zext i32 %i.atj to i64
  %i.atl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.atk
  %i.atm = load i16, ptr %i.atl, align 2
  store i16 %i.atm, ptr %i.ati, align 1
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %.sink5214.a = phi i32 [ %i.atb, %bb.fo ], [ %i.ase, %bb.fn ]
  %.sink5210 = phi i32 [ %i.atc, %bb.fo ], [ %i.asf, %bb.fn ] ; 2 uses
  %.sink = phi i64 [ 16, %bb.fo ], [ 12, %bb.fn ]
  %i.atn = zext nneg i32 %.sink5214.a to i64
  %i.ato = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.atn
  %i.atp = load i8, ptr %i.ato, align 1, !tbaa !99
  %i.atq = zext i8 %i.atp to i64
  %i.atr = zext i32 %.sink5210 to i64
  %i.ats = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.atr
  %i.att = load i8, ptr %i.ats, align 1, !tbaa !99
  %i.atu = zext i8 %i.att to i64
  %.not107.i843 = icmp eq i32 %.sink5210, 0
  %i.atv = add nuw nsw i64 %i.atq, 2
  %i.atw = select i1 %.not107.i843, i64 %i.atv, i64 %i.atu
  %i.atx = sub nsw i64 %.sink, %i.atw
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848

bb.fq:                                            ; preds = %bb.fm
  %.not99.i844 = icmp eq i32 %i.aqp, 0
  br i1 %.not99.i844, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aty = mul i32 %i.aqp, 5243
  %i.atz = lshr i32 %i.aty, 19                    ; 3 uses
  %.neg101.i845 = mul nsw i32 %i.atz, -100
  %i.aua = add i32 %.neg101.i845, %i.aqp          ; 3 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %i.arp, i64 4
  %i.auc = shl nuw nsw i32 %i.atz, 1
  %i.aud = zext nneg i32 %i.auc to i64
  %i.aue = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aud
  %i.auf = load i16, ptr %i.aue, align 2
  store i16 %i.auf, ptr %i.aub, align 1
  %i.aug = getelementptr inbounds nuw i8, ptr %i.arp, i64 6
  %i.auh = shl nuw i32 %i.aua, 1
  %i.aui = zext i32 %i.auh to i64
  %i.auj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aui
  %i.auk = load i16, ptr %i.auj, align 2
  store i16 %i.auk, ptr %i.aug, align 1
  %i.aul = zext nneg i32 %i.atz to i64
  %i.aum = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aul
  %i.aun = load i8, ptr %i.aum, align 1, !tbaa !99
  %i.auo = zext i8 %i.aun to i64
  %i.aup = zext i32 %i.aua to i64
  %i.auq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aup
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !99
  %i.aus = zext i8 %i.aur to i64
  %.not102.i846 = icmp eq i32 %i.aua, 0
  %i.aut = add nuw nsw i64 %i.auo, 2
  %i.auu = select i1 %.not102.i846, i64 %i.aut, i64 %i.aus
  %i.auv = sub nsw i64 8, %i.auu
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848

bb.fs:                                            ; preds = %bb.fq
  %i.auw = zext i32 %i.aqw to i64
  %i.aux = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auw
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !99
  %i.auz = zext i8 %i.auy to i64
  %i.ava = zext i32 %i.aqx to i64
  %i.avb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ava
  %i.avc = load i8, ptr %i.avb, align 1, !tbaa !99
  %i.avd = zext i8 %i.avc to i64
  %.not100.i847 = icmp eq i32 %i.aqx, 0
  %i.ave = select i1 %.not100.i847, i64 %i.auz, i64 0
  %i.avf = add nuw nsw i64 %i.ave, %i.avd
  %i.avg = sub nsw i64 4, %i.avf
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848: ; preds = %bb.fp, %bb.fr, %bb.fs
  %.sink5215 = phi i64 [ %i.atx, %bb.fp ], [ %i.auv, %bb.fr ], [ %i.avg, %bb.fs ]
  %.pn.i840 = and i64 %.sink5215, 4294967295
  %.0.i841 = getelementptr inbounds nuw i8, ptr %i.arp, i64 %.pn.i840 ; 2 uses
  store i8 48, ptr %i.aee, align 1, !tbaa !99
  %i.avh = getelementptr inbounds nuw i8, ptr %i.aee, i64 1
  store i8 46, ptr %i.avh, align 1, !tbaa !99
  %i.avi = icmp slt i32 %i.aqi, 0
  br i1 %i.avi, label %.lr.ph3129.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

.lr.ph3129.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit848
  %i.avj = getelementptr i8, ptr %i.aee, i64 2
  %narrow3965 = sub nsw i32 0, %i.aqi
  %i.avk = zext nneg i32 %narrow3965 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.avj, i8 48, i64 %i.avk, i1 false), !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ft:                                            ; preds = %bb.fl
  %i.avl = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aee, i8 48, i64 24, i1 false)
  store i8 %i.aqz, ptr %i.avl, align 1, !tbaa !99
  %i.avm = icmp ne i32 %i.aqv, 0                  ; 2 uses
  %i.avn = zext i1 %i.avm to i64
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avl, i64 %i.avn ; 2 uses
  %i.avp = icmp ult i32 %i.aqw, 10
  %.not3779 = xor i1 %i.avm, true
  %i.avq = and i1 %i.avp, %.not3779               ; 2 uses
  %i.avr = shl nsw i32 %i.aqw, 1
  %i.avs = zext i32 %i.avr to i64
  %i.avt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.avs
  %.neg98.i853 = sext i1 %i.avq to i64
  %i.avu = zext i1 %i.avq to i64
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avt, i64 %i.avu
  %i.avw = load i16, ptr %i.avv, align 1
  store i16 %i.avw, ptr %i.avo, align 1
  %i.avx = getelementptr inbounds i8, ptr %i.avo, i64 %.neg98.i853 ; 10 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 2
  %i.avz = shl nsw i32 %i.aqx, 1
  %i.awa = zext i32 %i.avz to i64
  %i.awb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awa
  %i.awc = load i16, ptr %i.awb, align 2
  store i16 %i.awc, ptr %i.avy, align 1
  %.not.i854 = icmp eq i32 %i.aqn, 0
  br i1 %.not.i854, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.awd = mul i32 %i.aqp, 5243
  %i.awe = lshr i32 %i.awd, 19                    ; 2 uses
  %.neg103.i855 = mul i32 %i.awe, 2147483548
  %i.awf = add i32 %.neg103.i855, %i.aqp
  %i.awg = and i64 %i.aqm, 4294967295
  %i.awh = mul nuw nsw i64 %i.awg, 109951163
  %i.awi = lshr i64 %i.awh, 40
  %i.awj = trunc nuw nsw i64 %i.awi to i32        ; 3 uses
  %.neg104.i856 = mul i32 %i.awj, -10000
  %i.awk = add i32 %.neg104.i856, %i.aqn          ; 3 uses
  %i.awl = mul nuw i32 %i.awj, 5243
  %i.awm = lshr i32 %i.awl, 19                    ; 3 uses
  %.neg105.i857 = mul nsw i32 %i.awm, -100
  %i.awn = add nsw i32 %.neg105.i857, %i.awj      ; 2 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %i.avx, i64 4
  %i.awp = shl nuw nsw i32 %i.awe, 1
  %i.awq = zext nneg i32 %i.awp to i64
  %i.awr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awq
  %i.aws = load i16, ptr %i.awr, align 2
  store i16 %i.aws, ptr %i.awo, align 1
  %i.awt = getelementptr inbounds nuw i8, ptr %i.avx, i64 6
  %i.awu = shl i32 %i.awf, 1
  %i.awv = zext i32 %i.awu to i64
  %i.aww = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awv
  %i.awx = load i16, ptr %i.aww, align 2
  store i16 %i.awx, ptr %i.awt, align 1
  %i.awy = getelementptr inbounds nuw i8, ptr %i.avx, i64 8
  %i.awz = shl nuw nsw i32 %i.awm, 1
  %i.axa = zext nneg i32 %i.awz to i64
  %i.axb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axa
  %i.axc = load i16, ptr %i.axb, align 2
  store i16 %i.axc, ptr %i.awy, align 1
  %i.axd = getelementptr inbounds nuw i8, ptr %i.avx, i64 10
  %i.axe = shl nsw i32 %i.awn, 1
  %i.axf = zext i32 %i.axe to i64
  %i.axg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axf
  %i.axh = load i16, ptr %i.axg, align 2
  store i16 %i.axh, ptr %i.axd, align 1
  %.not106.i858 = icmp eq i32 %i.awk, 0
  br i1 %.not106.i858, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.axi = mul i32 %i.awk, 5243
  %i.axj = lshr i32 %i.axi, 19                    ; 3 uses
  %.neg108.i859 = mul nsw i32 %i.axj, -100
  %i.axk = add i32 %.neg108.i859, %i.awk          ; 2 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.avx, i64 12
  %i.axm = shl nuw nsw i32 %i.axj, 1
  %i.axn = zext nneg i32 %i.axm to i64
  %i.axo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axn
  %i.axp = load i16, ptr %i.axo, align 2
  store i16 %i.axp, ptr %i.axl, align 1
  %i.axq = getelementptr inbounds nuw i8, ptr %i.avx, i64 14
  %i.axr = shl nuw i32 %i.axk, 1
  %i.axs = zext i32 %i.axr to i64
  %i.axt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axs
  %i.axu = load i16, ptr %i.axt, align 2
  store i16 %i.axu, ptr %i.axq, align 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  %.sink5229.a = phi i32 [ %i.axj, %bb.fv ], [ %i.awm, %bb.fu ]
  %.sink5225 = phi i32 [ %i.axk, %bb.fv ], [ %i.awn, %bb.fu ] ; 2 uses
  %.sink5216 = phi i64 [ 16, %bb.fv ], [ 12, %bb.fu ]
  %i.axv = zext nneg i32 %.sink5229.a to i64
  %i.axw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.axv
  %i.axx = load i8, ptr %i.axw, align 1, !tbaa !99
  %i.axy = zext i8 %i.axx to i64
  %i.axz = zext i32 %.sink5225 to i64
  %i.aya = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.axz
  %i.ayb = load i8, ptr %i.aya, align 1, !tbaa !99
  %i.ayc = zext i8 %i.ayb to i64
  %.not107.i865 = icmp eq i32 %.sink5225, 0
  %i.ayd = add nuw nsw i64 %i.axy, 2
  %i.aye = select i1 %.not107.i865, i64 %i.ayd, i64 %i.ayc
  %i.ayf = sub nsw i64 %.sink5216, %i.aye
  br label %._crit_edge3127

bb.fx:                                            ; preds = %bb.ft
  %.not99.i866 = icmp eq i32 %i.aqp, 0
  br i1 %.not99.i866, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ayg = mul i32 %i.aqp, 5243
  %i.ayh = lshr i32 %i.ayg, 19                    ; 3 uses
  %.neg101.i867 = mul nsw i32 %i.ayh, -100
  %i.ayi = add i32 %.neg101.i867, %i.aqp          ; 3 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.avx, i64 4
  %i.ayk = shl nuw nsw i32 %i.ayh, 1
  %i.ayl = zext nneg i32 %i.ayk to i64
  %i.aym = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayl
  %i.ayn = load i16, ptr %i.aym, align 2
  store i16 %i.ayn, ptr %i.ayj, align 1
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.avx, i64 6
  %i.ayp = shl nuw i32 %i.ayi, 1
  %i.ayq = zext i32 %i.ayp to i64
  %i.ayr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayq
  %i.ays = load i16, ptr %i.ayr, align 2
  store i16 %i.ays, ptr %i.ayo, align 1
  %i.ayt = zext nneg i32 %i.ayh to i64
  %i.ayu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayt
  %i.ayv = load i8, ptr %i.ayu, align 1, !tbaa !99
  %i.ayw = zext i8 %i.ayv to i64
  %i.ayx = zext i32 %i.ayi to i64
  %i.ayy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayx
  %i.ayz = load i8, ptr %i.ayy, align 1, !tbaa !99
  %i.aza = zext i8 %i.ayz to i64
  %.not102.i868 = icmp eq i32 %i.ayi, 0
  %i.azb = add nuw nsw i64 %i.ayw, 2
  %i.azc = select i1 %.not102.i868, i64 %i.azb, i64 %i.aza
  %i.azd = sub nsw i64 8, %i.azc
  br label %._crit_edge3127

bb.fz:                                            ; preds = %bb.fx
  %i.aze = zext i32 %i.aqw to i64
  %i.azf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aze
  %i.azg = load i8, ptr %i.azf, align 1, !tbaa !99
  %i.azh = zext i8 %i.azg to i64
  %i.azi = zext i32 %i.aqx to i64
  %i.azj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azi
  %i.azk = load i8, ptr %i.azj, align 1, !tbaa !99
  %i.azl = zext i8 %i.azk to i64
  %.not100.i869 = icmp eq i32 %i.aqx, 0
  %i.azm = select i1 %.not100.i869, i64 %i.azh, i64 0
  %i.azn = add nuw nsw i64 %i.azm, %i.azl
  %i.azo = sub nsw i64 4, %i.azn
  br label %._crit_edge3127

._crit_edge3127:                                  ; preds = %bb.fw, %bb.fy, %bb.fz
  %.sink5230 = phi i64 [ %i.ayf, %bb.fw ], [ %i.azd, %bb.fy ], [ %i.azo, %bb.fz ]
  %.pn.i862 = and i64 %.sink5230, 4294967295
  %.0.i863 = getelementptr inbounds nuw i8, ptr %i.avx, i64 %.pn.i862 ; 2 uses
  %6 = getelementptr i8, ptr %i.adn, i64 %.lobit.i624
  %scevgep3718 = getelementptr i8, ptr %6, i64 1
  %i.azp = zext nneg i32 %i.aqi to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aee, ptr align 1 %scevgep3718, i64 %i.azp, i1 false), !tbaa !99
  %i.azq = zext nneg i32 %i.aqi to i64
  %i.azr = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.azq ; 2 uses
  store i8 46, ptr %i.azr, align 1, !tbaa !99
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 2 ; 2 uses
  %i.azt = icmp ult ptr %i.azs, %.0.i863
  %spec.select = select i1 %i.azt, ptr %.0.i863, ptr %i.azs
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit540

bb.ga:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit706
  %.ptr1823 = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 3 uses
  store i8 %i.aqz, ptr %.ptr1823, align 1, !tbaa !99
  %.not1828 = icmp eq i32 %i.aqv, 0               ; 2 uses
  %.add1818 = select i1 %.not1828, i64 1, i64 2   ; 2 uses
  %.ptr1824 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add1818
  %i.azu = icmp ult i32 %i.aqw, 10
  %i.azv = and i1 %.not1828, %i.azu               ; 2 uses
  %i.azw = shl nsw i32 %i.aqw, 1
  %i.azx = zext i32 %i.azw to i64
  %i.azy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.azx
  %.neg98.i875 = sext i1 %i.azv to i64
  %i.azz = zext i1 %i.azv to i64
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azy, i64 %i.azz
  %i.bab = load i16, ptr %i.baa, align 1
  store i16 %i.bab, ptr %.ptr1824, align 1
  %.add1819 = add nsw i64 %.add1818, %.neg98.i875 ; 2 uses
  %.ptr1825 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add1819 ; 9 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 2
  %i.bad = shl nsw i32 %i.aqx, 1
  %i.bae = zext i32 %i.bad to i64
  %i.baf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bae
  %i.bag = load i16, ptr %i.baf, align 2
  store i16 %i.bag, ptr %i.bac, align 1
  %.not.i876 = icmp eq i32 %i.aqn, 0
  br i1 %.not.i876, label %bb.ge, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.bah = mul i32 %i.aqp, 5243
  %i.bai = lshr i32 %i.bah, 19                    ; 2 uses
  %.neg103.i877 = mul i32 %i.bai, 2147483548
  %i.baj = add i32 %.neg103.i877, %i.aqp
  %i.bak = and i64 %i.aqm, 4294967295
  %i.bal = mul nuw nsw i64 %i.bak, 109951163
  %i.bam = lshr i64 %i.bal, 40
  %i.ban = trunc nuw nsw i64 %i.bam to i32        ; 3 uses
  %.neg104.i878 = mul i32 %i.ban, -10000
  %i.bao = add i32 %.neg104.i878, %i.aqn          ; 3 uses
  %i.bap = mul nuw i32 %i.ban, 5243
  %i.baq = lshr i32 %i.bap, 19                    ; 3 uses
  %.neg105.i879 = mul nsw i32 %i.baq, -100
  %i.bar = add nsw i32 %.neg105.i879, %i.ban      ; 3 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 4
  %i.bat = shl nuw nsw i32 %i.bai, 1
  %i.bau = zext nneg i32 %i.bat to i64
  %i.bav = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bau
  %i.baw = load i16, ptr %i.bav, align 2
  store i16 %i.baw, ptr %i.bas, align 1
  %i.bax = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 6
  %i.bay = shl i32 %i.baj, 1
  %i.baz = zext i32 %i.bay to i64
  %i.bba = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.baz
  %i.bbb = load i16, ptr %i.bba, align 2
  store i16 %i.bbb, ptr %i.bax, align 1
  %i.bbc = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 8
  %i.bbd = shl nuw nsw i32 %i.baq, 1
  %i.bbe = zext nneg i32 %i.bbd to i64
  %i.bbf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbe
  %i.bbg = load i16, ptr %i.bbf, align 2
  store i16 %i.bbg, ptr %i.bbc, align 1
  %i.bbh = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 10
  %i.bbi = shl nsw i32 %i.bar, 1
  %i.bbj = zext i32 %i.bbi to i64
  %i.bbk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbj
  %i.bbl = load i16, ptr %i.bbk, align 2
  store i16 %i.bbl, ptr %i.bbh, align 1
  %.not106.i880 = icmp eq i32 %i.bao, 0
  br i1 %.not106.i880, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.bbm = mul i32 %i.bao, 5243
  %i.bbn = lshr i32 %i.bbm, 19                    ; 3 uses
  %.neg108.i881 = mul nsw i32 %i.bbn, -100
  %i.bbo = add i32 %.neg108.i881, %i.bao          ; 3 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 12
  %i.bbq = shl nuw nsw i32 %i.bbn, 1
  %i.bbr = zext nneg i32 %i.bbq to i64
  %i.bbs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbr
  %i.bbt = load i16, ptr %i.bbs, align 2
  store i16 %i.bbt, ptr %i.bbp, align 1
  %i.bbu = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 14
  %i.bbv = shl nuw i32 %i.bbo, 1
  %i.bbw = zext i32 %i.bbv to i64
  %i.bbx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbw
  %i.bby = load i16, ptr %i.bbx, align 2
  store i16 %i.bby, ptr %i.bbu, align 1
  %i.bbz = zext nneg i32 %i.bbn to i64
  %i.bca = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bbz
  %i.bcb = load i8, ptr %i.bca, align 1, !tbaa !99
  %i.bcc = zext i8 %i.bcb to i64
  %i.bcd = zext i32 %i.bbo to i64
  %i.bce = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcd
  %i.bcf = load i8, ptr %i.bce, align 1, !tbaa !99
  %i.bcg = zext i8 %i.bcf to i64
  %.not109.i882 = icmp eq i32 %i.bbo, 0
  %i.bch = add nuw nsw i64 %i.bcc, 2
  %i.bci = select i1 %.not109.i882, i64 %i.bch, i64 %i.bcg
  %i.bcj = sub nsw i64 16, %i.bci
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.gd:                                            ; preds = %bb.gb
  %i.bck = zext nneg i32 %i.baq to i64
  %i.bcl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bck
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !99
  %i.bcn = zext i8 %i.bcm to i64
  %i.bco = zext i32 %i.bar to i64
  %i.bcp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bco
  %i.bcq = load i8, ptr %i.bcp, align 1, !tbaa !99
  %i.bcr = zext i8 %i.bcq to i64
  %.not107.i887 = icmp eq i32 %i.bar, 0
  %i.bcs = add nuw nsw i64 %i.bcn, 2
  %i.bct = select i1 %.not107.i887, i64 %i.bcs, i64 %i.bcr
  %i.bcu = sub nsw i64 12, %i.bct
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.ge:                                            ; preds = %bb.ga
  %.not99.i888 = icmp eq i32 %i.aqp, 0
  br i1 %.not99.i888, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.bcv = mul i32 %i.aqp, 5243
  %i.bcw = lshr i32 %i.bcv, 19                    ; 3 uses
  %.neg101.i889 = mul nsw i32 %i.bcw, -100
  %i.bcx = add i32 %.neg101.i889, %i.aqp          ; 3 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 4
  %i.bcz = shl nuw nsw i32 %i.bcw, 1
  %i.bda = zext nneg i32 %i.bcz to i64
  %i.bdb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bda
  %i.bdc = load i16, ptr %i.bdb, align 2
  store i16 %i.bdc, ptr %i.bcy, align 1
  %i.bdd = getelementptr inbounds nuw i8, ptr %.ptr1825, i64 6
  %i.bde = shl nuw i32 %i.bcx, 1
  %i.bdf = zext i32 %i.bde to i64
  %i.bdg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdf
  %i.bdh = load i16, ptr %i.bdg, align 2
  store i16 %i.bdh, ptr %i.bdd, align 1
  %i.bdi = zext nneg i32 %i.bcw to i64
  %i.bdj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdi
  %i.bdk = load i8, ptr %i.bdj, align 1, !tbaa !99
  %i.bdl = zext i8 %i.bdk to i64
  %i.bdm = zext i32 %i.bcx to i64
  %i.bdn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdm
  %i.bdo = load i8, ptr %i.bdn, align 1, !tbaa !99
  %i.bdp = zext i8 %i.bdo to i64
  %.not102.i890 = icmp eq i32 %i.bcx, 0
  %i.bdq = add nuw nsw i64 %i.bdl, 2
  %i.bdr = select i1 %.not102.i890, i64 %i.bdq, i64 %i.bdp
  %i.bds = sub nsw i64 8, %i.bdr
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

bb.gg:                                            ; preds = %bb.ge
  %i.bdt = zext i32 %i.aqw to i64
  %i.bdu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdt
  %i.bdv = load i8, ptr %i.bdu, align 1, !tbaa !99
  %i.bdw = zext i8 %i.bdv to i64
  %i.bdx = zext i32 %i.aqx to i64
  %i.bdy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdx
  %i.bdz = load i8, ptr %i.bdy, align 1, !tbaa !99
  %i.bea = zext i8 %i.bdz to i64
  %.not100.i891 = icmp eq i32 %i.aqx, 0
  %i.beb = select i1 %.not100.i891, i64 %i.bdw, i64 0
  %i.bec = add nuw nsw i64 %i.beb, %i.bea
  %i.bed = sub nsw i64 4, %i.bec
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892: ; preds = %bb.gc, %bb.gd, %bb.gf, %bb.gg
  %.pn.i884.pn.in = phi i64 [ %i.bed, %bb.gg ], [ %i.bds, %bb.gf ], [ %i.bcj, %bb.gc ], [ %i.bcu, %bb.gd ]
  %.pn.i884.pn = and i64 %.pn.i884.pn.in, 4294967295
  %.1.i886.idx = add nuw nsw i64 %.pn.i884.pn, %.add1819 ; 2 uses
  %.1.i886.ptr = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.1.i886.idx
  %i.bee = icmp eq i64 %.1.i886.idx, 2
  %.neg130.i = sext i1 %i.bee to i64
  %i.bef = getelementptr inbounds i8, ptr %.1.i886.ptr, i64 %.neg130.i ; 2 uses
  %i.beg = add nsw i32 %i.aqi, -1                 ; 2 uses
  %i.beh = load i8, ptr %.ptr1823, align 1, !tbaa !99
  store i8 %i.beh, ptr %i.aee, align 1, !tbaa !99
  store i8 46, ptr %.ptr1823, align 1, !tbaa !99
  store i8 101, ptr %i.bef, align 1, !tbaa !99
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bef, i64 1 ; 2 uses
  store i8 45, ptr %i.bei, align 1, !tbaa !99
  %.lobit.i901 = lshr i32 %i.beg, 31
  %i.bej = zext nneg i32 %.lobit.i901 to i64
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bei, i64 %i.bej ; 5 uses
  %i.bel = tail call i32 @llvm.abs.i32(i32 %i.beg, i1 true) ; 5 uses
  %i.bem = icmp samesign ult i32 %i.bel, 100
  br i1 %i.bem, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit892
  %i.ben = icmp samesign ult i32 %i.bel, 10       ; 2 uses
  %i.beo = shl nuw nsw i32 %i.bel, 1
  %i.bep = zext nneg i32 %i.beo to i64
  %i.beq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bep
end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  br label %vector.body5234

vector.body5234:                                  ; preds = %vector.body5234, %vector.ph5232
  %index5235 = phi i64 [ 0, %vector.ph5232 ], [ %index.next5240, %vector.body5234 ] ; 2 uses
  %i.abi = shl i64 %index5235, 2                  ; 2 uses
  %next.gep5236 = getelementptr i8, ptr %.018.i.i.lcssa, i64 %i.abi ; 2 uses
  %next.gep5237 = getelementptr i8, ptr %.021.i.i.lcssa, i64 %i.abi ; 2 uses
  %i.abj = getelementptr i8, ptr %next.gep5236, i64 16
  %wide.load5238 = load <4 x i32>, ptr %next.gep5236, align 1
  %wide.load5239 = load <4 x i32>, ptr %i.abj, align 1
  %i.abk = getelementptr i8, ptr %next.gep5237, i64 16
  store <4 x i32> %wide.load5238, ptr %next.gep5237, align 1
  store <4 x i32> %wide.load5239, ptr %i.abk, align 1
  %index.next5240 = add nuw i64 %index5235, 8     ; 2 uses
  %i.abl = icmp eq i64 %index.next5240, %n.vec5233
  br i1 %i.abl, label %middle.block5241, label %vector.body5234, !llvm.loop !332

middle.block5241:                                 ; preds = %vector.body5234
  %cmp.n5242 = icmp eq i64 %i.abb, %n.vec5233
  br i1 %cmp.n5242, label %.preheader1052, label %.lr.ph2352.preheader5376

.lr.ph2352.preheader5376:                         ; preds = %.lr.ph2352.preheader, %middle.block5241
  %.1.i5.i2351.ph = phi i64 [ %.0.i4.i.lcssa, %.lr.ph2352.preheader ], [ %i.abe, %middle.block5241 ]
  %.119.i.i2350.ph = phi ptr [ %.018.i.i.lcssa, %.lr.ph2352.preheader ], [ %i.abg, %middle.block5241 ]
  %.122.i.i2349.ph = phi ptr [ %.021.i.i.lcssa, %.lr.ph2352.preheader ], [ %i.abh, %middle.block5241 ]
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

.preheader1052:                                   ; preds = %.lr.ph2352, %middle.block5241, %.preheader1053
  %.122.i.i.lcssa = phi ptr [ %.021.i.i.lcssa, %.preheader1053 ], [ %i.abh, %middle.block5241 ], [ %i.acj, %.lr.ph2352 ] ; 7 uses
  %.119.i.i.lcssa = phi ptr [ %.018.i.i.lcssa, %.preheader1053 ], [ %i.abg, %middle.block5241 ], [ %i.ack, %.lr.ph2352 ] ; 6 uses
  %.1.i5.i.lcssa = phi i64 [ %.0.i4.i.lcssa, %.preheader1053 ], [ %i.abe, %middle.block5241 ], [ %i.acl, %.lr.ph2352 ] ; 11 uses
  %.not.i6.i2356 = icmp eq i64 %.1.i5.i.lcssa, 0
  br i1 %.not.i6.i2356, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %iter.check5273

iter.check5273:                                   ; preds = %.preheader1052
  %.122.i.i.lcssa5251 = ptrtoaddr ptr %.122.i.i.lcssa to i64
  %.119.i.i.lcssa5250 = ptrtoaddr ptr %.119.i.i.lcssa to i64
  %min.iters.check5253 = icmp ult i64 %.1.i5.i.lcssa, 4
  %i.abq = sub i64 %.119.i.i.lcssa5250, %.122.i.i.lcssa5251
  %diff.check5255 = icmp ugt i64 %i.abq, -32
  %or.cond5291.a = select i1 %min.iters.check5253, i1 true, i1 %diff.check5255
  br i1 %or.cond5291.a, label %.lr.ph2360.preheader, label %vector.main.loop.iter.check5256

vector.main.loop.iter.check5256:                  ; preds = %iter.check5273
  %min.iters.check5257 = icmp ult i64 %.1.i5.i.lcssa, 32
  br i1 %min.iters.check5257, label %vec.epilog.ph5277, label %vector.ph5258

vector.ph5258:                                    ; preds = %vector.main.loop.iter.check5256
  %i.abr = and i64 %.1.i5.i.lcssa, 28
  %n.vec5259 = and i64 %.1.i5.i.lcssa, -32        ; 5 uses
  %i.abs = and i64 %.1.i5.i.lcssa, 31
  %i.abt = getelementptr i8, ptr %.119.i.i.lcssa, i64 %n.vec5259
  %i.abu = getelementptr i8, ptr %.122.i.i.lcssa, i64 %n.vec5259 ; 2 uses
  br label %vector.body5260

vector.body5260:                                  ; preds = %vector.ph5258, %vector.body5260
  %index5261 = phi i64 [ 0, %vector.ph5258 ], [ %index.next5266, %vector.body5260 ] ; 3 uses
  %next.gep5262 = getelementptr i8, ptr %.119.i.i.lcssa, i64 %index5261 ; 2 uses
  %next.gep5263 = getelementptr i8, ptr %.122.i.i.lcssa, i64 %index5261 ; 2 uses
  %i.abv = getelementptr i8, ptr %next.gep5262, i64 16
  %wide.load5264 = load <16 x i8>, ptr %next.gep5262, align 1, !tbaa !99
  %wide.load5265 = load <16 x i8>, ptr %i.abv, align 1, !tbaa !99
  %i.abw = getelementptr i8, ptr %next.gep5263, i64 16
  store <16 x i8> %wide.load5264, ptr %next.gep5263, align 1, !tbaa !99
  store <16 x i8> %wide.load5265, ptr %i.abw, align 1, !tbaa !99
  %index.next5266 = add nuw i64 %index5261, 32    ; 2 uses
  %i.abx = icmp eq i64 %index.next5266, %n.vec5259
  br i1 %i.abx, label %middle.block5267, label %vector.body5260, !llvm.loop !333

middle.block5267:                                 ; preds = %vector.body5260
  %cmp.n5268 = icmp eq i64 %.1.i5.i.lcssa, %n.vec5259
  br i1 %cmp.n5268, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %vec.epilog.iter.check5275

vec.epilog.iter.check5275:                        ; preds = %middle.block5267
  %min.epilog.iters.check5276 = icmp eq i64 %i.abr, 0
  br i1 %min.epilog.iters.check5276, label %.lr.ph2360.preheader, label %vec.epilog.ph5277, !prof !154

vec.epilog.ph5277:                                ; preds = %vector.main.loop.iter.check5256, %vec.epilog.iter.check5275
  %vec.epilog.resume.val5269 = phi i64 [ %n.vec5259, %vec.epilog.iter.check5275 ], [ 0, %vector.main.loop.iter.check5256 ]
  %n.vec5278 = and i64 %.1.i5.i.lcssa, -4         ; 4 uses
  %i.aby = and i64 %.1.i5.i.lcssa, 3
  %i.abz = getelementptr i8, ptr %.119.i.i.lcssa, i64 %n.vec5278
  %i.aca = getelementptr i8, ptr %.122.i.i.lcssa, i64 %n.vec5278 ; 2 uses
  br label %vec.epilog.vector.body5279

vec.epilog.vector.body5279:                       ; preds = %vec.epilog.vector.body5279, %vec.epilog.ph5277
  %index5280 = phi i64 [ %vec.epilog.resume.val5269, %vec.epilog.ph5277 ], [ %index.next5284, %vec.epilog.vector.body5279 ] ; 3 uses
  %next.gep5281 = getelementptr i8, ptr %.119.i.i.lcssa, i64 %index5280
  %next.gep5282 = getelementptr i8, ptr %.122.i.i.lcssa, i64 %index5280
  %wide.load5283 = load <4 x i8>, ptr %next.gep5281, align 1, !tbaa !99
  store <4 x i8> %wide.load5283, ptr %next.gep5282, align 1, !tbaa !99
  %index.next5284 = add nuw i64 %index5280, 4     ; 2 uses
  %i.acb = icmp eq i64 %index.next5284, %n.vec5278
  br i1 %i.acb, label %vec.epilog.middle.block5285, label %vec.epilog.vector.body5279, !llvm.loop !334

vec.epilog.middle.block5285:                      ; preds = %vec.epilog.vector.body5279
  %cmp.n5286 = icmp eq i64 %.1.i5.i.lcssa, %n.vec5278
  br i1 %cmp.n5286, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %.lr.ph2360.preheader

.lr.ph2360.preheader:                             ; preds = %iter.check5273, %vec.epilog.iter.check5275, %vec.epilog.middle.block5285
  %.2.i.i2359.ph = phi i64 [ %.1.i5.i.lcssa, %iter.check5273 ], [ %i.abs, %vec.epilog.iter.check5275 ], [ %i.aby, %vec.epilog.middle.block5285 ] ; 4 uses
  %.220.i.i2358.ph = phi ptr [ %.119.i.i.lcssa, %iter.check5273 ], [ %i.abt, %vec.epilog.iter.check5275 ], [ %i.abz, %vec.epilog.middle.block5285 ] ; 2 uses
  %.223.i.i2357.ph = phi ptr [ %.122.i.i.lcssa, %iter.check5273 ], [ %i.abu, %vec.epilog.iter.check5275 ], [ %i.aca, %vec.epilog.middle.block5285 ] ; 2 uses
  %i.acc = add nsw i64 %.2.i.i2359.ph, -1
  %xtraiter5988 = and i64 %.2.i.i2359.ph, 7       ; 2 uses
  %lcmp.mod5989.not = icmp eq i64 %xtraiter5988, 0
  br i1 %lcmp.mod5989.not, label %.lr.ph2360.prol.loopexit, label %.lr.ph2360.prol

.lr.ph2360.prol:                                  ; preds = %.lr.ph2360.preheader, %.lr.ph2360.prol
  %.2.i.i2359.prol = phi i64 [ %i.acg, %.lr.ph2360.prol ], [ %.2.i.i2359.ph, %.lr.ph2360.preheader ]
  %.220.i.i2358.prol = phi ptr [ %i.acd, %.lr.ph2360.prol ], [ %.220.i.i2358.ph, %.lr.ph2360.preheader ] ; 2 uses
  %.223.i.i2357.prol = phi ptr [ %i.acf, %.lr.ph2360.prol ], [ %.223.i.i2357.ph, %.lr.ph2360.preheader ] ; 2 uses
  %prol.iter5990 = phi i64 [ %prol.iter5990.next, %.lr.ph2360.prol ], [ 0, %.lr.ph2360.preheader ]
  %i.acd = getelementptr inbounds nuw i8, ptr %.220.i.i2358.prol, i64 1 ; 2 uses
  %i.ace = load i8, ptr %.220.i.i2358.prol, align 1, !tbaa !99
  %i.acf = getelementptr inbounds nuw i8, ptr %.223.i.i2357.prol, i64 1 ; 3 uses
  store i8 %i.ace, ptr %.223.i.i2357.prol, align 1, !tbaa !99
  %i.acg = add nsw i64 %.2.i.i2359.prol, -1       ; 2 uses
  %prol.iter5990.next = add i64 %prol.iter5990, 1 ; 2 uses
  %prol.iter5990.cmp.not = icmp eq i64 %prol.iter5990.next, %xtraiter5988
  br i1 %prol.iter5990.cmp.not, label %.lr.ph2360.prol.loopexit, label %.lr.ph2360.prol, !llvm.loop !335

.lr.ph2360.prol.loopexit:                         ; preds = %.lr.ph2360.prol, %.lr.ph2360.preheader
  %.lcssa5375.unr = phi ptr [ poison, %.lr.ph2360.preheader ], [ %i.acf, %.lr.ph2360.prol ]
  %.2.i.i2359.unr = phi i64 [ %.2.i.i2359.ph, %.lr.ph2360.preheader ], [ %i.acg, %.lr.ph2360.prol ]
  %.220.i.i2358.unr = phi ptr [ %.220.i.i2358.ph, %.lr.ph2360.preheader ], [ %i.acd, %.lr.ph2360.prol ]
  %.223.i.i2357.unr = phi ptr [ %.223.i.i2357.ph, %.lr.ph2360.preheader ], [ %i.acf, %.lr.ph2360.prol ]
  %i.ach = icmp ult i64 %i.acc, 7
  br i1 %i.ach, label %_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i, label %.lr.ph2360

.lr.ph2352:                                       ; preds = %.lr.ph2352.preheader5376, %.lr.ph2352
  %.1.i5.i2351 = phi i64 [ %i.acl, %.lr.ph2352 ], [ %.1.i5.i2351.ph, %.lr.ph2352.preheader5376 ]
  %.119.i.i2350 = phi ptr [ %i.ack, %.lr.ph2352 ], [ %.119.i.i2350.ph, %.lr.ph2352.preheader5376 ] ; 2 uses
  %.122.i.i2349 = phi ptr [ %i.acj, %.lr.ph2352 ], [ %.122.i.i2349.ph, %.lr.ph2352.preheader5376 ] ; 2 uses
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

_ZN13duckdb_yyjsonL18write_string_noescEPhPKhm.exit.i: ; preds = %.lr.ph2360.prol.loopexit, %.lr.ph2360, %middle.block5267, %vec.epilog.middle.block5285, %.preheader1052
  %.223.i.i.lcssa = phi ptr [ %.122.i.i.lcssa, %.preheader1052 ], [ %i.aca, %vec.epilog.middle.block5285 ], [ %i.abu, %middle.block5267 ], [ %.lcssa5375.unr, %.lr.ph2360.prol.loopexit ], [ %i.adk, %.lr.ph2360 ] ; 2 uses
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
  %i.akj = lshr i32 %i.aki, 19                    ; 2 uses
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
  %i.anr = add i64 %i.ann, %i.anq                 ; 3 uses
  %i.ans = zext i32 %i.anh to i64                 ; 3 uses
  %i.ant = shl i64 %i.amy, %i.ans                 ; 2 uses
  %i.anu = zext i64 %i.ant to i128
  %i.anv = tail call i64 @llvm.umulh.i64(i64 %i.ant, i64 %i.anr)
  %i.anw = zext i64 %i.anv to i128
  %i.anx = zext i64 %i.anl to i128                ; 3 uses
  %i.any = mul nuw i128 %i.anx, %i.anu
  %i.anz = add nuw i128 %i.any, %i.anw            ; 2 uses
  %i.aoa = lshr i128 %i.anz, 64
  %i.aob = trunc nuw i128 %i.aoa to i64
  %i.aoc = and i128 %i.anz, 18446744073709551614
  %i.aod = icmp ne i128 %i.aoc, 0
  %i.aoe = zext i1 %i.aod to i64
  %i.aof = or i64 %i.aoe, %i.aob
  %i.aog = shl i64 %i.amv, %i.ans                 ; 2 uses
  %i.aoh = zext i64 %i.aog to i128
  %i.aoi = tail call i64 @llvm.umulh.i64(i64 %i.aog, i64 %i.anr)
  %i.aoj = zext i64 %i.aoi to i128
  %i.aok = mul nuw i128 %i.anx, %i.aoh
  %i.aol = add nuw i128 %i.aok, %i.aoj            ; 2 uses
  %i.aom = lshr i128 %i.aol, 64
  %i.aon = trunc nuw i128 %i.aom to i64           ; 5 uses
  %i.aoo = and i128 %i.aol, 18446744073709551614
  %i.aop = icmp ne i128 %i.aoo, 0
  %i.aoq = zext i1 %i.aop to i64
  %i.aor = or i64 %i.aoq, %i.aon                  ; 2 uses
  %i.aos = shl i64 %i.amz, %i.ans                 ; 2 uses
  %i.aot = zext i64 %i.aos to i128
  %i.aou = tail call i64 @llvm.umulh.i64(i64 %i.aos, i64 %i.anr)
  %i.aov = zext i64 %i.aou to i128
  %i.aow = mul nuw i128 %i.anx, %i.aot
  %i.aox = add nuw i128 %i.aow, %i.aov            ; 2 uses
  %i.aoy = lshr i128 %i.aox, 64
  %i.aoz = trunc nuw i128 %i.aoy to i64
  %i.apa = and i128 %i.aox, 18446744073709551614
  %i.apb = icmp ne i128 %i.apa, 0
  %i.apc = zext i1 %i.apb to i64
  %i.apd = or i64 %i.apc, %i.aoz
  %i.ape = and i64 %i.adr, 1                      ; 2 uses
  %i.apf = add i64 %i.aof, %i.ape                 ; 2 uses
  %i.apg = sub i64 %i.apd, %i.ape                 ; 2 uses
  %i.aph = lshr i64 %i.aon, 2                     ; 2 uses
  %i.api = icmp ugt i64 %i.aon, 39
  br i1 %i.api, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  %i.apj = udiv i64 %i.aon, 40                    ; 2 uses
  %i.apk = mul nuw i64 %i.apj, 40                 ; 2 uses
  %i.apl = add i64 %i.apk, 40
  %i.apm = icmp uge i64 %i.apg, %i.apl            ; 2 uses
  %i.apn = icmp ugt i64 %i.apf, %i.apk
  %.not.i135.i = xor i1 %i.apn, %i.apm
  br i1 %.not.i135.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.apo = zext i1 %i.apm to i64
  %i.app = add nuw nsw i64 %i.apj, %i.apo
  %i.apq = add nsw i32 %i.and, 1
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i

bb.fi:                                            ; preds = %bb.fg, %bb.ff
  %i.apr = and i64 %i.aon, -4                     ; 3 uses
  %i.aps = add i64 %i.apr, 4
  %i.apt = icmp uge i64 %i.apg, %i.aps            ; 2 uses
  %i.apu = or disjoint i64 %i.apr, 2              ; 2 uses
  %i.apv = icmp ugt i64 %i.aor, %i.apu
  br i1 %i.apv, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.apw = icmp eq i64 %i.aor, %i.apu
  %i.apx = trunc i64 %i.aph to i1
  %i.apy = and i1 %i.apw, %i.apx
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.apz = phi i1 [ true, %bb.fi ], [ %i.apy, %bb.fj ]
  %i.aqa = icmp ugt i64 %i.apf, %i.apr
  %.not58.i133.i = xor i1 %i.aqa, %i.apt
  %i.aqb = select i1 %.not58.i133.i, i1 %i.apz, i1 %i.apt
  %i.aqc = zext i1 %i.aqb to i64
  %i.aqd = add nuw nsw i64 %i.aph, %i.aqc
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i: ; preds = %bb.fk, %bb.fh
  %.0775 = phi i64 [ %i.aqd, %bb.fk ], [ %i.app, %bb.fh ] ; 4 uses
  %storemerge.i134.i = phi i32 [ %i.and, %bb.fk ], [ %i.apq, %bb.fh ]
  %i.aqe = icmp samesign ult i64 %.0775, 10000000000000000
  %i.aqf = select i1 %i.aqe, i32 16, i32 17
  %i.aqg = icmp samesign ult i64 %.0775, 1000000000000000
  %.neg129.i.i = sext i1 %i.aqg to i32
  %i.aqh = add nsw i32 %i.aqf, %.neg129.i.i
  %i.aqi = add nsw i32 %i.aqh, %storemerge.i134.i ; 8 uses
  %i.aqj = add nsw i32 %i.aqi, 5
  %or.cond3.i.i = icmp ult i32 %i.aqj, 27
  %i.aqk = udiv i64 %.0775, 100000000             ; 2 uses
  %i.aql = trunc i64 %i.aqk to i32                ; 2 uses
  %.neg.i137.i = mul i64 %i.aqk, 4194967296
  %i.aqm = add i64 %.neg.i137.i, %.0775           ; 4 uses
  %i.aqn = trunc i64 %i.aqm to i32                ; 6 uses
  %i.aqo = udiv i32 %i.aql, 10000                 ; 3 uses
  %.neg95.i.i = mul i32 %i.aqo, -10000
  %i.aqp = add i32 %.neg95.i.i, %i.aql            ; 15 uses
  %i.aqq = zext nneg i32 %i.aqo to i64
  %i.aqr = mul nuw nsw i64 %i.aqq, 167773
  %i.aqs = lshr i64 %i.aqr, 24
  %i.aqt = trunc nuw nsw i64 %i.aqs to i32        ; 3 uses
  %i.aqu = mul nuw nsw i32 %i.aqt, 41
  %i.aqv = lshr i32 %i.aqu, 12                    ; 5 uses
  %.neg96.i.i = mul nsw i32 %i.aqv, -100
  %i.aqw = add nsw i32 %.neg96.i.i, %i.aqt        ; 9 uses
  %.neg97.i.i = mul nsw i32 %i.aqt, -100
  %i.aqx = add nsw i32 %.neg97.i.i, %i.aqo        ; 9 uses
  %i.aqy = trunc nuw nsw i32 %i.aqv to i8
  %i.aqz = add nuw nsw i8 %i.aqy, 48              ; 3 uses
  br i1 %or.cond3.i.i, label %bb.fl, label %bb.ga

bb.fl:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i
  %i.ara = icmp slt i32 %i.aqi, 1
  br i1 %i.ara, label %bb.fm, label %bb.ft

bb.fm:                                            ; preds = %bb.fl
  %i.arb = sub nsw i32 2, %i.aqi
  %i.arc = zext nneg i32 %i.arb to i64
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.arc ; 2 uses
  store i8 %i.aqz, ptr %i.ard, align 1, !tbaa !99
  %i.are = icmp ne i32 %i.aqv, 0                  ; 2 uses
  %i.arf = zext i1 %i.are to i64
  %i.arg = getelementptr inbounds nuw i8, ptr %i.ard, i64 %i.arf ; 2 uses
  %i.arh = icmp ult i32 %i.aqw, 10
  %.not2967 = xor i1 %i.are, true
  %i.ari = and i1 %i.arh, %.not2967               ; 2 uses
  %i.arj = shl nsw i32 %i.aqw, 1
  %i.ark = zext i32 %i.arj to i64
  %i.arl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ark
  %.neg98.i.i = sext i1 %i.ari to i64
  %i.arm = zext i1 %i.ari to i64
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arl, i64 %i.arm
  %i.aro = load i16, ptr %i.arn, align 1
  store i16 %i.aro, ptr %i.arg, align 1
  %i.arp = getelementptr inbounds i8, ptr %i.arg, i64 %.neg98.i.i ; 10 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 2
  %i.arr = shl nsw i32 %i.aqx, 1
  %i.ars = zext i32 %i.arr to i64
  %i.art = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ars
  %i.aru = load i16, ptr %i.art, align 2
  store i16 %i.aru, ptr %i.arq, align 1
  %.not.i138.i = icmp eq i32 %i.aqn, 0
  br i1 %.not.i138.i, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.arv = mul i32 %i.aqp, 5243
  %i.arw = lshr i32 %i.arv, 19                    ; 2 uses
  %.neg103.i.i = mul i32 %i.arw, 2147483548
  %i.arx = add i32 %.neg103.i.i, %i.aqp
  %i.ary = and i64 %i.aqm, 4294967295
  %i.arz = mul nuw nsw i64 %i.ary, 109951163
  %i.asa = lshr i64 %i.arz, 40
  %i.asb = trunc nuw nsw i64 %i.asa to i32        ; 3 uses
  %.neg104.i.i = mul i32 %i.asb, -10000
  %i.asc = add i32 %.neg104.i.i, %i.aqn           ; 3 uses
  %i.asd = mul nuw i32 %i.asb, 5243
  %i.ase = lshr i32 %i.asd, 19                    ; 3 uses
  %.neg105.i.i = mul nsw i32 %i.ase, -100
  %i.asf = add nsw i32 %.neg105.i.i, %i.asb       ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arp, i64 4
  %i.ash = shl nuw nsw i32 %i.arw, 1
  %i.asi = zext nneg i32 %i.ash to i64
  %i.asj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asi
  %i.ask = load i16, ptr %i.asj, align 2
  store i16 %i.ask, ptr %i.asg, align 1
  %i.asl = getelementptr inbounds nuw i8, ptr %i.arp, i64 6
  %i.asm = shl i32 %i.arx, 1
  %i.asn = zext i32 %i.asm to i64
  %i.aso = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asn
  %i.asp = load i16, ptr %i.aso, align 2
  store i16 %i.asp, ptr %i.asl, align 1
  %i.asq = getelementptr inbounds nuw i8, ptr %i.arp, i64 8
  %i.asr = shl nuw nsw i32 %i.ase, 1
  %i.ass = zext nneg i32 %i.asr to i64
  %i.ast = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ass
  %i.asu = load i16, ptr %i.ast, align 2
  store i16 %i.asu, ptr %i.asq, align 1
  %i.asv = getelementptr inbounds nuw i8, ptr %i.arp, i64 10
  %i.asw = shl nsw i32 %i.asf, 1
  %i.asx = zext i32 %i.asw to i64
  %i.asy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.asx
  %i.asz = load i16, ptr %i.asy, align 2
  store i16 %i.asz, ptr %i.asv, align 1
  %.not106.i139.i = icmp eq i32 %i.asc, 0
  br i1 %.not106.i139.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ata = mul i32 %i.asc, 5243
  %i.atb = lshr i32 %i.ata, 19                    ; 3 uses
  %.neg108.i.i = mul nsw i32 %i.atb, -100
  %i.atc = add i32 %.neg108.i.i, %i.asc           ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.arp, i64 12
  %i.ate = shl nuw nsw i32 %i.atb, 1
  %i.atf = zext nneg i32 %i.ate to i64
  %i.atg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.atf
  %i.ath = load i16, ptr %i.atg, align 2
  store i16 %i.ath, ptr %i.atd, align 1
  %i.ati = getelementptr inbounds nuw i8, ptr %i.arp, i64 14
  %i.atj = shl nuw i32 %i.atc, 1
  %i.atk = zext i32 %i.atj to i64
  %i.atl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.atk
  %i.atm = load i16, ptr %i.atl, align 2
  store i16 %i.atm, ptr %i.ati, align 1
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fn, %bb.fo
  %.sink4403.a = phi i32 [ %i.atb, %bb.fo ], [ %i.ase, %bb.fn ]
  %.sink4399 = phi i32 [ %i.atc, %bb.fo ], [ %i.asf, %bb.fn ] ; 2 uses
  %.sink = phi i64 [ 16, %bb.fo ], [ 12, %bb.fn ]
  %i.atn = zext nneg i32 %.sink4403.a to i64
  %i.ato = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.atn
  %i.atp = load i8, ptr %i.ato, align 1, !tbaa !99
  %i.atq = zext i8 %i.atp to i64
  %i.atr = zext i32 %.sink4399 to i64
  %i.ats = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.atr
  %i.att = load i8, ptr %i.ats, align 1, !tbaa !99
  %i.atu = zext i8 %i.att to i64
  %.not107.i143.i = icmp eq i32 %.sink4399, 0
  %i.atv = add nuw nsw i64 %i.atq, 2
  %i.atw = select i1 %.not107.i143.i, i64 %i.atv, i64 %i.atu
  %i.atx = sub nsw i64 %.sink, %i.atw
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

bb.fq:                                            ; preds = %bb.fm
  %.not99.i144.i = icmp eq i32 %i.aqp, 0
  br i1 %.not99.i144.i, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aty = mul i32 %i.aqp, 5243
  %i.atz = lshr i32 %i.aty, 19                    ; 3 uses
  %.neg101.i.i = mul nsw i32 %i.atz, -100
  %i.aua = add i32 %.neg101.i.i, %i.aqp           ; 3 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %i.arp, i64 4
  %i.auc = shl nuw nsw i32 %i.atz, 1
  %i.aud = zext nneg i32 %i.auc to i64
  %i.aue = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aud
  %i.auf = load i16, ptr %i.aue, align 2
  store i16 %i.auf, ptr %i.aub, align 1
  %i.aug = getelementptr inbounds nuw i8, ptr %i.arp, i64 6
  %i.auh = shl nuw i32 %i.aua, 1
  %i.aui = zext i32 %i.auh to i64
  %i.auj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aui
  %i.auk = load i16, ptr %i.auj, align 2
  store i16 %i.auk, ptr %i.aug, align 1
  %i.aul = zext nneg i32 %i.atz to i64
  %i.aum = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aul
  %i.aun = load i8, ptr %i.aum, align 1, !tbaa !99
  %i.auo = zext i8 %i.aun to i64
  %i.aup = zext i32 %i.aua to i64
  %i.auq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.aup
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !99
  %i.aus = zext i8 %i.aur to i64
  %.not102.i145.i = icmp eq i32 %i.aua, 0
  %i.aut = add nuw nsw i64 %i.auo, 2
  %i.auu = select i1 %.not102.i145.i, i64 %i.aut, i64 %i.aus
  %i.auv = sub nsw i64 8, %i.auu
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

bb.fs:                                            ; preds = %bb.fq
  %i.auw = zext i32 %i.aqw to i64
  %i.aux = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.auw
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !99
  %i.auz = zext i8 %i.auy to i64
  %i.ava = zext i32 %i.aqx to i64
  %i.avb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ava
  %i.avc = load i8, ptr %i.avb, align 1, !tbaa !99
  %i.avd = zext i8 %i.avc to i64
  %.not100.i146.i = icmp eq i32 %i.aqx, 0
  %i.ave = select i1 %.not100.i146.i, i64 %i.auz, i64 0
  %i.avf = add nuw nsw i64 %i.ave, %i.avd
  %i.avg = sub nsw i64 4, %i.avf
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i: ; preds = %bb.fs, %bb.fr, %bb.fp
  %.sink4405 = phi i64 [ %i.avg, %bb.fs ], [ %i.auv, %bb.fr ], [ %i.atx, %bb.fp ]
  %i.avh = and i64 %.sink4405, 4294967295
  %i.avi = getelementptr inbounds nuw i8, ptr %i.arp, i64 %i.avh ; 2 uses
  store i8 48, ptr %i.aee, align 1, !tbaa !99
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aee, i64 1
  store i8 46, ptr %i.avj, align 1, !tbaa !99
  %i.avk = icmp slt i32 %i.aqi, 0
  br i1 %i.avk, label %.lr.ph2310.preheader, label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

.lr.ph2310.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i
  %i.avl = getelementptr i8, ptr %i.aee, i64 2
  %narrow3152 = sub nsw i32 0, %i.aqi
  %i.avm = zext nneg i32 %narrow3152 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.avl, i8 48, i64 %i.avm, i1 false), !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ft:                                            ; preds = %bb.fl
  %i.avn = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aee, i8 48, i64 24, i1 false)
  store i8 %i.aqz, ptr %i.avn, align 1, !tbaa !99
  %i.avo = icmp ne i32 %i.aqv, 0                  ; 2 uses
  %i.avp = zext i1 %i.avo to i64
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avn, i64 %i.avp ; 2 uses
  %i.avr = icmp ult i32 %i.aqw, 10
  %.not2966 = xor i1 %i.avo, true
  %i.avs = and i1 %i.avr, %.not2966               ; 2 uses
  %i.avt = shl nsw i32 %i.aqw, 1
  %i.avu = zext i32 %i.avt to i64
  %i.avv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.avu
  %.neg98.i151.i = sext i1 %i.avs to i64
  %i.avw = zext i1 %i.avs to i64
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avv, i64 %i.avw
  %i.avy = load i16, ptr %i.avx, align 1
  store i16 %i.avy, ptr %i.avq, align 1
  %i.avz = getelementptr inbounds i8, ptr %i.avq, i64 %.neg98.i151.i ; 10 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avz, i64 2
  %i.awb = shl nsw i32 %i.aqx, 1
  %i.awc = zext i32 %i.awb to i64
  %i.awd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awc
  %i.awe = load i16, ptr %i.awd, align 2
  store i16 %i.awe, ptr %i.awa, align 1
  %.not.i152.i = icmp eq i32 %i.aqn, 0
  br i1 %.not.i152.i, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.awf = mul i32 %i.aqp, 5243
  %i.awg = lshr i32 %i.awf, 19                    ; 2 uses
  %.neg103.i153.i = mul i32 %i.awg, 2147483548
  %i.awh = add i32 %.neg103.i153.i, %i.aqp
  %i.awi = and i64 %i.aqm, 4294967295
  %i.awj = mul nuw nsw i64 %i.awi, 109951163
  %i.awk = lshr i64 %i.awj, 40
  %i.awl = trunc nuw nsw i64 %i.awk to i32        ; 3 uses
  %.neg104.i154.i = mul i32 %i.awl, -10000
  %i.awm = add i32 %.neg104.i154.i, %i.aqn        ; 3 uses
  %i.awn = mul nuw i32 %i.awl, 5243
  %i.awo = lshr i32 %i.awn, 19                    ; 3 uses
  %.neg105.i155.i = mul nsw i32 %i.awo, -100
  %i.awp = add nsw i32 %.neg105.i155.i, %i.awl    ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %i.avz, i64 4
  %i.awr = shl nuw nsw i32 %i.awg, 1
  %i.aws = zext nneg i32 %i.awr to i64
  %i.awt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.aws
  %i.awu = load i16, ptr %i.awt, align 2
  store i16 %i.awu, ptr %i.awq, align 1
  %i.awv = getelementptr inbounds nuw i8, ptr %i.avz, i64 6
  %i.aww = shl i32 %i.awh, 1
  %i.awx = zext i32 %i.aww to i64
  %i.awy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.awx
  %i.awz = load i16, ptr %i.awy, align 2
  store i16 %i.awz, ptr %i.awv, align 1
  %i.axa = getelementptr inbounds nuw i8, ptr %i.avz, i64 8
  %i.axb = shl nuw nsw i32 %i.awo, 1
  %i.axc = zext nneg i32 %i.axb to i64
  %i.axd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axc
  %i.axe = load i16, ptr %i.axd, align 2
  store i16 %i.axe, ptr %i.axa, align 1
  %i.axf = getelementptr inbounds nuw i8, ptr %i.avz, i64 10
  %i.axg = shl nsw i32 %i.awp, 1
  %i.axh = zext i32 %i.axg to i64
  %i.axi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axh
  %i.axj = load i16, ptr %i.axi, align 2
  store i16 %i.axj, ptr %i.axf, align 1
  %.not106.i156.i = icmp eq i32 %i.awm, 0
  br i1 %.not106.i156.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.axk = mul i32 %i.awm, 5243
  %i.axl = lshr i32 %i.axk, 19                    ; 3 uses
  %.neg108.i157.i = mul nsw i32 %i.axl, -100
  %i.axm = add i32 %.neg108.i157.i, %i.awm        ; 2 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %i.avz, i64 12
  %i.axo = shl nuw nsw i32 %i.axl, 1
  %i.axp = zext nneg i32 %i.axo to i64
  %i.axq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axp
  %i.axr = load i16, ptr %i.axq, align 2
  store i16 %i.axr, ptr %i.axn, align 1
  %i.axs = getelementptr inbounds nuw i8, ptr %i.avz, i64 14
  %i.axt = shl nuw i32 %i.axm, 1
  %i.axu = zext i32 %i.axt to i64
  %i.axv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.axu
  %i.axw = load i16, ptr %i.axv, align 2
  store i16 %i.axw, ptr %i.axs, align 1
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  %.sink4419.a = phi i32 [ %i.axl, %bb.fv ], [ %i.awo, %bb.fu ]
  %.sink4415 = phi i32 [ %i.axm, %bb.fv ], [ %i.awp, %bb.fu ] ; 2 uses
  %.sink4406 = phi i64 [ 16, %bb.fv ], [ 12, %bb.fu ]
  %i.axx = zext nneg i32 %.sink4419.a to i64
  %i.axy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.axx
  %i.axz = load i8, ptr %i.axy, align 1, !tbaa !99
  %i.aya = zext i8 %i.axz to i64
  %i.ayb = zext i32 %.sink4415 to i64
  %i.ayc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayb
  %i.ayd = load i8, ptr %i.ayc, align 1, !tbaa !99
  %i.aye = zext i8 %i.ayd to i64
  %.not107.i163.i = icmp eq i32 %.sink4415, 0
  %i.ayf = add nuw nsw i64 %i.aya, 2
  %i.ayg = select i1 %.not107.i163.i, i64 %i.ayf, i64 %i.aye
  %i.ayh = sub nsw i64 %.sink4406, %i.ayg
  br label %._crit_edge2308

bb.fx:                                            ; preds = %bb.ft
  %.not99.i164.i = icmp eq i32 %i.aqp, 0
  br i1 %.not99.i164.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ayi = mul i32 %i.aqp, 5243
  %i.ayj = lshr i32 %i.ayi, 19                    ; 3 uses
  %.neg101.i165.i = mul nsw i32 %i.ayj, -100
  %i.ayk = add i32 %.neg101.i165.i, %i.aqp        ; 3 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.avz, i64 4
  %i.aym = shl nuw nsw i32 %i.ayj, 1
  %i.ayn = zext nneg i32 %i.aym to i64
  %i.ayo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ayn
  %i.ayp = load i16, ptr %i.ayo, align 2
  store i16 %i.ayp, ptr %i.ayl, align 1
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.avz, i64 6
  %i.ayr = shl nuw i32 %i.ayk, 1
  %i.ays = zext i32 %i.ayr to i64
  %i.ayt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ays
  %i.ayu = load i16, ptr %i.ayt, align 2
  store i16 %i.ayu, ptr %i.ayq, align 1
  %i.ayv = zext nneg i32 %i.ayj to i64
  %i.ayw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayv
  %i.ayx = load i8, ptr %i.ayw, align 1, !tbaa !99
  %i.ayy = zext i8 %i.ayx to i64
  %i.ayz = zext i32 %i.ayk to i64
  %i.aza = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ayz
  %i.azb = load i8, ptr %i.aza, align 1, !tbaa !99
  %i.azc = zext i8 %i.azb to i64
  %.not102.i166.i = icmp eq i32 %i.ayk, 0
  %i.azd = add nuw nsw i64 %i.ayy, 2
  %i.aze = select i1 %.not102.i166.i, i64 %i.azd, i64 %i.azc
  %i.azf = sub nsw i64 8, %i.aze
  br label %._crit_edge2308

bb.fz:                                            ; preds = %bb.fx
  %i.azg = zext i32 %i.aqw to i64
  %i.azh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azg
  %i.azi = load i8, ptr %i.azh, align 1, !tbaa !99
  %i.azj = zext i8 %i.azi to i64
  %i.azk = zext i32 %i.aqx to i64
  %i.azl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.azk
  %i.azm = load i8, ptr %i.azl, align 1, !tbaa !99
  %i.azn = zext i8 %i.azm to i64
  %.not100.i167.i = icmp eq i32 %i.aqx, 0
  %i.azo = select i1 %.not100.i167.i, i64 %i.azj, i64 0
  %i.azp = add nuw nsw i64 %i.azo, %i.azn
  %i.azq = sub nsw i64 4, %i.azp
  br label %._crit_edge2308

._crit_edge2308:                                  ; preds = %bb.fz, %bb.fy, %bb.fw
  %.sink4421 = phi i64 [ %i.azq, %bb.fz ], [ %i.azf, %bb.fy ], [ %i.ayh, %bb.fw ]
  %i.azr = and i64 %.sink4421, 4294967295
  %i.azs = getelementptr inbounds nuw i8, ptr %i.avz, i64 %i.azr ; 2 uses
  %7 = getelementptr i8, ptr %i.adn, i64 %.lobit.i120.i
  %scevgep2901 = getelementptr i8, ptr %7, i64 1
  %i.azt = zext nneg i32 %i.aqi to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aee, ptr align 1 %scevgep2901, i64 %i.azt, i1 false), !tbaa !99
  %i.azu = zext nneg i32 %i.aqi to i64
  %i.azv = getelementptr inbounds nuw i8, ptr %i.aee, i64 %i.azu ; 2 uses
  store i8 46, ptr %i.azv, align 1, !tbaa !99
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 2 ; 2 uses
  %i.azx = icmp ult ptr %i.azw, %i.azs
  %spec.select = select i1 %i.azx, ptr %i.azs, ptr %i.azw
  br label %_ZN13duckdb_yyjsonL12write_stringEPhbbPKhmS2_.exit98.i

bb.ga:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit136.i
  %.ptr1002 = getelementptr inbounds nuw i8, ptr %i.aee, i64 1 ; 3 uses
  store i8 %i.aqz, ptr %.ptr1002, align 1, !tbaa !99
  %.not1007 = icmp eq i32 %i.aqv, 0               ; 2 uses
  %.add997 = select i1 %.not1007, i64 1, i64 2    ; 2 uses
  %.ptr1003 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add997
  %i.azy = icmp ult i32 %i.aqw, 10
  %i.azz = and i1 %.not1007, %i.azy               ; 2 uses
  %i.baa = shl nsw i32 %i.aqw, 1
  %i.bab = zext i32 %i.baa to i64
  %i.bac = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bab
  %.neg98.i173.i = sext i1 %i.azz to i64
  %i.bad = zext i1 %i.azz to i64
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bac, i64 %i.bad
  %i.baf = load i16, ptr %i.bae, align 1
  store i16 %i.baf, ptr %.ptr1003, align 1
  %.add998 = add nsw i64 %.add997, %.neg98.i173.i ; 2 uses
  %.ptr1004 = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.add998 ; 9 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 2
  %i.bah = shl nsw i32 %i.aqx, 1
  %i.bai = zext i32 %i.bah to i64
  %i.baj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bai
  %i.bak = load i16, ptr %i.baj, align 2
  store i16 %i.bak, ptr %i.bag, align 1
  %.not.i174.i = icmp eq i32 %i.aqn, 0
  br i1 %.not.i174.i, label %bb.ge, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.bal = mul i32 %i.aqp, 5243
  %i.bam = lshr i32 %i.bal, 19                    ; 2 uses
  %.neg103.i175.i = mul i32 %i.bam, 2147483548
  %i.ban = add i32 %.neg103.i175.i, %i.aqp
  %i.bao = and i64 %i.aqm, 4294967295
  %i.bap = mul nuw nsw i64 %i.bao, 109951163
  %i.baq = lshr i64 %i.bap, 40
  %i.bar = trunc nuw nsw i64 %i.baq to i32        ; 3 uses
  %.neg104.i176.i = mul i32 %i.bar, -10000
  %i.bas = add i32 %.neg104.i176.i, %i.aqn        ; 3 uses
  %i.bat = mul nuw i32 %i.bar, 5243
  %i.bau = lshr i32 %i.bat, 19                    ; 3 uses
  %.neg105.i177.i = mul nsw i32 %i.bau, -100
  %i.bav = add nsw i32 %.neg105.i177.i, %i.bar    ; 3 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 4
  %i.bax = shl nuw nsw i32 %i.bam, 1
  %i.bay = zext nneg i32 %i.bax to i64
  %i.baz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bay
  %i.bba = load i16, ptr %i.baz, align 2
  store i16 %i.bba, ptr %i.baw, align 1
  %i.bbb = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 6
  %i.bbc = shl i32 %i.ban, 1
  %i.bbd = zext i32 %i.bbc to i64
  %i.bbe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbd
  %i.bbf = load i16, ptr %i.bbe, align 2
  store i16 %i.bbf, ptr %i.bbb, align 1
  %i.bbg = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 8
  %i.bbh = shl nuw nsw i32 %i.bau, 1
  %i.bbi = zext nneg i32 %i.bbh to i64
  %i.bbj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbi
  %i.bbk = load i16, ptr %i.bbj, align 2
  store i16 %i.bbk, ptr %i.bbg, align 1
  %i.bbl = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 10
  %i.bbm = shl nsw i32 %i.bav, 1
  %i.bbn = zext i32 %i.bbm to i64
  %i.bbo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbn
  %i.bbp = load i16, ptr %i.bbo, align 2
  store i16 %i.bbp, ptr %i.bbl, align 1
  %.not106.i178.i = icmp eq i32 %i.bas, 0
  br i1 %.not106.i178.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.bbq = mul i32 %i.bas, 5243
  %i.bbr = lshr i32 %i.bbq, 19                    ; 3 uses
  %.neg108.i179.i = mul nsw i32 %i.bbr, -100
  %i.bbs = add i32 %.neg108.i179.i, %i.bas        ; 3 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 12
  %i.bbu = shl nuw nsw i32 %i.bbr, 1
  %i.bbv = zext nneg i32 %i.bbu to i64
  %i.bbw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bbv
  %i.bbx = load i16, ptr %i.bbw, align 2
  store i16 %i.bbx, ptr %i.bbt, align 1
  %i.bby = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 14
  %i.bbz = shl nuw i32 %i.bbs, 1
  %i.bca = zext i32 %i.bbz to i64
  %i.bcb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bca
  %i.bcc = load i16, ptr %i.bcb, align 2
  store i16 %i.bcc, ptr %i.bby, align 1
  %i.bcd = zext nneg i32 %i.bbr to i64
  %i.bce = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcd
  %i.bcf = load i8, ptr %i.bce, align 1, !tbaa !99
  %i.bcg = zext i8 %i.bcf to i64
  %i.bch = zext i32 %i.bbs to i64
  %i.bci = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bch
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !99
  %i.bck = zext i8 %i.bcj to i64
  %.not109.i180.i = icmp eq i32 %i.bbs, 0
  %i.bcl = add nuw nsw i64 %i.bcg, 2
  %i.bcm = select i1 %.not109.i180.i, i64 %i.bcl, i64 %i.bck
  %i.bcn = sub nsw i64 16, %i.bcm
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.gd:                                            ; preds = %bb.gb
  %i.bco = zext nneg i32 %i.bau to i64
  %i.bcp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bco
  %i.bcq = load i8, ptr %i.bcp, align 1, !tbaa !99
  %i.bcr = zext i8 %i.bcq to i64
  %i.bcs = zext i32 %i.bav to i64
  %i.bct = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bcs
  %i.bcu = load i8, ptr %i.bct, align 1, !tbaa !99
  %i.bcv = zext i8 %i.bcu to i64
  %.not107.i185.i = icmp eq i32 %i.bav, 0
  %i.bcw = add nuw nsw i64 %i.bcr, 2
  %i.bcx = select i1 %.not107.i185.i, i64 %i.bcw, i64 %i.bcv
  %i.bcy = sub nsw i64 12, %i.bcx
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.ge:                                            ; preds = %bb.ga
  %.not99.i186.i = icmp eq i32 %i.aqp, 0
  br i1 %.not99.i186.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.bcz = mul i32 %i.aqp, 5243
  %i.bda = lshr i32 %i.bcz, 19                    ; 3 uses
  %.neg101.i187.i = mul nsw i32 %i.bda, -100
  %i.bdb = add i32 %.neg101.i187.i, %i.aqp        ; 3 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 4
  %i.bdd = shl nuw nsw i32 %i.bda, 1
  %i.bde = zext nneg i32 %i.bdd to i64
  %i.bdf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bde
  %i.bdg = load i16, ptr %i.bdf, align 2
  store i16 %i.bdg, ptr %i.bdc, align 1
  %i.bdh = getelementptr inbounds nuw i8, ptr %.ptr1004, i64 6
  %i.bdi = shl nuw i32 %i.bdb, 1
  %i.bdj = zext i32 %i.bdi to i64
  %i.bdk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bdj
  %i.bdl = load i16, ptr %i.bdk, align 2
  store i16 %i.bdl, ptr %i.bdh, align 1
  %i.bdm = zext nneg i32 %i.bda to i64
  %i.bdn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdm
  %i.bdo = load i8, ptr %i.bdn, align 1, !tbaa !99
  %i.bdp = zext i8 %i.bdo to i64
  %i.bdq = zext i32 %i.bdb to i64
  %i.bdr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdq
  %i.bds = load i8, ptr %i.bdr, align 1, !tbaa !99
  %i.bdt = zext i8 %i.bds to i64
  %.not102.i188.i = icmp eq i32 %i.bdb, 0
  %i.bdu = add nuw nsw i64 %i.bdp, 2
  %i.bdv = select i1 %.not102.i188.i, i64 %i.bdu, i64 %i.bdt
  %i.bdw = sub nsw i64 8, %i.bdv
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

bb.gg:                                            ; preds = %bb.ge
  %i.bdx = zext i32 %i.aqw to i64
  %i.bdy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.bdx
  %i.bdz = load i8, ptr %i.bdy, align 1, !tbaa !99
  %i.bea = zext i8 %i.bdz to i64
  %i.beb = zext i32 %i.aqx to i64
  %i.bec = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.beb
  %i.bed = load i8, ptr %i.bec, align 1, !tbaa !99
  %i.bee = zext i8 %i.bed to i64
  %.not100.i189.i = icmp eq i32 %i.aqx, 0
  %i.bef = select i1 %.not100.i189.i, i64 %i.bea, i64 0
  %i.beg = add nuw nsw i64 %i.bef, %i.bee
  %i.beh = sub nsw i64 4, %i.beg
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i: ; preds = %bb.gc, %bb.gd, %bb.gg, %bb.gf
  %.pn.i182.i.pn.in = phi i64 [ %i.beh, %bb.gg ], [ %i.bdw, %bb.gf ], [ %i.bcn, %bb.gc ], [ %i.bcy, %bb.gd ]
  %.pn.i182.i.pn = and i64 %.pn.i182.i.pn.in, 4294967295
  %.1.i184.i.idx = add nuw nsw i64 %.pn.i182.i.pn, %.add998 ; 2 uses
  %.1.i184.i.ptr = getelementptr inbounds nuw i8, ptr %i.aee, i64 %.1.i184.i.idx
  %i.bei = icmp eq i64 %.1.i184.i.idx, 2
  %.neg130.i.i = sext i1 %i.bei to i64
  %i.bej = getelementptr inbounds i8, ptr %.1.i184.i.ptr, i64 %.neg130.i.i ; 2 uses
  %i.bek = add nsw i32 %i.aqi, -1                 ; 2 uses
  %i.bel = load i8, ptr %.ptr1002, align 1, !tbaa !99
  store i8 %i.bel, ptr %i.aee, align 1, !tbaa !99
  store i8 46, ptr %.ptr1002, align 1, !tbaa !99
  store i8 101, ptr %i.bej, align 1, !tbaa !99
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bej, i64 1 ; 2 uses
  store i8 45, ptr %i.bem, align 1, !tbaa !99
  %.lobit.i191.i = lshr i32 %i.bek, 31
  %i.ben = zext nneg i32 %.lobit.i191.i to i64
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bem, i64 %i.ben ; 5 uses
  %i.bep = tail call i32 @llvm.abs.i32(i32 %i.bek, i1 true) ; 5 uses
  %i.beq = icmp samesign ult i32 %i.bep, 100
  br i1 %i.beq, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit190.i
  %i.ber = icmp samesign ult i32 %i.bep, 10       ; 2 uses
  %i.bes = shl nuw nsw i32 %i.bep, 1
  %i.bet = zext nneg i32 %i.bes to i64
  %i.beu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.bet
end_hunk_3
