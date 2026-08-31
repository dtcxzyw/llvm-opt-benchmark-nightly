Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/nlp_builder?download=true
inline.NumInlined: 1624
inline.NumDeleted: 584
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6casadi10NlImporterC2ERNS_10NlpBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3mapIS8_NS_11GenericTypeESt4lessIS8_ESaISt4pairIS9_SC_EEE:bb.a
  store ptr %i.bkd, ptr %i.bjt, align 8, !tbaa !177
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit

_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit:            ; preds = %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit_crit_edge, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %bb.ix, %bb.iw
  %i.bke = phi i64 [ %.pre1141, %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit_crit_edge ], [ %i.bjs, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ], [ %i.bjs, %bb.ix ], [ %i.bjs, %bb.iw ] ; 7 uses
  %i.bkf = phi ptr [ %.pre1140, %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit_crit_edge ], [ %i.bjq, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ], [ %i.bjq, %bb.ix ], [ %i.bjq, %bb.iw ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkf, i64 80 ; 2 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkf, i64 88 ; 2 uses
  %i.bki = load ptr, ptr %i.bkh, align 8, !tbaa !177 ; 3 uses
  %i.bkj = load ptr, ptr %i.bkg, align 8, !tbaa !180 ; 2 uses
  %i.bkk = ptrtoint ptr %i.bki to i64
  %i.bkl = ptrtoint ptr %i.bkj to i64
  %i.bkm = sub i64 %i.bkk, %i.bkl
  %i.bkn = ashr exact i64 %i.bkm, 3               ; 3 uses
  %i.bko = icmp ugt i64 %i.bke, %i.bkn
  br i1 %i.bko, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit
  %i.bkp = sub nuw i64 %i.bke, %i.bkn
  invoke void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.bkg, ptr %i.bki, i64 noundef %i.bkp, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6casadiL3infE)
          to label %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit920_crit_edge unwind label %bb.hp

._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit920_crit_edge: ; preds = %bb.iy
  %.pre1142 = load ptr, ptr %0, align 8, !tbaa !169
  %.pre1143 = load i64, ptr %i.nv, align 8, !tbaa !165
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit920

bb.iz:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit
  %i.bkq = icmp ult i64 %i.bke, %i.bkn
  br i1 %i.bkq, label %bb.ja, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit920

bb.ja:                                            ; preds = %bb.iz
  %i.bkr = getelementptr inbounds nuw [8 x i8], ptr %i.bkj, i64 %i.bke ; 2 uses
  %.not.i.i917 = icmp eq ptr %i.bki, %i.bkr
  br i1 %.not.i.i917, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit920, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i918

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i918:     ; preds = %bb.ja
  store ptr %i.bkr, ptr %i.bkh, align 8, !tbaa !177
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit920

_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit920:         ; preds = %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit920_crit_edge, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i918, %bb.ja, %bb.iz
  %i.bks = phi i64 [ %.pre1143, %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit920_crit_edge ], [ %i.bke, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i918 ], [ %i.bke, %bb.ja ], [ %i.bke, %bb.iz ] ; 4 uses
  %i.bkt = phi ptr [ %.pre1142, %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit920_crit_edge ], [ %i.bkf, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i918 ], [ %i.bkf, %bb.ja ], [ %i.bkf, %bb.iz ] ; 5 uses
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkt, i64 152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !175
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bkt, i64 160 ; 2 uses
  %i.bkw = load ptr, ptr %i.bkv, align 8, !tbaa !177 ; 3 uses
  %i.bkx = load ptr, ptr %i.bku, align 8, !tbaa !180 ; 2 uses
  %i.bky = ptrtoint ptr %i.bkw to i64
  %i.bkz = ptrtoint ptr %i.bkx to i64
  %i.bla = sub i64 %i.bky, %i.bkz
  %i.blb = ashr exact i64 %i.bla, 3               ; 3 uses
  %i.blc = icmp ugt i64 %i.bks, %i.blb
  br i1 %i.blc, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit920
  %i.bld = sub nuw i64 %i.bks, %i.blb
  invoke void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.bku, ptr %i.bkw, i64 noundef %i.bld, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit924_crit_edge unwind label %bb.jv

._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit924_crit_edge: ; preds = %bb.jb
  %.pre1144 = load ptr, ptr %0, align 8, !tbaa !169
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit924

bb.jc:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit920
  %i.ble = icmp ult i64 %i.bks, %i.blb
  br i1 %i.ble, label %bb.jd, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit924

bb.jd:                                            ; preds = %bb.jc
  %i.blf = getelementptr inbounds nuw [8 x i8], ptr %i.bkx, i64 %i.bks ; 2 uses
  %.not.i.i921 = icmp eq ptr %i.bkw, %i.blf
  br i1 %.not.i.i921, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit924, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i922

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i922:     ; preds = %bb.jd
  store ptr %i.blf, ptr %i.bkv, align 8, !tbaa !177
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit924

