Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/cuckoo_table_builder?download=true
inline.NumInlined: 1114
inline.NumDeleted: 464
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS_10autovectorImLm8EEEjPSt6vectorINS0_12CuckooBucketESaIS6_EEPm:bb.a
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = icmp eq i32 %.040203, 0
  %or.cond.i = and i1 %i.cs, %i.cr
  br i1 %or.cond.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ct = load i64, ptr %.sroa.0.0.i.pn.i, align 8, !tbaa !86
  br label %.noexc76

bb.q:                                             ; preds = %bb.o
  %i.cu = trunc i64 %.sroa.3.0.i.pn.i to i32
  %i.cv = mul i32 %.040203, 816922183
  %i.cw = invoke noundef i64 @_Z13MurmurHash64APKvij(ptr noundef %.sroa.0.0.i.pn.i, i32 noundef %i.cu, i32 noundef %i.cv)
          to label %.noexc76 unwind label %bb.t

.noexc76:                                         ; preds = %bb.q, %bb.p
  %.0.i75 = phi i64 [ %i.ct, %bb.p ], [ %i.cw, %bb.q ] ; 2 uses
  br i1 %i.co, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc76
  %i.cx = urem i64 %.0.i75, %i.cp
  br label %_ZN7rocksdbL10CuckooHashERKNS_5SliceEjbmbPFmS2_jmE.exit

bb.s:                                             ; preds = %.noexc76
  %i.cy = add i64 %i.cp, -1
  %i.cz = and i64 %.0.i75, %i.cy
  br label %_ZN7rocksdbL10CuckooHashERKNS_5SliceEjbmbPFmS2_jmE.exit

_ZN7rocksdbL10CuckooHashERKNS_5SliceEjbmbPFmS2_jmE.exit: ; preds = %bb.s, %bb.r
  %.012.i = phi i64 [ %i.cx, %bb.r ], [ %i.cz, %bb.s ]
  %i.da = load i32, ptr %i.p, align 8, !tbaa !51  ; 2 uses
  %.not220 = icmp eq i32 %i.da, 0
  br i1 %.not220, label %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge, label %.lr.ph190.preheader

.lr.ph190.preheader:                              ; preds = %_ZN7rocksdbL10CuckooHashERKNS_5SliceEjbmbPFmS2_jmE.exit
  %.pre248 = load ptr, ptr %3, align 8, !tbaa !91 ; 2 uses
  br label %.lr.ph190

bb.t:                                             ; preds = %bb.q
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.lr.ph190:                                        ; preds = %.lr.ph190.preheader, %bb.z
  %i.dc = phi i32 [ %i.eh, %bb.z ], [ %i.da, %.lr.ph190.preheader ]
  %i.dd = phi ptr [ %i.ei, %bb.z ], [ %.pre248, %.lr.ph190.preheader ] ; 2 uses
  %i.de = phi ptr [ %i.ej, %bb.z ], [ %.pre248, %.lr.ph190.preheader ] ; 2 uses
  %.039189 = phi i32 [ %i.ek, %bb.z ], [ 0, %.lr.ph190.preheader ]
  %storemerge188 = phi i64 [ %i.el, %bb.z ], [ %.012.i, %.lr.ph190.preheader ] ; 5 uses
  %.sroa.24.3187 = phi ptr [ %.sroa.24.4, %bb.z ], [ %.sroa.24.2201, %.lr.ph190.preheader ] ; 8 uses
  %.sroa.16.3186 = phi ptr [ %.sroa.16.4, %bb.z ], [ %.sroa.16.2200, %.lr.ph190.preheader ] ; 6 uses
  %.sroa.0104.3185 = phi ptr [ %.sroa.0104.4, %bb.z ], [ %.sroa.0104.2199, %.lr.ph190.preheader ] ; 9 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %storemerge188
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !94
  %i.di = icmp eq i32 %i.dh, %2
  br i1 %i.di, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.lr.ph190
  store i32 %2, ptr %i.dg, align 4, !tbaa !94
  %.not.i77 = icmp eq ptr %.sroa.16.3186, %.sroa.24.3187
  br i1 %.not.i77, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %storemerge188, ptr %.sroa.16.3186, align 8, !tbaa !179
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.16.3186, i64 8
  store i32 %i.bk, ptr %i.dj, align 8, !tbaa !180
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.16.3186, i64 12
  store i32 %.0109214361, ptr %i.dk, align 4, !tbaa !181
  br label %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.dl = ptrtoint ptr %.sroa.24.3187 to i64
  %i.dm = ptrtoint ptr %.sroa.0104.3185 to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 4 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775792
  br i1 %i.do, label %bb.x, label %_ZNKSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12_M_check_lenEmPKc.exit.i.i78

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #29
          to label %.noexc88 unwind label %.loopexit.split-lp

