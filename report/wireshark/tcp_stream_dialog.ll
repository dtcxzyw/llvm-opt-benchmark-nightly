Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/tcp_stream_dialog?download=true
inline.NumInlined: 2777
inline.NumDeleted: 831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.158 = private unnamed_addr constant [12 x i8] c"Next Stream\00", align 1
@.str.159 = private unnamed_addr constant [37 x i8] c"Go to the next stream in the capture\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"PgUp\00", align 1
@.str.161 = private unnamed_addr constant [16 x i8] c"Previous Stream\00", align 1
@.str.162 = private unnamed_addr constant [41 x i8] c"Go to the previous stream in the capture\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"PgDown\00", align 1
@.str.164 = private unnamed_addr constant [17 x i8] c"Switch Direction\00", align 1
@.str.165 = private unnamed_addr constant [38 x i8] c"Switch direction (swap TCP endpoints)\00", align 1
@.str.166 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.167 = private unnamed_addr constant [26 x i8] c"Go To Packet Under Cursor\00", align 1
@.str.168 = private unnamed_addr constant [40 x i8] c"Go to packet currently under the cursor\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"Drag / Zoom\00", align 1
@.str.171 = private unnamed_addr constant [34 x i8] c"Toggle mouse drag / zoom behavior\00", align 1
@.str.172 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"Legend\00", align 1
@.str.174 = private unnamed_addr constant [14 x i8] c"Toggle legend\00", align 1
@.str.175 = private unnamed_addr constant [37 x i8] c"Relative / Absolute Sequence Numbers\00", align 1
@.str.176 = private unnamed_addr constant [44 x i8] c"Toggle relative / absolute sequence numbers\00", align 1
@.str.177 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.178 = private unnamed_addr constant [30 x i8] c"Capture / Session Time Origin\00", align 1
@.str.179 = private unnamed_addr constant [37 x i8] c"Toggle capture / session time origin\00", align 1
@.str.180 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c"Axis SI Units\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"Toggle axis SI units\00", align 1
@.str.183 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"Crosshairs\00", align 1
@.str.185 = private unnamed_addr constant [18 x i8] c"Toggle crosshairs\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"Space\00", align 1
@.str.187 = private unnamed_addr constant [36 x i8] c"Switch to the Round Trip Time graph\00", align 1
@.str.188 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.189 = private unnamed_addr constant [31 x i8] c"Switch to the Throughput graph\00", align 1
@.str.190 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.191 = private unnamed_addr constant [26 x i8] c"Time / Sequence (Stevens)\00", align 1
@.str.192 = private unnamed_addr constant [50 x i8] c"Switch to the Stevens-style Time / Sequence graph\00", align 1
@.str.193 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.194 = private unnamed_addr constant [35 x i8] c"Switch to the Window Scaling graph\00", align 1
@.str.195 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.196 = private unnamed_addr constant [27 x i8] c"Time / Sequence (tcptrace)\00", align 1
@.str.197 = private unnamed_addr constant [51 x i8] c"Switch to the tcptrace-style Time / Sequence graph\00", align 1
@.str.198 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.199 = private unnamed_addr constant [17 x i8] c"All Data Packets\00", align 1
@.str.200 = private unnamed_addr constant [31 x i8] c"Sampling from all data packets\00", align 1
@.str.201 = private unnamed_addr constant [25 x i8] c"All Data Packets w/ SACK\00", align 1
@.str.202 = private unnamed_addr constant [39 x i8] c"Sampling from all data packets w/ SACK\00", align 1
@.str.203 = private unnamed_addr constant [26 x i8] c"Data Packets matching RTT\00", align 1
@.str.204 = private unnamed_addr constant [26 x i8] c"Sampling from RTT packets\00", align 1
@.str.205 = private unnamed_addr constant [31 x i8] c"Data Packets matching Karn RTT\00", align 1
@.str.206 = private unnamed_addr constant [31 x i8] c"Sampling from Karn RTT packets\00", align 1
@.str.207 = private unnamed_addr constant [15 x i8] c"Zoom In X Axis\00", align 1
@.str.208 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.209 = private unnamed_addr constant [16 x i8] c"Zoom Out X Axis\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"Shift+X\00", align 1
@.str.211 = private unnamed_addr constant [15 x i8] c"Zoom In Y Axis\00", align 1
@.str.212 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.213 = private unnamed_addr constant [16 x i8] c"Zoom Out Y Axis\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"Shift+Y\00", align 1
@.str.215 = private unnamed_addr constant [1673 x i8] c"<html><head/><body>\0A\0A<h3>Valuable and amazing time-saving keyboard shortcuts</h3>\0A<table><tbody>\0A\0A<tr><th>+</th><td>Zoom in</td></th>\0A<tr><th>-</th><td>Zoom out</td></th>\0A<tr><th>x</th><td>Zoom in X axis</td></th>\0A<tr><th>X</th><td>Zoom out X axis</td></th>\0A<tr><th>y</th><td>Zoom in Y axis</td></th>\0A<tr><th>Y</th><td>Zoom out Y axis</td></th>\0A<tr><th>0</th><td>Reset graph to its initial state</td></th>\0A\0A<tr><th>\E2\86\92</th><td>Move right 10 pixels</td></th>\0A<tr><th>\E2\86\90</th><td>Move left 10 pixels</td></th>\0A<tr><th>\E2\86\91</th><td>Move up 10 pixels</td></th>\0A<tr><th>\E2\86\93</th><td>Move down 10 pixels</td></th>\0A<tr><th><i>Shift+</i>\E2\86\92</th><td>Move right 1 pixel</td></th>\0A<tr><th><i>Shift+</i>\E2\86\90</th><td>Move left 1 pixel</td></th>\0A<tr><th><i>Shift+</i>\E2\86\91</th><td>Move up 1 pixel</td></th>\0A<tr><th><i>Shift+</i>\E2\86\93</th><td>Move down 1 pixel</td></th>\0A\0A<tr><th><i>Pg Up</i></th><td>Next stream</td></th>\0A<tr><th><i>Pg Dn</i></th><td>Previous stream</td></th>\0A<tr><th>d</th><td>Switch direction (swap TCP endpoints)</td></th>\0A<tr><th>g</th><td>Go to packet under cursor</td></th>\0A\0A<tr><th>z</th><td>Toggle mouse drag / zoom</td></th>\0A<tr><th>s</th><td>Toggle relative / absolute sequence numbers</td></th>\0A<tr><th>t</th><td>Toggle capture / session time origin</td></th>\0A<tr><th>u</th><td>Toggle axis SI units</td></th>\0A<tr><th>Space</th><td>Toggle crosshairs</td></th>\0A\0A<tr><th>1</th><td>Round Trip Time graph</td></th>\0A<tr><th>2</th><td>Throughput graph</td></th>\0A<tr><th>3</th><td>Stevens-style Time / Sequence graph</td></th>\0A<tr><th>4</th><td>tcptrace-style Time / Sequence graph</td></th>\0A<tr><th>5</th><td>Window Scaling graph</td></th>\0A\0A</tbody></table>\0A</body></html>\00", align 1
@.str.216 = private unnamed_addr constant [47 x i8] c"<small><i>Mouse over for shortcuts</i></small>\00", align 1
@.str.217 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.218 = private unnamed_addr constant [14 x i8] c"MA Window (s)\00", align 1
@.str.219 = private unnamed_addr constant [84 x i8] c"Allow SACK segments as well as data packets to be selected by clicking on the graph\00", align 1
@.str.220 = private unnamed_addr constant [13 x i8] c"Select SACKs\00", align 1
@.str.221 = private unnamed_addr constant [7 x i8] c"Stream\00", align 1
@.str.222 = private unnamed_addr constant [105 x i8] c"<html><head/><body><p>Switch the direction of the connection (view the opposite flow).</p></body></html>\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.224 = private unnamed_addr constant [29 x i8] c"Drag using the mouse button.\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"drags\00", align 1
@.str.226 = private unnamed_addr constant [31 x i8] c"Select using the mouse button.\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"zooms\00", align 1
@.str.228 = private unnamed_addr constant [16 x i8] c"Sampling Method\00", align 1
@.str.229 = private unnamed_addr constant [54 x i8] c"Select which packets and how the RTT sampling is done\00", align 1
@.str.230 = private unnamed_addr constant [43 x i8] c"Display Round Trip Time vs Sequence Number\00", align 1
@.str.231 = private unnamed_addr constant [23 x i8] c"RTT By Sequence Number\00", align 1
@.str.232 = private unnamed_addr constant [40 x i8] c"Display graph of Segment Length vs Time\00", align 1
@.str.233 = private unnamed_addr constant [48 x i8] c"Display graph of Mean Transmitted Bytes vs Time\00", align 1
@.str.234 = private unnamed_addr constant [42 x i8] c"Display graph of Mean ACKed Bytes vs Time\00", align 1
@.str.235 = private unnamed_addr constant [45 x i8] c"Display graph of Receive Window Size vs Time\00", align 1
@.str.236 = private unnamed_addr constant [8 x i8] c"Rcv Win\00", align 1
@.str.237 = private unnamed_addr constant [43 x i8] c"Display graph of Outstanding Bytes vs Time\00", align 1
@.str.238 = private unnamed_addr constant [10 x i8] c"Bytes Out\00", align 1
@.str.239 = private unnamed_addr constant [78 x i8] c"<html><head/><body><p>Reset the graph to its initial state.</p></body></html>\00", align 1
@.str.240 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@_ZN16QDialogButtonBox16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN15TCPStreamDialog16staticMetaObjectE = external global %struct.QMetaObject, align 8
@.str.241 = private unnamed_addr constant [76 x i8] c"/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/vector.tcc\00", align 1
@__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_ = private unnamed_addr constant [214 x i8] c"iterator std::vector<std::pair<unsigned int, unsigned int>>::insert(const_iterator, const value_type &) [_Tp = std::pair<unsigned int, unsigned int>, _Alloc = std::allocator<std::pair<unsigned int, unsigned int>>]\00", align 1
@.str.242 = private unnamed_addr constant [31 x i8] c"__position != const_iterator()\00", align 1
@.str.243 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN7QAction16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN7QWidget16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN11CaptureFile16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN11QCustomPlot16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZN7QCPAxis16staticMetaObjectE = external global %struct.QMetaObject, align 8
@_ZTI13QCPAxisTicker = external constant ptr
@_ZTI15QCPAxisTickerSi = external constant ptr
@_ZN9QtPrivate25QMetaTypeInterfaceWrapperIjE8metaTypeE = external global %"class.QtPrivate::QMetaTypeInterface", align 8
@.str.250 = private unnamed_addr constant [78 x i8] c"/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/stl_vector.h\00", align 1
@__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EEixEm = private unnamed_addr constant [194 x i8] c"reference std::vector<std::pair<unsigned int, unsigned int>>::operator[](size_type) [_Tp = std::pair<unsigned int, unsigned int>, _Alloc = std::allocator<std::pair<unsigned int, unsigned int>>]\00", align 1
@.str.251 = private unnamed_addr constant [19 x i8] c"__n < this->size()\00", align 1
@__PRETTY_FUNCTION__._ZNSt6vectorISt4pairIjjESaIS1_EE4backEv = private unnamed_addr constant [179 x i8] c"reference std::vector<std::pair<unsigned int, unsigned int>>::back() [_Tp = std::pair<unsigned int, unsigned int>, _Alloc = std::allocator<std::pair<unsigned int, unsigned int>>]\00", align 1
@.str.253 = private unnamed_addr constant [15 x i8] c"!this->empty()\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZN7QString6_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_tcp_stream_dialog.cpp, ptr null }]
@llvm.compiler.used = appending global [1 x ptr] [ptr @qt_version_tag_use], section "llvm.metadata"