_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit924:         ; preds = %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit924_crit_edge, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i922, %bb.jd, %bb.jc
  %i.blg = phi ptr [ %.pre1144, %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit924_crit_edge ], [ %i.bkt, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i922 ], [ %i.bkt, %bb.jd ], [ %i.bkt, %bb.jc ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.blh = getelementptr inbounds nuw i8, ptr %i.blg, i64 104 ; 2 uses
  %i.bli = load i64, ptr %i.nx, align 8, !tbaa !174 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store double -inf, ptr %i.g, align 8, !tbaa !175
  %i.blj = getelementptr inbounds nuw i8, ptr %i.blg, i64 112 ; 2 uses
  %i.blk = load ptr, ptr %i.blj, align 8, !tbaa !177 ; 3 uses
  %i.bll = load ptr, ptr %i.blh, align 8, !tbaa !180 ; 2 uses
  %i.blm = ptrtoint ptr %i.blk to i64
  %i.bln = ptrtoint ptr %i.bll to i64
  %i.blo = sub i64 %i.blm, %i.bln
  %i.blp = ashr exact i64 %i.blo, 3               ; 3 uses
  %i.blq = icmp ugt i64 %i.bli, %i.blp
  br i1 %i.blq, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit924
  %i.blr = sub nuw i64 %i.bli, %i.blp
  invoke void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.blh, ptr %i.blk, i64 noundef %i.blr, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit928_crit_edge unwind label %bb.jw

._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit928_crit_edge: ; preds = %bb.je
  %.pre1145 = load ptr, ptr %0, align 8, !tbaa !169
  %.pre1146 = load i64, ptr %i.nx, align 8, !tbaa !174
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit928

bb.jf:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit924
  %i.bls = icmp ult i64 %i.bli, %i.blp
  br i1 %i.bls, label %bb.jg, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit928

bb.jg:                                            ; preds = %bb.jf
  %i.blt = getelementptr inbounds nuw [8 x i8], ptr %i.bll, i64 %i.bli ; 2 uses
  %.not.i.i925 = icmp eq ptr %i.blk, %i.blt
  br i1 %.not.i.i925, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit928, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i926

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i926:     ; preds = %bb.jg
  store ptr %i.blt, ptr %i.blj, align 8, !tbaa !177
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit928

_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit928:         ; preds = %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit928_crit_edge, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i926, %bb.jg, %bb.jf
  %i.blu = phi i64 [ %.pre1146, %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit928_crit_edge ], [ %i.bli, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i926 ], [ %i.bli, %bb.jg ], [ %i.bli, %bb.jf ] ; 7 uses
  %i.blv = phi ptr [ %.pre1145, %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit928_crit_edge ], [ %i.blg, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i926 ], [ %i.blg, %bb.jg ], [ %i.blg, %bb.jf ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blv, i64 128 ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blv, i64 136 ; 2 uses
  %i.bly = load ptr, ptr %i.blx, align 8, !tbaa !177 ; 3 uses
  %i.blz = load ptr, ptr %i.blw, align 8, !tbaa !180 ; 2 uses
  %i.bma = ptrtoint ptr %i.bly to i64
  %i.bmb = ptrtoint ptr %i.blz to i64
  %i.bmc = sub i64 %i.bma, %i.bmb
  %i.bmd = ashr exact i64 %i.bmc, 3               ; 3 uses
  %i.bme = icmp ugt i64 %i.blu, %i.bmd
  br i1 %i.bme, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit928
  %i.bmf = sub nuw i64 %i.blu, %i.bmd
  invoke void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.blw, ptr %i.bly, i64 noundef %i.bmf, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6casadiL3infE)
          to label %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit932_crit_edge unwind label %bb.hp

._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit932_crit_edge: ; preds = %bb.jh
  %.pre1147 = load ptr, ptr %0, align 8, !tbaa !169
  %.pre1148 = load i64, ptr %i.nx, align 8, !tbaa !174
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit932

bb.ji:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit928
  %i.bmg = icmp ult i64 %i.blu, %i.bmd
  br i1 %i.bmg, label %bb.jj, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit932

bb.jj:                                            ; preds = %bb.ji
  %i.bmh = getelementptr inbounds nuw [8 x i8], ptr %i.blz, i64 %i.blu ; 2 uses
  %.not.i.i929 = icmp eq ptr %i.bly, %i.bmh
  br i1 %.not.i.i929, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit932, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i930

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i930:     ; preds = %bb.jj
  store ptr %i.bmh, ptr %i.blx, align 8, !tbaa !177
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit932

_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit932:         ; preds = %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit932_crit_edge, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i930, %bb.jj, %bb.ji
  %i.bmi = phi i64 [ %.pre1148, %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit932_crit_edge ], [ %i.blu, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i930 ], [ %i.blu, %bb.jj ], [ %i.blu, %bb.ji ] ; 4 uses
  %i.bmj = phi ptr [ %.pre1147, %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit932_crit_edge ], [ %i.blv, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i930 ], [ %i.blv, %bb.jj ], [ %i.blv, %bb.ji ] ; 5 uses
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmj, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !175
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmj, i64 184 ; 2 uses
  %i.bmm = load ptr, ptr %i.bml, align 8, !tbaa !177 ; 3 uses
  %i.bmn = load ptr, ptr %i.bmk, align 8, !tbaa !180 ; 2 uses
  %i.bmo = ptrtoint ptr %i.bmm to i64
  %i.bmp = ptrtoint ptr %i.bmn to i64
  %i.bmq = sub i64 %i.bmo, %i.bmp
  %i.bmr = ashr exact i64 %i.bmq, 3               ; 3 uses
  %i.bms = icmp ugt i64 %i.bmi, %i.bmr
  br i1 %i.bms, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit932
  %i.bmt = sub nuw i64 %i.bmi, %i.bmr
  invoke void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.bmk, ptr %i.bmm, i64 noundef %i.bmt, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936_crit_edge unwind label %bb.jx

._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936_crit_edge: ; preds = %bb.jk
  %.pre1149 = load ptr, ptr %0, align 8, !tbaa !169
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936

bb.jl:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit932
  %i.bmu = icmp ult i64 %i.bmi, %i.bmr
  br i1 %i.bmu, label %bb.jm, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936

bb.jm:                                            ; preds = %bb.jl
  %i.bmv = getelementptr inbounds nuw [8 x i8], ptr %i.bmn, i64 %i.bmi ; 2 uses
  %.not.i.i933 = icmp eq ptr %i.bmm, %i.bmv
  br i1 %.not.i.i933, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i934

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i934:     ; preds = %bb.jm
  store ptr %i.bmv, ptr %i.bml, align 8, !tbaa !177
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936

_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936:         ; preds = %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936_crit_edge, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i934, %bb.jm, %bb.jl
  %i.bmw = phi ptr [ %.pre1149, %._ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936_crit_edge ], [ %i.bmj, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i934 ], [ %i.bmj, %bb.jm ], [ %i.bmj, %bb.jl ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmw, i64 200
  %i.bmy = load ptr, ptr %i.bmx, align 8, !tbaa !181
  %82 = ptrtoint ptr %i.bmy to i64
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmw, i64 216
  store i64 %82, ptr %i.bmz, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bmw, i64 224
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.bna = load i64, ptr %i.afs, align 8, !tbaa !184 ; 3 uses
  %i.bnb = load i64, ptr %i.aqc, align 8, !tbaa !185 ; 3 uses
  %i.bnc = icmp sgt i64 %i.bna, %i.bnb
  br i1 %i.bnc, label %.lr.ph1105, label %.preheader1096

.preheader1096:                                   ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936
  %i.bnd = phi i64 [ %i.bna, %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936 ], [ %i.bok, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ]
  %i.bne = phi i64 [ %i.bnb, %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936 ], [ %i.boj, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 2 uses
  %i.bnf = icmp sgt i64 %i.bne, 0
  br i1 %i.bnf, label %.lr.ph1107, label %.preheader1095

bb.jn:                                            ; preds = %._crit_edge.i.i899
  %i.bng = landingpad { ptr, i32 }
          cleanup
  br label %.body904

.body904:                                         ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit5.i, %bb.jn
  %eh.lpad-body905 = phi { ptr, i32 } [ %i.bng, %bb.jn ], [ %i.bhv, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit5.i ]
  %i.bnh = load ptr, ptr %67, align 8, !tbaa !14  ; 2 uses
  %i.bni = icmp eq ptr %i.bnh, %i.bhp
  br i1 %i.bni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i937

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i937: ; preds = %.body904
  %i.bnj = load i64, ptr %i.bhp, align 8, !tbaa !16
  %i.bnk = add i64 %i.bnj, 1
  call void @_ZdlPvm(ptr noundef %i.bnh, i64 noundef %i.bnk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939: ; preds = %.body904, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i937
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #22
  br label %bb.mm

bb.jo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911
  %i.bnl = landingpad { ptr, i32 }
          cleanup
  br label %bb.jq

bb.jp:                                            ; preds = %bb.iq
  %i.bnm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %68) #22
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  %.pn214 = phi { ptr, i32 } [ %i.bnm, %bb.jp ], [ %i.bnl, %bb.jo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #22
  br label %bb.mm

bb.jr:                                            ; preds = %_ZN6casadi2MXaSERKS0_.exit
  %i.bnn = landingpad { ptr, i32 }
          cleanup
  br label %bb.jt

bb.js:                                            ; preds = %bb.is
  %i.bno = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #22
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jr
  %.pn216 = phi { ptr, i32 } [ %i.bno, %bb.js ], [ %i.bnn, %bb.jr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #22
  br label %bb.mm

bb.ju:                                            ; preds = %bb.iv
  %i.bnp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %bb.mm

bb.jv:                                            ; preds = %bb.jb
  %i.bnq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %bb.mm

bb.jw:                                            ; preds = %bb.je
  %i.bnr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %bb.mm

bb.jx:                                            ; preds = %bb.jk
  %i.bns = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %bb.mm

.lr.ph1105:                                       ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %i.bnt = phi i64 [ %i.boj, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ], [ %i.bnb, %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936 ]
  %i.bnu = phi i64 [ %i.bok, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ], [ %i.bna, %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936 ]
  %.01391104 = phi i64 [ %i.bol, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ], [ 0, %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit936 ]
  %i.bnv = load ptr, ptr %0, align 8, !tbaa !169, !nonnull !95, !align !170 ; 4 uses
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 216 ; 2 uses
  %i.bnx = load ptr, ptr %i.bnw, align 8, !tbaa !181 ; 5 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnv, i64 232
  %i.bnz = load ptr, ptr %i.bny, align 8, !tbaa !186
  %.not.i940 = icmp eq ptr %i.bnx, %i.bnz
  %.sroa.2.0..sroa_idx.i.i941 = getelementptr inbounds nuw i8, ptr %i.bnv, i64 224 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i941, align 8 ; 4 uses
  br i1 %.not.i940, label %bb.ka, label %bb.jy

bb.jy:                                            ; preds = %.lr.ph1105
  %i.boa = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.boa, ptr %.sroa.2.0..sroa_idx.i.i941, align 8, !tbaa !189
  %i.bob = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.bob, label %bb.jz, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.jz:                                            ; preds = %bb.jy
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i941, align 8, !tbaa !189
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bnx, i64 8
  store ptr %i.boc, ptr %i.bnw, align 8, !tbaa !181
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.jz, %bb.jy
  %i.bod = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.boe = shl nuw i64 1, %i.bod
  %i.bof = xor i64 %i.boe, -1
  %i.bog = load i64, ptr %i.bnx, align 8, !tbaa !12
  %i.boh = and i64 %i.bog, %i.bof
  store i64 %i.boh, ptr %i.bnx, align 8, !tbaa !12
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.ka:                                            ; preds = %.lr.ph1105
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bnv, i64 200
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.boi, ptr %i.bnx, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext false)
          to label %._ZNSt6vectorIbSaIbEE9push_backEb.exit_crit_edge unwind label %bb.kb

._ZNSt6vectorIbSaIbEE9push_backEb.exit_crit_edge: ; preds = %bb.ka
  %.pre1150 = load i64, ptr %i.afs, align 8, !tbaa !184
  %.pre1151 = load i64, ptr %i.aqc, align 8, !tbaa !185
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %._ZNSt6vectorIbSaIbEE9push_backEb.exit_crit_edge, %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.boj = phi i64 [ %.pre1151, %._ZNSt6vectorIbSaIbEE9push_backEb.exit_crit_edge ], [ %i.bnt, %_ZNSt13_Bit_iteratorppEi.exit.i ] ; 3 uses
  %i.bok = phi i64 [ %.pre1150, %._ZNSt6vectorIbSaIbEE9push_backEb.exit_crit_edge ], [ %i.bnu, %_ZNSt13_Bit_iteratorppEi.exit.i ] ; 3 uses
  %i.bol = add nuw nsw i64 %.01391104, 1          ; 2 uses
  %i.bom = sub nsw i64 %i.bok, %i.boj
  %i.bon = icmp slt i64 %i.bol, %i.bom
  br i1 %i.bon, label %.lr.ph1105, label %.preheader1096, !llvm.loop !190

bb.kb:                                            ; preds = %bb.ka
  %i.boo = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

.preheader1095.loopexit:                          ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit948
  %.pre1153 = load i64, ptr %i.afs, align 8, !tbaa !184
  br label %.preheader1095

.preheader1095:                                   ; preds = %.preheader1095.loopexit, %.preheader1096
  %i.bop = phi i64 [ %.pre1153, %.preheader1095.loopexit ], [ %i.bnd, %.preheader1096 ] ; 2 uses
  %i.boq = load i64, ptr %i.afo, align 8, !tbaa !191 ; 3 uses
  %i.bor = load i64, ptr %i.aqe, align 8, !tbaa !192 ; 3 uses
  %i.bos = add i64 %i.bop, %i.bor
  %i.bot = sub i64 %i.boq, %i.bos
  %i.bou = icmp sgt i64 %i.bot, 0
  br i1 %i.bou, label %.lr.ph1112, label %.preheader1094

.lr.ph1107:                                       ; preds = %.preheader1096, %_ZNSt6vectorIbSaIbEE9push_backEb.exit948
  %i.bov = phi i64 [ %i.bpj, %_ZNSt6vectorIbSaIbEE9push_backEb.exit948 ], [ %i.bne, %.preheader1096 ]
  %.01381106 = phi i64 [ %i.bpk, %_ZNSt6vectorIbSaIbEE9push_backEb.exit948 ], [ 0, %.preheader1096 ]
  %i.bow = load ptr, ptr %0, align 8, !tbaa !169, !nonnull !95, !align !170 ; 4 uses
  %i.box = getelementptr inbounds nuw i8, ptr %i.bow, i64 216 ; 2 uses
  %i.boy = load ptr, ptr %i.box, align 8, !tbaa !181 ; 5 uses
  %i.boz = getelementptr inbounds nuw i8, ptr %i.bow, i64 232
  %i.bpa = load ptr, ptr %i.boz, align 8, !tbaa !186
  %.not.i943 = icmp eq ptr %i.boy, %i.bpa
  %.sroa.2.0..sroa_idx.i.i944 = getelementptr inbounds nuw i8, ptr %i.bow, i64 224 ; 3 uses
  %.sroa.2.0.copyload.i11.i945 = load i32, ptr %.sroa.2.0..sroa_idx.i.i944, align 8 ; 4 uses
  br i1 %.not.i943, label %bb.ke, label %bb.kc

bb.kc:                                            ; preds = %.lr.ph1107
  %i.bpb = add i32 %.sroa.2.0.copyload.i11.i945, 1
  store i32 %i.bpb, ptr %.sroa.2.0..sroa_idx.i.i944, align 8, !tbaa !189
  %i.bpc = icmp eq i32 %.sroa.2.0.copyload.i11.i945, 63
  br i1 %i.bpc, label %bb.kd, label %_ZNSt13_Bit_iteratorppEi.exit.i946

bb.kd:                                            ; preds = %bb.kc
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i944, align 8, !tbaa !189
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.boy, i64 8
  store ptr %i.bpd, ptr %i.box, align 8, !tbaa !181
  br label %_ZNSt13_Bit_iteratorppEi.exit.i946

_ZNSt13_Bit_iteratorppEi.exit.i946:               ; preds = %bb.kd, %bb.kc
  %i.bpe = zext nneg i32 %.sroa.2.0.copyload.i11.i945 to i64
  %i.bpf = shl nuw i64 1, %i.bpe
  %i.bpg = load i64, ptr %i.boy, align 8, !tbaa !12
  %i.bph = or i64 %i.bpg, %i.bpf
  store i64 %i.bph, ptr %i.boy, align 8, !tbaa !12
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit948

bb.ke:                                            ; preds = %.lr.ph1107
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bow, i64 200
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.bpi, ptr %i.boy, i32 %.sroa.2.0.copyload.i11.i945, i1 noundef zeroext true)
          to label %._ZNSt6vectorIbSaIbEE9push_backEb.exit948_crit_edge unwind label %bb.kf

end_hunk_0
begin_hunk_1_@_ZN6casadi10NlImporterC2ERNS_10NlpBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3mapIS8_NS_11GenericTypeESt4lessIS8_ESaISt4pairIS9_SC_EEE:bb.a
  %i.bss = load i64, ptr %i.nv, align 8, !tbaa !165 ; 2 uses
  %i.bst = load i64, ptr %i.aqa, align 8, !tbaa !199 ; 3 uses
  %i.bsu = load i64, ptr %i.apy, align 8, !tbaa !200 ; 3 uses
  %i.bsv = add i64 %., %i.bst
  %i.bsw = add i64 %i.bsv, %i.bsu
  %i.bsx = sub i64 %i.bss, %i.bsw
  %i.bsy = icmp sgt i64 %i.bsx, 0
  br i1 %i.bsy, label %.lr.ph1129, label %.preheader1091

.lr.ph1121:                                       ; preds = %.preheader1092, %_ZNSt6vectorIbSaIbEE9push_backEb.exit972
  %i.bsz = phi i64 [ %i.btn, %_ZNSt6vectorIbSaIbEE9push_backEb.exit972 ], [ %i.brp, %.preheader1092 ]
  %.01341120 = phi i64 [ %i.bto, %_ZNSt6vectorIbSaIbEE9push_backEb.exit972 ], [ 0, %.preheader1092 ]
  %i.bta = load ptr, ptr %0, align 8, !tbaa !169, !nonnull !95, !align !170 ; 4 uses
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bta, i64 216 ; 2 uses
  %i.btc = load ptr, ptr %i.btb, align 8, !tbaa !181 ; 5 uses
  %i.btd = getelementptr inbounds nuw i8, ptr %i.bta, i64 232
  %i.bte = load ptr, ptr %i.btd, align 8, !tbaa !186
  %.not.i967 = icmp eq ptr %i.btc, %i.bte
  %.sroa.2.0..sroa_idx.i.i968 = getelementptr inbounds nuw i8, ptr %i.bta, i64 224 ; 3 uses
  %.sroa.2.0.copyload.i11.i969 = load i32, ptr %.sroa.2.0..sroa_idx.i.i968, align 8 ; 4 uses
  br i1 %.not.i967, label %bb.ku, label %bb.ks

bb.ks:                                            ; preds = %.lr.ph1121
  %i.btf = add i32 %.sroa.2.0.copyload.i11.i969, 1
  store i32 %i.btf, ptr %.sroa.2.0..sroa_idx.i.i968, align 8, !tbaa !189
  %i.btg = icmp eq i32 %.sroa.2.0.copyload.i11.i969, 63
  br i1 %i.btg, label %bb.kt, label %_ZNSt13_Bit_iteratorppEi.exit.i970

bb.kt:                                            ; preds = %bb.ks
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i968, align 8, !tbaa !189
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btc, i64 8
  store ptr %i.bth, ptr %i.btb, align 8, !tbaa !181
  br label %_ZNSt13_Bit_iteratorppEi.exit.i970

_ZNSt13_Bit_iteratorppEi.exit.i970:               ; preds = %bb.kt, %bb.ks
  %i.bti = zext nneg i32 %.sroa.2.0.copyload.i11.i969 to i64
  %i.btj = shl nuw i64 1, %i.bti
  %i.btk = load i64, ptr %i.btc, align 8, !tbaa !12
  %i.btl = or i64 %i.btk, %i.btj
  store i64 %i.btl, ptr %i.btc, align 8, !tbaa !12
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit972

bb.ku:                                            ; preds = %.lr.ph1121
  %i.btm = getelementptr inbounds nuw i8, ptr %i.bta, i64 200
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.btm, ptr %i.btc, i32 %.sroa.2.0.copyload.i11.i969, i1 noundef zeroext true)
          to label %._ZNSt6vectorIbSaIbEE9push_backEb.exit972_crit_edge unwind label %bb.kv

._ZNSt6vectorIbSaIbEE9push_backEb.exit972_crit_edge: ; preds = %bb.ku
  %.pre1162 = load i64, ptr %i.aqg, align 8, !tbaa !196
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit972

_ZNSt6vectorIbSaIbEE9push_backEb.exit972:         ; preds = %._ZNSt6vectorIbSaIbEE9push_backEb.exit972_crit_edge, %_ZNSt13_Bit_iteratorppEi.exit.i970
  %i.btn = phi i64 [ %.pre1162, %._ZNSt6vectorIbSaIbEE9push_backEb.exit972_crit_edge ], [ %i.bsz, %_ZNSt13_Bit_iteratorppEi.exit.i970 ] ; 2 uses
  %i.bto = add nuw nsw i64 %.01341120, 1          ; 2 uses
  %i.btp = icmp slt i64 %i.bto, %i.btn
  br i1 %i.btp, label %.lr.ph1121, label %._crit_edge1122.loopexit, !llvm.loop !201

bb.kv:                                            ; preds = %bb.ku
  %i.btq = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

.preheader1091:                                   ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit978, %._crit_edge1122
  %i.btr = phi i64 [ %i.bst, %._crit_edge1122 ], [ %i.bum, %_ZNSt6vectorIbSaIbEE9push_backEb.exit978 ]
  %i.bts = phi i64 [ %i.bsu, %._crit_edge1122 ], [ %i.bul, %_ZNSt6vectorIbSaIbEE9push_backEb.exit978 ] ; 2 uses
  %i.btt = icmp sgt i64 %i.bts, 0
  br i1 %i.btt, label %.lr.ph1131, label %.preheader

.lr.ph1129:                                       ; preds = %._crit_edge1122, %_ZNSt6vectorIbSaIbEE9push_backEb.exit978
  %i.btu = phi i64 [ %i.bul, %_ZNSt6vectorIbSaIbEE9push_backEb.exit978 ], [ %i.bsu, %._crit_edge1122 ]
  %i.btv = phi i64 [ %i.bum, %_ZNSt6vectorIbSaIbEE9push_backEb.exit978 ], [ %i.bst, %._crit_edge1122 ]
  %i.btw = phi i64 [ %i.bun, %_ZNSt6vectorIbSaIbEE9push_backEb.exit978 ], [ %i.bss, %._crit_edge1122 ]
  %.01331127 = phi i64 [ %i.buo, %_ZNSt6vectorIbSaIbEE9push_backEb.exit978 ], [ 0, %._crit_edge1122 ]
  %i.btx = load ptr, ptr %0, align 8, !tbaa !169, !nonnull !95, !align !170 ; 4 uses
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btx, i64 216 ; 2 uses
  %i.btz = load ptr, ptr %i.bty, align 8, !tbaa !181 ; 5 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btx, i64 232
  %i.bub = load ptr, ptr %i.bua, align 8, !tbaa !186
  %.not.i973 = icmp eq ptr %i.btz, %i.bub
  %.sroa.2.0..sroa_idx.i.i974 = getelementptr inbounds nuw i8, ptr %i.btx, i64 224 ; 3 uses
  %.sroa.2.0.copyload.i11.i975 = load i32, ptr %.sroa.2.0..sroa_idx.i.i974, align 8 ; 4 uses
  br i1 %.not.i973, label %bb.ky, label %bb.kw

bb.kw:                                            ; preds = %.lr.ph1129
  %i.buc = add i32 %.sroa.2.0.copyload.i11.i975, 1
  store i32 %i.buc, ptr %.sroa.2.0..sroa_idx.i.i974, align 8, !tbaa !189
  %i.bud = icmp eq i32 %.sroa.2.0.copyload.i11.i975, 63
  br i1 %i.bud, label %bb.kx, label %_ZNSt13_Bit_iteratorppEi.exit.i976

bb.kx:                                            ; preds = %bb.kw
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i974, align 8, !tbaa !189
  %i.bue = getelementptr inbounds nuw i8, ptr %i.btz, i64 8
  store ptr %i.bue, ptr %i.bty, align 8, !tbaa !181
  br label %_ZNSt13_Bit_iteratorppEi.exit.i976

_ZNSt13_Bit_iteratorppEi.exit.i976:               ; preds = %bb.kx, %bb.kw
  %i.buf = zext nneg i32 %.sroa.2.0.copyload.i11.i975 to i64
  %i.bug = shl nuw i64 1, %i.buf
  %i.buh = xor i64 %i.bug, -1
  %i.bui = load i64, ptr %i.btz, align 8, !tbaa !12
  %i.buj = and i64 %i.bui, %i.buh
  store i64 %i.buj, ptr %i.btz, align 8, !tbaa !12
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit978

bb.ky:                                            ; preds = %.lr.ph1129
  %i.buk = getelementptr inbounds nuw i8, ptr %i.btx, i64 200
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.buk, ptr %i.btz, i32 %.sroa.2.0.copyload.i11.i975, i1 noundef zeroext false)
          to label %._ZNSt6vectorIbSaIbEE9push_backEb.exit978_crit_edge unwind label %bb.kz

._ZNSt6vectorIbSaIbEE9push_backEb.exit978_crit_edge: ; preds = %bb.ky
  %.pre1165 = load i64, ptr %i.nv, align 8, !tbaa !165
  %.pre1166 = load i64, ptr %i.aqa, align 8, !tbaa !199
  %.pre1167 = load i64, ptr %i.apy, align 8, !tbaa !200
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit978

_ZNSt6vectorIbSaIbEE9push_backEb.exit978:         ; preds = %._ZNSt6vectorIbSaIbEE9push_backEb.exit978_crit_edge, %_ZNSt13_Bit_iteratorppEi.exit.i976
  %i.bul = phi i64 [ %.pre1167, %._ZNSt6vectorIbSaIbEE9push_backEb.exit978_crit_edge ], [ %i.btu, %_ZNSt13_Bit_iteratorppEi.exit.i976 ] ; 3 uses
  %i.bum = phi i64 [ %.pre1166, %._ZNSt6vectorIbSaIbEE9push_backEb.exit978_crit_edge ], [ %i.btv, %_ZNSt13_Bit_iteratorppEi.exit.i976 ] ; 3 uses
  %i.bun = phi i64 [ %.pre1165, %._ZNSt6vectorIbSaIbEE9push_backEb.exit978_crit_edge ], [ %i.btw, %_ZNSt13_Bit_iteratorppEi.exit.i976 ] ; 2 uses
  %i.buo = add nuw nsw i64 %.01331127, 1          ; 2 uses
  %i.bup = add i64 %., %i.bum
  %i.buq = add i64 %i.bup, %i.bul
  %i.bur = sub i64 %i.bun, %i.buq
  %i.bus = icmp slt i64 %i.buo, %i.bur
  br i1 %i.bus, label %.lr.ph1129, label %.preheader1091, !llvm.loop !202

bb.kz:                                            ; preds = %bb.ky
  %i.but = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

.preheader.loopexit:                              ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit984
  %.pre1169 = load i64, ptr %i.aqa, align 8, !tbaa !199
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader1091
  %i.buu = phi i64 [ %.pre1169, %.preheader.loopexit ], [ %i.btr, %.preheader1091 ] ; 2 uses
  %i.buv = icmp sgt i64 %i.buu, 0
  br i1 %i.buv, label %.lr.ph1133, label %._crit_edge1134

.lr.ph1131:                                       ; preds = %.preheader1091, %_ZNSt6vectorIbSaIbEE9push_backEb.exit984
  %i.buw = phi i64 [ %i.bvk, %_ZNSt6vectorIbSaIbEE9push_backEb.exit984 ], [ %i.bts, %.preheader1091 ]
  %.01321130 = phi i64 [ %i.bvl, %_ZNSt6vectorIbSaIbEE9push_backEb.exit984 ], [ 0, %.preheader1091 ]
  %i.bux = load ptr, ptr %0, align 8, !tbaa !169, !nonnull !95, !align !170 ; 4 uses
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bux, i64 216 ; 2 uses
  %i.buz = load ptr, ptr %i.buy, align 8, !tbaa !181 ; 5 uses
  %i.bva = getelementptr inbounds nuw i8, ptr %i.bux, i64 232
  %i.bvb = load ptr, ptr %i.bva, align 8, !tbaa !186
  %.not.i979 = icmp eq ptr %i.buz, %i.bvb
  %.sroa.2.0..sroa_idx.i.i980 = getelementptr inbounds nuw i8, ptr %i.bux, i64 224 ; 3 uses
  %.sroa.2.0.copyload.i11.i981 = load i32, ptr %.sroa.2.0..sroa_idx.i.i980, align 8 ; 4 uses
  br i1 %.not.i979, label %bb.lc, label %bb.la

bb.la:                                            ; preds = %.lr.ph1131
  %i.bvc = add i32 %.sroa.2.0.copyload.i11.i981, 1
  store i32 %i.bvc, ptr %.sroa.2.0..sroa_idx.i.i980, align 8, !tbaa !189
  %i.bvd = icmp eq i32 %.sroa.2.0.copyload.i11.i981, 63
  br i1 %i.bvd, label %bb.lb, label %_ZNSt13_Bit_iteratorppEi.exit.i982

bb.lb:                                            ; preds = %bb.la
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i980, align 8, !tbaa !189
  %i.bve = getelementptr inbounds nuw i8, ptr %i.buz, i64 8
  store ptr %i.bve, ptr %i.buy, align 8, !tbaa !181
  br label %_ZNSt13_Bit_iteratorppEi.exit.i982

_ZNSt13_Bit_iteratorppEi.exit.i982:               ; preds = %bb.lb, %bb.la
  %i.bvf = zext nneg i32 %.sroa.2.0.copyload.i11.i981 to i64
  %i.bvg = shl nuw i64 1, %i.bvf
  %i.bvh = load i64, ptr %i.buz, align 8, !tbaa !12
  %i.bvi = or i64 %i.bvh, %i.bvg
  store i64 %i.bvi, ptr %i.buz, align 8, !tbaa !12
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit984

bb.lc:                                            ; preds = %.lr.ph1131
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bux, i64 200
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.bvj, ptr %i.buz, i32 %.sroa.2.0.copyload.i11.i981, i1 noundef zeroext true)
          to label %._ZNSt6vectorIbSaIbEE9push_backEb.exit984_crit_edge unwind label %bb.ld