.noexc88:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12_M_check_lenEmPKc.exit.i.i78: ; preds = %bb.w
  %i.dp = ashr exact i64 %i.dn, 4                 ; 3 uses
  %i.dq = icmp eq ptr %.sroa.24.3187, %.sroa.0104.3185 ; 2 uses
  %.sroa.speculated.i.i.i79 = select i1 %i.dq, i64 1, i64 %i.dp
  %i.dr = add nsw i64 %.sroa.speculated.i.i.i79, %i.dp ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dp
  %i.dt = tail call i64 @llvm.umin.i64(i64 %i.dr, i64 576460752303423487)
  %i.du = select i1 %i.ds, i64 576460752303423487, i64 %i.dt ; 3 uses
  %.not.i.i.i80 = icmp ne i64 %i.du, 0
  tail call void @llvm.assume(i1 %.not.i.i.i80)
  %i.dv = shl nuw nsw i64 %i.du, 4
  %i.dw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #30
          to label %.noexc89 unwind label %.loopexit ; 5 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12_M_check_lenEmPKc.exit.i.i78
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dn ; 3 uses
  store i64 %storemerge188, ptr %i.dx, align 8, !tbaa !179
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i32 %i.bk, ptr %i.dy, align 8, !tbaa !180
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 %.0109214361, ptr %i.dz, align 4, !tbaa !181
  br i1 %i.dq, label %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit41.i.i85, label %.lr.ph.i.i.i.i.i81

.lr.ph.i.i.i.i.i81:                               ; preds = %.noexc89, %.lr.ph.i.i.i.i.i81
  %.03.i.i.i.i.i82 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i81 ], [ %i.dw, %.noexc89 ] ; 2 uses
  %.092.i.i.i.i.i83 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i81 ], [ %.sroa.0104.3185, %.noexc89 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i82, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i.i83, i64 16, i1 false), !tbaa.struct !182, !alias.scope !184
  %i.ea = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i83, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i82, i64 16 ; 2 uses
  %.not.i.i.i.i.i84 = icmp eq ptr %i.ea, %.sroa.24.3187
  br i1 %.not.i.i.i.i.i84, label %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit41.i.i85, label %.lr.ph.i.i.i.i.i81, !llvm.loop !170

_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit41.i.i85: ; preds = %.lr.ph.i.i.i.i.i81, %.noexc89
  %.0.lcssa.i.i.i.i.i86 = phi ptr [ %i.dw, %.noexc89 ], [ %i.eb, %.lr.ph.i.i.i.i.i81 ]
  %.not.i42.i.i87 = icmp eq ptr %.sroa.0104.3185, null
  br i1 %.not.i42.i.i87, label %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE17_M_realloc_insertIJRmjRjEEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit41.i.i85
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.3185, i64 noundef %i.dn) #25
  br label %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE17_M_realloc_insertIJRmjRjEEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i

_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE17_M_realloc_insertIJRmjRjEEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit41.i.i85
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.du
  %.pre249 = load ptr, ptr %3, align 8, !tbaa !91
  br label %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit

_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit: ; preds = %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE17_M_realloc_insertIJRmjRjEEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, %bb.v
  %i.ed = phi ptr [ %.pre249, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE17_M_realloc_insertIJRmjRjEEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ], [ %i.dd, %bb.v ] ; 3 uses
  %.sroa.0104.11 = phi ptr [ %i.dw, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE17_M_realloc_insertIJRmjRjEEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ], [ %.sroa.0104.3185, %bb.v ] ; 6 uses
  %.0.lcssa.i.i.i.i.i86.pn = phi ptr [ %.0.lcssa.i.i.i.i.i86, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE17_M_realloc_insertIJRmjRjEEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ], [ %.sroa.16.3186, %bb.v ]
  %.sroa.24.11 = phi ptr [ %i.ec, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE17_M_realloc_insertIJRmjRjEEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i ], [ %.sroa.24.3187, %bb.v ] ; 2 uses
  %.sroa.16.9 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i86.pn, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %storemerge188
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !93
  %i.eg = icmp eq i32 %i.ef, 2147483647
  br i1 %i.eg, label %.critedge, label %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge250

