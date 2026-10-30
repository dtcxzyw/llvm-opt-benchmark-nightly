Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.15?download=true
inline.NumInlined: 678
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNCNvXs6_NtNtCs5XgW7KoffLW_12opendal_core3raw10enum_utilsINtB7_8FourWaysINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtB9_3oio4list3api7ListDynEL_ENtNtNtBb_6layers8simulate18ServicerFlatListerINtNtB1L_11prefix_list12PrefixListerB18_EIB31_B2h_EENtB1J_4List4next0Bb_:bb.a
  br i1 %cond.i.i, label %bb.ai, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i = load ptr, ptr %i.bm, align 8, !noalias !777 ; 5 uses
  %i.bn = getelementptr i8, ptr %1, i64 48
  %.val1.i.i = load ptr, ptr %i.bn, align 8, !noalias !777, !nonnull !5, !align !12, !noundef !5 ; 5 uses
  %i.bo = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !778 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.bo(ptr noundef nonnull %.val.i.i)
          to label %bb.ak unwind label %bb.am, !noalias !778

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !7, !invariant.load !5, !noalias !778 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !8, !invariant.load !5, !noalias !778
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bq, i64 noundef range(i64 1, 536870913) %i.bt) #21, !noalias !778
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i

bb.am:                                            ; preds = %bb.aj
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !7, !invariant.load !5, !noalias !778 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.body.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !8, !invariant.load !5, !noalias !778
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bw, i64 noundef range(i64 1, 536870913) %i.bz) #21, !noalias !778
  br label %.body.i

.body.i:                                          ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ao, %bb.an, %bb.am, %bb.af
  %.pn12.i = phi { ptr, i32 } [ %.pn10.i, %bb.bd ], [ %i.bu, %bb.am ], [ %.pn10.i, %bb.ba ], [ %.pn10.i, %bb.bb ], [ %i.bh, %bb.af ], [ %i.ca, %bb.ao ], [ %i.bu, %bb.an ], [ %.pn10.i, %bb.be ], [ %.pn10.i, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !777
  store i8 2, ptr %i.be, align 8, !noalias !777
  br label %.body18

bb.ao:                                            ; preds = %bb.ax
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i: ; preds = %bb.al, %bb.ak, %bb.ah
  %i.cb = load i64, ptr %i.f, align 8, !range !10, !noalias !777, !noundef !5 ; 2 uses
  %.not9.i = icmp eq i64 %i.cb, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !range !11, !noalias !777
  %i.ce = trunc nuw i64 %i.cd to i1
  %or.cond.i = select i1 %.not9.i, i1 %i.ce, i1 false
  br i1 %or.cond.i, label %bb.ap, label %.thread115

.thread115:                                       ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.867, ptr noundef nonnull align 8 dereferenceable(80) %i.cc, i64 80, i1 false), !noalias !779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !777
  store i8 1, ptr %i.be, align 8, !noalias !777
  br label %bb.bj

bb.ap:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.cg = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cf)
          to label %bb.aq unwind label %bb.ar, !noalias !778 ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.ch = extractvalue { ptr, i64 } %i.cg, 0
  %i.ci = extractvalue { ptr, i64 } %i.cg, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !777, !nonnull !5, !align !12, !noundef !5
  %i.cl = invoke noundef zeroext i1 @_RINvMNtCsgxBkk5gSRhY_4core3stre11starts_withRNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ch, i64 noundef %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ck)
          to label %bb.as unwind label %bb.ar, !noalias !778

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.as:                                            ; preds = %bb.aq
  br i1 %i.cl, label %bb.bh, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 40, i1 false), !noalias !777
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  call void @llvm.experimental.noalias.scope.decl(metadata !781)
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %i.cn = load ptr, ptr %i.d, align 8, !alias.scope !784, !noalias !777, !noundef !5 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cp = atomicrmw add ptr %i.cn, i64 -1 release, align 8, !noalias !785
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.av, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i unwind label %bb.aw, !noalias !778

bb.aw:                                            ; preds = %bb.av
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !777
  br label %bb.az

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i: ; preds = %bb.av, %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !777
  %i.cs = load i64, ptr %i.f, align 8, !range !10, !noalias !777, !noundef !5
  %.not.i = icmp eq i64 %i.cs, -1
  br i1 %.not.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i unwind label %bb.ao, !noalias !778

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i: ; preds = %bb.ax, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !777
  %.pre.i = load ptr, ptr %i.cj, align 8, !noalias !777
  br label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i, %bb.aa
  %i.ct = phi ptr [ %i.be, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i ], [ %i.ba, %bb.aa ]
  %i.cu = phi ptr [ %i.bf, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i ], [ %i.bb, %bb.aa ]
  %i.cv = phi ptr [ %.pre.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i ], [ %i.bd, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !777
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.cw, ptr %i.cx, align 8, !noalias !777
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !777
  br label %bb.ae

bb.az:                                            ; preds = %bb.aw, %bb.ar
  %.pn10.i = phi { ptr, i32 } [ %i.cr, %bb.aw ], [ %i.cm, %bb.ar ] ; 5 uses
  %.sroa.0.0.i = phi i1 [ false, %bb.aw ], [ true, %bb.ar ]
  %i.cy = load i64, ptr %i.f, align 8, !range !10, !noalias !777, !noundef !5
  %i.cz = icmp eq i64 %i.cy, -1
  br i1 %i.cz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.da = load i64, ptr %i.cc, align 8, !range !11, !noalias !777, !noundef !5
  %i.db = icmp ne i64 %i.da, 0
  %or.cond4.i = and i1 %.sroa.0.0.i, %i.db
  br i1 %or.cond4.i, label %bb.bc, label %.body.i

bb.bb:                                            ; preds = %bb.az
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f) #24
          to label %.body.i unwind label %bb.bf, !noalias !778

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  %i.dc = load ptr, ptr %i.cf, align 8, !alias.scope !790, !noalias !777, !noundef !5 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.body.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.de = atomicrmw add ptr %i.dc, i64 -1 release, align 8, !noalias !791
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.be, label %.body.i

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cf) #23
          to label %.body.i unwind label %bb.bf, !noalias !778

bb.bf:                                            ; preds = %bb.be, %bb.bb, %bb.af
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !778
  unreachable

bb.bg:                                            ; preds = %bb.ad, %bb.ac
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body18

.body18:                                          ; preds = %.body.i, %bb.bg
  %i.di = phi ptr [ %i.ay, %bb.bg ], [ %i.bf, %.body.i ]
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.dh, %bb.bg ], [ %.pn12.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.867)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs0_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list11prefix_listINtBJ_12PrefixListerINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtBL_3api7ListDynEL_EENtB2E_4List4next0EBR_(ptr noundef nonnull align 8 %i.di) #24
          to label %.body unwind label %bb.s

bb.bh:                                            ; preds = %bb.as
  %.sroa.065.0.copyload66.pre = load i64, ptr %i.f, align 8, !noalias !779 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.867, ptr noundef nonnull align 8 dereferenceable(80) %i.cc, i64 80, i1 false), !noalias !779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !777
  store i8 1, ptr %i.be, align 8, !noalias !777
  %3 = icmp eq i64 %.sroa.065.0.copyload66.pre, -2
  br i1 %3, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.thread, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.867)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.bj:                                            ; preds = %.thread115, %bb.bh
  %.sroa.065.0.copyload66117 = phi i64 [ %i.cb, %.thread115 ], [ %.sroa.065.0.copyload66.pre, %bb.bh ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.584, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.867, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.867)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit

bb.bk:                                            ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !13, !noalias !792
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.879)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  switch i8 %.pre, label %default.unreachable113 [
    i8 0, label %bb.bl
    i8 1, label %bb.bn
    i8 2, label %bb.bo
    i8 3, label %bb.bm
  ]

bb.bl:                                            ; preds = %.thread118.a, %bb.bk
  %i.dk = phi ptr [ %i.x, %.thread118.a ], [ %i.dj, %bb.bk ]
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dn = load ptr, ptr %i.dl, align 8, !noalias !792, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  store ptr %i.dn, ptr %i.dm, align 8, !noalias !792
  br label %bb.ce

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !792
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bk
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
          to label %.noexc38 unwind label %.body40

.noexc38:                                         ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bk
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
          to label %.noexc39 unwind label %.body40