._ZNSt6vectorIbSaIbEE9push_backEb.exit984_crit_edge: ; preds = %bb.lc
  %.pre1168 = load i64, ptr %i.apy, align 8, !tbaa !200
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit984

_ZNSt6vectorIbSaIbEE9push_backEb.exit984:         ; preds = %._ZNSt6vectorIbSaIbEE9push_backEb.exit984_crit_edge, %_ZNSt13_Bit_iteratorppEi.exit.i982
  %i.bvk = phi i64 [ %.pre1168, %._ZNSt6vectorIbSaIbEE9push_backEb.exit984_crit_edge ], [ %i.buw, %_ZNSt13_Bit_iteratorppEi.exit.i982 ] ; 2 uses
  %i.bvl = add nuw nsw i64 %.01321130, 1          ; 2 uses
  %i.bvm = icmp slt i64 %i.bvl, %i.bvk
  br i1 %i.bvm, label %.lr.ph1131, label %.preheader.loopexit, !llvm.loop !203

bb.ld:                                            ; preds = %bb.lc
  %i.bvn = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

._crit_edge1134:                                  ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit990, %.preheader
  %i.bvo = load ptr, ptr %0, align 8, !tbaa !169, !nonnull !95, !align !170 ; 4 uses
  %i.bvp = getelementptr inbounds nuw i8, ptr %i.bvo, i64 200
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvo, i64 216
  %i.bvr = load ptr, ptr %i.bvq, align 8, !tbaa !181
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvo, i64 224
  %i.bvt = load i32, ptr %i.bvs, align 8, !tbaa !189
  %83 = ptrtoint ptr %i.bvr to i64
  %84 = load ptr, ptr %i.bvp, align 8, !tbaa !181
  %i.bvu = ptrtoint ptr %84 to i64
  %i.bvv = sub i64 %83, %i.bvu
  %i.bvw = shl nsw i64 %i.bvv, 3
  %i.bvx = zext i32 %i.bvt to i64
  %i.bvy = add nsw i64 %i.bvw, %i.bvx
  %i.bvz = load i64, ptr %i.nv, align 8, !tbaa !165
  %i.bwa = icmp eq i64 %i.bvy, %i.bvz
  br i1 %i.bwa, label %bb.ly, label %bb.li