_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge250: ; preds = %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit
  %.pre251 = load i32, ptr %i.p, align 8, !tbaa !51
  br label %bb.z

.loopexit:                                        ; preds = %_ZNKSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12_M_check_lenEmPKc.exit.i.i78
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge250, %.lr.ph190
  %i.eh = phi i32 [ %i.dc, %.lr.ph190 ], [ %.pre251, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge250 ] ; 2 uses
  %i.ei = phi ptr [ %i.dd, %.lr.ph190 ], [ %i.ed, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge250 ]
  %i.ej = phi ptr [ %i.de, %.lr.ph190 ], [ %i.ed, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge250 ]
  %.sroa.0104.4 = phi ptr [ %.sroa.0104.3185, %.lr.ph190 ], [ %.sroa.0104.11, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge250 ] ; 2 uses
  %.sroa.16.4 = phi ptr [ %.sroa.16.3186, %.lr.ph190 ], [ %.sroa.16.9, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge250 ] ; 2 uses
  %.sroa.24.4 = phi ptr [ %.sroa.24.3187, %.lr.ph190 ], [ %.sroa.24.11, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge250 ] ; 2 uses
  %i.ek = add nuw i32 %.039189, 1                 ; 2 uses
  %i.el = add i64 %storemerge188, 1
  %i.em = icmp ult i32 %i.ek, %i.eh
  br i1 %i.em, label %.lr.ph190, label %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge, !llvm.loop !175

_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge: ; preds = %bb.z, %_ZN7rocksdbL10CuckooHashERKNS_5SliceEjbmbPFmS2_jmE.exit
  %.sroa.0104.5 = phi ptr [ %.sroa.0104.2199, %_ZN7rocksdbL10CuckooHashERKNS_5SliceEjbmbPFmS2_jmE.exit ], [ %.sroa.0104.4, %bb.z ] ; 2 uses
  %.sroa.16.5 = phi ptr [ %.sroa.16.2200, %_ZN7rocksdbL10CuckooHashERKNS_5SliceEjbmbPFmS2_jmE.exit ], [ %.sroa.16.4, %bb.z ] ; 2 uses
  %.sroa.24.5 = phi ptr [ %.sroa.24.2201, %_ZN7rocksdbL10CuckooHashERKNS_5SliceEjbmbPFmS2_jmE.exit ], [ %.sroa.24.4, %bb.z ] ; 2 uses
  %i.en = add nuw i32 %.040203, 1                 ; 2 uses
  %i.eo = load i32, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %.not322 = icmp ult i32 %i.en, %i.eo
  br i1 %.not322, label %bb.h, label %._crit_edge206, !llvm.loop !176

._crit_edge206:                                   ; preds = %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge, %bb.g
  %i.ep = phi i32 [ 0, %bb.g ], [ %i.eo, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge ]
  %.sroa.0104.2.lcssa = phi ptr [ %.sroa.0104.1211364, %bb.g ], [ %.sroa.0104.5, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge ] ; 3 uses
  %.sroa.16.2.lcssa = phi ptr [ %.sroa.16.1212363, %bb.g ], [ %.sroa.16.5, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge ] ; 2 uses
  %.sroa.24.2.lcssa = phi ptr [ %.sroa.24.1213362, %bb.g ], [ %.sroa.24.5, %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit._crit_edge ] ; 2 uses
  %i.eq = add i32 %.0109214361, 1                 ; 2 uses
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = ptrtoint ptr %.sroa.16.2.lcssa to i64
  %i.et = ptrtoint ptr %.sroa.0104.2.lcssa to i64 ; 3 uses
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ashr exact i64 %i.eu, 4
  %i.ew = icmp ugt i64 %i.ev, %i.er
  br i1 %i.ew, label %.lr.ph365, label %._crit_edge

.critedge:                                        ; preds = %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EE12emplace_backIJRmjRjEEERSB_DpOT_.exit
  %i.ex = load i32, ptr %i.a, align 8, !tbaa !46
  %i.ey = ptrtoint ptr %.sroa.16.9 to i64
  %i.ez = ptrtoint ptr %.sroa.0104.11 to i64      ; 2 uses
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = lshr exact i64 %i.fa, 4
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = add i32 %i.fc, -1                       ; 3 uses
  %.not52215 = icmp ult i32 %i.fd, %i.ex
  br i1 %.not52215, label %.thread117, label %.lr.ph217

