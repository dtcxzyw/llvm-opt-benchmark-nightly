Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/shard-e9748184afb3508d.shard.440a2ef7731995d0-cgu.041?download=true
inline.NumInlined: 187
inline.NumDeleted: 89
begin_hunk_0_@_RNvXs0_NtCs5QaNqjAn6vc_5shard6searchNtB5_17CoreSearchRequestINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16CoreSearchPointsE8try_from:bb.a
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fk)
          to label %.body278.thread381 unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5QaNqjAn6vc_5shard.exit.i297: ; preds = %bb.ct
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit304 unwind label %.body278

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.br, %bb.bs
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query10query_enum9QueryEnumEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.aa) #8
          to label %.body unwind label %bb.cq

.body278:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5QaNqjAn6vc_5shard.exit.i297
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body278.thread381

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit304: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5QaNqjAn6vc_5shard.exit.i297
  br i1 %.sroa.0172.4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit304.thread, label %bb.cx

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs5QaNqjAn6vc_5shard.exit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(104) %i.fo)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit304.thread unwind label %bb.cw

.body278.thread381:                               ; preds = %bb.cu, %.body278
  %.pn263 = phi { ptr, i32 } [ %i.fn, %.body278 ], [ %i.fl, %bb.cu ] ; 2 uses
  br i1 %.sroa.0172.4, label %.thread395, label %bb.cy

bb.cw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.thread395

bb.cx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit304.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit304
  %.sroa.0175.4392 = phi i8 [ %.sroa.0175.4393, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit304.thread ], [ %.sroa.0175.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit304 ]
  %i.fq = trunc nuw i8 %.sroa.0175.4392 to i1
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !range !13
  %i.ft = icmp ne i64 %i.fs, 2
  %or.cond.not = select i1 %i.fq, i1 %i.ft, i1 false
  br i1 %or.cond.not, label %bb.dd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit304.thread: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit304
  %.sroa.0175.4393 = phi i8 [ %.sroa.0175.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit304 ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(32) %i.fu)
          to label %bb.cx unwind label %bb.cz

bb.cy:                                            ; preds = %.thread395, %bb.cz, %.body278.thread381
  %.sroa.0175.6 = phi i8 [ %.sroa.0175.4393, %bb.cz ], [ %.sroa.0175.5399, %.thread395 ], [ %.sroa.0175.2, %.body278.thread381 ]
  %.pn265 = phi { ptr, i32 } [ %i.fz, %bb.cz ], [ %.pn263400, %.thread395 ], [ %.pn263, %.body278.thread381 ] ; 3 uses
  %i.fv = trunc nuw i8 %.sroa.0175.6 to i1
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !range !13
  %i.fy = icmp ne i64 %i.fx, 2
  %or.cond407.not = select i1 %i.fv, i1 %i.fy, i1 false
  br i1 %or.cond407.not, label %bb.dg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit307

bb.cz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard.exit304.thread
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.dd, %bb.de, %bb.cx
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 4 uses
  %i.gb = load i64, ptr %i.ga, align 8, !range !6, !alias.scope !141, !noundef !5
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithVectorsSelectorEECs5QaNqjAn6vc_5shard.exit, label %bb.da

bb.da:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ga)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15VectorsSelectorECs5QaNqjAn6vc_5shard.exit.i.i.i.i unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ga)
          to label %common.resume unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15VectorsSelectorECs5QaNqjAn6vc_5shard.exit.i.i.i.i: ; preds = %bb.da
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ga)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithVectorsSelectorEECs5QaNqjAn6vc_5shard.exit

bb.dd:                                            ; preds = %bb.cx
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !range !8, !alias.scope !142, !noundef !5
  %i.gh = icmp eq i64 %i.gg, -2
  br i1 %i.gh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.gf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit unwind label %bb.df

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit307: ; preds = %bb.dg, %bb.dh, %bb.df, %bb.cy
  %.pn267 = phi { ptr, i32 } [ %i.gj, %bb.df ], [ %.pn265, %bb.cy ], [ %.pn265, %bb.dh ], [ %.pn265, %bb.dg ]
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 560
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithVectorsSelectorEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gi) #8
          to label %common.resume unwind label %bb.cq