.lr.ph1133:                                       ; preds = %.preheader, %_ZNSt6vectorIbSaIbEE9push_backEb.exit990
  %i.bwb = phi i64 [ %i.bwp, %_ZNSt6vectorIbSaIbEE9push_backEb.exit990 ], [ %i.buu, %.preheader ]
  %.01311132 = phi i64 [ %i.bwq, %_ZNSt6vectorIbSaIbEE9push_backEb.exit990 ], [ 0, %.preheader ]
  %i.bwc = load ptr, ptr %0, align 8, !tbaa !169, !nonnull !95, !align !170 ; 4 uses
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bwc, i64 216 ; 2 uses
  %i.bwe = load ptr, ptr %i.bwd, align 8, !tbaa !181 ; 5 uses
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bwc, i64 232
  %i.bwg = load ptr, ptr %i.bwf, align 8, !tbaa !186
  %.not.i985 = icmp eq ptr %i.bwe, %i.bwg
  %.sroa.2.0..sroa_idx.i.i986 = getelementptr inbounds nuw i8, ptr %i.bwc, i64 224 ; 3 uses
  %.sroa.2.0.copyload.i11.i987 = load i32, ptr %.sroa.2.0..sroa_idx.i.i986, align 8 ; 4 uses
  br i1 %.not.i985, label %bb.lg, label %bb.le