.lr.ph217:                                        ; preds = %.critedge
  %5 = load ptr, ptr %3, align 8, !tbaa !91       ; 2 uses
  br label %.lr.ph217.a

.lr.ph217.a:                                      ; preds = %.lr.ph217, %.lr.ph217.a
  %.038216 = phi i32 [ %i.fd, %.lr.ph217 ], [ %i.fp, %.lr.ph217.a ]
  %i.fe = zext i32 %.038216 to i64
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0104.11, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !181
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0104.11, i64 %i.fi
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !179
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.fk
  %i.fm = load i64, ptr %i.ff, align 8, !tbaa !179
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.fm
  %i.fo = load i64, ptr %i.fl, align 4, !tbaa !95
  store i64 %i.fo, ptr %i.fn, align 4, !tbaa !95
  %i.fp = load i32, ptr %i.fg, align 4, !tbaa !181 ; 3 uses
  %i.fq = load i32, ptr %i.a, align 8, !tbaa !46
  %.not52 = icmp ult i32 %i.fp, %i.fq
  br i1 %.not52, label %.thread117, label %.lr.ph217.a, !llvm.loop !177

.thread117:                                       ; preds = %.lr.ph217.a, %.critedge
  %.038.lcssa = phi i32 [ %i.fd, %.critedge ], [ %i.fp, %.lr.ph217.a ]
  %i.fr = zext i32 %.038.lcssa to i64
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0104.11, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !179
  store i64 %i.ft, ptr %4, align 8, !tbaa !86
  br label %.thread119

._crit_edge:                                      ; preds = %._crit_edge206, %.preheader
  %.sroa.24.1213.lcssa = phi ptr [ %.sroa.24.0.lcssa, %.preheader ], [ %.sroa.24.2.lcssa, %._crit_edge206 ]
  %.sroa.0104.1211.lcssa = phi ptr [ %.sroa.0104.0.lcssa, %.preheader ], [ %.sroa.0104.2.lcssa, %._crit_edge206 ] ; 2 uses
  %.lcssa339 = phi i64 [ %i.q, %.preheader ], [ %i.et, %._crit_edge206 ]
  %.not.i.i.i90 = icmp eq ptr %.sroa.0104.1211.lcssa, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EED2Ev.exit, label %.thread119

.thread119:                                       ; preds = %.lr.ph365, %.thread117, %._crit_edge
  %.pre-phi = phi i64 [ %.lcssa339, %._crit_edge ], [ %i.ez, %.thread117 ], [ %i.az, %.lr.ph365 ]
  %.sroa.0104.1166 = phi ptr [ %.sroa.0104.1211.lcssa, %._crit_edge ], [ %.sroa.0104.11, %.thread117 ], [ %.sroa.0104.1211364, %.lr.ph365 ]
  %.sroa.24.1155 = phi ptr [ %.sroa.24.1213.lcssa, %._crit_edge ], [ %.sroa.24.11, %.thread117 ], [ %.sroa.24.1213362, %.lr.ph365 ]
  %i.fu = phi i1 [ false, %._crit_edge ], [ true, %.thread117 ], [ false, %.lr.ph365 ]
  %i.fv = ptrtoint ptr %.sroa.24.1155 to i64
  %i.fw = sub i64 %i.fv, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.1166, i64 noundef %i.fw) #25
  br label %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EED2Ev.exit

_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EED2Ev.exit: ; preds = %._crit_edge, %.thread119
  %i.fx = phi i1 [ false, %._crit_edge ], [ %i.fu, %.thread119 ]
  ret i1 %i.fx

bb.aa:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit121, %.loopexit.split-lp122, %bb.t
  %.sroa.0104.9 = phi ptr [ %.sroa.0104.2199, %bb.t ], [ %.sroa.0104.0179, %.loopexit.split-lp122 ], [ %.sroa.0104.0179, %.loopexit121 ], [ %.sroa.0104.3185, %.loopexit ], [ %.sroa.0104.3185, %.loopexit.split-lp ] ; 3 uses
  %.sroa.24.9 = phi ptr [ %.sroa.24.2201, %bb.t ], [ %.sroa.24.0181, %.loopexit.split-lp122 ], [ %.sroa.24.0181, %.loopexit121 ], [ %.sroa.24.3187, %.loopexit ], [ %.sroa.24.3187, %.loopexit.split-lp ]
  %.pn53 = phi { ptr, i32 } [ %i.db, %bb.t ], [ %lpad.loopexit.split-lp124, %.loopexit.split-lp122 ], [ %lpad.loopexit123, %.loopexit121 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i91 = icmp eq ptr %.sroa.0104.9, null
  br i1 %.not.i.i.i91, label %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EED2Ev.exit92, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fy = ptrtoint ptr %.sroa.24.9 to i64
  %i.fz = ptrtoint ptr %.sroa.0104.9 to i64
  %i.ga = sub i64 %i.fy, %i.fz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0104.9, i64 noundef %i.ga) #25
  br label %_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EED2Ev.exit92