bb.df:                                            ; preds = %bb.de
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit307

.body278.thread:                                  ; preds = %bb.bf, %.body278.thread386
  %eh.lpad-body279380 = phi { ptr, i32 } [ %i.dj, %.body278.thread386 ], [ %i.dh, %bb.bf ]
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(104) %i.gk) #8
          to label %.thread395 unwind label %bb.cq

.thread395:                                       ; preds = %.body278.thread, %bb.cw, %.body278.thread381
  %.pn263400 = phi { ptr, i32 } [ %.pn263, %.body278.thread381 ], [ %eh.lpad-body279380, %.body278.thread ], [ %i.fp, %bb.cw ]
  %.sroa.0175.5399 = phi i8 [ %.sroa.0175.2, %.body278.thread381 ], [ 1, %.body278.thread ], [ 1, %bb.cw ]
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(32) %i.gl) #8
          to label %bb.cy unwind label %bb.cq

bb.dg:                                            ; preds = %bb.cy
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !range !8, !alias.scope !143, !noundef !5
  %i.go = icmp eq i64 %i.gn, -2
  br i1 %i.go, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit307, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.gm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit307 unwind label %bb.cq

bb.di:                                            ; preds = %.body
  br i1 %.sroa.0178.0, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.dk, %bb.di
  br i1 %.sroa.0172.0, label %bb.dm, label %bb.dl

bb.dk:                                            ; preds = %bb.di
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 432
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(104) %i.gp) #8
          to label %bb.dj unwind label %bb.cq

bb.dl:                                            ; preds = %bb.dm, %bb.dj
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !range !13
  %i.gs = icmp eq i64 %i.gr, 2
  %or.cond410 = select i1 %.sroa.0175.0, i1 true, i1 %i.gs
  br i1 %or.cond410, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit309, label %bb.dn

bb.dm:                                            ; preds = %bb.dj
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithPayloadSelectorEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(32) %i.gt) #8
          to label %bb.dl unwind label %bb.cq

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit309: ; preds = %bb.dn, %bb.do, %bb.dl
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 560
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithVectorsSelectorEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gu) #8
          to label %common.resume unwind label %bb.cq

bb.dn:                                            ; preds = %bb.dl
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !range !8, !alias.scope !144, !noundef !5
  %i.gx = icmp eq i64 %i.gw, -2
  br i1 %i.gx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit309, label %bb.do

