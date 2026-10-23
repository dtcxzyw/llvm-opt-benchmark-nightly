Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.03?download=true
inline.NumInlined: 562
inline.NumDeleted: 235
begin_hunk_0_@_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository21loose_object_checksum:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bx unwind label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.cm unwind label %bb.by

bb.bx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit166 unwind label %bb.v

bb.by:                                            ; preds = %bb.bw
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

.thread328:                                       ; preds = %bb.ax, %.thread335
  %eh.lpad-body148333 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread335 ], [ %i.cw, %bb.ax ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #20
          to label %.thread320 unwind label %bb.bq

bb.bz:                                            ; preds = %bb.au
  invoke void @_RNvXsP_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB7_6borrow3CoweEE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.ca unwind label %bb.as

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.641, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.635, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.641, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.641)
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.495.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.635, i64 24, i1 false)
  store i64 -9223372036854775795, ptr %0, align 8
  %i.et = load i64, ptr %i.p, align 8, !range !6, !alias.scope !610, !noundef !5
  %i.eu = icmp eq i64 %i.et, -1
  br i1 %i.eu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskuiImRAV2ip_9elfshaker.exit172, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i168 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.thread320 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i168: ; preds = %bb.cb
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskuiImRAV2ip_9elfshaker.exit172 unwind label %bb.ak

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskuiImRAV2ip_9elfshaker.exit172: ; preds = %bb.ca, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit166: ; preds = %bb.bx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskuiImRAV2ip_9elfshaker.exit180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit174 unwind label %bb.ce

bb.ce:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit166
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.cq, %bb.o, %bb.cm, %.body157, %bb.ce
  %common.resume.op = phi { ptr, i32 } [ %i.ff, %bb.cq ], [ %i.ex, %bb.ce ], [ %i.bl, %bb.o ], [ %.pn110.ph, %bb.cm ], [ %eh.lpad-body158, %.body157 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit174: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit166
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %bb.cl

.thread320:                                       ; preds = %.thread328, %bb.cc, %bb.bt, %bb.ai, %bb.ak, %bb.as
  %.pn108323 = phi { ptr, i32 } [ %i.ev, %bb.cc ], [ %i.cr, %bb.as ], [ %i.cg, %bb.ai ], [ %i.ep, %bb.bt ], [ %i.ci, %bb.ak ], [ %eh.lpad-body148333, %.thread328 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #20
          to label %bb.cm unwind label %bb.bq

bb.cg:                                            ; preds = %bb.af
  invoke void @_RNvXsP_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB7_6borrow3CoweEE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %bb.ch unwind label %bb.ad

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.624, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.618, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.624, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624)
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.483.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.618, i64 24, i1 false)
  store i64 -9223372036854775795, ptr %0, align 8
  %i.ez = load i64, ptr %i.s, align 8, !range !6, !alias.scope !611, !noundef !5
  %i.fa = icmp eq i64 %i.ez, -1
  br i1 %i.fa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskuiImRAV2ip_9elfshaker.exit180, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i176 unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.cm unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i176: ; preds = %bb.ci
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskuiImRAV2ip_9elfshaker.exit180 unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskuiImRAV2ip_9elfshaker.exit180: ; preds = %bb.ch, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit166

bb.cl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskuiImRAV2ip_9elfshaker.exit183, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker.exit174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bn