@_ZN25QCPErrorBarsNotSelectableC1EP7QCPAxisS1_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN25QCPErrorBarsNotSelectableC2EP7QCPAxisS1_
@_ZN25QCPErrorBarsNotSelectableD1Ev = unnamed_addr alias void (ptr), ptr @_ZN25QCPErrorBarsNotSelectableD2Ev
@_ZN11DupAckGraphC1EP7QCPAxisS1_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11DupAckGraphC2EP7QCPAxisS1_
@_ZN11DupAckGraphD1Ev = unnamed_addr alias void (ptr), ptr @_ZN11DupAckGraphD2Ev
@_ZN15TCPStreamDialogC1EP7QWidgetRK11CaptureFile15tcp_graph_type_ = unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN15TCPStreamDialogC2EP7QWidgetRK11CaptureFile15tcp_graph_type_
@_ZN15TCPStreamDialogD1Ev = unnamed_addr alias void (ptr), ptr @_ZN15TCPStreamDialogD2Ev

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN7QStringD2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerIDsED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i:        ; preds = %bb.a
  %i.b = atomicrmw add ptr %i.a, i32 -1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerIDsED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i
  %i.c = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.c, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.a, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN25QCPErrorBarsNotSelectableC2EP7QCPAxisS1_(ptr noundef align 8 dereferenceable_or_null(248) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN12QCPErrorBarsC2EP7QCPAxisS1_(ptr noundef align 8 dereferenceable_or_null(248) %0, ptr noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 312) (i8, ptr @_ZTV25QCPErrorBarsNotSelectable, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV25QCPErrorBarsNotSelectable, i64 344), ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN12QCPErrorBarsC2EP7QCPAxisS1_(ptr noundef align 8 dereferenceable_or_null(248), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN12QCPErrorBarsD2Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248)) unnamed_addr #4

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN25QCPErrorBarsNotSelectableD2Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN12QCPErrorBarsD2Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248) %0) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZThn184_N25QCPErrorBarsNotSelectableD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -184
  tail call void @_ZN25QCPErrorBarsNotSelectableD1Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248) %i.a) #28
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN25QCPErrorBarsNotSelectableD0Ev(ptr noundef align 8 dereferenceable_or_null(248) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN25QCPErrorBarsNotSelectableD1Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248) %0) #28
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 248) #29
  ret void
}