_ZNSt6vectorIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPS_INS1_12CuckooBucketESaIS6_EEPmE10CuckooNodeSaISB_EED2Ev.exit92: ; preds = %bb.aa, %bb.ab
  resume { ptr, i32 } %.pn53
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18CuckooTableBuilder6FinishEv(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1065) initializes((1064, 1065)) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 4 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %14 = alloca %"class.std::vector", align 8      ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %16 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %20 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 8 uses
  %21 = alloca %"struct.rocksdb::IOOptions", align 8 ; 20 uses
  %22 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %23 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %24 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %25 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %26 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %27 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %28 = alloca %"class.rocksdb::MetaIndexBuilder", align 8 ; 10 uses
  %29 = alloca %"class.rocksdb::PropertyBlockBuilder", align 8 ; 12 uses
  %30 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %31 = alloca %"class.rocksdb::BlockHandle", align 8 ; 6 uses
  %32 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %33 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %34 = alloca %"class.rocksdb::BlockHandle", align 8 ; 6 uses
  %35 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %36 = alloca %"class.rocksdb::FooterBuilder", align 8 ; 7 uses
  %37 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %38 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1064
  store i8 1, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.c = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 10 uses
  store ptr %i.c, ptr %15, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  store i64 0, ptr %i.d, align 8, !tbaa !57
  store i8 0, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.h = load i8, ptr %i.g, align 8, !tbaa !64, !range !73, !noundef !74
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = uitofp i64 %i.f to double
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load double, ptr %i.k, align 8, !tbaa !48
  %i.m = fdiv double %i.j, %i.l
  %i.n = fptoui double %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.n, ptr %i.o, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZN7rocksdb18CuckooTableBuilder13MakeHashTableEPSt6vectorINS0_12CuckooBucketESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull %14)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 161
  %i.r = load <4 x i8>, ptr %16, align 8, !tbaa !16
  store <4 x i8> %i.r, ptr %i.p, align 8, !tbaa !16
  store <4 x i8> zeroinitializer, ptr %16, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !72, !range !73, !noundef !74
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 164
  store i8 %i.t, ptr %i.u, align 4, !tbaa !75
  store i8 0, ptr %i.s, align 4, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 5 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 165 ; 2 uses
  store i8 %i.w, ptr %i.x, align 1, !tbaa !76
  store i8 0, ptr %i.v, align 1, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !67
  store ptr null, ptr %i.y, align 8, !tbaa !67
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !67  ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !67
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #25
  %.pr = load ptr, ptr %i.y, align 8, !tbaa !67   ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pr) #25
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %bb.e, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.ac = load i8, ptr %i.p, align 8, !tbaa !81   ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  store i8 %i.ac, ptr %0, align 8, !tbaa !81
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.af = load <4 x i8>, ptr %i.q, align 1, !tbaa !16
  store <4 x i8> %i.af, ptr %i.ae, align 1, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ah = load i8, ptr %i.x, align 1, !tbaa !76
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !67  ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i81, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  store ptr null, ptr %i.ai, align 8, !tbaa !67
  br label %_ZN7rocksdb6StatusC2ERKS0_.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13, ptr noundef nonnull %i.aj)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %.pre.i = load ptr, ptr %13, align 8, !tbaa !67
  %.pre16.i = load ptr, ptr %i.ai, align 8, !tbaa !67 ; 2 uses
  store ptr null, ptr %13, align 8, !tbaa !67
  store ptr %.pre.i, ptr %i.ai, align 8, !tbaa !67
  %.not.i.i.i.i.i82 = icmp eq ptr %.pre16.i, null
  br i1 %.not.i.i.i.i.i82, label %_ZN7rocksdb6StatusC2ERKS0_.exit, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE17_M_default_appendEm:bb.a

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 3                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.t
  %i.u = getelementptr i8, ptr %i.b, i64 %i.t
  %next.gep45 = getelementptr i8, ptr %i.u, i64 64
  %i.v = getelementptr i8, ptr %i.b, i64 %i.t
  %next.gep46 = getelementptr i8, ptr %i.v, i64 128
  %i.w = getelementptr i8, ptr %i.b, i64 %i.t
  %next.gep47 = getelementptr i8, ptr %i.w, i64 192
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep, align 4, !tbaa !95
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep45, align 4, !tbaa !95
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep46, align 4, !tbaa !95
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep47, align 4, !tbaa !95
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !230

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %1, -4                       ; 3 uses
  %i.y = shl i64 %n.vec49, 3
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y     ; 2 uses
  %i.aa = and i64 %1, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 2 uses
  %i.ab = shl i64 %index50, 3
  %next.gep51 = getelementptr i8, ptr %i.b, i64 %i.ab
  store <8 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep51, align 4, !tbaa !95
  %index.next52 = add nuw i64 %index50, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next52, %n.vec49
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !217

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %1, %n.vec49
  br i1 %cmp.n53, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.i.i.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  %.01012.i.i.i.ph = phi i64 [ %1, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.013.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.01012.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %.01012.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  store i32 2147483647, ptr %.013.i.i.i, align 4, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 4
  store i32 0, ptr %i.ad, align 4, !tbaa !94
  %i.ae = add i64 %.01012.i.i.i, -1               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !218

_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.z, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.af, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !90
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ag = icmp ult i64 %i.n, %1
  br i1 %i.ag, label %bb.d, label %iter.check72

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #29
  unreachable

iter.check72:                                     ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ah = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975) ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #30 ; 9 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.f ; 9 uses
  %min.iters.check56 = icmp ult i64 %1, 4
  br i1 %min.iters.check56, label %.lr.ph.i.i.i30.preheader, label %vector.main.loop.iter.check57