bb.do:                                            ; preds = %bb.dn
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6FilterEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.gv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchParamsEECs5QaNqjAn6vc_5shard.exit309 unwind label %bb.cq
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCs5QaNqjAn6vc_5shard6searchNtB5_17CoreSearchRequestINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12SearchPointsE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([472 x i8]) align 8 captures(none) dereferenceable(472) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(544) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.9168 = alloca [15 x i8], align 1         ; 2 uses
  %.sroa.993 = alloca [16 x i8], align 8          ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [176 x i8], align 8               ; 6 uses
  %i.f = alloca [176 x i8], align 8               ; 5 uses
  %i.g = alloca [104 x i8], align 8               ; 6 uses
  %i.h = alloca [104 x i8], align 8               ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.7101 = alloca [16 x i8], align 8         ; 5 uses
  %.sroa.767 = alloca [160 x i8], align 8         ; 5 uses
  %.sroa.959 = alloca [160 x i8], align 8         ; 5 uses
  %i.j = alloca [176 x i8], align 8               ; 12 uses
  %.sroa.736 = alloca [88 x i8], align 8          ; 5 uses
  %.sroa.928 = alloca [88 x i8], align 8          ; 5 uses
  %i.k = alloca [104 x i8], align 8               ; 19 uses
  %i.l = alloca [112 x i8], align 8               ; 20 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [72 x i8], align 8                ; 12 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [48 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 13 uses
  %i.s = alloca [24 x i8], align 8                ; 12 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %i.u = alloca [176 x i8], align 8               ; 10 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [104 x i8], align 8               ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef nonnull align 8 dereferenceable(104) %i.z, i64 104, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.u, ptr noundef nonnull align 8 dereferenceable(176) %i.ad, i64 176, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.af = load i32, ptr %i.ae, align 8, !range !14, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 484
  %i.ah = load float, ptr %i.ag, align 4
  %i.ai = load i64, ptr %1, align 8, !range !12, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  %i.ao = load i64, ptr %i.r, align 8
  %.not = icmp eq i64 %i.ao, -1
  %.sink316.sroa.gep = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sink316.sroa.gep318 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %.sink316.sroa.gep317 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5
  invoke void @_RINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector27validate_sparse_vector_implmECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.aq, i64 noundef %i.as, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.au, i64 noundef %i.aw)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.sroa.04.0.copyload.pr = load i64, ptr %i.r, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %.not188 = icmp eq i64 %.sroa.04.0.copyload.pr, -1
  br i1 %.not188, label %bb.s, label %bb.r