.noexc39:                                         ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.ce, %bb.bm
  %i.do = phi ptr [ %i.en, %bb.ce ], [ %i.dj, %bb.bm ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !792
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  invoke fastcc void @_RNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_18ServicerFlatListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.b, ptr noundef nonnull align 8 %i.dp, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.br unwind label %bb.bq, !noalias !793

bb.bq:                                            ; preds = %bb.bp
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !792
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtBJ_18ServicerFlatListerNtNtNtNtNtBN_3raw3oio4list3api4List4next0EBN_(ptr noundef nonnull align 8 %i.dp) #24
          to label %.body40.thread unwind label %bb.cl, !noalias !793

bb.br:                                            ; preds = %bb.bp
  %i.dr = load i64, ptr %i.b, align 8, !range !19, !noalias !792, !noundef !5
  %i.ds = icmp eq i64 %i.dr, -2
  br i1 %i.ds, label %.thread92, label %bb.bs

.thread92:                                        ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !792
  store i8 3, ptr %i.do, align 8, !noalias !792
  br label %bb.co

bb.bs:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !792
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtBJ_18ServicerFlatListerNtNtNtNtNtBN_3raw3oio4list3api4List4next0EBN_(ptr noundef nonnull align 8 %i.dp)
          to label %bb.bu unwind label %bb.bt, !noalias !793

.body40.thread:                                   ; preds = %bb.bq, %bb.bt, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck
  %.pn12.i27 = phi { ptr, i32 } [ %i.dt, %bb.bt ], [ %.pn10.i31, %bb.cj ], [ %.pn10.i31, %bb.cg ], [ %.pn10.i31, %bb.ch ], [ %i.dq, %bb.bq ], [ %.pn10.i31, %bb.ck ], [ %.pn10.i31, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !792
  store i8 2, ptr %i.do, align 8, !noalias !792
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879)
  br label %.body

bb.bt:                                            ; preds = %bb.cd, %bb.bs
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body40.thread

bb.bu:                                            ; preds = %bb.bs
  %i.du = load i64, ptr %i.c, align 8, !range !10, !noalias !792, !noundef !5 ; 2 uses
  %.not9.i28 = icmp eq i64 %i.du, -1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.dw = load i64, ptr %i.dv, align 8, !range !11, !noalias !792
  %i.dx = trunc nuw i64 %i.dw to i1
  %or.cond.i29 = select i1 %.not9.i28, i1 %i.dx, i1 false
  br i1 %or.cond.i29, label %bb.bv, label %.thread119

.thread119:                                       ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.879, ptr noundef nonnull align 8 dereferenceable(80) %i.dv, i64 80, i1 false), !noalias !794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !792
  store i8 1, ptr %i.do, align 8, !noalias !792
  br label %bb.cp

bb.bv:                                            ; preds = %bb.bu
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.dz = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dy)
          to label %bb.bw unwind label %bb.bx, !noalias !793 ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  %i.ea = extractvalue { ptr, i64 } %i.dz, 0
  %i.eb = extractvalue { ptr, i64 } %i.dz, 1
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !792, !nonnull !5, !align !12, !noundef !5
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 120
  %i.ef = invoke noundef zeroext i1 @_RINvMNtCsgxBkk5gSRhY_4core3stre11starts_withRNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ea, i64 noundef %i.eb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ee)
          to label %bb.by unwind label %bb.bx, !noalias !793

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.by:                                            ; preds = %bb.bw
  br i1 %i.ef, label %bb.cn, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !noalias !792
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.eh = load ptr, ptr %i.a, align 8, !alias.scope !799, !noalias !792, !noundef !5 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i34, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ej = atomicrmw add ptr %i.eh, i64 -1 release, align 8, !noalias !800
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.cb, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i34

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i34 unwind label %bb.cc, !noalias !793

bb.cc:                                            ; preds = %bb.cb
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !792
  br label %bb.cf

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i34: ; preds = %bb.cb, %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !792
  %i.em = load i64, ptr %i.c, align 8, !range !10, !noalias !792, !noundef !5
  %.not.i35 = icmp eq i64 %i.em, -1
  br i1 %.not.i35, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36, label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i34
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36 unwind label %bb.bt, !noalias !793

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36: ; preds = %bb.cd, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !792
  %.pre.i37 = load ptr, ptr %i.ec, align 8, !noalias !792
  br label %bb.ce

bb.ce:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36, %bb.bl
  %i.en = phi ptr [ %i.do, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36 ], [ %i.dk, %bb.bl ]
  %i.eo = phi ptr [ %.pre.i37, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_.exit.i36 ], [ %i.dn, %bb.bl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !792
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.eo, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !792
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 1, !noalias !792
  br label %bb.bp

bb.cf:                                            ; preds = %bb.cc, %bb.bx
  %.pn10.i31 = phi { ptr, i32 } [ %i.el, %bb.cc ], [ %i.eg, %bb.bx ] ; 5 uses
  %.sroa.0.0.i32 = phi i1 [ false, %bb.cc ], [ true, %bb.bx ]
  %i.ep = load i64, ptr %i.c, align 8, !range !10, !noalias !792, !noundef !5
  %i.eq = icmp eq i64 %i.ep, -1
  br i1 %i.eq, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.er = load i64, ptr %i.dv, align 8, !range !11, !noalias !792, !noundef !5
  %i.es = icmp ne i64 %i.er, 0
  %or.cond4.i33 = and i1 %.sroa.0.0.i32, %i.es
  br i1 %or.cond4.i33, label %bb.ci, label %.body40.thread

bb.ch:                                            ; preds = %bb.cf
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryENtNtNtB1r_5types5error5ErrorEEB1r_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.c) #24
          to label %.body40.thread unwind label %bb.cl, !noalias !793

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !801)
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.et = load ptr, ptr %i.dy, align 8, !alias.scope !805, !noalias !792, !noundef !5 ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %.body40.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ev = atomicrmw add ptr %i.et, i64 -1 release, align 8, !noalias !806
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.ck, label %.body40.thread

bb.ck:                                            ; preds = %bb.cj
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dy) #23
          to label %.body40.thread unwind label %bb.cl, !noalias !793

bb.cl:                                            ; preds = %bb.ck, %bb.ch, %bb.bq
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !793
  unreachable

.body40:                                          ; preds = %bb.bn, %bb.bo
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pr = load i8, ptr %i.dj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879)
  %cond.i42 = icmp eq i8 %.pr, 3
  br i1 %cond.i42, label %bb.cm, label %.body

bb.cm:                                            ; preds = %.body40
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtBJ_18ServicerFlatListerNtNtNtNtNtBN_3raw3oio4list3api4List4next0EBN_(ptr noundef nonnull align 8 %i.ez)
          to label %.body unwind label %bb.s

bb.cn:                                            ; preds = %bb.by
  %.sroa.077.0.copyload78.pre = load i64, ptr %i.c, align 8, !noalias !794 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.879, ptr noundef nonnull align 8 dereferenceable(80) %i.dv, i64 80, i1 false), !noalias !794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !792
  store i8 1, ptr %i.do, align 8, !noalias !792
  %4 = icmp eq i64 %.sroa.077.0.copyload78.pre, -2
  br i1 %4, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.thread92, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.cp:                                            ; preds = %.thread119, %bb.cn
  %.sroa.077.0.copyload78121 = phi i64 [ %i.du, %.thread119 ], [ %.sroa.077.0.copyload78.pre, %bb.cn ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.584, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.879, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.879)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs6_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeNtB7_14CompleteListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.789.i.sroa.5 = alloca [25 x i8], align 8 ; 6 uses
  %.sroa.789.i.sroa.7 = alloca [6 x i8], align 2  ; 6 uses
  %i.c = alloca [256 x i8], align 8               ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.583.i.sroa.5 = alloca [25 x i8], align 8 ; 6 uses
  %.sroa.583.i.sroa.7 = alloca [6 x i8], align 2  ; 6 uses
  %i.k = alloca [88 x i8], align 8                ; 15 uses
  %i.l = alloca [40 x i8], align 8                ; 17 uses
  %i.m = alloca [240 x i8], align 8               ; 15 uses
  %i.n = alloca [240 x i8], align 8               ; 16 uses
  %i.o = alloca [16 x i8], align 8                ; 10 uses
  %.sroa.1375.sroa.0 = alloca [25 x i8], align 8  ; 3 uses
  %.sroa.1375.sroa.4 = alloca [6 x i8], align 2   ; 3 uses
  %i.p = alloca [88 x i8], align 8                ; 14 uses
  %.sroa.964.sroa.0.sroa.6 = alloca [25 x i8], align 8 ; 7 uses
  %.sroa.964.sroa.7 = alloca [6 x i8], align 2    ; 7 uses
  %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.sroa.9 = alloca [25 x i8], align 8 ; 9 uses
  %.sroa.16 = alloca [6 x i8], align 2            ; 9 uses
  %.sroa.7.sroa.0 = alloca [25 x i8], align 8     ; 2 uses
  %.sroa.7.sroa.3 = alloca [6 x i8], align 2      ; 2 uses
  %i.q = alloca [88 x i8], align 8                ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !range !16, !noundef !5
  switch i8 %i.s, label %default.unreachable173 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.ci
    i8 4, label %bb.e
  ]

default.unreachable173:                           ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  store ptr %i.v, ptr %1, align 8
  br label %bb.ch

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #19
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #19
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 250
  %.pre156 = load i8, ptr %.phi.trans.insert, align 2, !range !13, !noalias !915
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.964.sroa.0.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.964.sroa.7)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.789.i.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.789.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.583.i.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.583.i.sroa.7)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 250 ; 2 uses
  switch i8 %.pre156, label %default.unreachable173 [
    i8 0, label %bb.f
    i8 1, label %bb.ad
    i8 2, label %bb.ae
    i8 3, label %bb.g
  ]