bb.le:                                            ; preds = %.lr.ph1133
  %i.bwh = add i32 %.sroa.2.0.copyload.i11.i987, 1
  store i32 %i.bwh, ptr %.sroa.2.0..sroa_idx.i.i986, align 8, !tbaa !189
  %i.bwi = icmp eq i32 %.sroa.2.0.copyload.i11.i987, 63
  br i1 %i.bwi, label %bb.lf, label %_ZNSt13_Bit_iteratorppEi.exit.i988

bb.lf:                                            ; preds = %bb.le
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i986, align 8, !tbaa !189
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwe, i64 8
  store ptr %i.bwj, ptr %i.bwd, align 8, !tbaa !181
  br label %_ZNSt13_Bit_iteratorppEi.exit.i988

_ZNSt13_Bit_iteratorppEi.exit.i988:               ; preds = %bb.lf, %bb.le
  %i.bwk = zext nneg i32 %.sroa.2.0.copyload.i11.i987 to i64
  %i.bwl = shl nuw i64 1, %i.bwk
  %i.bwm = load i64, ptr %i.bwe, align 8, !tbaa !12
  %i.bwn = or i64 %i.bwm, %i.bwl
  store i64 %i.bwn, ptr %i.bwe, align 8, !tbaa !12
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit990

bb.lg:                                            ; preds = %.lr.ph1133
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bwc, i64 200
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.bwo, ptr %i.bwe, i32 %.sroa.2.0.copyload.i11.i987, i1 noundef zeroext true)
          to label %._ZNSt6vectorIbSaIbEE9push_backEb.exit990_crit_edge unwind label %bb.lh