.thread296:                                       ; preds = %bb.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit223, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit233, %bb.s
  %.sroa.0123.1.ph = phi i8 [ 1, %bb.s ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit233 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit223 ], [ 0, %bb.ae ]
  %.sroa.0121.1.ph = phi i8 [ 1, %bb.s ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit233 ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit223 ], [ 1, %bb.ae ]
  %.sroa.0119.1.ph = phi i8 [ 1, %bb.s ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit233 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit223 ], [ 1, %bb.ae ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body216

bb.d:                                             ; preds = %bb.b, %bb.h
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread284

bb.e:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %i.q, align 8, !noundef !5
  %.not187 = icmp eq ptr %i.ax, null
  br i1 %.not187, label %bb.c, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !185
  store ptr %i.i, ptr %i.a, align 8, !noalias !185
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_NtCs1cB7FFWPEsq_9validator12display_implNtNtB6_5types16ValidationErrorsNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !185
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @1, ptr noundef nonnull %i.a)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5QaNqjAn6vc_5shard.exit.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5QaNqjAn6vc_5shard.exit.i, %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %.thread284 unwind label %bb.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5QaNqjAn6vc_5shard.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !185
  %i.az = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newNtNtCsexYYUdYSQU6_5alloc6string6StringECs5QaNqjAn6vc_5shard(i8 noundef 3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.g

bb.h:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5QaNqjAn6vc_5shard.exit.i
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtCs1cB7FFWPEsq_9validator5types20ValidationErrorsKindEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %bb.j unwind label %bb.d

bb.i:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.bb, align 8
  store i64 -1, ptr %0, align 8
  %i.bc = load i64, ptr %i.r, align 8, !range !4, !alias.scope !186, !noundef !5
  %i.bd = icmp eq i64 %i.bc, -1
  br i1 %i.bd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesEECs5QaNqjAn6vc_5shard.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesECs5QaNqjAn6vc_5shard.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body216 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesECs5QaNqjAn6vc_5shard.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesEECs5QaNqjAn6vc_5shard.exit unwind label %bb.n

.body216:                                         ; preds = %bb.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit231, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit235, %bb.n, %bb.l, %.thread296, %.thread284
  %.sroa.0123.2 = phi i8 [ 1, %bb.n ], [ 1, %.thread284 ], [ %.sroa.0123.1.ph, %.thread296 ], [ 1, %bb.l ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit235 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit231 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit ], [ 0, %bb.ac ]
  %.sroa.0121.2 = phi i8 [ 1, %bb.n ], [ 1, %.thread284 ], [ %.sroa.0121.1.ph, %.thread296 ], [ 1, %bb.l ], [ %.sroa.0121.5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit235 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit231 ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit ], [ 1, %bb.ac ]
  %.sroa.0119.2 = phi i8 [ 1, %bb.n ], [ 1, %.thread284 ], [ %.sroa.0119.1.ph, %.thread296 ], [ 1, %bb.l ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit235 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit231 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit ], [ 1, %bb.ac ]
  %.sroa.0117.2 = phi i8 [ 1, %bb.n ], [ 1, %.thread284 ], [ 0, %.thread296 ], [ 1, %bb.l ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit235 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit231 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit ], [ 0, %bb.ac ]
  %.pn200 = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %eh.lpad-body294, %.thread284 ], [ %lpad.thr_comm, %.thread296 ], [ %i.be, %bb.l ], [ %.pn196, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit235 ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit231 ], [ %i.cd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit ], [ %i.bz, %bb.ac ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithVectorsSelectorEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #8
          to label %.body218 unwind label %bb.bg

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesECs5QaNqjAn6vc_5shard.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body216

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesEECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesECs5QaNqjAn6vc_5shard.exit.i, %bb.u, %bb.bo
  %.sroa.0123.3 = phi i8 [ 0, %bb.bo ], [ 1, %bb.u ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesECs5QaNqjAn6vc_5shard.exit.i ], [ 1, %bb.j ] ; 7 uses
  %.sroa.0121.3 = phi i8 [ %.sroa.0121.6, %bb.bo ], [ 1, %bb.u ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesECs5QaNqjAn6vc_5shard.exit.i ], [ 1, %bb.j ] ; 6 uses
  %.sroa.0119.3 = phi i8 [ %.sroa.0119.4, %bb.bo ], [ 1, %bb.u ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesECs5QaNqjAn6vc_5shard.exit.i ], [ 1, %bb.j ] ; 5 uses
  %.sroa.0117.3 = phi i8 [ 0, %bb.bo ], [ 0, %bb.u ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesECs5QaNqjAn6vc_5shard.exit.i ], [ 1, %bb.j ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.bh = load i64, ptr %i.s, align 8, !range !6, !alias.scope !187, !noundef !5
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithVectorsSelectorEECs5QaNqjAn6vc_5shard.exit, label %bb.o

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesEECs5QaNqjAn6vc_5shard.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15VectorsSelectorECs5QaNqjAn6vc_5shard.exit.i.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body218 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15VectorsSelectorECs5QaNqjAn6vc_5shard.exit.i.i.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19WithVectorsSelectorEECs5QaNqjAn6vc_5shard.exit unwind label %bb.bp

bb.r:                                             ; preds = %bb.c
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4179.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %.thread, %bb.r
  %.sink316.sroa.phi = phi ptr [ %.sink316.sroa.gep, %bb.r ], [ %.sink316.sroa.gep317, %.thread ], [ %.sink316.sroa.gep318, %bb.c ]
  %.sink315 = phi ptr [ %i.x, %bb.r ], [ %i.o, %.thread ], [ %i.o, %bb.c ]
  %storemerge = phi i64 [ %.sroa.04.0.copyload.pr, %bb.r ], [ -9223372036854775808, %.thread ], [ -9223372036854775808, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sink316.sroa.phi, ptr noundef nonnull align 8 dereferenceable(24) %.sink315, i64 24, i1 false)
  store i64 %storemerge, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  invoke void @_RNvNtNtCshMzyYDJGtjv_3api4grpc11conversions24into_named_vector_struct(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.p)
          to label %bb.t unwind label %.thread296

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bl = load i64, ptr %i.n, align 8, !range !11, !noundef !5 ; 5 uses
  %i.bm = icmp eq i64 %i.bl, -1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8            ; 5 uses
  br i1 %i.bm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant13SparseIndicesEECs5QaNqjAn6vc_5shard.exit

bb.v:                                             ; preds = %bb.t
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5129.sroa.0.0.copyload = load i64, ptr %.sroa.5129.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5129.sroa.4.0..sroa.5129.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.5129.sroa.4.0.copyload = load i64, ptr %.sroa.5129.sroa.4.0..sroa.5129.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.5129.sroa.5.0..sroa.5129.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.5129.sroa.5.0.copyload = load ptr, ptr %.sroa.5129.sroa.5.0..sroa.5129.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5129.sroa.6.0..sroa.5129.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.5129.sroa.6.0.copyload = load i64, ptr %.sroa.5129.sroa.6.0..sroa.5129.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5129.sroa.7.0..sroa.5129.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %2 = load <2 x i64>, ptr %.sroa.5129.sroa.7.0..sroa.5129.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5129.sroa.8.sroa.4.0..sroa.5129.sroa.8.0..sroa.5129.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %.sroa.5129.sroa.8.sroa.4.0.copyload = load i64, ptr %.sroa.5129.sroa.8.sroa.4.0..sroa.5129.sroa.8.0..sroa.5129.0..sroa_idx.sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bq = icmp ne i64 %i.bl, -9223372036854775806
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = xor i64 %i.bl, -9223372036854775808
  %i.bs = icmp slt i64 %i.bl, 0
  %i.bt = select i1 %i.bs, i64 %i.br, i64 2
  %3 = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.5129.sroa.4.0.copyload, i64 0
  switch i64 %i.bt, label %bb.w [
    i64 0, label %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit
    i64 1, label %bb.x
    i64 2, label %bb.y
    i64 3, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bu = ptrtoint ptr %i.bo to i64
  %i.bv = inttoptr i64 %.sroa.5129.sroa.0.0.copyload to ptr
  %4 = insertelement <2 x i64> %2, i64 undef, i64 1
  br label %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit

bb.y:                                             ; preds = %bb.v
  br label %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit

bb.z:                                             ; preds = %bb.v
  %i.bw = ptrtoint ptr %i.bo to i64
  %i.bx = inttoptr i64 %.sroa.5129.sroa.0.0.copyload to ptr
  br label %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit

_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit: ; preds = %bb.z, %bb.y, %bb.x, %bb.v
  %.sroa.19.sroa.5.0 = phi i64 [ undef, %bb.v ], [ undef, %bb.x ], [ %.sroa.5129.sroa.8.sroa.4.0.copyload, %bb.y ], [ undef, %bb.z ]
  %.sroa.18.sroa.0.0 = phi i64 [ %.sroa.5129.sroa.0.0.copyload, %bb.v ], [ %.sroa.5129.sroa.6.0.copyload, %bb.x ], [ %.sroa.5129.sroa.6.0.copyload, %bb.y ], [ %.sroa.5129.sroa.6.0.copyload, %bb.z ]
  %.sroa.15.0 = phi ptr [ %i.bo, %bb.v ], [ %.sroa.5129.sroa.5.0.copyload, %bb.x ], [ %.sroa.5129.sroa.5.0.copyload, %bb.y ], [ %.sroa.5129.sroa.5.0.copyload, %bb.z ]
  %.sroa.11.0 = phi i64 [ -9223372036854775808, %bb.v ], [ -9223372036854775808, %bb.x ], [ %.sroa.5129.sroa.4.0.copyload, %bb.y ], [ -9223372036854775806, %bb.z ]
  %.sroa.10.0 = phi i64 [ undef, %bb.v ], [ %.sroa.5129.sroa.4.0.copyload, %bb.x ], [ %.sroa.5129.sroa.0.0.copyload, %bb.y ], [ %.sroa.5129.sroa.4.0.copyload, %bb.z ]
  %.sroa.7256.0 = phi ptr [ undef, %bb.v ], [ %i.bv, %bb.x ], [ %i.bo, %bb.y ], [ %i.bx, %bb.z ]
  %.sroa.0255.0 = phi i64 [ -1, %bb.v ], [ %i.bu, %bb.x ], [ %i.bl, %bb.y ], [ %i.bw, %bb.z ]
  %5 = phi <2 x i64> [ %3, %bb.v ], [ %4, %bb.x ], [ %2, %bb.y ], [ %2, %bb.z ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.0255.0, ptr %i.by, align 8
  %.sroa.7256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.7256.0, ptr %.sroa.7256.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx258, align 8
  %.sroa.11.0..sroa_idx261 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx261, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %.sroa.18.sroa.0.0, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store <2 x i64> %5, ptr %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx.sroa_idx, align 8
  %.sroa.19.sroa.5.0..sroa.19.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store i64 %.sroa.19.sroa.5.0, ptr %.sroa.19.sroa.5.0..sroa.19.0..sroa_idx.sroa_idx, align 8
  store i64 -9223372036854775808, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.928)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.736)
  %.sroa.038.0.copyload = load i64, ptr %i.w, align 8 ; 2 uses
  %.not189 = icmp eq i64 %.sroa.038.0.copyload, -1
  br i1 %.not189, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.038.0.copyload, ptr %i.h, align 8
  %.sroa.640.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.640.0..sroa_idx41, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.640.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXs1c_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types6FilterINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB8_6qdrant6FilterE8try_from(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %i.h)
          to label %bb.ad unwind label %bb.ac

bb.ab:                                            ; preds = %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit, %bb.af
  %.sroa.7.0 = phi ptr [ %.sroa.633.0.copyload, %bb.af ], [ undef, %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit ]
  %.sroa.021.0 = phi i64 [ %.sroa.031.0.copyload, %bb.af ], [ -2, %_RNvXsG_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB5_10NamedQueryNtB5_14VectorInternalEINtNtCskKLDkoKarTP_4core7convert4FromNtB5_17NamedVectorStructE4from.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.736)
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.543.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.928, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.928)
  store i64 %.sroa.021.0, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.959)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.767)
  %.sroa.069.0.copyload = load i64, ptr %i.u, align 8 ; 2 uses
  %.not190 = icmp eq i64 %.sroa.069.0.copyload, 2
  br i1 %.not190, label %bb.ah, label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query10query_enum9QueryEnumEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.l) #8
          to label %.body216 unwind label %bb.bg