bb.f:                                             ; preds = %.thread, %bb.e
  %i.y = phi ptr [ %i.ib, %.thread ], [ %i.x, %bb.e ] ; 7 uses
  %i.z = phi ptr [ %i.ia, %.thread ], [ %i.w, %bb.e ] ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 249 ; 3 uses
  store i8 0, ptr %i.ab, align 1, !noalias !915
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !915, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  store i8 1, ptr %i.aa, align 8, !noalias !915
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 40, i1 false), !noalias !915
  %i.af = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae)
          to label %bb.h unwind label %bb.bb, !noalias !916 ; 2 uses

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !915
  br label %bb.af

bb.h:                                             ; preds = %bb.f
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1      ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  call void @llvm.experimental.noalias.scope.decl(metadata !918)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !919
  invoke void @_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.ah, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.bb, !noalias !916

.noexc.i:                                         ; preds = %bb.h
  %i.aj = load i64, ptr %i.b, align 8, !range !11, !noalias !919, !noundef !5
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !18, !noalias !919, !noundef !5 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.i, label %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i, !prof !6

bb.i:                                             ; preds = %.noexc.i
  %i.ao = load i64, ptr %i.an, align 8, !noalias !919
  invoke void @_RNvNtCs6i54tJFfzR_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.ao) #20
          to label %.noexc33.i unwind label %bb.bb, !noalias !916

.noexc33.i:                                       ; preds = %bb.i
  unreachable

_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i: ; preds = %.noexc.i
  %i.ap = load ptr, ptr %i.an, align 8, !noalias !919, !nonnull !5, !noundef !5 ; 2 uses
  %i.aq = icmp samesign ule i64 %i.ah, %i.am
  call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !919
  %.not.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %i.ag, i64 range(i64 0, -9223372036854775808) %i.ah, i1 false), !noalias !920
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvMs5_NtCs6i54tJFfzR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5XgW7KoffLW_12opendal_core.exit.i.i.i.i
  store i64 %i.am, ptr %i.ai, align 8, !alias.scope !921, !noalias !915
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !921, !noalias !915
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  store i64 %i.ah, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !921, !noalias !915
  %.val.i = load ptr, ptr %i.ae, align 8, !noalias !915, !noundef !5 ; 3 uses
  %i.ar = getelementptr i8, ptr %1, i64 112
  %.val26.i = load i64, ptr %i.ar, align 8, !noalias !915 ; 6 uses
  %.not.i.i.i34.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i34.i, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 4 uses
  switch i64 %.val26.i, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i.i.i [
    i64 0, label %bb.s
    i64 1, label %.invoke.i
  ], !prof !922

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i.i.i: ; preds = %bb.l
  %.sroa.02.0.copyload.i.i.i.i.i = load i16, ptr %i.as, align 1, !alias.scope !923, !noalias !916 ; 3 uses
  %i.at = and i16 %.sroa.02.0.copyload.i.i.i.i.i, 64
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.s, label %bb.m

bb.m:                                             ; preds = %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact12read_present.exit.i.i.i.i
  %i.av = and i16 %.sroa.02.0.copyload.i.i.i.i.i, 63 ; 2 uses
  %i.aw = icmp eq i16 %i.av, 0
  br i1 %i.aw, label %.split9.i.i.i.i, label %.split.i.i.i.i

.split9.i.i.i.i:                                  ; preds = %bb.m
  %.not.i.i.i.i.i = icmp samesign ult i64 %.val26.i, 4
  br i1 %.not.i.i.i.i.i, label %.invoke.i, label %_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i.i.i, !prof !6

_RNvNtNtCs5XgW7KoffLW_12opendal_core5types7compact11read_offset.exit.i.i.i.i: ; preds = %.split9.i.i.i.i
  %i.ax = call range(i16 1, 11) i16 @llvm.ctpop.i16(i16 %.sroa.02.0.copyload.i.i.i.i.i)
  %i.ay = shl nuw nsw i16 %i.ax, 1
  %narrow.i.i.i.i = add nuw nsw i16 %i.ay, 2
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i, i64 18
  br label %bb.n

.split.i.i.i.i:                                   ; preds = %bb.m
  %i.ba = call range(i16 1, 7) i16 @llvm.ctpop.i16(i16 %i.av)
  %i.bb = shl nuw nsw i16 %i.ba, 1
  %i.bc = zext nneg i16 %i.bb to i64              ; 4 uses
  %i.bd = add nuw nsw i64 %i.bc, 2                ; 4 uses
  %.not.i14.i.i.i.i = icmp samesign ugt i64 %i.bd, %.val26.i
end_hunk_0
begin_hunk_1_@_RNCNvXs6_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeNtB7_14CompleteListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 168 ; 2 uses
  store i64 -1, ptr %i.cc, align 8, !alias.scope !928, !noalias !915
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 192 ; 2 uses
  store i64 -1, ptr %i.cd, align 8, !alias.scope !928, !noalias !915
  %i.ce = getelementptr inbounds nuw i8, ptr %i.m, i64 216 ; 2 uses
  store i64 -1, ptr %i.ce, align 8, !alias.scope !928, !noalias !915
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 %.sroa.0.090.i, ptr %i.cf, align 8, !noalias !915
  %.sroa.4113.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %.sroa.9.0.i, ptr %.sroa.4113.0..sroa_idx.i, align 8, !noalias !915
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i64 %.sroa.10.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !915
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !noalias !915
  %i.ch = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false), !noalias !915
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false), !noalias !915
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !noalias !915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !915
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false), !noalias !915
  %i.cl = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !noalias !915
  %i.cm = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !noalias !915
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false), !noalias !915
  %i.co = invoke { ptr, i64 } @_RNvXsf_NtNtCs5XgW7KoffLW_12opendal_core3raw3opsNtB5_6OpStatINtNtCsgxBkk5gSRhY_4core7convert4FromNtNtNtB9_5types7options11StatOptionsE4from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(240) %i.n)
          to label %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtCs5XgW7KoffLW_12opendal_core5types7options11StatOptionsINtB5_4IntoNtNtNtBE_3raw3ops6OpStatE4intoBE_.exit.i unwind label %bb.t, !noalias !916 ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !915
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bw) #24
          to label %bb.ab unwind label %bb.aa, !noalias !916

_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtCs5XgW7KoffLW_12opendal_core5types7options11StatOptionsINtB5_4IntoNtNtNtBE_3raw3ops6OpStatE4intoBE_.exit.i: ; preds = %bb.s
  %i.cq = extractvalue { ptr, i64 } %i.co, 0      ; 2 uses
  %i.cr = extractvalue { ptr, i64 } %i.co, 1      ; 2 uses
  store ptr %i.cq, ptr %i.o, align 8, !noalias !915
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !noalias !915
  store i8 1, ptr %i.ab, align 1, !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !915
  %i.ct = load i64, ptr %i.bw, align 8, !range !10, !alias.scope !929, !noalias !915, !noundef !5
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtCs5XgW7KoffLW_12opendal_core5types7options11StatOptionsINtB5_4IntoNtNtNtBE_3raw3ops6OpStatE4intoBE_.exit.i
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.v, !noalias !916

bb.v:                                             ; preds = %bb.u
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %.body.i unwind label %bb.w, !noalias !916

bb.w:                                             ; preds = %bb.v
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !916
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.u
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %bb.y unwind label %bb.x, !noalias !916

bb.x:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.x, %bb.v
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cx, %bb.x ], [ %i.cv, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !915
  br label %bb.z

bb.y:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i.i, %_RNvXs1_NtCsgxBkk5gSRhY_4core7convertNtNtNtCs5XgW7KoffLW_12opendal_core5types7options11StatOptionsINtB5_4IntoNtNtNtBE_3raw3ops6OpStatE4intoBE_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !915
  %.val27.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !915, !nonnull !5, !noundef !5
  %.val28.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !915, !noundef !5
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i8 0, ptr %i.ab, align 1, !noalias !915
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.cq, ptr %i.da, align 8, !noalias !915
  %.sroa.877.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i64 %i.cr, ptr %.sroa.877.0..sroa_idx.i, align 8, !noalias !915
  %.sroa.1079.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %.val27.i, ptr %.sroa.1079.0..sroa_idx.i, align 8, !noalias !915
  %.sroa.1180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 %.val28.i, ptr %.sroa.1180.0..sroa_idx.i, align 8, !noalias !915
  %.sroa.1281.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.cz, ptr %.sroa.1281.0..sroa_idx.i, align 8, !noalias !915
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.cy, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !915
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 233
  store i8 0, ptr %.sroa.15.0..sroa_idx.i, align 1, !noalias !915
  br label %bb.af

bb.z:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit55.i, %.body.i
  %i.db = phi ptr [ %i.ds, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit55.i ], [ %i.y, %.body.i ] ; 4 uses
  %i.dc = phi ptr [ %i.dt, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit55.i ], [ %i.z, %.body.i ] ; 4 uses
  %.pn16.pn.pn.i = phi { ptr, i32 } [ %.pn16.pn.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit55.i ], [ %eh.lpad-body.i, %.body.i ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 249
  %i.de = load i8, ptr %i.dd, align 1, !range !17, !noalias !915, !noundef !5
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.bp, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i

bb.aa:                                            ; preds = %bb.bu, %bb.br, %bb.bh, %bb.bc, %bb.ar, %bb.ag, %bb.ac, %bb.t
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !916
  unreachable

bb.ab:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !915
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i: ; preds = %bb.br, %bb.bq, %bb.bp, %bb.ab, %bb.z
  %i.dh = phi ptr [ %i.y, %bb.ab ], [ %i.db, %bb.z ], [ %i.db, %bb.br ], [ %i.db, %bb.bp ], [ %i.db, %bb.bq ]
  %i.di = phi ptr [ %i.z, %bb.ab ], [ %i.dc, %bb.z ], [ %i.dc, %bb.br ], [ %i.dc, %bb.bp ], [ %i.dc, %bb.bq ]
  %.pn16.pn.pn.pn.i = phi { ptr, i32 } [ %i.cp, %bb.ab ], [ %.pn16.pn.pn.i, %bb.z ], [ %.pn16.pn.pn.i, %bb.br ], [ %.pn16.pn.pn.i, %bb.bp ], [ %.pn16.pn.pn.i, %bb.bq ]
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 249
  store i8 0, ptr %i.dj, align 1, !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !915
  br label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i, %bb.o
  %i.dk = phi ptr [ %i.dh, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i ], [ %i.y, %bb.o ]
  %i.dl = phi ptr [ %i.di, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i ], [ %i.z, %bb.o ]
  %.pn16.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn16.pn.pn.pn.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i ], [ %i.bl, %bb.o ]
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dm) #24
          to label %.body51.i unwind label %bb.aa, !noalias !916