vector.main.loop.iter.check57:                    ; preds = %iter.check72
  %min.iters.check58 = icmp ult i64 %1, 32
  br i1 %min.iters.check58, label %vec.epilog.ph76, label %vector.ph59

vector.ph59:                                      ; preds = %vector.main.loop.iter.check57
  %i.an = and i64 %1, 28
  %n.vec60 = and i64 %1, -32                      ; 4 uses
  %i.ao = shl i64 %n.vec60, 3
  %i.ap = getelementptr i8, ptr %i.am, i64 %i.ao
  %i.aq = and i64 %1, 31
  br label %vector.body61

vector.body61:                                    ; preds = %vector.ph59, %vector.body61
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body61 ] ; 2 uses
  %i.ar = shl i64 %index62, 3                     ; 4 uses
  %next.gep63 = getelementptr i8, ptr %i.am, i64 %i.ar
  %i.as = getelementptr i8, ptr %i.am, i64 %i.ar
  %next.gep64 = getelementptr i8, ptr %i.as, i64 64
  %i.at = getelementptr i8, ptr %i.am, i64 %i.ar
  %next.gep65 = getelementptr i8, ptr %i.at, i64 128
  %i.au = getelementptr i8, ptr %i.am, i64 %i.ar
  %next.gep66 = getelementptr i8, ptr %i.au, i64 192
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep63, align 4, !tbaa !95
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep64, align 4, !tbaa !95
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep65, align 4, !tbaa !95
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep66, align 4, !tbaa !95
  %index.next67 = add nuw i64 %index62, 32        ; 2 uses
  %i.av = icmp eq i64 %index.next67, %n.vec60
  br i1 %i.av, label %middle.block68, label %vector.body61, !llvm.loop !219

middle.block68:                                   ; preds = %vector.body61
  %cmp.n69 = icmp eq i64 %1, %n.vec60
  br i1 %cmp.n69, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit35, label %vec.epilog.iter.check74

vec.epilog.iter.check74:                          ; preds = %middle.block68
  %min.epilog.iters.check75 = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check75, label %.lr.ph.i.i.i30.preheader, label %vec.epilog.ph76, !prof !230

vec.epilog.ph76:                                  ; preds = %vector.main.loop.iter.check57, %vec.epilog.iter.check74
  %vec.epilog.resume.val70 = phi i64 [ %n.vec60, %vec.epilog.iter.check74 ], [ 0, %vector.main.loop.iter.check57 ]
  %n.vec77 = and i64 %1, -4                       ; 3 uses
  %i.aw = shl i64 %n.vec77, 3
  %i.ax = getelementptr i8, ptr %i.am, i64 %i.aw
  %i.ay = and i64 %1, 3
  br label %vec.epilog.vector.body78