bb.ad:                                            ; preds = %bb.aa
  %.sroa.031.0.copyload = load i64, ptr %i.g, align 8 ; 2 uses
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.633.0.copyload = load ptr, ptr %.sroa.633.0..sroa_idx, align 8 ; 3 uses
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.736, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.736.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ca = icmp eq i64 %.sroa.031.0.copyload, -2
  br i1 %i.ca, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.633.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.736)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.928)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.633.0.copyload, ptr %i.cb, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard5query10query_enum9QueryEnumEBH_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.l)
          to label %bb.bo unwind label %.thread296

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.928, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.736, i64 88, i1 false)
  br label %bb.ab

bb.ag:                                            ; preds = %bb.ab
  %.sroa.671.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.069.0.copyload, ptr %i.f, align 8
  %.sroa.671.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.671.0..sroa_idx72, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.671.0..sroa_idx, i64 168, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXsD_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types12SearchParamsINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant12SearchParamsE8try_from(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %i.f)
          to label %bb.ak unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ab, %bb.an
  %.sroa.754.0 = phi ptr [ %.sroa.664.0.copyload, %bb.an ], [ undef, %bb.ab ]
  %.sroa.051.0 = phi i64 [ %.sroa.062.0.copyload, %bb.an ], [ 2, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.767)
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.575.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.959, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.959)
  store i64 %.sroa.051.0, ptr %i.j, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.754.0, ptr %.sroa.474.0..sroa_idx, align 8
  %i.cc = trunc nuw i64 %i.ai to i1
  %. = select i1 %i.cc, i64 %i.ak, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7101)
  %.sroa.0103.0.copyload = load i8, ptr %i.v, align 8 ; 2 uses
  %.not191 = icmp eq i8 %.sroa.0103.0.copyload, -2
  br i1 %.not191, label %bb.ap, label %bb.ao