.body51.i:                                        ; preds = %bb.bi, %bb.bb, %bb.az, %bb.ac
  %i.dn = phi ptr [ %i.dk, %bb.ac ], [ %i.ds, %bb.az ], [ %i.ff, %bb.bb ], [ %i.ds, %bb.bi ] ; 4 uses
  %i.do = phi ptr [ %i.dl, %bb.ac ], [ %i.dt, %bb.az ], [ %i.fg, %bb.bb ], [ %i.dt, %bb.bi ] ; 4 uses
  %.pn22.i = phi { ptr, i32 } [ %.pn16.pn.pn.pn.pn.i, %bb.ac ], [ %i.fd, %bb.az ], [ %i.fh, %bb.bb ], [ %i.fp, %bb.bi ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.dq = load i8, ptr %i.dp, align 8, !range !17, !noalias !915, !noundef !5
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.bs, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit65.i

bb.ad:                                            ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #19
          to label %.noexc unwind label %bb.bv

.noexc:                                           ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #19
          to label %.noexc31 unwind label %bb.bv

.noexc31:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.y, %bb.g
  %i.ds = phi ptr [ %i.y, %bb.y ], [ %i.x, %bb.g ] ; 8 uses
  %i.dt = phi ptr [ %i.z, %bb.y ], [ %i.w, %bb.g ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !915
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  invoke fastcc void @_RNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtB7_10ServiceDynEL_ENtB7_7Service4stat0Bb_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.k, ptr noundef nonnull align 8 %i.du, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ah unwind label %bb.ag, !noalias !916

bb.ag:                                            ; preds = %bb.af
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !915
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %i.du) #24
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit55.i unwind label %bb.aa, !noalias !916

bb.ah:                                            ; preds = %bb.af
  %i.dw = load i64, ptr %i.k, align 8, !range !19, !noalias !915, !noundef !5 ; 4 uses
  %i.dx = icmp eq i64 %i.dw, -2
  br i1 %i.dx, label %bb.bw, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.3.i.sroa.0.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !915 ; 4 uses
  %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.3.i.sroa.6.0.copyload = load i64, ptr %.sroa.3.i.sroa.6.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !915 ; 2 uses
  %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.3.i.sroa.7.0.copyload = load i64, ptr %.sroa.3.i.sroa.7.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !915 ; 2 uses
  %.sroa.3.i.sroa.8.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.3.i.sroa.8.0.copyload = load i64, ptr %.sroa.3.i.sroa.8.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !915 ; 2 uses
  %.sroa.3.i.sroa.9.0..sroa.3.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.3.i.sroa.9.0.copyload = load i64, ptr %.sroa.3.i.sroa.9.0..sroa.3.0..sroa_idx.i.sroa_idx, align 8, !noalias !915 ; 3 uses
  %.sroa.583.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.583.i.sroa.0.0.copyload = load i64, ptr %.sroa.583.0..sroa_idx.i, align 8, !noalias !915
  %.sroa.583.i.sroa.5.0..sroa.583.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.583.i.sroa.5, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.583.i.sroa.5.0..sroa.583.0..sroa_idx.i.sroa_idx, i64 25, i1 false), !noalias !915
  %.sroa.583.i.sroa.6.0..sroa.583.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 81
  %.sroa.583.i.sroa.6.0.copyload = load i8, ptr %.sroa.583.i.sroa.6.0..sroa.583.0..sroa_idx.i.sroa_idx, align 1, !noalias !915
  %.sroa.583.i.sroa.7.0..sroa.583.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.583.i.sroa.7, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.583.i.sroa.7.0..sroa.583.0..sroa_idx.i.sroa_idx, i64 6, i1 false), !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !915
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtBJ_10ServiceDynEL_ENtBJ_7Service4stat0EBN_(ptr noundef nonnull align 8 %i.du)
          to label %bb.aj unwind label %bb.ay, !noalias !916

bb.aj:                                            ; preds = %bb.ai
  %.not.i45.i = icmp eq i64 %i.dw, -1             ; 2 uses
  br i1 %.not.i45.i, label %bb.ak, label %bb.bk

bb.ak:                                            ; preds = %bb.aj
  store i64 %.sroa.3.i.sroa.0.0.copyload, ptr %i.l, align 8, !noalias !915
  %.sroa.3.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.3.i.sroa.6.0.copyload, ptr %.sroa.3.i.sroa.6.0..sroa_idx, align 8, !noalias !915
  %.sroa.3.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 %.sroa.3.i.sroa.7.0.copyload, ptr %.sroa.3.i.sroa.7.0..sroa_idx, align 8, !noalias !915
  %.sroa.3.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.3.i.sroa.8.0.copyload, ptr %.sroa.3.i.sroa.8.0..sroa_idx, align 8, !noalias !915
  %.sroa.3.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.3.i.sroa.9.0.copyload, ptr %.sroa.3.i.sroa.9.0..sroa_idx, align 8, !noalias !915
  %i.dy = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.dz = lshr i64 %.sroa.3.i.sroa.9.0.copyload, 32
  %i.ea = trunc i64 %i.dz to i16
  %i.eb = and i16 %i.ea, 3
  %i.ec = add nsw i16 %i.eb, -3
  %i.ed = icmp ult i16 %i.ec, -2
  %i.ee = inttoptr i64 %.sroa.3.i.sroa.0.0.copyload to ptr
  br i1 %i.ed, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !915
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  store i8 0, ptr %i.ef, align 8, !noalias !915
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.eg, i64 40, i1 false), !noalias !915
  invoke void @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry10into_parts(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.g)
          to label %bb.aq unwind label %bb.ap, !noalias !916

bb.am:                                            ; preds = %bb.ak
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i8 0, ptr %i.eh, align 8, !noalias !915
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.4.i.sroa.0.0.copyload138 = load i64, ptr %i.ei, align 8, !noalias !915 ; 3 uses
  %.sroa.4.i.sroa.7.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.4.i.sroa.7.0.copyload141 = load i64, ptr %.sroa.4.i.sroa.7.0..sroa_idx140, align 8, !noalias !915 ; 3 uses
  %.sroa.4.i.sroa.8.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.4.i.sroa.8.0.copyload144 = load i64, ptr %.sroa.4.i.sroa.8.0..sroa_idx143, align 8, !noalias !915 ; 3 uses
  %.sroa.4.i.sroa.9.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.i.sroa.9.0.copyload147 = load i64, ptr %.sroa.4.i.sroa.9.0..sroa_idx146, align 8, !noalias !915 ; 3 uses
  %.sroa.4.i.sroa.10.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.4.i.sroa.10.0.copyload150 = load i64, ptr %.sroa.4.i.sroa.10.0..sroa_idx149, align 8, !noalias !915 ; 3 uses
  %i.ej = icmp eq i64 %.sroa.3.i.sroa.0.0.copyload, 0
  br i1 %i.ej, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ek = atomicrmw add ptr %i.ee, i64 -1 release, align 8, !noalias !930
  %i.el = icmp eq i64 %i.ek, 1
  br i1 %i.el, label %bb.ao, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i unwind label %bb.ay, !noalias !916

bb.ap:                                            ; preds = %bb.al
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !915
  br label %bb.bf

bb.aq:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !915
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.en, i64 40, i1 false), !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !915
  invoke void @_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder13from_metadata(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.i)
          to label %bb.as unwind label %bb.ar, !noalias !916

bb.ar:                                            ; preds = %bb.aq
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !915
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %bb.be unwind label %bb.aa, !noalias !916