; Function Attrs: nobuiltin nounwind null_pointer_is_valid
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZThn184_N25QCPErrorBarsNotSelectableD0Ev(ptr noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -184 ; 2 uses
  tail call void @_ZN25QCPErrorBarsNotSelectableD1Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248) %i.a) #28
  tail call void @_ZdlPvm(ptr noundef align 8 dereferenceable_or_null(248) %i.a, i64 noundef 248) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define noundef double @_ZNK25QCPErrorBarsNotSelectable10selectTestERK7QPointFbP8QVariant(ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(248) %0, ptr nofree noundef readnone align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2, ptr nofree noundef readnone captures(none) %3) unnamed_addr #8 align 2 {
bb.a:
  ret double -1.000000e+00
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK25QCPErrorBarsNotSelectable14drawLegendIconEP10QCPPainterRK6QRectF(ptr noundef align 8 dereferenceable_or_null(248) %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QLineF, align 16             ; 6 uses
  %4 = alloca %class.QLineF, align 8              ; 4 uses
  %5 = alloca %class.QLineF, align 16             ; 6 uses
  %6 = alloca %class.QLineF, align 16             ; 6 uses
  %7 = alloca %class.QLineF, align 8              ; 4 uses
  %8 = alloca %class.QLineF, align 16             ; 6 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef align 8 dereferenceable_or_null(184) %0, ptr noundef %1)
  %i.d = getelementptr i8, ptr %0, i64 96
  tail call void @_ZN10QCPPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef align 8 dereferenceable(8) %i.d)
  %i.e = getelementptr i8, ptr %0, i64 224
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 4        ; 2 uses
  %i.l = load atomic i32, ptr %i.k monotonic, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit:             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEptEv.exit