bb.cm:                                            ; preds = %bb.ad, %.thread320, %bb.v, %bb.t, %bb.bw, %bb.cj
  %.pn110.ph = phi { ptr, i32 } [ %.pn108323, %.thread320 ], [ %i.cb, %bb.ad ], [ %i.bq, %bb.t ], [ %i.er, %bb.bw ], [ %i.bs, %bb.v ], [ %i.fb, %bb.cj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #20
          to label %common.resume unwind label %bb.bq

bb.cn:                                            ; preds = %bb.q
  invoke void @_RNvXsP_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB7_6borrow3CoweEE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k)
          to label %bb.co unwind label %bb.o

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.69, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.69, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69)
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.471.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 -9223372036854775795, ptr %0, align 8
  %i.fd = load i64, ptr %i.v, align 8, !range !6, !alias.scope !612, !noundef !5
  %i.fe = icmp eq i64 %i.fd, -1
  br i1 %i.fe, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskuiImRAV2ip_9elfshaker.exit183, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i182 unwind label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i182: ; preds = %bb.cp
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskuiImRAV2ip_9elfshaker.exit183

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECskuiImRAV2ip_9elfshaker.exit183: ; preds = %bb.co, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.cl
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository23find_pack_with_snapshot(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [21 x i8], align 1                ; 6 uses
  %i.e = alloca [21 x i8], align 1                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 10 uses
  %i.g = alloca [8 x i8], align 8                 ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [56 x i8], align 8                ; 9 uses
  %i.s = alloca [48 x i8], align 8                ; 10 uses
  %i.t = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 11 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.w, align 8
  store ptr %2, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store i64 %3, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository5packs(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.r, ptr noundef nonnull align 8 %1)
  %i.y = load i64, ptr %i.r, align 8, !range !7, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.y, -2
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.030.0.copyload = load i64, ptr %i.z, align 8 ; 3 uses
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.431.0.copyload = load ptr, ptr %.sroa.431.0..sroa_idx, align 8 ; 4 uses
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.532.0.copyload = load i64, ptr %.sroa.532.0..sroa_idx, align 8 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.747.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.742.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i64 %i.y, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.030.0.copyload, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.431.0.copyload, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.532.0.copyload, ptr %.sroa.646.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.aa = icmp ult i64 %.sroa.532.0.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.sroa.431.0.copyload, i64 %.sroa.532.0.copyload
  %i.ac = icmp sgt i64 %.sroa.030.0.copyload, -1
  tail call void @llvm.assume(i1 %i.ac)
  store ptr %.sroa.431.0.copyload, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.431.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.030.0.copyload, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.ab, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.w, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.v, ptr %i.ae, align 8
  call void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNvMs0_NtB2c_10repositoryNtB32_10Repository23find_pack_with_snapshot0EB28_INtNtB6_6result6ResultzNtNtB2c_5error5ErrorENCINvXso_B4a_IB48_INtB1p_3VecB28_EB4u_EINtNtNtB4_6traits7collect12FromIteratorIB48_B28_B4u_EE9from_iterBQ_E0B57_EB2e_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.af = load i64, ptr %i.t, align 8, !range !7, !noundef !5 ; 2 uses
  %.not66 = icmp eq i64 %i.af, -2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.556.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.553.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.455.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.af, ptr %0, align 8
  br label %bb.aq

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5 ; 5 uses
  %i.aj = icmp ult i64 %i.ai, 384307168202282326
  call void @llvm.assume(i1 %i.aj)
  switch i64 %i.ai, label %bb.f [
    i64 0, label %bb.ad
    i64 1, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.am = load ptr, ptr %i.w, align 8, !nonnull !5, !align !8, !noundef !5 ; 3 uses
  %i.an = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ao = load i64, ptr %i.x, align 8, !noundef !5 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.al, ptr %i.o, align 8, !noalias !637
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store i64 %i.ai, ptr %i.ap, align 8, !noalias !637
  %i.aq = load atomic i64, ptr @_RNvCse7cAXHj51Pq_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !637 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 6
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp samesign ugt i64 %i.aq, 2
  br i1 %i.as, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !637
  store ptr %i.am, ptr %i.g, align 8, !noalias !638
  store ptr %i.an, ptr %i.f, align 8, !noalias !638
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ao, ptr %i.at, align 8, !noalias !638
  %.idx.i.i85 = mul nuw nsw i64 %i.ai, 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !638
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !637
  store ptr %i.o, ptr %i.n, align 8, !noalias !637
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRSNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNtB6_5Debug3fmtBD_, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !637
  store ptr @5, ptr %i.m, align 8, !noalias !637
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 27, ptr %i.av, align 8, !noalias !637
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @5, ptr %i.aw, align 8, !noalias !637
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 27, ptr %i.ax, align 8, !noalias !637
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @76, ptr %i.ay, align 8, !noalias !637
  invoke void @_RINvNtCse7cAXHj51Pq_3log13___private_api3loguNtB2_12GlobalLoggerECskuiImRAV2ip_9elfshaker(ptr noundef nonnull @75, ptr noundef nonnull %i.n, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m)
          to label %bb.h unwind label %.thread95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !637
  %.pr.i = load i64, ptr %i.ap, align 8, !noalias !637 ; 3 uses
  %.pre.i = load ptr, ptr %i.o, align 8, !noalias !637 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !637
  store ptr %i.am, ptr %i.g, align 8, !noalias !638
  store ptr %i.an, ptr %i.f, align 8, !noalias !638
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ao, ptr %i.az, align 8, !noalias !638
  %.idx.i.i = mul nuw nsw i64 %.pr.i, 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !638
  %i.bb = icmp eq i64 %.pr.i, 0
  br i1 %i.bb, label %bb.k, label %bb.i, !prof !639

bb.i:                                             ; preds = %.thread, %bb.h
  %i.bc = phi ptr [ %i.au, %.thread ], [ %i.ba, %bb.h ]
  %i.bd = phi i64 [ %i.ai, %.thread ], [ %.pr.i, %bb.h ]
  %i.be = phi ptr [ %i.al, %.thread ], [ %.pre.i, %bb.h ] ; 2 uses
  invoke fastcc void @_RNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB7_10Repository19are_snapshots_equal0Bb_(ptr noalias nofree noundef align 1 captures(address) dereferenceable(21) %i.e, ptr nonnull %i.g, ptr nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be) #26
          to label %.noexc70 unwind label %.thread95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.bd, 1
  br i1 %.not13.i.i.i, label %.loopexit50.i, label %.lr.ph.i.i.i.a

.lr.ph.i.i.i.a:                                   ; preds = %.noexc70
  %4 = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %5 = load i8, ptr %i.e, align 1, !range !9, !alias.scope !640, !noalias !638 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge.i.i.i, %.lr.ph.i.i.i.a
  %i.bh = phi ptr [ %4, %.lr.ph.i.i.i.a ], [ %i.bi, %.backedge.i.i.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !641
  invoke fastcc void @_RNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB7_10Repository19are_snapshots_equal0Bb_(ptr noalias nofree noundef align 1 captures(address) dereferenceable(21) %i.d, ptr nonnull %i.g, ptr nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh) #26
          to label %.noexc71 unwind label %.thread95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc71:                                         ; preds = %bb.j
  %i.bj = load i8, ptr %i.d, align 1, !range !9, !alias.scope !642, !noalias !641, !noundef !5 ; 2 uses
  %6 = and i8 %i.bj, %5
  %.not2.i.i.i.i.i = icmp eq i8 %6, 0
  br i1 %.not2.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6option6OptionAhj14_EuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs0_NtB14_10repositoryNtB34_10Repository19are_snapshots_equal0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkB1L_NCB2Y_s_0E0E0B16_.exit.i.i.i, label %.split.i.i.i.a

.split.i.i.i.a:                                   ; preds = %.noexc71
  %i.bk = load i128, ptr %i.bf, align 1
  %i.bl = load i128, ptr %i.bg, align 1
  %i.bm = xor i128 %i.bk, %i.bl
  %i.bn = getelementptr i8, ptr %i.bf, i64 16
  %i.bo = getelementptr i8, ptr %i.bg, i64 16
  %i.bp = load i32, ptr %i.bn, align 1
  %i.bq = load i32, ptr %i.bo, align 1
  %i.br = zext i32 %i.bp to i128
  %i.bs = zext i32 %i.bq to i128
  %i.bt = xor i128 %i.br, %i.bs
  %i.bu = or i128 %i.bm, %i.bt
  %i.bv = icmp ne i128 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %.not.i.i.i = icmp eq i32 %i.bw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !641
  br i1 %.not.i.i.i, label %.backedge.i.i.i, label %bb.l

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6option6OptionAhj14_EuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs0_NtB14_10repositoryNtB34_10Repository19are_snapshots_equal0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkB1L_NCB2Y_s_0E0E0B16_.exit.i.i.i: ; preds = %.noexc71
  %7 = or i8 %i.bj, %5
  %.mux.i.i.not.i.i.i = icmp eq i8 %7, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !641
  br i1 %.mux.i.i.not.i.i.i, label %.backedge.i.i.i, label %bb.l

.backedge.i.i.i:                                  ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6option6OptionAhj14_EuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs0_NtB14_10repositoryNtB34_10Repository19are_snapshots_equal0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkB1L_NCB2Y_s_0E0E0B16_.exit.i.i.i, %.split.i.i.i.a
  %.not14.i.i.i = icmp eq ptr %i.bi, %i.bc
  br i1 %.not14.i.i.i, label %.loopexit50.i, label %bb.j

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #25
          to label %.noexc72.a unwind label %.thread95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc72.a:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6option6OptionAhj14_EuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs0_NtB14_10repositoryNtB34_10Repository19are_snapshots_equal0NCINvNvNtNtNtB8_6traits8iterator8Iterator3all5checkB1L_NCB2Y_s_0E0E0B16_.exit.i.i.i, %.split.i.i.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !637
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.ao, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc73 unwind label %.thread95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %bb.l
  %i.bx = load i64, ptr %i.h, align 8, !range !12, !noalias !637, !noundef !5
  %i.by = trunc nuw i64 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !range !21, !noalias !637, !noundef !5 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.by, label %bb.n, label %bb.o, !prof !11

.loopexit50.i:                                    ; preds = %.backedge.i.i.i, %.noexc70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !637
  %i.cc = load i64, ptr %i.ap, align 8, !noalias !637, !noundef !5 ; 3 uses
  %i.cd = load ptr, ptr %i.o, align 8, !noalias !637, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.cc, 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx
  %i.cf = icmp eq i64 %i.cc, 0
  br i1 %i.cf, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtBU_10repositoryNtB2u_10Repository21disambiguate_snapshot0EBW_.exit.i, label %.lr.ph

bb.m:                                             ; preds = %.noexc74
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ce
  br i1 %i.ch, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtBU_10repositoryNtB2u_10Repository21disambiguate_snapshot0EBW_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit50.i, %bb.m
  %i.ci = phi ptr [ %i.cg, %bb.m ], [ %i.cd, %.loopexit50.i ] ; 3 uses
  %i.cj = invoke noundef zeroext i1 @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository13is_pack_loose(ptr noundef nonnull align 8 %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci)
          to label %.noexc74 unwind label %.thread95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc74:                                         ; preds = %.lr.ph
  br i1 %i.cj, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtBU_10repositoryNtB2u_10Repository21disambiguate_snapshot0EBW_.exit.i, label %bb.m

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtBU_10repositoryNtB2u_10Repository21disambiguate_snapshot0EBW_.exit.i: ; preds = %bb.m, %.noexc74, %.loopexit50.i
  %.sroa.0.0.i.i = phi ptr [ null, %.loopexit50.i ], [ null, %bb.m ], [ %i.ci, %.noexc74 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !637
  %.not40.i = icmp eq i64 %i.cc, 0
  br i1 %.not40.i, label %bb.x, label %bb.z

bb.n:                                             ; preds = %.noexc73
  %i.ck = load i64, ptr %i.cb, align 8, !noalias !637
  br label %.invoke

bb.o:                                             ; preds = %.noexc73
  %i.cl = load ptr, ptr %i.cb, align 8, !noalias !637, !nonnull !5, !noundef !5 ; 2 uses
  %i.cm = icmp ule i64 %i.ao, %i.ca
  call void @llvm.assume(i1 %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !637
  %.not39.i = icmp eq i64 %i.ao, 0
  br i1 %.not39.i, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.u, %bb.o
  store i64 %i.ca, ptr %i.i, align 8, !noalias !637
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.cl, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !637
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.ao, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !637
  %i.cn = load ptr, ptr %i.o, align 8, !noalias !637, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.co = load i64, ptr %i.ap, align 8, !noalias !637, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !643
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.co, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.v, !noalias !636

.noexc.i:                                         ; preds = %bb.p
  %i.cp = load i64, ptr %i.a, align 8, !range !12, !noalias !643, !noundef !5
  %i.cq = trunc nuw i64 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !range !21, !noalias !643, !noundef !5 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.cq, label %bb.q, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i, !prof !11

bb.q:                                             ; preds = %.noexc.i
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !643
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.cs, i64 %i.cu) #24
          to label %.noexc43.i unwind label %bb.v, !noalias !636

.noexc43.i:                                       ; preds = %bb.q
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %.noexc.i
  %i.cv = load ptr, ptr %i.ct, align 8, !noalias !643, !nonnull !5, !noundef !5 ; 2 uses
  %i.cw = icmp samesign ule i64 %i.co, %i.cs
  call void @llvm.assume(i1 %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !643
  store i64 %i.cs, ptr %i.c, align 8, !noalias !643
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.cv, ptr %i.cx, align 8, !noalias !643
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.co
  %i.da = icmp eq i64 %i.cs, 0
  br i1 %i.da, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i, %_RNvXsg_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_6PackIdNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i
  %.sroa.012.023.i.i = phi ptr [ %i.de, %_RNvXsg_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_6PackIdNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %i.cn, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i ] ; 3 uses
  %.sroa.7.022.i.i = phi i64 [ %i.dd, %_RNvXsg_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_6PackIdNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i ] ; 3 uses
  %.sroa.10.021.i.i = phi i64 [ %i.db, %_RNvXsg_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_6PackIdNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %i.cs, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i ]
  %i.db = add i64 %.sroa.10.021.i.i, -1           ; 2 uses
  %i.dc = icmp eq ptr %.sroa.012.023.i.i, %i.cz
  br i1 %i.dc, label %.loopexit.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !643
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i.i)
          to label %_RNvXsg_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_6PackIdNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i unwind label %bb.t, !noalias !644

_RNvXsg_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_6PackIdNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.r
  %i.dd = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 24
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !643
  %i.dg = icmp eq i64 %i.db, 0
  br i1 %i.dg, label %.loopexit.i, label %.lr.ph.i.i

bb.s:                                             ; preds = %bb.t
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !644
  unreachable

bb.t:                                             ; preds = %bb.r
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i, ptr %i.cy, align 8, !noalias !643
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %.body.i unwind label %bb.s, !noalias !644

bb.u:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull readonly align 1 %i.an, i64 %i.ao, i1 false), !noalias !636
  br label %bb.p

bb.v:                                             ; preds = %bb.q, %bb.p
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.v, %bb.t
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.di, %bb.v ], [ %lpad.loopexit.i.i, %bb.t ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #20
          to label %.thread90 unwind label %bb.w, !noalias !636

.loopexit.i:                                      ; preds = %_RNvXsg_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_6PackIdNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, %.lr.ph.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit.i.i
  store i64 %i.co, ptr %i.cy, align 8, !noalias !643
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.511.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !643
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !637
  store i64 -9223372036854775799, ptr %0, align 8, !alias.scope !636
  br label %_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository21disambiguate_snapshot.exit

bb.w:                                             ; preds = %bb.y, %.body.i
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21, !noalias !636
  unreachable

bb.x:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtBU_10repositoryNtB2u_10Repository21disambiguate_snapshot0EBW_.exit.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #25
          to label %.noexc76 unwind label %.thread95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc76:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.aa
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #20
          to label %.thread90 unwind label %bb.w, !noalias !636

bb.z:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtBU_10repositoryNtB2u_10Repository21disambiguate_snapshot0EBW_.exit.i
  %i.dl = load ptr, ptr %i.o, align 8, !noalias !637, !nonnull !5, !align !8, !noundef !5
  %.not41.i = icmp eq ptr %.sroa.0.0.i.i, null
  %spec.select.i = select i1 %.not41.i, ptr %i.dl, ptr %.sroa.0.0.i.i
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %spec.select.i)
          to label %.noexc77 unwind label %.thread95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc77:                                         ; preds = %bb.z
  %i.dm = load atomic i64, ptr @_RNvCse7cAXHj51Pq_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !637 ; 2 uses
  %i.dn = icmp ult i64 %i.dm, 6
  call void @llvm.assume(i1 %i.dn)
  %i.do = icmp samesign ugt i64 %i.dm, 2
  br i1 %i.do, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !637
  store ptr %i.o, ptr %i.k, align 8, !noalias !637
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRSNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNtB6_5Debug3fmtBD_, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !637
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.dp, align 8, !noalias !637
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsf_NtNtCskuiImRAV2ip_9elfshaker4repo4packNtB5_6PackIdNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !637
  store ptr @5, ptr %i.j, align 8, !noalias !637
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 27, ptr %i.dq, align 8, !noalias !637
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr @5, ptr %i.dr, align 8, !noalias !637
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 27, ptr %i.ds, align 8, !noalias !637
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr @79, ptr %i.dt, align 8, !noalias !637
  invoke void @_RINvNtCse7cAXHj51Pq_3log13___private_api3loguNtB2_12GlobalLoggerECskuiImRAV2ip_9elfshaker(ptr noundef nonnull @78, ptr noundef nonnull %i.k, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j)
          to label %bb.ac unwind label %bb.y, !noalias !636

bb.ab:                                            ; preds = %bb.ac, %.noexc77
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !645
  store i64 -2, ptr %0, align 8, !alias.scope !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !637
  br label %_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository21disambiguate_snapshot.exit

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !637
  br label %bb.ab

_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository21disambiguate_snapshot.exit: ; preds = %.loopexit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.aj

bb.ad:                                            ; preds = %bb.e
  %i.dv = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  %i.dw = load i64, ptr %i.x, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef %i.dw, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ae unwind label %.thread95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.dz = load i64, ptr %i.u, align 8, !range !16, !noundef !5
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 2 uses
  store ptr %i.dy, ptr %i.q, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.dz, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.ea, ptr %i.ed, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  store ptr %i.ea, ptr %i.ec, align 8, !alias.scope !646
  %.sroa.0.0.copyload81 = load i64, ptr %i.dy, align 8, !noalias !646 ; 2 uses
  %.not67 = icmp eq i64 %.sroa.0.0.copyload81, -1
  br i1 %.not67, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1v_.exit80, !prof !647

.thread95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.j, %.invoke, %bb.z, %bb.ad, %bb.g, %bb.i, %bb.k, %bb.l, %bb.x
  %lpad.loopexit.split-lp123 = landingpad { ptr, i32 }
          cleanup
  br label %.thread90

bb.ae:                                            ; preds = %bb.ad
  %i.ee = load i64, ptr %i.p, align 8, !range !12, !noundef !5
  %i.ef = trunc nuw i64 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !range !21, !noundef !5 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  br i1 %i.ef, label %bb.af, label %bb.ag, !prof !11

bb.af:                                            ; preds = %bb.ae
  %i.ej = load i64, ptr %i.ei, align 8
  br label %.invoke

.invoke:                                          ; preds = %bb.n, %bb.af
  %i.ek = phi i64 [ %i.eh, %bb.af ], [ %i.ca, %bb.n ]
  %i.el = phi i64 [ %i.ej, %bb.af ], [ %i.ck, %bb.n ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ek, i64 %i.el) #24
          to label %.cont unwind label %.thread95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.em = load ptr, ptr %i.ei, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.en = icmp ule i64 %i.dw, %i.eh
  call void @llvm.assume(i1 %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.not68 = icmp eq i64 %i.dw, 0
  br i1 %.not68, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eh, ptr %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  %.sroa.425.sroa.4.sroa.4.0..sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.em, ptr %.sroa.425.sroa.4.sroa.4.0..sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.425.sroa.4.sroa.5.0..sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.dw, ptr %.sroa.425.sroa.4.sroa.5.0..sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.em, ptr nonnull align 1 %i.dv, i64 %i.dw, i1 false)
  br label %bb.ah

bb.aj:                                            ; preds = %_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository21disambiguate_snapshot.exit, %bb.ah
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1e_.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %.thread90, %bb.an, %bb.ak
  %common.resume.op = phi { ptr, i32 } [ %i.eo, %bb.ak ], [ %i.eq, %bb.an ], [ %eh.lpad-body93, %.thread90 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1e_.exit: ; preds = %bb.aj
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %bb.ap

bb.am:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  unreachable

bb.an:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %common.resume unwind label %bb.ao

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1v_.exit80: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit
  %.sroa.682.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.682.0..sroa_idx83, i64 16, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload81, ptr %i.er, align 8
  store i64 -2, ptr %0, align 8
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ap

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB12_.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #24
          to label %bb.am unwind label %bb.an

bb.ao:                                            ; preds = %bb.an, %.thread90
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1e_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1v_.exit80, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  ret void

.thread90:                                        ; preds = %.thread95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i, %bb.y
  %eh.lpad-body93 = phi { ptr, i32 } [ %i.dk, %bb.y ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit.split-lp123, %.thread95.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #20
          to label %common.resume unwind label %bb.ao

bb.aq:                                            ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository26find_redundant_loose_packs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 11 uses
  %.sroa.58.sroa.0.i = alloca [35 x i8], align 1  ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 4 uses
  %i.m = alloca [144 x i8], align 8               ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 7 uses
  %.sroa.67 = alloca [48 x i8], align 8           ; 7 uses
  %i.o = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 12 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.s, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository5packs(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noundef nonnull align 8 %1)
  %i.t = load i64, ptr %i.o, align 8, !range !7, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.t, -2
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.518.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.t, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !5
  %i.z = load ptr, ptr %i.s, align 8, !nonnull !5, !align !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.z, ptr %i.j, align 8, !noalias !679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !679
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58.sroa.0.i)
  %i.aa = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @84)
          to label %.noexc unwind label %bb.ag    ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  %.sroa.58.sroa.0.3..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.58.sroa.0.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.58.sroa.0.3..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false), !noalias !679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !679
  store i64 1, ptr %i.b, align 8, !noalias !679
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ad, align 8, !noalias !679
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.ae, align 8, !noalias !679
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 0, ptr %.sroa.47.0..sroa_idx.i, align 4, !noalias !679
end_hunk_0