bb.as:                                            ; preds = %bb.aq
  %.val31.i = load i16, ptr %i.dy, align 4, !noalias !915, !noundef !5
  %i.ep = and i16 %.val31.i, 3
  %switch.selectcmp1.i48.i = icmp eq i16 %i.ep, 1 ; 2 uses
  %.val32.i = load i64, ptr %.sroa.3.i.sroa.7.0..sroa_idx, align 8, !noalias !915
  %.sink129.i = select i1 %switch.selectcmp1.i48.i, i16 1, i16 2
  %.sink.i = select i1 %switch.selectcmp1.i48.i, i64 %.val32.i, i64 0
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 236 ; 2 uses
  %i.er = load i16, ptr %i.eq, align 4, !noalias !915, !noundef !5
  %i.es = and i16 %i.er, -4
  %i.et = or disjoint i16 %i.es, %.sink129.i
  store i16 %i.et, ptr %i.eq, align 4, !noalias !915
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store i64 %.sink.i, ptr %i.eu, align 8, !noalias !915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !915
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !915
  invoke void @_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder5build(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %i.c)
          to label %bb.at unwind label %bb.bc, !noalias !916

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4with(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.av unwind label %bb.au, !noalias !916

bb.au:                                            ; preds = %bb.at
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !915
  br label %bb.bd

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !915
  %.sroa.4.i.sroa.0.0.copyload137 = load i64, ptr %i.f, align 8, !noalias !915
  %.sroa.4.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.i.sroa.7.0.copyload139 = load i64, ptr %.sroa.4.i.sroa.7.0..sroa_idx, align 8, !noalias !915
  %.sroa.4.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.i.sroa.8.0.copyload142 = load i64, ptr %.sroa.4.i.sroa.8.0..sroa_idx, align 8, !noalias !915
  %.sroa.4.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.4.i.sroa.9.0.copyload145 = load i64, ptr %.sroa.4.i.sroa.9.0..sroa_idx, align 8, !noalias !915
  %.sroa.4.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.4.i.sroa.10.0.copyload148 = load i64, ptr %.sroa.4.i.sroa.10.0..sroa_idx, align 8, !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !915
  call void @llvm.experimental.noalias.scope.decl(metadata !931)
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %i.ew = load ptr, ptr %i.l, align 8, !alias.scope !934, !noalias !915, !noundef !5 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit50.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ey = atomicrmw add ptr %i.ew, i64 -1 release, align 8, !noalias !935
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.ax, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit50.i

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit50.i unwind label %bb.ay, !noalias !916

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit55.i: ; preds = %bb.ag, %bb.bh, %bb.bg, %bb.bf, %bb.ay
  %.pn16.pn.i = phi { ptr, i32 } [ %.pn11.pn.pn.pn.i, %bb.bg ], [ %i.fa, %bb.ay ], [ %.pn11.pn.pn.pn.i, %bb.bh ], [ %.pn11.pn.pn.pn.i, %bb.bf ], [ %i.dv, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !915
  br label %bb.z

bb.ay:                                            ; preds = %bb.ai, %bb.ax, %bb.ao
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit55.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit50.i: ; preds = %bb.ax, %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !915
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 249
  store i8 0, ptr %i.fb, align 1, !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !915
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fc)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.az, !noalias !916

bb.az:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit50.i
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fc)
          to label %.body51.i unwind label %bb.ba, !noalias !916

bb.ba:                                            ; preds = %bb.az
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !916
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit50.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fc)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.bb, !noalias !916

bb.bb:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i57.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i.i, %bb.i, %bb.h, %bb.f
  %i.ff = phi ptr [ %i.ds, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i57.i ], [ %i.ds, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i.i ], [ %i.y, %bb.i ], [ %i.y, %bb.h ], [ %i.y, %bb.f ]
  %i.fg = phi ptr [ %i.dt, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i57.i ], [ %i.dt, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i.i ], [ %i.z, %bb.i ], [ %i.z, %bb.h ], [ %i.z, %bb.f ]
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body51.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i.i
  store i8 0, ptr %i.ef, align 8, !noalias !915
  br label %bb.bx

bb.bc:                                            ; preds = %bb.as
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !915
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #24
          to label %bb.bd unwind label %bb.aa, !noalias !916

bb.bd:                                            ; preds = %bb.bc, %bb.au
  %.pn11100.i = phi { ptr, i32 } [ %i.fi, %bb.bc ], [ %i.ev, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !915
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ar
  %.pn11.pn.pn111.i = phi { ptr, i32 } [ %i.eo, %bb.ar ], [ %.pn11100.i, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !915
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.ap
  %.pn11.pn.pn.pn.i = phi { ptr, i32 } [ %.pn11.pn.pn111.i, %bb.be ], [ %i.em, %bb.ap ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !936)
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  %i.fj = load ptr, ptr %i.l, align 8, !alias.scope !939, !noalias !915, !noundef !5 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit55.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fl = atomicrmw add ptr %i.fj, i64 -1 release, align 8, !noalias !940
  %i.fm = icmp eq i64 %i.fl, 1
  br i1 %i.fm, label %bb.bh, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit55.i

bb.bh:                                            ; preds = %bb.bg
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit55.i unwind label %bb.aa, !noalias !916

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i: ; preds = %bb.bk, %bb.ao, %bb.an, %bb.am
  %.sroa.789.i.sroa.0.0 = phi i64 [ undef, %bb.am ], [ undef, %bb.ao ], [ undef, %bb.an ], [ %.sroa.583.i.sroa.0.0.copyload, %bb.bk ]
  %.sroa.789.i.sroa.6.0.a = phi i8 [ undef, %bb.am ], [ undef, %bb.ao ], [ undef, %bb.an ], [ %.sroa.583.i.sroa.6.0.copyload, %bb.bk ]
  %.sroa.4.i.sroa.0.0 = phi i64 [ %.sroa.4.i.sroa.0.0.copyload138, %bb.am ], [ %.sroa.4.i.sroa.0.0.copyload138, %bb.ao ], [ %.sroa.4.i.sroa.0.0.copyload138, %bb.an ], [ %.sroa.3.i.sroa.0.0.copyload, %bb.bk ]
  %.sroa.4.i.sroa.7.0 = phi i64 [ %.sroa.4.i.sroa.7.0.copyload141, %bb.am ], [ %.sroa.4.i.sroa.7.0.copyload141, %bb.ao ], [ %.sroa.4.i.sroa.7.0.copyload141, %bb.an ], [ %.sroa.3.i.sroa.6.0.copyload, %bb.bk ]
  %.sroa.4.i.sroa.8.0 = phi i64 [ %.sroa.4.i.sroa.8.0.copyload144, %bb.am ], [ %.sroa.4.i.sroa.8.0.copyload144, %bb.ao ], [ %.sroa.4.i.sroa.8.0.copyload144, %bb.an ], [ %.sroa.3.i.sroa.7.0.copyload, %bb.bk ]
  %.sroa.4.i.sroa.9.0 = phi i64 [ %.sroa.4.i.sroa.9.0.copyload147, %bb.am ], [ %.sroa.4.i.sroa.9.0.copyload147, %bb.ao ], [ %.sroa.4.i.sroa.9.0.copyload147, %bb.an ], [ %.sroa.3.i.sroa.8.0.copyload, %bb.bk ]
  %.sroa.4.i.sroa.10.0 = phi i64 [ %.sroa.4.i.sroa.10.0.copyload150, %bb.am ], [ %.sroa.4.i.sroa.10.0.copyload150, %bb.ao ], [ %.sroa.4.i.sroa.10.0.copyload150, %bb.an ], [ %.sroa.3.i.sroa.9.0.copyload, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !915
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 249
  store i8 0, ptr %i.fn, align 1, !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !915
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fo)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i57.i unwind label %bb.bi, !noalias !916

bb.bi:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fo)
          to label %.body51.i unwind label %bb.bj, !noalias !916

bb.bj:                                            ; preds = %bb.bi
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22, !noalias !916
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i57.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fo)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit61.i unwind label %bb.bb, !noalias !916

bb.bk:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.789.i.sroa.5, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.583.i.sroa.5, i64 25, i1 false), !noalias !915
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.789.i.sroa.7, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.583.i.sroa.7, i64 6, i1 false), !noalias !915
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit61.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i57.i
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 8, !range !17, !noalias !915, !noundef !5
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.bl, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i: ; preds = %bb.bn, %bb.bm, %bb.bl, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit61.i
  store i8 0, ptr %i.fr, align 8, !noalias !915
  br label %bb.bx

bb.bl:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit61.i
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  call void @llvm.experimental.noalias.scope.decl(metadata !943)
  call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !945, !noalias !915, !noundef !5 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fx = atomicrmw add ptr %i.fv, i64 -1 release, align 8, !noalias !946
  %i.fy = icmp eq i64 %i.fx, 1
  br i1 %i.fy, label %bb.bn, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.fu) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i unwind label %bb.bo, !noalias !916

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit65.i: ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bo, %.body51.i
  %i.fz = phi ptr [ %i.ds, %bb.bo ], [ %i.dn, %.body51.i ], [ %i.dn, %bb.bu ], [ %i.dn, %bb.bs ], [ %i.dn, %bb.bt ]
  %i.ga = phi ptr [ %i.dt, %bb.bo ], [ %i.do, %.body51.i ], [ %i.do, %bb.bu ], [ %i.do, %bb.bs ], [ %i.do, %bb.bt ]
  %.pn24.i = phi { ptr, i32 } [ %i.gc, %bb.bo ], [ %.pn22.i, %.body51.i ], [ %.pn22.i, %bb.bu ], [ %.pn22.i, %bb.bs ], [ %.pn22.i, %bb.bt ]
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i8 0, ptr %i.gb, align 8, !noalias !915
  store i8 2, ptr %i.fz, align 2, !noalias !915
  br label %.body