_ZNK8QPointerI7QCPAxisEptEv.exit:                 ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  %i.p = load atomic i32, ptr %i.k monotonic, align 4
  %i.q = icmp eq i32 %i.p, 0
  %spec.select = select i1 %i.q, ptr null, ptr %i.o
  %i.r = getelementptr i8, ptr %spec.select, i64 76
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.d, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread

bb.d:                                             ; preds = %_ZNK8QPointerI7QCPAxisEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.v = load double, ptr %i.u, align 8
  %i.w = fmul double %i.v, 5.000000e-01
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load double, ptr %i.y, align 8
  %i.aa = load double, ptr %i.x, align 8
  %i.ab = load <2 x double>, ptr %2, align 8
  %i.ac = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.w, i64 0
  %i.ad = fadd <2 x double> %i.ab, %i.ac          ; 2 uses
  %i.ae = fadd double %i.aa, %i.z
  %i.af = fadd double %i.ae, -2.000000e+00
  store <2 x double> %i.ad, ptr %3, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = extractelement <2 x double> %i.ad, i64 0
  store double %i.ah, ptr %i.ag, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.af, ptr %i.ai, align 8
  call void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.aj = getelementptr i8, ptr %0, i64 232
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = fcmp une double %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.am = load double, ptr %2, align 8
  %i.an = load double, ptr %i.u, align 8
  %i.ao = fmul double %i.an, 5.000000e-01
  %i.ap = fadd double %i.am, %i.ao
  %i.aq = load double, ptr %i.x, align 8
  %i.ar = insertelement <4 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <4 x double> %i.ar, double %i.aq, i64 1
  %i.at = shufflevector <4 x double> %i.as, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.au = fadd <4 x double> %i.at, <double -4.000000e+00, double 2.000000e+00, double 4.000000e+00, double 2.000000e+00>
  store <4 x double> %i.au, ptr %4, align 8
  call void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.av = load <2 x double>, ptr %2, align 8
  %i.aw = load <2 x double>, ptr %i.u, align 8
  %i.ax = fmul <2 x double> %i.aw, <double 5.000000e-01, double 1.000000e+00>
  %i.ay = fadd <2 x double> %i.av, %i.ax          ; 2 uses
  %i.az = fadd <2 x double> %i.ay, <double -4.000000e+00, double -2.000000e+00> ; 2 uses
  %9 = extractelement <2 x double> %i.ay, i64 0
  %10 = fadd double %9, 4.000000e+00
  store <2 x double> %i.az, ptr %5, align 16
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %10, ptr %i.ba, align 16
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %12 = extractelement <2 x double> %i.az, i64 1
  store double %12, ptr %11, align 8
  call void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.g

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread:      ; preds = %bb.b, %bb.c, %_ZNK8QPointerI7QCPAxisEptEv.exit, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8
  %i.bf = fmul double %i.be, 5.000000e-01
  %i.bg = load <2 x double>, ptr %2, align 8      ; 2 uses
  %i.bh = insertelement <2 x double> <double 2.000000e+00, double poison>, double %i.bf, i64 1
  %i.bi = fadd <2 x double> %i.bg, %i.bh          ; 2 uses
  %i.bj = extractelement <2 x double> %i.bg, i64 0
  %i.bk = fadd double %i.bj, %i.bc
  %i.bl = fadd double %i.bk, -2.000000e+00
  store <2 x double> %i.bi, ptr %6, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.bl, ptr %i.bm, align 16
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bo = extractelement <2 x double> %i.bi, i64 1
  store double %i.bo, ptr %i.bn, align 8
  call void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.bp = getelementptr i8, ptr %0, i64 232
  %i.bq = load double, ptr %i.bp, align 8
  %i.br = fcmp une double %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.bt = load <1 x double>, ptr %2, align 8
  %i.bu = shufflevector <1 x double> %i.bt, <1 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bv = load double, ptr %i.bs, align 8
  %i.bw = load double, ptr %i.bd, align 8
  %i.bx = fmul double %i.bw, 5.000000e-01
  %i.by = fadd double %i.bv, %i.bx
  %i.bz = insertelement <4 x double> %i.bu, double %i.by, i64 1
  %i.ca = shufflevector <4 x double> %i.bz, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cb = fadd <4 x double> %i.ca, <double 2.000000e+00, double -4.000000e+00, double 2.000000e+00, double 4.000000e+00>
  store <4 x double> %i.cb, ptr %7, align 8
  call void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.cc = load <2 x double>, ptr %2, align 8
  %i.cd = load <2 x double>, ptr %i.bb, align 8
  %i.ce = fmul <2 x double> %i.cd, <double 1.000000e+00, double 5.000000e-01>
  %i.cf = fadd <2 x double> %i.cc, %i.ce          ; 2 uses
  %i.cg = fadd <2 x double> %i.cf, <double -2.000000e+00, double -4.000000e+00> ; 2 uses
  %13 = extractelement <2 x double> %i.cf, i64 1
  %14 = fadd double %13, 4.000000e+00
  store <2 x double> %i.cg, ptr %8, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 16
  %15 = extractelement <2 x double> %i.cg, i64 0
  store double %15, ptr %i.ch, align 16
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store double %14, ptr %16, align 8
  call void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.g