vec.epilog.vector.body78:                         ; preds = %vec.epilog.vector.body78, %vec.epilog.ph76
  %index79 = phi i64 [ %vec.epilog.resume.val70, %vec.epilog.ph76 ], [ %index.next81, %vec.epilog.vector.body78 ] ; 2 uses
  %i.az = shl i64 %index79, 3
  %next.gep80 = getelementptr i8, ptr %i.am, i64 %i.az
  store <8 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep80, align 4, !tbaa !95
  %index.next81 = add nuw i64 %index79, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next81, %n.vec77
  br i1 %i.ba, label %vec.epilog.middle.block82, label %vec.epilog.vector.body78, !llvm.loop !220

vec.epilog.middle.block82:                        ; preds = %vec.epilog.vector.body78
  %cmp.n83 = icmp eq i64 %1, %n.vec77
  br i1 %cmp.n83, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %iter.check72, %vec.epilog.iter.check74, %vec.epilog.middle.block82
  %.013.i.i.i31.ph = phi ptr [ %i.am, %iter.check72 ], [ %i.ap, %vec.epilog.iter.check74 ], [ %i.ax, %vec.epilog.middle.block82 ]
  %.01012.i.i.i32.ph = phi i64 [ %1, %iter.check72 ], [ %i.aq, %vec.epilog.iter.check74 ], [ %i.ay, %vec.epilog.middle.block82 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bd, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.ph, %.lr.ph.i.i.i30.preheader ] ; 3 uses
  %.01012.i.i.i32 = phi i64 [ %i.bc, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.ph, %.lr.ph.i.i.i30.preheader ]
  store i32 2147483647, ptr %.013.i.i.i31, align 4, !tbaa !93
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !94
  %i.bc = add i64 %.01012.i.i.i32, -1             ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  %.not.i.i.i33 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !221

_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %vec.epilog.middle.block82, %middle.block68
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %iter.check103

iter.check103:                                    ; preds = %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit35
  %i.be = add i64 %i.d, -8
  %i.bf = sub i64 %i.be, %i.e                     ; 3 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 5 uses
  %min.iters.check86 = icmp ult i64 %i.bf, 24
  %i.bi = sub i64 %i.e, %i.al
  %diff.check = icmp ugt i64 %i.bi, -128
  %or.cond = or i1 %min.iters.check86, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check87

vector.main.loop.iter.check87:                    ; preds = %iter.check103
  %min.iters.check88 = icmp ult i64 %i.bf, 120
  br i1 %min.iters.check88, label %vec.epilog.ph107, label %vector.ph89

vector.ph89:                                      ; preds = %vector.main.loop.iter.check87
  %i.bj = and i64 %i.bh, 12
  %n.vec90 = and i64 %i.bh, 4611686018427387888   ; 4 uses
  %i.bk = shl i64 %n.vec90, 3                     ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ak, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.c, i64 %i.bk
  br label %vector.body91

vector.body91:                                    ; preds = %vector.ph89, %vector.body91
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next98, %vector.body91 ] ; 2 uses
  %i.bn = shl i64 %index92, 3                     ; 2 uses
  %next.gep93 = getelementptr i8, ptr %i.ak, i64 %i.bn ; 4 uses
  %next.gep94 = getelementptr i8, ptr %i.c, i64 %i.bn ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.bo = getelementptr i8, ptr %next.gep94, i64 32
  %i.bp = getelementptr i8, ptr %next.gep94, i64 64
  %i.bq = getelementptr i8, ptr %next.gep94, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep94, align 4, !tbaa !95, !alias.scope !232, !noalias !231
  %wide.load95 = load <4 x i64>, ptr %i.bo, align 4, !tbaa !95, !alias.scope !232, !noalias !231
  %wide.load96 = load <4 x i64>, ptr %i.bp, align 4, !tbaa !95, !alias.scope !232, !noalias !231
  %wide.load97 = load <4 x i64>, ptr %i.bq, align 4, !tbaa !95, !alias.scope !232, !noalias !231
  %i.br = getelementptr i8, ptr %next.gep93, i64 32
  %i.bs = getelementptr i8, ptr %next.gep93, i64 64
  %i.bt = getelementptr i8, ptr %next.gep93, i64 96
  store <4 x i64> %wide.load, ptr %next.gep93, align 4, !tbaa !95, !alias.scope !231, !noalias !232
  store <4 x i64> %wide.load95, ptr %i.br, align 4, !tbaa !95, !alias.scope !231, !noalias !232
  store <4 x i64> %wide.load96, ptr %i.bs, align 4, !tbaa !95, !alias.scope !231, !noalias !232
  store <4 x i64> %wide.load97, ptr %i.bt, align 4, !tbaa !95, !alias.scope !231, !noalias !232
  %index.next98 = add nuw i64 %index92, 16        ; 2 uses
  %i.bu = icmp eq i64 %index.next98, %n.vec90
  br i1 %i.bu, label %middle.block99, label %vector.body91, !llvm.loop !225