bb.bo:                                            ; preds = %bb.bn
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit65.i

bb.bp:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !947)
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.gd = load ptr, ptr %i.o, align 8, !alias.scope !950, !noalias !915, !noundef !5 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gf = atomicrmw add ptr %i.gd, i64 -1 release, align 8, !noalias !951
  %i.gg = icmp eq i64 %i.gf, 1
  br i1 %i.gg, label %bb.br, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i

bb.br:                                            ; preds = %bb.bq
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw3ops6OpStatEBH_.exit.i unwind label %bb.aa, !noalias !916

bb.bs:                                            ; preds = %.body51.i
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !956, !noalias !915, !noundef !5 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit65.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gk = atomicrmw add ptr %i.gi, i64 -1 release, align 8, !noalias !957
  %i.gl = icmp eq i64 %i.gk, 1
  br i1 %i.gl, label %bb.bu, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit65.i

bb.bu:                                            ; preds = %bb.bt
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.gh) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit65.i unwind label %bb.aa, !noalias !916

bb.bv:                                            ; preds = %bb.ae, %bb.ad
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit65.i, %bb.bv
  %i.gn = phi ptr [ %i.w, %bb.bv ], [ %i.ga, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit65.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.gm, %bb.bv ], [ %.pn24.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit65.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.964.sroa.0.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.964.sroa.7)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs5_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeNtBJ_14CompleteLister27complete_unknown_entry_mode0EBN_(ptr noundef nonnull align 8 %i.gn) #24
          to label %bb.by unwind label %bb.cy

common.ret:                                       ; preds = %bb.cw, %bb.cl, %bb.bw
  %.sink = phi i8 [ 1, %bb.cw ], [ 3, %bb.cl ], [ 4, %bb.bw ]
  store i8 %.sink, ptr %i.r, align 1
  ret void

bb.bw:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !915
  store i8 3, ptr %i.ds, align 2, !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.789.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.789.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.583.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.583.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.964.sroa.0.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.964.sroa.7)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %common.ret

bb.bx:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i
  %.sroa.789.i.sroa.0.1 = phi i64 [ %.sroa.789.i.sroa.0.0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i ], [ undef, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i ] ; 2 uses
  %.sroa.789.i.sroa.6.1.a = phi i8 [ %.sroa.789.i.sroa.6.0.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i ], [ undef, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i ] ; 2 uses
  %.sroa.4.i.sroa.0.1 = phi i64 [ %.sroa.4.i.sroa.0.0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i ], [ %.sroa.4.i.sroa.0.0.copyload137, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i ] ; 3 uses
  %.sroa.4.i.sroa.7.1 = phi i64 [ %.sroa.4.i.sroa.7.0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i ], [ %.sroa.4.i.sroa.7.0.copyload139, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i ] ; 3 uses
  %.sroa.4.i.sroa.8.1 = phi i64 [ %.sroa.4.i.sroa.8.0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i ], [ %.sroa.4.i.sroa.8.0.copyload142, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i ] ; 3 uses
  %.sroa.4.i.sroa.9.1 = phi i64 [ %.sroa.4.i.sroa.9.0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i ], [ %.sroa.4.i.sroa.9.0.copyload145, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i ] ; 3 uses
  %.sroa.4.i.sroa.10.1 = phi i64 [ %.sroa.4.i.sroa.10.0, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit.i ], [ %.sroa.4.i.sroa.10.0.copyload148, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.964.sroa.0.sroa.6, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.789.i.sroa.5, i64 25, i1 false), !noalias !958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.964.sroa.7, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.789.i.sroa.7, i64 6, i1 false), !noalias !958
  store i8 1, ptr %i.ds, align 2, !noalias !915
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.789.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.789.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.583.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.583.i.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.sroa.9, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.964.sroa.0.sroa.6, i64 25, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.16, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.964.sroa.7, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.964.sroa.0.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.964.sroa.7)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvMs5_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeNtBJ_14CompleteLister27complete_unknown_entry_mode0EBN_(ptr noundef nonnull align 8 %i.dt)
          to label %bb.ca unwind label %bb.bz

bb.by:                                            ; preds = %.thread85, %bb.bz, %.body
  %.pn19.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.gt, %.thread85 ], [ %i.gr, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 8, !range !17, !noundef !5
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.cz, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit

bb.bz:                                            ; preds = %bb.bx
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ca:                                            ; preds = %bb.bx
  br i1 %.not.i45.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca, %bb.cd
  %.sroa.1073.sroa.5.sroa.5.sroa.5.sroa.5.0 = phi i64 [ %.sroa.789.i.sroa.0.1, %bb.cd ], [ %.sroa.4.i.sroa.10.1, %bb.ca ]
  %.sroa.1073.sroa.5.sroa.5.sroa.5.sroa.0.0 = phi i64 [ %.sroa.4.i.sroa.10.1, %bb.cd ], [ %.sroa.4.i.sroa.9.1, %bb.ca ]
  %.sroa.1073.sroa.5.sroa.5.sroa.0.0 = phi i64 [ %.sroa.4.i.sroa.9.1, %bb.cd ], [ %.sroa.4.i.sroa.8.1, %bb.ca ]
  %.sroa.1073.sroa.5.sroa.0.0 = phi i64 [ %.sroa.4.i.sroa.8.1, %bb.cd ], [ %.sroa.4.i.sroa.7.1, %bb.ca ]
  %.sroa.1073.sroa.0.0 = phi i64 [ %.sroa.4.i.sroa.7.1, %bb.cd ], [ %.sroa.4.i.sroa.0.1, %bb.ca ]
  %.sroa.1375.sroa.3.0 = phi i8 [ %.sroa.789.i.sroa.6.1.a, %bb.cd ], [ undef, %bb.ca ]
  %.sroa.670.0 = phi i64 [ %.sroa.4.i.sroa.0.1, %bb.cd ], [ 1, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.cf

bb.cc:                                            ; preds = %bb.ca
  %3 = icmp eq i8 %.sroa.789.i.sroa.6.1.a, 3
  br i1 %3, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.1375.sroa.0, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.sroa.9, i64 25, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1375.sroa.4, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.16, i64 6, i1 false)
  br label %bb.cb

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %i.dw, ptr %i.p, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.4.i.sroa.0.1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.4.i.sroa.7.1, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.12.sroa.10.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %.sroa.4.i.sroa.8.1, ptr %.sroa.12.sroa.10.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.10.sroa.10.0..sroa.12.sroa.10.0..sroa.12.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %.sroa.4.i.sroa.9.1, ptr %.sroa.12.sroa.10.sroa.10.0..sroa.12.sroa.10.0..sroa.12.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.10.sroa.10.sroa.10.0..sroa.12.sroa.10.sroa.10.0..sroa.12.sroa.10.0..sroa.12.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %.sroa.4.i.sroa.10.1, ptr %.sroa.12.sroa.10.sroa.10.sroa.10.0..sroa.12.sroa.10.sroa.10.0..sroa.12.sroa.10.0..sroa.12.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.0..sroa.12.sroa.10.sroa.10.sroa.10.0..sroa.12.sroa.10.sroa.10.0..sroa.12.sroa.10.0..sroa.12.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 %.sroa.789.i.sroa.0.1, ptr %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.0..sroa.12.sroa.10.sroa.10.sroa.10.0..sroa.12.sroa.10.sroa.10.0..sroa.12.sroa.10.0..sroa.12.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.sroa.9.0..sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.0..sroa.12.sroa.10.sroa.10.sroa.10.0..sroa.12.sroa.10.sroa.10.0..sroa.12.sroa.10.0..sroa.12.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.sroa.9.0..sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.0..sroa.12.sroa.10.sroa.10.sroa.10.0..sroa.12.sroa.10.sroa.10.0..sroa.12.sroa.10.0..sroa.12.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.sroa.9, i64 25, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 81
  store i8 3, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.16, i64 6, i1 false)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.p)
          to label %bb.cg unwind label %.thread85

bb.cf:                                            ; preds = %bb.cv, %bb.cb
  %.sroa.1073.sroa.5.sroa.5.sroa.5.sroa.5.1 = phi i64 [ %.sroa.1073.sroa.5.sroa.5.sroa.5.sroa.5.0, %bb.cb ], [ %.sroa.547.sroa.9.0.copyload, %bb.cv ]
  %.sroa.1073.sroa.5.sroa.5.sroa.5.sroa.0.1 = phi i64 [ %.sroa.1073.sroa.5.sroa.5.sroa.5.sroa.0.0, %bb.cb ], [ %.sroa.547.sroa.7.0.copyload, %bb.cv ]
  %.sroa.1073.sroa.5.sroa.5.sroa.0.1 = phi i64 [ %.sroa.1073.sroa.5.sroa.5.sroa.0.0, %bb.cb ], [ %.sroa.547.sroa.5.0.copyload, %bb.cv ]
  %.sroa.1073.sroa.5.sroa.0.1 = phi i64 [ %.sroa.1073.sroa.5.sroa.0.0, %bb.cb ], [ %.sroa.547.sroa.3.0.copyload, %bb.cv ]
  %.sroa.1073.sroa.0.1 = phi i64 [ %.sroa.1073.sroa.0.0, %bb.cb ], [ %.sroa.547.sroa.0.0.copyload, %bb.cv ]
  %.sroa.1375.sroa.3.1 = phi i8 [ %.sroa.1375.sroa.3.0, %bb.cb ], [ undef, %bb.cv ]
  %.sroa.068.1 = phi i64 [ %i.dw, %bb.cb ], [ -1, %bb.cv ]
  %.sroa.670.1 = phi i64 [ %.sroa.670.0, %bb.cb ], [ 1, %bb.cv ]
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.gs, align 8
  br label %bb.cw