bb.g:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, %bb.f, %bb.d, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QCPPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40), ptr noundef align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN11DupAckGraphC2EP7QCPAxisS1_(ptr noundef align 8 dereferenceable_or_null(313) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN8QCPGraphC2EP7QCPAxisS1_(ptr noundef align 8 dereferenceable_or_null(313) %0, ptr noundef %1, ptr noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 360) (i8, ptr @_ZTV11DupAckGraph, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV11DupAckGraph, i64 392), ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN8QCPGraphC2EP7QCPAxisS1_(ptr noundef align 8 dereferenceable_or_null(313), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN8QCPGraphD2Ev(ptr noundef align 8 dead_on_return(313) dereferenceable_or_null(313)) unnamed_addr #4

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN11DupAckGraphD2Ev(ptr noundef align 8 dead_on_return(313) dereferenceable_or_null(313) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN8QCPGraphD2Ev(ptr noundef align 8 dead_on_return(313) dereferenceable_or_null(313) %0) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZThn184_N11DupAckGraphD1Ev(ptr noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -184
  tail call void @_ZN11DupAckGraphD1Ev(ptr noundef align 8 dead_on_return(313) dereferenceable_or_null(313) %i.a) #28
  ret void
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZN11DupAckGraphD0Ev(ptr noundef align 8 dereferenceable_or_null(313) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN11DupAckGraphD1Ev(ptr noundef align 8 dead_on_return(313) dereferenceable_or_null(313) %0) #28
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 320) #29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define void @_ZThn184_N11DupAckGraphD0Ev(ptr noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -184 ; 2 uses
  tail call void @_ZN11DupAckGraphD1Ev(ptr noundef align 8 dead_on_return(313) dereferenceable_or_null(313) %i.a) #28
  tail call void @_ZdlPvm(ptr noundef align 8 dereferenceable_or_null(313) %i.a, i64 noundef 320) #29
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK11DupAckGraph14drawLegendIconEP10QCPPainterRK6QRectF(ptr noundef align 8 dereferenceable_or_null(313) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %class.QLineF, align 8              ; 7 uses
  tail call void @_ZNK8QCPGraph14drawLegendIconEP10QCPPainterRK6QRectF(ptr noundef align 8 dereferenceable_or_null(313) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = load double, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load double, ptr %i.b, align 8
  %i.d = fmul double %i.c, 5.000000e-01
  %i.e = fadd double %i.a, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load double, ptr %i.h, align 8
  %i.j = fmul double %i.i, 5.000000e-01
  %i.k = fadd double %i.g, %i.j                   ; 2 uses
  %i.l = fadd double %i.e, -4.000000e+00
  %i.m = fadd double %i.e, 4.000000e+00
  store double %i.l, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.k, ptr %i.p, align 8
  call void @_ZN10QCPPainter8drawLineERK6QLineF(ptr noundef align 8 dereferenceable_or_null(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZNK8QCPGraph14drawLegendIconEP10QCPPainterRK6QRectF(ptr noundef align 8 dereferenceable_or_null(313), ptr noundef, ptr noundef align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15TCPStreamDialogC2EP7QWidgetRK11CaptureFile15tcp_graph_type_(ptr noundef align 8 dereferenceable_or_null(608) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(48) %2, i32 noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %4 = alloca %class.QPointF, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  %i.d = alloca { i64, i64 }, align 8             ; 5 uses
  %i.e = alloca { i64, i64 }, align 8             ; 5 uses
  %i.f = alloca { i64, i64 }, align 8             ; 5 uses
  %i.g = alloca { i64, i64 }, align 8             ; 5 uses
  %i.h = alloca { i64, i64 }, align 8             ; 5 uses
  %i.i = alloca { i64, i64 }, align 8             ; 5 uses
  %i.j = alloca { i64, i64 }, align 8             ; 5 uses
  %i.k = alloca { i64, i64 }, align 8             ; 5 uses
  %i.l = alloca { i64, i64 }, align 8             ; 5 uses
  %5 = alloca %class.QIcon, align 8               ; 7 uses
  %6 = alloca %class.QIcon, align 8               ; 7 uses
  %7 = alloca %class.QIcon, align 8               ; 7 uses
  %8 = alloca %class.QIcon, align 8               ; 7 uses
  %9 = alloca %class.QIcon, align 8               ; 7 uses
  %10 = alloca %class.QIcon, align 8              ; 7 uses
  %11 = alloca %class.QIcon, align 8              ; 7 uses
  %12 = alloca %class.QIcon, align 8              ; 7 uses
  %13 = alloca %class.QIcon, align 8              ; 7 uses
  %14 = alloca %class.QString, align 16           ; 5 uses
  %15 = alloca %class.QString, align 8            ; 9 uses
  %16 = alloca %class.QString, align 16           ; 10 uses
  %17 = alloca %class.QString, align 8            ; 9 uses
  %18 = alloca %class.QVariant, align 8           ; 7 uses
  %19 = alloca %class.QString, align 8            ; 9 uses
  %20 = alloca %class.QVariant, align 8           ; 7 uses
  %21 = alloca %class.QString, align 8            ; 9 uses
  %22 = alloca %class.QVariant, align 8           ; 7 uses
  %23 = alloca %class.QString, align 8            ; 9 uses
  %24 = alloca %class.QVariant, align 8           ; 7 uses
  %25 = alloca %class.QString, align 8            ; 9 uses
  %26 = alloca %class.QVariant, align 8           ; 7 uses
  %27 = alloca %class.QString, align 8            ; 9 uses
  %28 = alloca %class.QVariant, align 8           ; 7 uses
  %29 = alloca %class.QString, align 8            ; 9 uses
  %30 = alloca %class.QVariant, align 8           ; 7 uses
  %31 = alloca %class.QString, align 8            ; 9 uses
  %32 = alloca %class.QVariant, align 8           ; 7 uses
  %33 = alloca %class.QString, align 8            ; 9 uses
  %34 = alloca %class.QVariant, align 8           ; 7 uses
  %35 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %36 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %37 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %38 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %39 = alloca %"class.QMetaObject::Connection", align 8 ; 2 uses
  %40 = alloca %class.QString, align 8            ; 9 uses
  %41 = alloca %class.QFont, align 8              ; 7 uses
  %42 = alloca %class.QPen, align 8               ; 7 uses
  %43 = alloca %class.QBrush, align 8             ; 7 uses
  %44 = alloca %class.QColor, align 4             ; 5 uses
  %45 = alloca %class.QPen, align 8               ; 7 uses
  %46 = alloca %class.QBrush, align 8             ; 7 uses
  %47 = alloca %class.QColor, align 4             ; 5 uses
  %48 = alloca %class.QString, align 8            ; 9 uses
  %49 = alloca %class.QPen, align 8               ; 7 uses
  %50 = alloca %class.QBrush, align 8             ; 7 uses
  %51 = alloca %class.QColor, align 4             ; 5 uses
  %52 = alloca %class.QString, align 8            ; 9 uses
  %53 = alloca %class.QCPScatterStyle, align 8    ; 10 uses
  %54 = alloca %class.QString, align 8            ; 9 uses
  %55 = alloca %class.QPen, align 8               ; 7 uses
  %56 = alloca %class.QBrush, align 8             ; 7 uses
  %57 = alloca %class.QColor, align 4             ; 5 uses
  %58 = alloca %class.QString, align 8            ; 9 uses
  %59 = alloca %class.QPen, align 8               ; 7 uses
  %60 = alloca %class.QBrush, align 8             ; 7 uses
  %61 = alloca %class.QColor, align 4             ; 5 uses
  %62 = alloca %class.QString, align 8            ; 9 uses
  %63 = alloca %class.QPainterPath, align 8       ; 8 uses
  %64 = alloca %class.QPen, align 8               ; 9 uses
  %65 = alloca %class.QColor, align 4             ; 5 uses
  %66 = alloca %class.QCPScatterStyle, align 8    ; 10 uses
  %67 = alloca %class.QBrush, align 8             ; 7 uses
  %68 = alloca %class.QString, align 8            ; 9 uses
  %69 = alloca %class.QCPScatterStyle, align 8    ; 10 uses
  %70 = alloca %class.QString, align 8            ; 9 uses
  %71 = alloca %class.QPen, align 8               ; 7 uses
  %72 = alloca %class.QBrush, align 8             ; 7 uses
  %73 = alloca %class.QColor, align 4             ; 5 uses
  %74 = alloca %class.QString, align 8            ; 9 uses
  %75 = alloca %class.QCPScatterStyle, align 8    ; 10 uses
  %76 = alloca %class.QString, align 8            ; 9 uses
  %77 = alloca %class.QPen, align 8               ; 7 uses
  %78 = alloca %class.QBrush, align 8             ; 7 uses
  %79 = alloca %class.QColor, align 4             ; 5 uses
  %80 = alloca %class.QString, align 8            ; 9 uses
  %81 = alloca %class.QPen, align 8               ; 7 uses
  %82 = alloca %class.QBrush, align 8             ; 7 uses
  %83 = alloca %class.QColor, align 4             ; 5 uses
  %84 = alloca %class.QString, align 8            ; 9 uses
  %85 = alloca %class.QCPScatterStyle, align 8    ; 10 uses
  %86 = alloca %class.QColor, align 4             ; 5 uses
end_hunk_0