bb.ai:                                            ; preds = %bb.ag
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load i64, ptr %i.k, align 8, !range !8, !alias.scope !188, !noundef !5
  %i.cf = icmp eq i64 %i.ce, -2
  br i1 %i.cf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit unwind label %bb.bg

bb.ak:                                            ; preds = %bb.ag
  %.sroa.062.0.copyload = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.664.0.copyload = load ptr, ptr %.sroa.664.0..sroa_idx, align 8 ; 3 uses
  %.sroa.767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.767, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.767.0..sroa_idx, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cg = icmp eq i64 %.sroa.062.0.copyload, 2
  br i1 %i.cg, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.664.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.767)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.959)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.664.0.copyload, ptr %i.ch, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ci = load i64, ptr %i.k, align 8, !range !8, !alias.scope !189, !noundef !5
  %i.cj = icmp eq i64 %i.ci, -2
  br i1 %i.cj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit223, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types6FilterEECs5QaNqjAn6vc_5shard.exit223 unwind label %bb.bn

bb.an:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.959, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.767, i64 160, i1 false)
  br label %bb.ah

bb.ao:                                            ; preds = %bb.ah
  %.sroa.6105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %.sroa.0103.0.copyload, ptr %i.d, align 8
  %.sroa.6105.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6105.0..sroa_idx106, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6105.0..sroa_idx, i64 31, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsx_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtCs607s0NAIaWN_7segment5types20WithPayloadInterfaceINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant19WithPayloadSelectorE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
          to label %bb.at unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ah, %bb.ax
  %.sroa.788.0 = phi ptr [ %.sroa.698.0.copyload, %bb.ax ], [ undef, %bb.ah ]
  %.sroa.085.0 = phi i64 [ %.sroa.096.0.copyload, %bb.ax ], [ -1, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7101)
  %.sroa.0112.0.copyload = load i64, ptr %i.s, align 8 ; 3 uses
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5114.sroa.0.0.copyload = load i8, ptr %.sroa.5114.0..sroa_idx, align 8 ; 2 uses
  switch i64 %.sroa.0112.0.copyload, label %bb.bc [
    i64 -3, label %bb.ay
    i64 -2, label %bb.bb
    i64 -1, label %bb.bd
  ]