.thread85:                                        ; preds = %bb.ce
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.by

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.gu, align 8
  %.pre = load ptr, ptr %1, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.b
  %i.gv = phi ptr [ %.pre, %bb.cg ], [ %i.v, %bb.b ]
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.gv, ptr %i.gw, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.a, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  invoke fastcc void @_RNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_7ListDynEL_ENtB7_4List4next0Bf_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.q, ptr noundef nonnull align 8 %i.gx, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.ck unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_(ptr noundef nonnull align 8 %i.gx) #24
          to label %.body33 unwind label %bb.cy

bb.ck:                                            ; preds = %bb.ci
  %i.gz = load i64, ptr %i.q, align 8, !range !19, !noundef !5 ; 3 uses
  %i.ha = icmp eq i64 %i.gz, -2
  br i1 %i.ha, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.cm:                                            ; preds = %bb.ck
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.547.sroa.0.0.copyload = load i64, ptr %.sroa.547.0..sroa_idx, align 8 ; 3 uses
  %.sroa.547.sroa.3.0..sroa.547.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.547.sroa.3.0.copyload = load i64, ptr %.sroa.547.sroa.3.0..sroa.547.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.547.sroa.5.0..sroa.547.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.547.sroa.5.0.copyload = load i64, ptr %.sroa.547.sroa.5.0..sroa.547.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.547.sroa.7.0..sroa.547.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %.sroa.547.sroa.7.0.copyload = load i64, ptr %.sroa.547.sroa.7.0..sroa.547.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.547.sroa.9.0..sroa.547.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.547.sroa.9.0.copyload = load i64, ptr %.sroa.547.sroa.9.0..sroa.547.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.7.0..sroa_idx, i64 25, i1 false)
  %.sroa.7.sroa.2.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 81
  %.sroa.7.sroa.2.0.copyload = load i8, ptr %.sroa.7.sroa.2.0..sroa.7.0..sroa_idx.sroa_idx, align 1
  %.sroa.7.sroa.3.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.sroa.3, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.sroa.3.0..sroa.7.0..sroa_idx.sroa_idx, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hc = load i8, ptr %i.hb, align 8, !range !13, !noundef !5
  %cond.i = icmp eq i8 %i.hc, 3
  br i1 %cond.i, label %bb.cn, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit

bb.cn:                                            ; preds = %bb.cm
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i32 = load ptr, ptr %i.hd, align 8        ; 5 uses
  %i.he = getelementptr i8, ptr %1, i64 40
  %.val1.i = load ptr, ptr %i.he, align 8, !nonnull !5, !align !12, !noundef !5 ; 5 uses
  %i.hf = load ptr, ptr %.val1.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i32) ]
  invoke void %i.hf(ptr noundef nonnull %.val.i32)
          to label %bb.cp unwind label %bb.cr

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.hg = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !range !8, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i32) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i32, i64 noundef range(i64 1, -9223372036854775808) %i.hh, i64 noundef range(i64 1, 536870913) %i.hk) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit

bb.cr:                                            ; preds = %bb.co
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %.body33, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.hp = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.hq = load i64, ptr %i.hp, align 8, !range !8, !invariant.load !5
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i32, i64 noundef range(i64 1, -9223372036854775808) %i.hn, i64 noundef range(i64 1, 536870913) %i.hq) #21
  br label %.body33

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit: ; preds = %bb.cq, %bb.cp, %bb.cm
  %.not.i = icmp eq i64 %i.gz, -1
  br i1 %.not.i, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit
  %i.hr = trunc nuw i64 %.sroa.3.0.copyload to i1
  br i1 %i.hr, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i8 1, ptr %i.hs, align 8
  store i64 %.sroa.547.sroa.0.0.copyload, ptr %i.gx, align 8
  %.sroa.2.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.sroa.547.sroa.3.0.copyload, ptr %.sroa.2.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %.sroa.547.sroa.5.0.copyload, ptr %.sroa.2.sroa.3.0..sroa_idx, align 8
  %.sroa.2.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %.sroa.547.sroa.7.0.copyload, ptr %.sroa.2.sroa.4.0..sroa_idx, align 8
  %.sroa.2.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %.sroa.547.sroa.9.0.copyload, ptr %.sroa.2.sroa.5.0..sroa_idx, align 8
  %i.ht = lshr i64 %.sroa.547.sroa.9.0.copyload, 32
  %i.hu = trunc i64 %i.ht to i16                  ; 2 uses
  %i.hv = and i16 %i.hu, 3
  %i.hw = add nsw i16 %i.hv, -3
  %.not = icmp ult i16 %i.hw, -2
  %i.hx = and i16 %i.hu, 16
  %.not90 = icmp eq i16 %i.hx, 0
  %or.cond = and i1 %.not90, %.not
  br i1 %or.cond, label %.thread, label %bb.cv

.thread:                                          ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.10.sroa.10.sroa.10.sroa.10.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.hy = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  store i8 0, ptr %i.hs, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hz, ptr noundef nonnull align 8 dereferenceable(40) %i.gx, i64 40, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %i.hy, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.1060.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 250
  store i8 0, ptr %.sroa.1060.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.964.sroa.0.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.964.sroa.7)
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.789.i.sroa.5)
end_hunk_1
begin_hunk_2_@_RNCNvXs8_NtNtCs5XgW7KoffLW_12opendal_core6layers8simulateNtB7_18ServicerFlatListerNtNtNtNtNtBb_3raw3oio4list3api4List4next0Bb_:bb.a
          to label %bb.ab unwind label %.thread   ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cc = extractvalue { ptr, i64 } %i.cb, 0      ; 2 uses
  %i.cd = extractvalue { ptr, i64 } %i.cb, 1      ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !range !11, !alias.scope !1209, !noundef !5
  %i.ch = trunc nuw i64 %i.cg to i1
  br i1 %i.ch, label %_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit, label %bb.ac, !prof !1210

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #19
          to label %.noexc176 unwind label %.thread

.noexc176:                                        ; preds = %bb.ac
  unreachable

_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit: ; preds = %bb.ab
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cj = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ci)
          to label %bb.ad unwind label %.thread   ; 2 uses

.thread:                                          ; preds = %bb.aa, %bb.ac, %_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %i.cl = load ptr, ptr %i.b, align 8, !alias.scope !1215, !noundef !5 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180, label %bb.am

bb.ad:                                            ; preds = %_RNvMNtCsgxBkk5gSRhY_4core6optionINtB2_6OptionRNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryE6expectBQ_.exit
  %i.cn = extractvalue { ptr, i64 } %i.cj, 1
  %i.co = icmp eq i64 %i.cd, %i.cn
  br i1 %i.co, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread

_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.ad
  %i.cp = extractvalue { ptr, i64 } %i.cj, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc), "nonnull"(ptr %i.cp) ]
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.cc, ptr nonnull readonly %i.cp, i64 %i.cd), !alias.scope !1216
  %.not314 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not314, label %bb.ae, label %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread

bb.ae:                                            ; preds = %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %i.cq = load ptr, ptr %i.b, align 8, !alias.scope !1221, !noundef !5 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = atomicrmw add ptr %i.cq, i64 -1 release, align 8, !noalias !1222
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.ag, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit unwind label %bb.ak

_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread: ; preds = %bb.ad, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.cu = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.cv = load i64, ptr %i.cu, align 8, !range !11, !alias.scope !1223, !noundef !5
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.ah