._ZNSt6vectorIbSaIbEE9push_backEb.exit990_crit_edge: ; preds = %bb.lg
  %.pre1170 = load i64, ptr %i.aqa, align 8, !tbaa !199
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit990

_ZNSt6vectorIbSaIbEE9push_backEb.exit990:         ; preds = %._ZNSt6vectorIbSaIbEE9push_backEb.exit990_crit_edge, %_ZNSt13_Bit_iteratorppEi.exit.i988
  %i.bwp = phi i64 [ %.pre1170, %._ZNSt6vectorIbSaIbEE9push_backEb.exit990_crit_edge ], [ %i.bwb, %_ZNSt13_Bit_iteratorppEi.exit.i988 ] ; 2 uses
  %i.bwq = add nuw nsw i64 %.01311132, 1          ; 2 uses
  %i.bwr = icmp slt i64 %i.bwq, %i.bwp
  br i1 %i.bwr, label %.lr.ph1133, label %._crit_edge1134, !llvm.loop !204

bb.lh:                                            ; preds = %bb.lg
  %i.bws = landingpad { ptr, i32 }
          cleanup
  br label %bb.mm

bb.li:                                            ; preds = %._crit_edge1134
  %i.bwt = call ptr @__cxa_allocate_exception(i64 40) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %74)
          to label %bb.lj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1011.thread

bb.lj:                                            ; preds = %bb.li
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr noundef nonnull align 8 dereferenceable(32) %73)
          to label %bb.lk unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1008.thread

bb.lk:                                            ; preds = %bb.lj
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %71, ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @.str.21)
          to label %bb.ll unwind label %bb.lr

bb.ll:                                            ; preds = %bb.lk
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %78)
          to label %bb.lm unwind label %bb.ls

bb.lm:                                            ; preds = %bb.ll
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %76, ptr noundef nonnull @.str.40, ptr noundef nonnull align 8 dereferenceable(32) %77)
          to label %bb.ln unwind label %bb.lt

bb.ln:                                            ; preds = %bb.lm
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %79, i8 0, i64 24, i1 false), !alias.scope !205
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %75, ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull align 8 dereferenceable(24) %79)
          to label %bb.lo unwind label %bb.lu

bb.lo:                                            ; preds = %bb.ln
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %70, ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(32) %75)
          to label %bb.lp unwind label %bb.lv

bb.lp:                                            ; preds = %bb.lo
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bwt, ptr noundef nonnull align 8 dereferenceable(32) %70)
          to label %bb.lq unwind label %bb.lw