bb.aq:                                            ; preds = %bb.ao
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load i64, ptr %i.j, align 8, !range !13, !alias.scope !190, !noundef !5
  %i.cm = icmp eq i64 %i.cl, 2
  br i1 %i.cm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types12SearchParamsEECs5QaNqjAn6vc_5shard.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !range !6, !alias.scope !191, !noundef !5
  %i.cp = icmp slt i64 %i.co, -1
  br i1 %i.cp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types12SearchParamsEECs5QaNqjAn6vc_5shard.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types6FilterECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.cn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types12SearchParamsEECs5QaNqjAn6vc_5shard.exit unwind label %bb.bg

bb.at:                                            ; preds = %bb.ao
  %.sroa.096.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.698.0.copyload = load ptr, ptr %.sroa.698.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7101, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7101.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cq = icmp eq i64 %.sroa.096.0.copyload, -1
  br i1 %i.cq, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.698.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7101)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.698.0.copyload, ptr %i.cr, align 8
  store i64 -1, ptr %0, align 8
  %i.cs = load i64, ptr %i.j, align 8, !range !13, !alias.scope !192, !noundef !5
  %i.ct = icmp eq i64 %i.cs, 2
  br i1 %i.ct, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types12SearchParamsEECs5QaNqjAn6vc_5shard.exit226, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !range !6, !alias.scope !193, !noundef !5
end_hunk_0