bb.ah:                                            ; preds = %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !1228, !noundef !5 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = atomicrmw add ptr %i.cy, i64 -1 release, align 8, !noalias !1229
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.aj, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cx) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit unwind label %bb.al

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180: ; preds = %bb.am, %.thread, %bb.an, %bb.al, %bb.ak
  %.pn83.pn = phi { ptr, i32 } [ %i.dc, %bb.ak ], [ %i.de, %bb.al ], [ %i.ck, %bb.an ], [ %i.ck, %.thread ], [ %i.ck, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.ak:                                            ; preds = %bb.ag
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit: ; preds = %bb.af, %bb.ae, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit: ; preds = %bb.ai, %bb.ah, %_RNvXs7_NtNtCsgxBkk5gSRhY_4core3cmp5implsReNtB7_9PartialEq2neCs5XgW7KoffLW_12opendal_core.exit.thread, %bb.aj
  %i.dd = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  store i64 1, ptr %i.dd, align 8
  %.sroa.620.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bc

bb.al:                                            ; preds = %bb.aj
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  store i64 1, ptr %i.df, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.620, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180

bb.am:                                            ; preds = %.thread
  %i.dg = atomicrmw add ptr %i.cl, i64 -1 release, align 8, !noalias !1230
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.an, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit180 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.fq, %bb.dk, %bb.cz, %bb.an, %bb.ef, %bb.fr, %bb.fm, %bb.fe, %bb.et, %bb.ee, %bb.bl, %bb.h
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ap:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 81
  %.val137 = load i8, ptr %i.dj, align 1, !range !21, !noundef !5 ; 2 uses
  %i.dk = icmp eq i8 %.val137, 3
  br i1 %i.dk, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.455.0.copyload = load i64, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.556.0..sroa_idx, i64 40, i1 false)
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.15.sroa.0, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.657.0..sroa_idx, i64 25, i1 false)
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.sroa.5, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx.sroa_idx, i64 6, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.t, %bb.z, %bb.aq
  %.sroa.15.sroa.4.0 = phi i8 [ undef, %bb.z ], [ undef, %bb.t ], [ %.val137, %bb.aq ]
  %.sroa.8.0 = phi i64 [ 1, %bb.z ], [ 1, %bb.t ], [ %.sroa.455.0.copyload, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit219

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit219: ; preds = %bb.fg, %bb.dn, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224, %bb.do, %bb.ar
  %.sroa.15.sroa.4.1 = phi i8 [ undef, %bb.fg ], [ %.sroa.15.sroa.4.0, %bb.ar ], [ %.sroa.15.sroa.4.3, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224 ], [ %.sroa.15.sroa.4.3, %bb.do ], [ %.sroa.15.sroa.4.3, %bb.dn ]
  %.sroa.030.1 = phi i64 [ -1, %bb.fg ], [ %i.az, %bb.ar ], [ %.sroa.030.3, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224 ], [ %.sroa.030.3, %bb.do ], [ %.sroa.030.3, %bb.dn ]
  %.sroa.8.1 = phi i64 [ 0, %bb.fg ], [ %.sroa.8.0, %bb.ar ], [ %.sroa.8.3, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3api7ListDynEL_EEB1k_.exit224 ], [ %.sroa.8.3, %bb.do ], [ %.sroa.8.3, %bb.dn ]
  store i64 %.sroa.030.1, ptr %0, align 8
  %.sroa.8.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.1, ptr %.sroa.8.0..sroa_idx34, align 8
  %.sroa.12.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.0..sroa_idx40, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, i64 40, i1 false)
  %.sroa.15.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.15.0..sroa_idx43, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.15.sroa.0, i64 25, i1 false)
  %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx43.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 %.sroa.15.sroa.4.1, ptr %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx43.sroa_idx, align 1
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx43.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx43.sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.15.sroa.5, i64 6, i1 false)
  br label %common.ret

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !range !11, !alias.scope !1231, !noundef !5
  %i.do = trunc nuw i64 %i.dn to i1
  br i1 %i.do, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) dereferenceable_or_null(40) %i.dp)
          to label %.noexc183 unwind label %bb.au ; 2 uses

.noexc183:                                        ; preds = %bb.at
  %i.dr = extractvalue { ptr, i64 } %i.dq, 0
  %i.ds = extractvalue { ptr, i64 } %i.dq, 1
  br label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.av:                                            ; preds = %bb.aw, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f)
          to label %bb.bb unwind label %bb.ba

bb.aw:                                            ; preds = %.noexc183, %bb.as
  %.sroa.02.0.i = phi ptr [ %i.dr, %.noexc183 ], [ null, %bb.as ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ %i.ds, %.noexc183 ], [ undef, %bb.as ]
  %.not.i184 = icmp eq ptr %.sroa.02.0.i, null    ; 2 uses
  %..i = select i1 %.not.i184, ptr @56, ptr %.sroa.02.0.i
  %.5.i = select i1 %.not.i184, i64 9, i64 %.sroa.3.0.i
  store ptr %..i, ptr %i.e, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.5.i, ptr %i.du, align 8
  %i.dv = load atomic i64, ptr @_RNvCsbBx43SIjCL2_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 6
  call void @llvm.assume(i1 %i.dw)
  %i.dx = icmp samesign ugt i64 %i.dv, 1
  br i1 %i.dx, label %bb.ay, label %bb.av

bb.ax:                                            ; preds = %bb.ay
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.fm

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtReNtB6_7Display3fmtCs5XgW7KoffLW_12opendal_core, ptr %.sroa.5275.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @59, ptr %i.c, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 30, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @59, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 30, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @58, ptr %i.ec, align 8
  invoke void @_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull @57, ptr noundef nonnull %i.d, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %bb.az unwind label %bb.ax

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.av

bb.ba:                                            ; preds = %bb.av
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.thread301

bb.bb:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEEB15_.exit, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208: ; preds = %bb.cu, %bb.ct, %bb.cv, %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit, %bb.bc, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionTIBC_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB16_4list3api7ListDynEL_EEEEB1a_.exit234
  %i.ee = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ef, ptr noundef nonnull align 8 dereferenceable(48) %i.ee, i64 48, i1 false), !alias.scope !1233
  store i64 0, ptr %i.ee, align 8, !alias.scope !1234
  %i.eg = load i64, ptr %i.ef, align 8, !range !11, !noundef !5
  %i.eh = trunc nuw i64 %i.eg to i1
  br i1 %i.eh, label %bb.bd, label %bb.fg

bb.bd:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entry5EntryEBJ_.exit208
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ei, ptr noundef nonnull align 8 dereferenceable(40) %i.ej, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ek = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.el = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio5entryNtB5_5Entry4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ei)
          to label %bb.bg unwind label %bb.be     ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.thread295

bb.bf:                                            ; preds = %bb.bg
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %.thread295

bb.bg:                                            ; preds = %bb.bd
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 0, ptr %i.eq, align 8, !alias.scope !1235
  %i.er = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i8 0, ptr %i.er, align 8, !alias.scope !1235
  store ptr null, ptr %i.y, align 8, !alias.scope !1235
  %i.es = extractvalue { ptr, i64 } %i.el, 1
  %i.et = extractvalue { ptr, i64 } %i.el, 0
  invoke void @_RNvXs1_NtNtCs5XgW7KoffLW_12opendal_core3raw8accessorINtNtCs6i54tJFfzR_5alloc4sync3ArcDNtB5_10ServiceDynEL_ENtB5_7Service4listB9_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ep, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.et, i64 noundef %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.y)
          to label %bb.bh unwind label %bb.bf

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.eu = load i64, ptr %i.z, align 8, !range !10, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.eu, -1
  br i1 %.not, label %bb.bi, label %bb.eg

bb.bi:                                            ; preds = %bb.bh
  %i.ev = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ey = load <2 x ptr>, ptr %i.ev, align 8
  store <2 x ptr> %i.ey, ptr %i.ex, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.ed, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12320)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.ez, ptr %i.fa, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.c, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  invoke fastcc void @_RNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtB7_7ListDynEL_ENtB7_4List4next0Bf_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.p, ptr noundef nonnull align 8 %i.fb, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_(ptr noundef nonnull align 8 %i.fb) #24
          to label %.body190 unwind label %bb.ao

bb.bm:                                            ; preds = %bb.bk
  %i.fd = load i64, ptr %i.p, align 8, !range !19, !noundef !5 ; 6 uses
  %i.fe = icmp eq i64 %i.fd, -2
  br i1 %i.fe, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12320)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %common.ret

bb.bo:                                            ; preds = %bb.bm
  %.sroa.4328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4328.0.copyload = load i64, ptr %.sroa.4328.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx329 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12320, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx329, i64 40, i1 false)
  %.sroa.6330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.6330.0..sroa_idx, i64 25, i1 false)
  %.sroa.7331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 81
  %.sroa.7331.0.copyload = load i8, ptr %.sroa.7331.0..sroa_idx, align 1 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.16, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.0..sroa_idx, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.fg = load i8, ptr %i.ff, align 8, !range !13, !noundef !5
  %cond.i185 = icmp eq i8 %i.fg, 3
  br i1 %cond.i185, label %bb.bp, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit192

bb.bp:                                            ; preds = %bb.bo
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val.i186 = load ptr, ptr %i.fh, align 8       ; 5 uses
  %i.fi = getelementptr i8, ptr %1, i64 144
  %.val1.i187 = load ptr, ptr %i.fi, align 8, !nonnull !5, !align !12, !noundef !5 ; 5 uses
  %i.fj = load ptr, ptr %.val1.i187, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i188 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i188, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i186) ]
  invoke void %i.fj(ptr noundef nonnull %.val.i186)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.fk = getelementptr inbounds nuw i8, ptr %.val1.i187, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit192, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1.i187, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !range !8, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i186) ]
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i186, i64 noundef range(i64 1, -9223372036854775808) %i.fl, i64 noundef range(i64 1, 536870913) %i.fo) #21
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNCNvXs1_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4list3apiINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtBJ_7ListDynEL_ENtBJ_4List4next0EBR_.exit192

bb.bt:                                            ; preds = %bb.bq
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.val1.i187, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !range !7, !invariant.load !5 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %.body190, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ft = getelementptr inbounds nuw i8, ptr %.val1.i187, i64 16
end_hunk_2