bb.lq:                                            ; preds = %bb.lp
  invoke void @__cxa_throw(ptr nonnull %i.bwt, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #21
          to label %bb.mw unwind label %bb.lw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1011.thread: ; preds = %bb.li
  %i.bwu = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split1661

bb.lr:                                            ; preds = %bb.lk
  %i.bwv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005

bb.ls:                                            ; preds = %bb.ll
  %i.bww = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002

bb.lt:                                            ; preds = %bb.lm
  %i.bwx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999

bb.lu:                                            ; preds = %bb.ln
  %i.bwy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996

bb.lv:                                            ; preds = %bb.lo
  %i.bwz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993

bb.lw:                                            ; preds = %bb.lq, %bb.lp
  %.0123 = phi i1 [ false, %bb.lq ], [ true, %bb.lp ] ; 2 uses
  %i.bxa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bxb = load ptr, ptr %70, align 8, !tbaa !14  ; 2 uses
  %i.bxc = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.bxd = icmp eq ptr %i.bxb, %i.bxc
  br i1 %i.bxd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i991

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i991: ; preds = %bb.lw
  %i.bxe = load i64, ptr %i.bxc, align 8, !tbaa !16
  %i.bxf = add i64 %i.bxe, 1
  call void @_ZdlPvm(ptr noundef %i.bxb, i64 noundef %i.bxf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993: ; preds = %bb.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i991, %bb.lv
  %.1124 = phi i1 [ true, %bb.lv ], [ %.0123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i991 ], [ %.0123, %bb.lw ] ; 2 uses
  %.pn218 = phi { ptr, i32 } [ %i.bwz, %bb.lv ], [ %i.bxa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i991 ], [ %i.bxa, %bb.lw ] ; 2 uses
  %i.bxg = load ptr, ptr %75, align 8, !tbaa !14  ; 2 uses
  %i.bxh = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.bxi = icmp eq ptr %i.bxg, %i.bxh
  br i1 %i.bxi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993
  %i.bxj = load i64, ptr %i.bxh, align 8, !tbaa !16
  %i.bxk = add i64 %i.bxj, 1
  call void @_ZdlPvm(ptr noundef %i.bxg, i64 noundef %i.bxk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994, %bb.lu
  %.2125 = phi i1 [ true, %bb.lu ], [ %.1124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994 ], [ %.1124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ] ; 2 uses
  %.pn218.pn = phi { ptr, i32 } [ %i.bwy, %bb.lu ], [ %.pn218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i994 ], [ %.pn218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit993 ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %79) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #22
  %i.bxl = load ptr, ptr %76, align 8, !tbaa !14  ; 2 uses
  %i.bxm = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 2 uses
  %i.bxn = icmp eq ptr %i.bxl, %i.bxm
  br i1 %i.bxn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996
  %i.bxo = load i64, ptr %i.bxm, align 8, !tbaa !16
  %i.bxp = add i64 %i.bxo, 1
  call void @_ZdlPvm(ptr noundef %i.bxl, i64 noundef %i.bxp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997, %bb.lt
  %.3126 = phi i1 [ true, %bb.lt ], [ %.2125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997 ], [ %.2125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996 ] ; 2 uses
  %.pn218.pn.pn = phi { ptr, i32 } [ %i.bwx, %bb.lt ], [ %.pn218.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i997 ], [ %.pn218.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit996 ] ; 2 uses
  %i.bxq = load ptr, ptr %77, align 8, !tbaa !14  ; 2 uses
  %i.bxr = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  %i.bxs = icmp eq ptr %i.bxq, %i.bxr
  br i1 %i.bxs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999
  %i.bxt = load i64, ptr %i.bxr, align 8, !tbaa !16
  %i.bxu = add i64 %i.bxt, 1
  call void @_ZdlPvm(ptr noundef %i.bxq, i64 noundef %i.bxu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1002: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000, %bb.ls
  %.4127 = phi i1 [ true, %bb.ls ], [ %.3126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1000 ], [ %.3126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit999 ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd:bb.a

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 8
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load double, ptr %1, align 8, !tbaa !175
  store double %i.bd, ptr %.0.i.i.i.i.i, align 8, !tbaa !175
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !177
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -8
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 4611686018427387900  ; 3 uses
  %i.bk = shl i64 %n.vec115, 3
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <2 x double> poison, double %i.i, i64 0
  %broadcast.splat117 = shufflevector <2 x double> %broadcast.splatinsert116, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 3
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x double> %broadcast.splat117, ptr %next.gep120, align 8, !tbaa !175
  store <2 x double> %broadcast.splat117, ptr %i.bn, align 8, !tbaa !175
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !374

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store double %i.i, ptr %.07.i.i.i72, align 8, !tbaa !175
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !375

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !180   ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 3                 ; 4 uses
  %i.bu = sub nsw i64 1152921504606846975, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #21
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 3
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load double, ptr %3, align 8, !tbaa !175 ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ci, 24
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 4611686018427387900  ; 3 uses
  %i.cl = shl i64 %n.vec141, 3
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <2 x double> poison, double %i.ch, i64 0
  %broadcast.splat143 = shufflevector <2 x double> %broadcast.splatinsert142, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 3
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <2 x double> %broadcast.splat143, ptr %next.gep146, align 8, !tbaa !175
  store <2 x double> %broadcast.splat143, ptr %i.co, align 8, !tbaa !175
  %index.next147 = add nuw i64 %index145, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !376

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store double %i.ch, ptr %.07.i.i.i.i.i.i.i77, align 8, !tbaa !175
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !377

_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 8
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !367

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ce, ptr align 8 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 8
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load double, ptr %i.bq, align 8, !tbaa !175
  store double %i.ct, ptr %i.ce, align 8, !tbaa !175
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 8
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !367

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr align 8 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 8
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load double, ptr %1, align 8, !tbaa !175
  store double %i.cy, ptr %i.cu, align 8, !tbaa !175
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !366
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #23
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !180
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !177
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !366
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit

_ZSt4fillIPddEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !186
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %4 = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %4, %i.h
  %i.j = shl nsw i64 %i.i, 3
  %i.k = zext i32 %2 to i64                       ; 2 uses
  %i.l = sub nsw i64 %i.g, %i.k
  %i.m = add i64 %i.l, %i.j                       ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.b
  %i.o = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 63
  %i.r = lshr i64 %i.o, 6
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.r
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.ai, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.m, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.s, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.022.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.q, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.021.i.i.i.i.i = phi ptr [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.b, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.515.020.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.f, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %i.t = add i32 %.sroa.515.020.i.i.i.i.i, -1
  %i.u = icmp eq i32 %.sroa.515.020.i.i.i.i.i, 0  ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.u, i32 63, i32 %i.t ; 2 uses
  %spec.select19.idx.i.i.i.i.i = select i1 %i.u, i64 -8, i64 0
  %spec.select19.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.021.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i ; 2 uses
  %i.v = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.w = shl nuw i64 1, %i.v
  %i.x = add i32 %.sroa.59.022.i.i.i.i.i, -1
  %i.y = icmp eq i32 %.sroa.59.022.i.i.i.i.i, 0   ; 2 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.y, i32 63, i32 %i.x ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.y, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.023.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %i.z = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.aa = shl nuw i64 1, %i.z                     ; 2 uses
  %i.ab = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !12
  %i.ac = and i64 %i.w, %i.ab
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ad = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !12
  %i.ae = or i64 %i.ad, %i.aa
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.af = xor i64 %i.aa, -1
  %i.ag = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !12
  %i.ah = and i64 %i.ag, %i.af
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.ae, %bb.c ], [ %i.ah, %bb.d ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !12
  %i.ai = add nsw i64 %.024.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.aj, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !378

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.b
  %i.ak = shl nuw i64 1, %i.k                     ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.al = load i64, ptr %1, align 8, !tbaa !12
  %i.am = or i64 %i.al, %i.ak
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.an = xor i64 %i.ak, -1
  %i.ao = load i64, ptr %1, align 8, !tbaa !12
  %i.ap = and i64 %i.ao, %i.an
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.ap, %bb.f ], [ %i.am, %bb.e ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !12
  %i.aq = add i32 %i.f, 1
  store i32 %i.aq, ptr %i.e, align 8, !tbaa !189
  %i.ar = icmp eq i32 %i.f, 63
  br i1 %i.ar, label %bb.g, label %_ZNSt13_Bit_iteratorppEv.exit

bb.g:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %i.e, align 8, !tbaa !189
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.as, ptr %i.a, align 8, !tbaa !181
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.h:                                             ; preds = %bb.a
  %5 = ptrtoint ptr %i.b to i64
  %i.at = load ptr, ptr %0, align 8, !tbaa !181
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %5, %i.au
  %i.aw = shl nsw i64 %i.av, 3
  %i.ax = zext i32 %i.f to i64
  %i.ay = add nsw i64 %i.aw, %i.ax                ; 4 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775744
  br i1 %i.az, label %bb.i, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.93) #21
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.ba = add i64 %.sroa.speculated.i, %i.ay      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ay
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775744)
  %i.bd = add nuw nsw i64 %i.bc, 63
  %i.be = select i1 %i.bb, i64 9223372036854775807, i64 %i.bd ; 2 uses
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1152921504606846968
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #25 ; 5 uses
  %6 = ptrtoint ptr %i.bh to i64
  %i.bi = load ptr, ptr %0, align 8, !tbaa !181   ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bk = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bl = sub i64 %i.bk, %i.bj                    ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, 8
  br i1 %i.bm, label %bb.j, label %bb.k, !prof !367

bb.j:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %i.bi, i64 %i.bl, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.bn = icmp eq i64 %i.bl, 8
  br i1 %i.bn, label %bb.l, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !12
  store i64 %i.bo, ptr %i.bh, align 8, !tbaa !12
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.l, %bb.k, %bb.j
  %i.bp = getelementptr inbounds i8, ptr %i.bh, i64 %i.bl ; 3 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZNSt13_Bit_iteratorppEi.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.bq = zext i32 %2 to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.cg, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.bq, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.bp, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.br = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !12
  %i.bu = and i64 %i.bt, %i.bs
  %.not.i.i.i.i.i.i47 = icmp eq i64 %i.bu, 0
  %i.bv = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.bw = shl nuw i64 1, %i.bv                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bx = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !12
  %i.by = or i64 %i.bx, %i.bw
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bz = xor i64 %i.bw, -1
  %i.ca = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !12
  %i.cb = and i64 %i.ca, %i.bz
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.n, %bb.m
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.n ], [ %i.by, %bb.m ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !12
  %i.cc = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.cd = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.cd, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.cd, i32 0, i32 %i.cc
  %i.ce = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.cf = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.cf, i32 0, i32 %i.ce ; 4 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.cf, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 5 uses
  %i.cg = add nsw i64 %.020.i.i.i.i.i.i, -1
  %i.ch = icmp sgt i64 %.020.i.i.i.i.i.i, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !379

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %i.ci = add i32 %.sroa.55.1.i.i.i.i.i.i, 1
  %i.cj = icmp eq i32 %.sroa.55.1.i.i.i.i.i.i, 63
  br i1 %i.cj, label %bb.o, label %_ZNSt13_Bit_iteratorppEi.exit

bb.o:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i.i.i, i64 8
  br label %_ZNSt13_Bit_iteratorppEi.exit

_ZNSt13_Bit_iteratorppEi.exit:                    ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, %bb.o
  %.sroa.03.0.lcssa.i.i.i.i.i.i110 = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %bb.o ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ %i.bp, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.sroa.55.0.lcssa.i.i.i.i.i.i109 = phi i32 [ 63, %bb.o ], [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ]
  %.sroa.683.0 = phi i32 [ 0, %bb.o ], [ %i.ci, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ 1, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 2 uses
  %.sroa.082.0 = phi ptr [ %i.ck, %bb.o ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit ], [ %i.bp, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ] ; 2 uses
  %i.cl = zext nneg i32 %.sroa.55.0.lcssa.i.i.i.i.i.i109 to i64
  %i.cm = shl nuw i64 1, %i.cl                    ; 2 uses
  br i1 %3, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.cn = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !12
  %i.co = or i64 %i.cn, %i.cm
  br label %_ZNSt14_Bit_referenceaSEb.exit53

bb.q:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit
  %i.cp = xor i64 %i.cm, -1
  %i.cq = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !12
  %i.cr = and i64 %i.cq, %i.cp
  br label %_ZNSt14_Bit_referenceaSEb.exit53

_ZNSt14_Bit_referenceaSEb.exit53:                 ; preds = %bb.p, %bb.q
  %storemerge111 = phi i64 [ %i.cr, %bb.q ], [ %i.co, %bb.p ]
  store i64 %storemerge111, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i110, align 8, !tbaa !12
  %.sroa.0.0.copyload.i54 = load ptr, ptr %i.a, align 8
  %.sroa.2.0.copyload.i55 = load i32, ptr %i.e, align 8
  %i.cs = ptrtoint ptr %.sroa.0.0.copyload.i54 to i64
  %i.ct = sub i64 %i.cs, %i.bk
  %i.cu = shl nsw i64 %i.ct, 3
  %i.cv = zext i32 %.sroa.2.0.copyload.i55 to i64
  %i.cw = zext i32 %2 to i64
  %i.cx = sub nsw i64 %i.cv, %i.cw
  %i.cy = add i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = icmp sgt i64 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt14_Bit_referenceaSEb.exit53, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66
  %.024.i.i.i.i.i62 = phi i64 [ %i.dp, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %i.cy, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i63 = phi ptr [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 4 uses
  %.sroa.59.022.i.i.i.i.i64 = phi i32 [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.516.021.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i69, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %2, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i68, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %1, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %i.da = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.db = shl nuw i64 1, %i.da
  %i.dc = zext nneg i32 %.sroa.59.022.i.i.i.i.i64 to i64
  %i.dd = shl nuw i64 1, %i.dc                    ; 2 uses
  %i.de = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !12
  %i.df = and i64 %i.de, %i.db
  %.not.i.i.i.i.i.i65 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dg = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !12
  %i.dh = or i64 %i.dg, %i.dd
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.di = xor i64 %i.dd, -1
  %i.dj = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !12
  %i.dk = and i64 %i.dj, %i.di
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.dh, %bb.r ], [ %i.dk, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !12
  %i.dl = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.dm = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.dm, i64 8, i64 0
  %spec.select.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i
  %spec.select19.i.i.i.i.i69 = select i1 %i.dm, i32 0, i32 %i.dl
  %i.dn = add i32 %.sroa.59.022.i.i.i.i.i64, 1
  %i.do = icmp eq i32 %.sroa.59.022.i.i.i.i.i64, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i70 = select i1 %i.do, i32 0, i32 %i.dn ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i71 = select i1 %i.do, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i63, i64 %.sroa.07.1.idx.i.i.i.i.i71 ; 2 uses
  %i.dp = add nsw i64 %.024.i.i.i.i.i62, -1
  %i.dq = icmp sgt i64 %.024.i.i.i.i.i62, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !380

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.59.0.lcssa.i.i.i.i.i58 = phi i32 [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.07.0.lcssa.i.i.i.i.i59 = phi ptr [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %7 = ptrtoint ptr %.sroa.07.0.lcssa.i.i.i.i.i59 to i64
  %.not.i73 = icmp eq ptr %i.bi, null
  br i1 %.not.i73, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !186 ; 2 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.bj                    ; 2 uses
  %i.du = ashr exact i64 %i.dt, 3
  %i.dv = sub nsw i64 0, %i.du
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dv
  tail call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dt) #23
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.dx = lshr i64 %i.be, 6
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.dx
  store ptr %i.dy, ptr %i.c, align 8, !tbaa !186
  store i64 %6, ptr %0, align 8
  %.sroa.587.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.587.0..sroa_idx88, align 8
  store i64 %7, ptr %i.a, align 8
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i58, ptr %i.e, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIN6casadi2MXESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN6casadi2MXEE8allocateEmPKv.exit.i, !prof !381

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt15__new_allocatorIN6casadi2MXEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 3
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #25
  br label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN6casadi2MXEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN6casadi2MXEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 6 uses
  %.not12.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi2MXESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE11_M_allocateEm.exit, %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.h, %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE11_M_allocateEm.exit ] ; 5 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.g, %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.08.013.i.i.i.i, align 8, !tbaa !239
  store ptr %i.f, ptr %.014.i.i.i.i, align 8, !tbaa !239
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %.014.i.i.i.i)
          to label %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.g, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi2MXESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !382

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = tail call ptr @__cxa_begin_catch(ptr %i.j) #22 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.e, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i ], [ %i.e, %bb.f ] ; 2 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #22
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !173

_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i, %bb.f
  invoke void @__cxa_rethrow() #21
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #26
  unreachable

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN6casadi2MXESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE11_M_allocateEm.exit
  ret ptr %i.e

.body:                                            ; preds = %bb.g
  %i.p = extractvalue { ptr, i32 } %i.m, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #22 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.j

bb.j:                                             ; preds = %.body
  %i.r = shl i64 %1, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.r) #23
  br label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.j, %.body
  invoke void @__cxa_rethrow() #21
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.s

bb.m:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit
  unreachable
}

declare void @_ZN6casadi2MX5unaryExRKS0_(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi17GenericExpressionINS_2MXEE5log10ERKS1_(ptr dead_on_unwind noalias writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN6casadi2MX5unaryExRKS0_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %2, i64 noundef 7, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN6casadi2MXC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %3, double noundef f0x3FDBCB7B1526E50D)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8 %0, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadimlERKNS_2MXES2_.exit unwind label %bb.d

_ZN6casadimlERKNS_2MXES2_.exit:                   ; preds = %bb.b
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !171
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.g, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt10_ConstructIN6casadi2MXEJEEvPT_DpOT0_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN6casadi2MXEJEEvPT_DpOT0_.exit.i.i.i ], [ %i.b, %bb.b ] ; 4 uses
end_hunk_2