middle.block99:                                   ; preds = %vector.body91
  %cmp.n100 = icmp eq i64 %i.bh, %n.vec90
  br i1 %cmp.n100, label %_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %vec.epilog.iter.check105

vec.epilog.iter.check105:                         ; preds = %middle.block99
  %min.epilog.iters.check106 = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check106, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph107, !prof !233

vec.epilog.ph107:                                 ; preds = %vector.main.loop.iter.check87, %vec.epilog.iter.check105
  %vec.epilog.resume.val101 = phi i64 [ %n.vec90, %vec.epilog.iter.check105 ], [ 0, %vector.main.loop.iter.check87 ]
  %n.vec108 = and i64 %i.bh, 4611686018427387900  ; 3 uses
  %i.bv = shl i64 %n.vec108, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ak, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.c, i64 %i.bv
  br label %vec.epilog.vector.body109

vec.epilog.vector.body109:                        ; preds = %vec.epilog.vector.body109, %vec.epilog.ph107
  %index110 = phi i64 [ %vec.epilog.resume.val101, %vec.epilog.ph107 ], [ %index.next114, %vec.epilog.vector.body109 ] ; 2 uses
  %i.by = shl i64 %index110, 3                    ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.ak, i64 %i.by
  %next.gep112 = getelementptr i8, ptr %i.c, i64 %i.by
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %wide.load113 = load <4 x i64>, ptr %next.gep112, align 4, !tbaa !95, !alias.scope !232, !noalias !231
  store <4 x i64> %wide.load113, ptr %next.gep111, align 4, !tbaa !95, !alias.scope !231, !noalias !232
  %index.next114 = add nuw i64 %index110, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next114, %n.vec108
  br i1 %i.bz, label %vec.epilog.middle.block115, label %vec.epilog.vector.body109, !llvm.loop !226

vec.epilog.middle.block115:                       ; preds = %vec.epilog.vector.body109
  %cmp.n116 = icmp eq i64 %i.bh, %n.vec108
  br i1 %cmp.n116, label %_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check103, %vec.epilog.iter.check105, %vec.epilog.middle.block115
  %.012.i.i.i.ph = phi ptr [ %i.ak, %iter.check103 ], [ %i.bl, %vec.epilog.iter.check105 ], [ %i.bw, %vec.epilog.middle.block115 ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check103 ], [ %i.bm, %vec.epilog.iter.check105 ], [ %i.bx, %vec.epilog.middle.block115 ]
  br label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i37 ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i37 ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.ca = load i64, ptr %.0911.i.i.i, align 4, !tbaa !95, !alias.scope !232, !noalias !231
  store i64 %i.ca, ptr %.012.i.i.i, align 4, !tbaa !95, !alias.scope !231, !noalias !232
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i38 = icmp eq ptr %i.cb, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !227

_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %middle.block99, %vec.epilog.middle.block115, %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !112
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cf) #25
  br label %_ZNSt12_Vector_baseIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.ak, ptr %0, align 8, !tbaa !91
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %1
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !90
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.ch, ptr %i.h, align 8, !tbaa !112
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef i64 @_Z13MurmurHash64APKvij(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !234

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN7rocksdb12BlockBuilderEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !16
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !237  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb25DataBlockHashIndexBuilderD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !238
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #25
  br label %_ZN7rocksdb25DataBlockHashIndexBuilderD2Ev.exit.i

_ZN7rocksdb25DataBlockHashIndexBuilderD2Ev.exit.i: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZN7rocksdb25DataBlockHashIndexBuilderD2Ev.exit.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZN7rocksdb25DataBlockHashIndexBuilderD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !241  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !242
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN7rocksdb12BlockBuilderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #25
  br label %_ZN7rocksdb12BlockBuilderD2Ev.exit

_ZN7rocksdb12BlockBuilderD2Ev.exit:               ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 232) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb12BlockBuilderD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !111 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
end_hunk_1
